// Development-only complete face SDK oracle for libeffect 22.1 on macOS arm64.
// Never publish photo inputs, output records, or interposer dumps. Pass an output
// path outside the repository. Only this helper's source belongs in the repo.
// Build: clang++ -std=c++17 tools/native_face_reference.cpp -o research/native-face-reference
// Inputs: MODEL_FILE RGBA_FILE WIDTH HEIGHT OUTPUT_FILE [CREATE_FLAGS] [DETECT_FLAGS]
// FACE_EXTRA_MODEL: optional original extra-model path (loaded with feature 256).
// FACE_ITERATIONS: defaults to 2; the native tracker confirms a face on frame 2.
// FACE_PIXEL_FORMAT: defaults to 0 for the SDK's RGBA input contract.
// EFFECT_LIBRARY: override the original native library path. Native libraries are
// a local validation prerequisite and are never part of the browser application.
#include <dlfcn.h>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <fstream>
#include <iostream>
#include <iterator>
#include <stdexcept>
#include <string>
#include <vector>

int main(int argc,char**argv) try {
  if(argc<6) {std::cerr<<"MODEL_FILE RGBA_FILE WIDTH HEIGHT OUTPUT_FILE [CREATE_FLAGS] [DETECT_FLAGS]\n";return 2;}
  const char* path=std::getenv("EFFECT_LIBRARY");
  if(!path) path="/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib";
  void* lib=dlopen(path,RTLD_LAZY);
  if(!lib)throw std::runtime_error(dlerror());
  auto exportedCreate=dlsym(lib,"bef_effect_face_detect_create");
  Dl_info info{};
  if(!exportedCreate || !dladdr(exportedCreate,&info))throw std::runtime_error("Cannot identify native face SDK");
  auto base=static_cast<char*>(info.dli_fbase);
  // The deprecated public create API is a directory adapter. These original
  // direct-file entrypoints accept the extracted package model paths unchanged.
  auto create=reinterpret_cast<int(*)(uint64_t,const char*,void**)>(base+0x273dc10);
  auto detect=reinterpret_cast<int(*)(void*,const void*,int,int,int,int,int,uint64_t,void*)>(base+0x273dff0);
  auto destroy=reinterpret_cast<void(*)(void*)>(base+0x273ec88);
  void* handle=nullptr;
  const uint64_t createFlags=argc>6?std::strtoull(argv[6],nullptr,0):131072;
  int code=create(createFlags,argv[1],&handle);
  std::cout<<"CREATE "<<code<<" handle="<<(handle!=nullptr)<<std::endl;
  if(code||!handle)return 1;
  struct Release {void* handle;void(*destroy)(void*);~Release(){destroy(handle);}} release{handle,destroy};
  const char* extra=std::getenv("FACE_EXTRA_MODEL");
  if(extra) {
    auto setModel=reinterpret_cast<int(*)(void*,uint64_t,const char*)>(base+0x273dd0c);
    code=setModel(handle,256,extra);
    std::cout<<"EXTRA_MODEL "<<code<<std::endl;
    if(code)return 1;
  }
  // The third argument is FLOAT (arm64 s0), not integer w2. The wrong ABI
  // silently sets max-face count from an unrelated register and suppresses faces.
  auto param=reinterpret_cast<int(*)(void*,int,float)>(dlsym(lib,"bef_effect_face_detect_setparam"));
  if(!param)throw std::runtime_error("Missing parameter setter");
  int interval=param(handle,1,1.0f),maxFaces=param(handle,2,5.0f);
  std::cout<<"PARAM "<<interval<<","<<maxFaces<<std::endl;
  if(interval||maxFaces)return 1;
  int width=std::stoi(argv[3]),height=std::stoi(argv[4]);
  if(width<=0||height<=0||width>32768||height>32768)throw std::runtime_error("Invalid image dimensions");
  std::ifstream input(argv[2],std::ios::binary);
  if(!input)throw std::runtime_error("Cannot open RGBA input");
  std::vector<uint8_t> pixels((std::istreambuf_iterator<char>(input)),{});
  if(pixels.size()!=size_t(width)*height*4)throw std::runtime_error("RGBA input byte count does not match dimensions");
  // SDK output is ten 1324-byte base records, ten 1408-byte extra records, count.
  // Base record: int32 bbox at 0, float score at 16, 106 xy float pairs at 20.
  constexpr size_t outputBytes=27324,faceCountOffset=27320;
  std::vector<uint8_t> output(outputBytes);
  const int format=std::getenv("FACE_PIXEL_FORMAT")?std::atoi(std::getenv("FACE_PIXEL_FORMAT")):0;
  const int iterations=std::getenv("FACE_ITERATIONS")?std::atoi(std::getenv("FACE_ITERATIONS")):2;
  if(iterations<1||iterations>100)throw std::runtime_error("FACE_ITERATIONS must be 1..100");
  const uint64_t detectFlags=argc>7?std::strtoull(argv[7],nullptr,0):(131072|(extra?256:0));
  int count=0;
  for(int iteration=0;iteration<iterations;iteration++) {
    code=detect(handle,pixels.data(),format,width,height,width*4,0,detectFlags,output.data());
    std::memcpy(&count,output.data()+faceCountOffset,4);
    std::cout<<"ITERATION "<<iteration<<" status="<<code<<" count="<<count<<std::endl;
    if(code)return 1;
  }
  if(count<0||count>10)throw std::runtime_error("Unexpected SDK output ABI");
  std::ofstream out(argv[5],std::ios::binary);
  out.write(reinterpret_cast<char*>(output.data()),output.size());
  if(!out)throw std::runtime_error("Cannot write SDK output");
  std::cout<<"DETECT "<<code<<" FACE_COUNT "<<count<<" OUTPUT_BYTES "<<output.size()<<std::endl;
  return 0;
} catch(const std::exception& error) {std::cerr<<error.what()<<"\n";return 1;}
