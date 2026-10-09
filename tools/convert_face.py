"""Convert the original fixed-point face graphs and weights to portable ONNX.

B graphs pack signed int16 weights as offset-binary12 (bias2047), big-endian two/3bytes.
Convolution kernels use OHWI; depthwise kernels use HWC. Fixed point values
are decoded using the graph's per-tensor binary fractional positions.
"""
from pathlib import Path
import argparse, json
import numpy as np
import onnx
from onnx import helper as h, numpy_helper as nh, TensorProto as T


def convert(folder: Path, output: Path, quantize=False, output_names=None, dynamic_input=False):
    rows=[line.split() for line in (folder/'network.txt').read_text().splitlines() if line.strip()]
    packed=rows[0]==['B']
    if packed:rows=rows[1:]
    raw=(folder/'weights.bin').read_bytes();offset=0
    shapes={};fractions={};nodes=[];initial=[];layer_info=[];consumed=set();created=[]
    def const(name,value):
        initial.append(nh.from_array(np.asarray(value),name));return name
    def node(op,inputs,outputs,name,**attrs):
        nodes.append(h.make_node(op,inputs,outputs,name=name,**attrs));consumed.update(inputs);created.extend(outputs)
    def take(count,dtype,frac,weight=False,float_bias=False):
        nonlocal offset
        if packed and dtype==2 and weight:
            if count%2:raise ValueError('Odd packed short tensor')
            b=np.frombuffer(raw, np.uint8, count=count//2*3,offset=offset).astype(np.int32).reshape(-1,3)
            a=np.empty(count,np.int32);a[::2]=(b[:,0]<<4)|(b[:,1]>>4);a[1::2]=((b[:,1]&15)<<8)|b[:,2]
            a-=2047;offset+=count//2*3
        else:
            dt={1:'i1',2:'<i2',4:'<f4' if float_bias or weight else '<i4'}[dtype]
            a=np.frombuffer(raw,dt,count=count,offset=offset);offset+=count*dtype
        return a.astype(np.float32)*np.float32(2.0**-frac)
    def quant(src,dst,dtype,frac,clip=True,bounds=None):
        if quantize and dtype in (1,2):
            scale=const(dst+'_scale',np.float32(2**frac));node('Mul',[src,scale],[dst+'_scaled'],dst+'_mul')
            node('Add',[dst+'_scaled',const(dst+'_half',np.float32(.5))],[dst+'_biased'],dst+'_add_half');node('Floor',[dst+'_biased'],[dst+'_rounded'],dst+'_round')
            if bounds is None:
                lo=const(dst+'_lo',np.float32(-(2**(7 if dtype==1 else (11 if clip else 15))-1)))
                hi=const(dst+'_hi',np.float32(2**(7 if dtype==1 else 11)-1))
                node('Clip',[dst+'_rounded',lo,hi],[dst+'_clipped'],dst+'_clip')
            else:
                # Legacy ShuffleNet clamps the first branch only above +2047,
                # and the second branch only below -2047, even without rescaling.
                # Min/Max allow per-channel bounds (ONNX Clip bounds are scalar).
                lo=const(dst+'_lo',np.asarray(bounds[0],np.float32))
                hi=const(dst+'_hi',np.asarray(bounds[1],np.float32))
                node('Max',[dst+'_rounded',lo],[dst+'_lower'],dst+'_lower_bound')
                node('Min',[dst+'_lower',hi],[dst+'_clipped'],dst+'_upper_bound')
            node('Div',[dst+'_clipped',scale],[dst],dst+'_divide')
        elif src!=dst:node('Identity',[src],[dst],dst+'_identity')
    def split(source,targets,sizes,name):
        sizes_name=const(name+'_sizes',np.array(sizes,np.int64));node('Split',[source,sizes_name],targets,name,axis=1)
        for target,size in zip(targets,sizes):shapes[target]=[shapes[source][0],size,*shapes[source][2:]]
    def shuffle(source,target,groups,name,block=4):
        n,c,y,x=shapes[source]
        shape=const(name+'_shape',np.array([n,groups,c//groups//block,block,y,x],np.int64))
        node('Reshape',[source,shape],[name+'_grouped'],name+'_reshape')
        node('Transpose',[name+'_grouped'],[name+'_transposed'],name+'_transpose',perm=[0,2,1,3,4,5])
        node('Reshape',[name+'_transposed',const(name+'_outshape',np.array([n,c,y,x],np.int64))],[target],name+'_flatten')
        shapes[target]=[n,c,y,x]
    for t in rows[1:]:
        kind,name=t[:2];start=offset
        if kind in ('DataV2','data'):
            values=list(map(int,t[2:] if kind=='DataV2' else t[1:]));n,y,x,c,dtype,frac=values[:6]
            shapes['data']=[n,c,y,x];fractions['data']=frac
        elif kind in ('Convolution','DepthwiseSeparableConvolution'):
            out,kw,kh,sw,sh,pw,ph,bias,activation,wt,wf,bt,bf,ot,of=map(int,t[2:-2]);src,dst=t[-2:]
            n,c,y,x=shapes[src];depth=kind.startswith('Depthwise');count=out*kw*kh*(1 if depth else c)
            w=take(count,wt,wf,weight=True).reshape((kh,kw,out,1) if depth else (out,kh,kw,c))
            w=w.transpose((2,3,0,1) if depth else (0,3,1,2)).copy()
            args=[src,const(name+'_W',w)]
            if bias:
                b=take(out,bt,bf,float_bias=wt==4)
                if quantize and wt in (1,2):
                    accfrac=fractions[src]+wf;b=np.floor(b*np.float32(2**accfrac)+np.float32(.5))/np.float32(2**accfrac)
                args.append(const(name+'_B',b))
            final=dst+'_linear' if activation or (quantize and ot in (1,2)) else dst
            node('Conv',args,[final],name,kernel_shape=[kh,kw],strides=[sh,sw],pads=[ph,pw,ph,pw],group=c if depth else 1)
            if activation:
                relu=dst+'_relu' if quantize and ot in (1,2) else dst;node('Relu',[final],[relu],name+'_relu');final=relu
            fractions[dst]=of;quant(final,dst,ot,of);shapes[dst]=[n,out,(y+2*ph-kh)//sh+1,(x+2*pw-kw)//sw+1]
        elif kind=='Eltwise':
            a,b,dst=t[2:5];ot,of,activation=map(int,t[5:]);tmp=dst+'_sum'
            node('Add',[a,b],[tmp],name)
            if activation:node('Relu',[tmp],[dst+'_relu'],name+'_relu');tmp=dst+'_relu'
            fractions[dst]=of;quant(tmp,dst,ot,of);shapes[dst]=shapes[a]
        elif kind=='Slice':
            src=t[2];cut=int(t[5]);targets=[t[7],t[9]]
            split(src,[x+'_split' for x in targets],[cut,shapes[src][1]-cut],name)
            for target,frac in zip(targets,map(int,[t[8],t[10]])):
                if frac==fractions[src]:node('Identity',[target+'_split'],[target],target+'_copy')
                else:quant(target+'_split',target,int(t[6]),frac,clip=True)
                shapes[target]=shapes[target+'_split'];fractions[target]=frac
        elif kind=='ShuffleNet':
            a,b=t[3:5];merged=name+'_concat';node('Concat',[a,b],[merged],name+'_concat',axis=1)
            shapes[merged]=[shapes[a][0],shapes[a][1]+shapes[b][1],*shapes[a][2:]]
            shuffled=name+'_shuffled';shuffle(merged,shuffled,int(t[6]),name)
            targets=[t[7],t[9]];split(shuffled,[x+'_split' for x in targets],[shapes[merged][1]//2]*2,name+'_split')
            channel_count=shapes[merged][1]
            branches=np.r_[np.zeros(shapes[a][1],np.int32),np.ones(shapes[b][1],np.int32)]
            branches=branches.reshape(int(t[6]),channel_count//int(t[6])//4,4).transpose(1,0,2).reshape(-1)
            for i,(target,frac) in enumerate(zip(targets,map(int,[t[8],t[10]]))):
                branch=branches[i*channel_count//2:(i+1)*channel_count//2].reshape(1,-1,1,1)
                bounds=(np.where(branch==0,-32768,-2047),np.where(branch==0,2047,32767))
                quant(target+'_split',target,int(t[6]),frac,bounds=bounds)
                shapes[target]=shapes[target+'_split'];fractions[target]=frac
        elif kind=='Concat':
            count=int(t[2]);sources=t[3:3+count];dst=t[3+count]
            fractions[dst]=int(t[-1]);qsources=[]
            for i,source in enumerate(sources):
                qsource=name+'_q'+str(i);quant(source,qsource,int(t[-2]),int(t[-1]),clip=False);qsources.append(qsource)
            node('Concat',qsources,[dst],name,axis=1);shapes[dst]=shapes[sources[0]].copy();shapes[dst][1]=sum(shapes[s][1] for s in sources)
        elif kind=='Shuffle':
            shuffle(t[-2],t[-1],int(t[3]),name);fractions[t[-1]]=fractions[t[-2]]
        elif kind=='PoolingDown':
            if t[-1]!='GLOBAL':raise ValueError(f'Unsupported pooling: {t}')
            src,dst=t[-3:-1];fractions[dst]=int(t[9]);node('GlobalAveragePool',[src],[dst],name);shapes[dst]=[shapes[src][0],shapes[src][1],1,1]
        elif kind=='Reshape':
            n,y,x,c=map(int,t[2:6]);src,dst=t[-2:];fractions[dst]=fractions[src];shapes[dst]=[n,c,y,x]
            node('Reshape',[src,const(name+'_shape',np.array(shapes[dst],np.int64))],[dst],name)
        elif kind=='OnnxOp1' and t[2]=='Reshape':
            src,dst=t[3:5];dtype,frac,n,y,x,c,layout=map(int,t[5:]);shapes[dst]=[n,c,y,x];fractions[dst]=frac
            node('Reshape',[src,const(name+'_shape',np.array(shapes[dst],np.int64))],[dst],name)
        elif kind=='InnerProduct':
            out,bias,activation,wt,wf,bt,bf,ot,of=map(int,t[2:-2]);src,dst=t[-2:];n,c,y,x=shapes[src];count=c*y*x
            w=take(out*count,wt,wf,weight=True).reshape(out,count)
            b=take(out,bt,bf,float_bias=wt==4) if bias else np.zeros(out,np.float32)
            flat=name+'_flat';node('Flatten',[src],[flat],name+'_flatten',axis=1)
            node('Gemm',[flat,const(name+'_W',w),const(name+'_B',b)],[name+'_matrix'],name+'_gemm',transB=1)
            node('Reshape',[name+'_matrix',const(name+'_shape',np.array([n,out,1,1],np.int64))],[dst],name)
            shapes[dst]=[n,out,1,1];fractions[dst]=of
        elif kind in ('UpSampling','Upsample'):
            if kind=='UpSampling':src,dst=t[2:4];scale=2.
            else:src,dst=t[-2:];scale=float(t[2])
            n,c,y,x=shapes[src];shapes[dst]=[n,c,round(y*scale),round(x*scale)];fractions[dst]=fractions[src]
            node('Resize',[src,'','',const(name+'_sizes',np.array(shapes[dst],np.int64))],[dst],name,mode='linear',coordinate_transformation_mode='half_pixel')
        elif kind=='Crop':
            x,y,channel,width,height,channels=map(int,t[2:-2]);src,dst=t[-2:]
            starts=const(name+'_starts',np.array([channel,y,x],np.int64));ends=const(name+'_ends',np.array([channel+channels,y+height,x+width],np.int64));axes=const(name+'_axes',np.array([1,2,3],np.int64))
            node('Slice',[src,starts,ends,axes],[dst],name);shapes[dst]=[shapes[src][0],channels,height,width];fractions[dst]=fractions[src]
        elif kind=='Softmax':
            src,dst=t[2:4];node('Softmax',[src],[dst],name,axis=1);shapes[dst]=shapes[src]
        else:raise ValueError(f'Unsupported op: {t}')
        layer_info.append(dict(name=name,kind=kind,weights_offset=start,weights_bytes=offset-start))
    remaining=len(raw)-offset
    if remaining!=(4 if packed else 0):raise ValueError(f'Weight count mismatch {folder}: {offset}/{len(raw)} (remaining{remaining})')
    outputs=list(output_names) if output_names else [s for s in created if s not in consumed and s in shapes]
    if len(outputs)!=len(set(outputs)) or any(name not in shapes for name in outputs):
        raise ValueError(f'Unknown or repeated requested output: {outputs}')
    # Validate/decode the complete weight stream first, then retain only the
    # requested outputs' ancestors. BOY II uses extra landmarks, not that graph's
    # auxiliary segmentation heads; their resize semantics are not validated.
    required=set(outputs);kept=[]
    for operation in reversed(nodes):
        if any(name in required for name in operation.output):
            kept.append(operation);required.update(name for name in operation.input if name)
    nodes=list(reversed(kept));initial=[value for value in initial if value.name in required]
    input_shape=shapes['data'].copy();output_shapes={s:shapes[s].copy() for s in outputs}
    if dynamic_input:
        allowed={'Conv','Relu','Add','Identity','Mul','Floor','Clip','Div','Max','Min'}
        if any(operation.op_type not in allowed for operation in nodes):
            raise ValueError('Dynamic input is supported only for spatial convolution graphs without fixed reshapes/resizes')
        input_shape[2:]=['height','width']
        for name,shape in output_shapes.items():shape[2:]=[name+'_height',name+'_width']
    graph=h.make_graph(nodes,'EffectHouse_'+folder.name,[h.make_tensor_value_info('data',T.FLOAT,input_shape)],
                       [h.make_tensor_value_info(s,T.FLOAT,output_shapes[s]) for s in outputs],initial)
    model=h.make_model(graph,producer_name='Effect Lab original face conversion',opset_imports=[h.make_opsetid('',18)]);model.ir_version=10
    onnx.checker.check_model(model);output.parent.mkdir(parents=True,exist_ok=True);onnx.save(model,output)
    report=dict(source=folder.name,packed12=packed,quantize=quantize,input=input_shape,outputs=output_shapes,dynamic_input=dynamic_input,weight_bytes=offset,trailer_bytes=remaining,layers=layer_info,selected_outputs=output_names,onnx_nodes=len(nodes))
    output.with_suffix('.json').write_text(json.dumps(report,indent=2)+'\n');return report

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('folder',type=Path);p.add_argument('output',type=Path);p.add_argument('--quantize',action='store_true');p.add_argument('--outputs',nargs='+',help='Keep only these named outputs and their ancestors');p.add_argument('--dynamic-input',action='store_true',help='Allow varying spatial dimensions for convolution-only graphs');a=p.parse_args()
    r=convert(a.folder,a.output,a.quantize,a.outputs,a.dynamic_input);print(json.dumps({k:v for k,v in r.items() if k!='layers'}))
