// Development-only interposition of native face inference for preprocessing audit.
// Compile as dylib and inject into the standalone native_face_reference process.
// FACE_TRACE_DIR must point outside the publish tree when using personal imagery.
#include <dlfcn.h>
#include <fstream>
#include <iomanip>
#include <execinfo.h>
#include <string>
#include <cstdlib>
#include <cstdio>
#include <vector>
#include <atomic>
#include <mach/mach.h>
#include <sys/mman.h>
#include <libkern/OSCacheControl.h>
#include <cstring>
struct Output {void* data;int n,w,h,c,dtype,fraction;};
extern "C" int target_infer(void*) asm("__ZN8espresso8Thrustor9InferenceEv");
static std::atomic<unsigned> counter{0};
static void dump(void* engine,unsigned id,const std::string& name,const char* dir) {
 auto extract=(Output(*)(void*,const std::string&))dlsym(RTLD_NEXT,"_ZN8espresso8Thrustor7ExtractERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE");
 if(!extract)return;
 Output out=extract(engine,name);
 if(!out.data||out.n<=0||out.h<=0||out.w<=0||out.c<=0)return;
 size_t count=(size_t)out.n*out.h*out.w*out.c;
 if(count>100000000)return;
 std::string safe=name;for(auto& c:safe)if(c=='/')c='_';
 std::string prefix=std::string(dir)+"/"+std::to_string(id)+"-"+safe;
 std::ofstream data(prefix+".raw",std::ios::binary);data.write((char*)out.data,count*(out.dtype==2?2:out.dtype==4?4:1));
 std::ofstream meta(prefix+".json");meta<<"{\"shape\":["<<out.n<<","<<out.h<<","<<out.w<<","<<out.c<<"],\"dtype\":"<<out.dtype<<",\"fraction\":"<<out.fraction<<"}";
 fprintf(stderr,"TRACE %u %s %dx%dx%dx%d dtype%d frac%d\n",id,name.c_str(),out.n,out.h,out.w,out.c,out.dtype,out.fraction);
}

using WarpFn=void(*)(void*,void*,void*,void*);
static WarpFn originalWarp=nullptr;
static unsigned warpCounter=0;
static void tracedWarp(void* transform,void* source,void* destination,void* size) {
 const char* dir=getenv("FACE_TRACE_DIR");
 if(dir){
  unsigned id=warpCounter++;
  std::ofstream out(std::string(dir)+"/warp-"+std::to_string(id)+".json");
  out<<std::setprecision(17)<<"{\"size\":["<<((int*)size)[0]<<","<<((int*)size)[1]<<"],\"matrices\":[";
  for(int k=0;k<2;k++){
   char* mat=(char*)transform+k*96;
   int rows=*(int*)(mat+8),cols=*(int*)(mat+12);unsigned flags=*(unsigned*)mat;
   if(k)out<<",";out<<"{\"rows\":"<<rows<<",\"cols\":"<<cols<<",\"flags\":"<<flags<<",\"data\":[";
   if(rows>0&&cols>0&&rows*cols<=16){void* data=*(void**)(mat+16);for(int i=0;i<rows*cols;i++){if(i)out<<",";out<<( (flags&7)==6 ? ((double*)data)[i] : ((float*)data)[i]);}}
   out<<"]}";
  }
  out<<"],\"template\":[";
  size_t count=*(size_t*)((char*)transform+0x4f0);
  float* points=*(float**)((char*)transform+0xc0);
  if(points&&count>0&&count<=1000)for(size_t i=0;i<count;i++){if(i)out<<",";out<<points[i];}
  out<<"]}";
 }
 originalWarp(transform,source,destination,size);
}

using FitFn=void*(*)(void*,void*);
static FitFn originalFit=nullptr;
static unsigned fitCounter=0;
static void* tracedFit(void* object,void* source){
 const char* dir=getenv("FACE_TRACE_DIR");
 if(dir){
  std::ofstream out(std::string(dir)+"/fit-"+std::to_string(fitCounter++)+".json");out<<std::setprecision(17)<<"{";
  for(int k=0;k<2;k++){
   char* vector=k?(char*)object+0xc0:(char*)source;size_t count=*(size_t*)(vector+0x430);float* values=*(float**)vector;
   if(k)out<<",";out<<(k?"\"target\":[":"\"source\":[");
   if(count>0&&count<=1000&&values)for(size_t i=0;i<count;i++){if(i)out<<",";out<<values[i];}out<<"]";
  }out<<"}";
 }
 return originalFit(object,source);
}

