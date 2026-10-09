#!/usr/bin/env python3
"""Extract original package-authored TT295 UVs and triangles; never reads photos.

Usage: python3 tools/extract_makeup_tt295.py /path/to/original-package
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import struct

ROOT=Path(__file__).resolve().parents[1]
MESH_NAMES=[
 '12700175322249611987-5891583894714228915.mesh',
 '15298389979568976405-6133511378928852657.mesh',
 '3189927803139804916-727998476918625172.mesh',
 '8305677783335965474-13064040672492298121.mesh',
]

def extract(path):
    data=path.read_bytes()
    if not data.startswith(b'%SerializedFormat%@\n'):
        raise ValueError(f'{path.name}: unsupported serialization')
    # Serialized PrimitiveVector<float>: tag, type24, float count, packed data.
    vertex_header=struct.pack('<III',0xcf7a586e,24,8850)
    vertex_field=data.find(vertex_header)
    if vertex_field<0 or data.find(vertex_header,vertex_field+1)>=0:
        raise ValueError('Expected one 8850-float vertex buffer')
    vertex_start=vertex_field+12
    values=struct.unpack_from('<8850f',data,vertex_start)
    vertices=[values[i:i+5] for i in range(0,len(values),5)]
    assert len(vertices)==6*295
    uv=[v for row in vertices[:295] for v in row[3:5]]
    assert all(0<=v<=1 for v in uv)
    assert all(row[2]==0 for row in vertices)
    for face in range(1,6):
        copy=vertices[face*295:(face+1)*295]
        assert all(row[:2]==(-1.,-1.) for row in copy)
        assert [v for row in copy for v in row[3:5]]==uv
    # Serialized PrimitiveVector<uint16>: tag, type22, element count, data.
    index_header=struct.pack('<II',0x6b282c5f,22)
    submeshes=[]
    for match in re.finditer(re.escape(index_header),data):
        count=struct.unpack_from('<I',data,match.end())[0]
        start=match.end()+4
        indices=list(struct.unpack_from(f'<{count}H',data,start))
        assert count==1656 and count%3==0
        submeshes.append((start,indices))
    assert len(submeshes)==5
    indices=submeshes[0][1]
    assert min(indices)==0 and max(indices)==292
    for face,(_,copy) in enumerate(submeshes):
        assert [i-face*295 for i in copy]==indices
    metadata={'source':'AmazingFeature/model/'+path.name,'sha256':hashlib.sha256(data).hexdigest(),
      'bytes':len(data),'vertexFloatDataOffset':vertex_start,'vertexStrideFloats':5,
      'indexDataOffsets':[s for s,_ in submeshes],'verticesPerFace':295,
      'storedVertexSlots':6,'submeshCount':5,'indicesPerFace':len(indices),
      'trianglesPerFace':len(indices)//3,'maxReferencedVertex':max(indices)}
    return uv,indices,metadata

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('package',type=Path)
    parser.add_argument('--output',type=Path,default=ROOT/'public/effects/boy-ii/makeup-tt295.json')
    args=parser.parse_args()
    records=[];expected=None
    for name in MESH_NAMES:
        uv,indices,record=extract(args.package/'AmazingFeature/model'/name)
        if expected is None:expected=(uv,indices)
        assert expected==(uv,indices),'Makeup meshes have different UVs or topology'
        records.append(record)
    uv,indices=expected
    asset={'uv':uv,'indices':indices,'provenance':{
      'source':'Original BOY II scene meshes, not native fallback248',
      'coordinateSystem':'Original raw UV values preserved without V flip',
      'vertexLayout':['x','y','z','u','v'],
      'matchingSourceMeshes':records,
      'uvSha256':hashlib.sha256(struct.pack('<590f',*uv)).hexdigest(),
      'indicesSha256':hashlib.sha256(struct.pack('<1656H',*indices)).hexdigest(),
      'notes':'First face submesh. All five submesh index buffers are identical after subtracting faceIndex*295; all six vertex slots contain identical UVs. Eye-center vertices293 and294 are not referenced by these makeup triangles.'}}
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(asset,separators=(',',':'))+'\n')
    print(f'{args.output}: {len(uv)//2} UV vertices, {len(indices)//3} triangles; all four original meshes agree')

if __name__=='__main__':main()