using CropFn=void*(*)(void*,void*,void*,long,long,long,long,long,float);
static CropFn originalCrop=nullptr;
static unsigned cropCounter=0;
static void* tracedCrop(void* object,void* source,void* rect,long a,long b,long c,long d,long e,float scale){
 const char* dir=getenv("FACE_TRACE_DIR");unsigned id=cropCounter++;float before[4];std::memcpy(before,rect,16);
 void* result=originalCrop(object,source,rect,a,b,c,d,e,scale);
 if(dir){std::ofstream out(std::string(dir)+"/rect-"+std::to_string(id)+".json");out<<std::setprecision(17)<<"{\"before\":[";
  for(int i=0;i<4;i++){if(i)out<<",";out<<before[i];}out<<"],\"after\":[";for(int i=0;i<4;i++){if(i)out<<",";out<<((float*)rect)[i];}
  out<<"],\"params\":["<<a<<","<<b<<","<<c<<","<<d<<","<<e<<"],\"scale\":"<<scale<<"}";
 }return result;
}
static void installWarpTrace(){
 if(originalWarp)return;
 void* effect=dlopen("/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib",RTLD_LAZY);
 void* address=dlsym(effect,"_ZN5smash22ImageTransformNewAlign9warpImageERKN9mobilecv23MatERS2_RKNS1_5Size_IiEE");
 if(!address)return;
 auto jump=[](void* output,void* target){uint32_t code[2]={0x58000050,0xd61f0200};std::memcpy(output,code,8);std::memcpy((char*)output+8,&target,8);};
 void* trampoline=mmap(nullptr,4096,PROT_READ|PROT_WRITE,MAP_PRIVATE|MAP_ANON,-1,0);
 if(trampoline==MAP_FAILED)return;
 std::memcpy(trampoline,address,16);jump((char*)trampoline+16,(char*)address+16);mprotect(trampoline,4096,PROT_READ|PROT_EXEC);
 uintptr_t page=(uintptr_t)address&~(uintptr_t)(vm_page_size-1);
 if(vm_protect(mach_task_self(),page,vm_page_size,false,VM_PROT_READ|VM_PROT_WRITE|VM_PROT_COPY)!=KERN_SUCCESS){fprintf(stderr,"warp patch denied\n");return;}
 originalWarp=(WarpFn)trampoline;jump(address,(void*)&tracedWarp);sys_icache_invalidate(address,16);vm_protect(mach_task_self(),page,vm_page_size,false,VM_PROT_READ|VM_PROT_EXECUTE);
 fprintf(stderr,"WARP TRACE installed\n");
 Dl_info image{};dladdr(address,&image);void* fitAddress=(char*)image.dli_fbase+0x27426c0;
 void* fitTrampoline=mmap(nullptr,4096,PROT_READ|PROT_WRITE,MAP_PRIVATE|MAP_ANON,-1,0);
 if(fitTrampoline!=MAP_FAILED){
  std::memcpy(fitTrampoline,fitAddress,16);jump((char*)fitTrampoline+16,(char*)fitAddress+16);mprotect(fitTrampoline,4096,PROT_READ|PROT_EXEC);
  uintptr_t fitPage=(uintptr_t)fitAddress&~(uintptr_t)(vm_page_size-1);
  if(vm_protect(mach_task_self(),fitPage,vm_page_size,false,VM_PROT_READ|VM_PROT_WRITE|VM_PROT_COPY)==KERN_SUCCESS){originalFit=(FitFn)fitTrampoline;jump(fitAddress,(void*)&tracedFit);sys_icache_invalidate(fitAddress,16);vm_protect(mach_task_self(),fitPage,vm_page_size,false,VM_PROT_READ|VM_PROT_EXECUTE);fprintf(stderr,"FIT TRACE installed\n");}
 }

 void* cropAddress=(char*)image.dli_fbase+0x273f8bc;
 void* cropTrampoline=mmap(nullptr,4096,PROT_READ|PROT_WRITE,MAP_PRIVATE|MAP_ANON,-1,0);
 if(cropTrampoline!=MAP_FAILED){
  std::memcpy(cropTrampoline,cropAddress,16);jump((char*)cropTrampoline+16,(char*)cropAddress+16);mprotect(cropTrampoline,4096,PROT_READ|PROT_EXEC);
  uintptr_t cropPage=(uintptr_t)cropAddress&~(uintptr_t)(vm_page_size-1);
  if(vm_protect(mach_task_self(),cropPage,vm_page_size,false,VM_PROT_READ|VM_PROT_WRITE|VM_PROT_COPY)==KERN_SUCCESS){originalCrop=(CropFn)cropTrampoline;jump(cropAddress,(void*)&tracedCrop);sys_icache_invalidate(cropAddress,16);vm_protect(mach_task_self(),cropPage,vm_page_size,false,VM_PROT_READ|VM_PROT_EXECUTE);fprintf(stderr,"RECT TRACE installed\n");}
 }

}

extern "C" int face_trace_inference(void* engine) {
 installWarpTrace();
 void* library=dlopen("/Volumes/Effect House/Effect House.app/Contents/Frameworks/libbytenn.dylib",RTLD_LAZY);
 Dl_info info{};dladdr(dlsym(library,"_ZN8espresso8Thrustor7ExtractERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE"),&info);
 auto original=(int(*)(void*))((char*)info.dli_fbase+0x1e690);
 const char* dir=getenv("FACE_TRACE_DIR");unsigned id=counter++;
 if(dir){dump(engine,id,"data",dir);void* frames[40];int count=backtrace(frames,40);std::ofstream trace(std::string(dir)+"/"+std::to_string(id)+"-stack.txt");for(int i=0;i<count;i++){Dl_info frame{};dladdr(frames[i],&frame);trace<<(frame.dli_fname?frame.dli_fname:"")<<" +0x"<<std::hex<<((uintptr_t)frames[i]-(uintptr_t)frame.dli_fbase)<<"\n";}}
 int result=original(engine);
 if(dir){
  auto names=(std::vector<std::string>(*)(void*))dlsym(RTLD_NEXT,"_ZN8espresso8Thrustor14GetOutputNamesEv");
  if(names)for(auto& name:names(engine))dump(engine,id,name,dir);
  else for(const char* name:{"fc_landmark_s1","prob","fc","fc_pitch","fc_yaw"})dump(engine,id,name,dir);
 }
 return result;
}
__attribute__((used)) static const struct {const void* replacement;const void* replacee;} interpose[] __attribute__((section("__DATA,__interpose")))={{(void*)&face_trace_inference,(void*)&target_infer}};
