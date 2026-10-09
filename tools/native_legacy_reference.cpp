// Development-only CPU oracle for legacy quantized graph+weight models.
// ABI recovered from libbytenn 3.12.30 (macOS arm64); no native code is shipped
// to the browser. Uses public exported CPU Thrustor symbols, not OpenCL IESNN.
// Build: clang++ -std=c++17 tools/native_legacy_reference.cpp -o research/native-legacy-reference
// Usage: native-legacy-reference GRAPH WEIGHTS [INPUT.raw OUTPUT_PREFIX [OUTPUT_NAME...]]
// Input/output raw bytes use the tensor dtype and fractional bits printed here.
#include <array>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <dlfcn.h>
#include <fstream>
#include <iostream>
#include <iterator>
#include <stdexcept>
#include <string>
#include <vector>

// Thrustor::Extract returns 32 bytes via arm64's indirect return register x8.
struct LayerOutput { void* data; int n,w,h,c,dtype,fraction; };
static_assert(sizeof(LayerOutput)==32);
template<class T> T symbol(void* lib,const char* name) {
  auto p=dlsym(lib,name);if(!p) throw std::runtime_error(dlerror());
  return reinterpret_cast<T>(p);
}
std::vector<unsigned char> load(const char* path) {
  std::ifstream file(path,std::ios::binary);
  if(!file) throw std::runtime_error(std::string("Cannot read ")+path);
  return {(std::istreambuf_iterator<char>(file)),{}};
}
size_t bytes(const LayerOutput& t) {
  if(!t.data) throw std::runtime_error("Null tensor data");
  size_t result=1;
  for(int dimension:{t.n,t.h,t.w,t.c}) {
    if(dimension<=0 || result>100000000/static_cast<size_t>(dimension)) throw std::runtime_error("Invalid tensor shape");
    result*=dimension;
  }
  const int width=t.dtype==0||t.dtype==1?1:t.dtype==2?2:t.dtype==4?4:0;
  if(!width) throw std::runtime_error("Unsupported tensor dtype "+std::to_string(t.dtype));
  return result*width;
}
void describe(const std::string& name,const LayerOutput& t) {
  std::cout<<"TENSOR "<<name<<" NHWC="<<t.n<<","<<t.h<<","<<t.w<<","<<t.c
           <<" dtype="<<t.dtype<<" fraction="<<t.fraction<<" bytes="<<bytes(t)<<std::endl;
}
int main(int argc,char** argv) try {
  if(argc!=3 && argc<5) {std::cerr<<"Usage: native-legacy-reference GRAPH WEIGHTS [INPUT.raw OUTPUT_PREFIX [OUTPUT_NAME...]]\n";return 2;}
  const char* path=std::getenv("BYTENN_LIBRARY");
  if(!path) path="/Volumes/Effect House/Effect House.app/Contents/Frameworks/libbytenn.dylib";
  void* lib=dlopen(path,RTLD_LAZY);if(!lib) throw std::runtime_error(dlerror());
  auto rawGraph=load(argv[1]);std::string graph(rawGraph.begin(),rawGraph.end());
  auto weights=load(argv[2]);
  std::vector<std::string> selected;
  for(int i=5;i<argc;i++) selected.emplace_back(argv[i]);
  alignas(16) std::array<unsigned char,16> engine{};
  symbol<void(*)(void*)>(lib,"_ZN10bytenn_cpu8ThrustorC1Ev")(engine.data());
  auto create=symbol<int(*)(void*,const std::string&,void*,std::vector<std::string>&)>(lib,"_ZN10bytenn_cpu8Thrustor9CreateNetERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEPvRNS1_6vectorIS7_NS5_IS7_EEEE");
  int status=create(engine.data(),graph,weights.data(),selected);
  std::cout<<"CREATE "<<status<<std::endl;if(status) return 1;
  symbol<void(*)(void*,int)>(lib,"_ZN10bytenn_cpu8Thrustor10setThreadsEi")(engine.data(),1);
  auto names=symbol<std::vector<std::string>(*)(void*)>(lib,"_ZN10bytenn_cpu8Thrustor13GetInputNamesEv")(engine.data());
  auto extract=symbol<LayerOutput(*)(void*,const std::string&)>(lib,"_ZN10bytenn_cpu8Thrustor7ExtractERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE");
  if(names.size()!=1) throw std::runtime_error("Expected one input tensor");
  auto input=extract(engine.data(),names[0]);describe(names[0],input);
  if(argc>=5) {
    auto pixels=load(argv[3]);
    if(pixels.size()!=bytes(input)) throw std::runtime_error("Input byte length does not match native tensor");
    std::memcpy(input.data,pixels.data(),pixels.size());
    status=symbol<int(*)(void*)>(lib,"_ZN10bytenn_cpu8Thrustor9InferenceEv")(engine.data());
    std::cout<<"INFERENCE "<<status<<std::endl;if(status) return 1;
    if(selected.empty()) selected=symbol<std::vector<std::string>(*)(void*)>(lib,"_ZN10bytenn_cpu8Thrustor14GetOutputNamesEv")(engine.data());
    for(size_t i=0;i<selected.size();i++) {
      auto output=extract(engine.data(),selected[i]);describe(selected[i],output);
      const std::string filename=std::string(argv[4])+"-"+std::to_string(i)+".raw";
      std::ofstream file(filename,std::ios::binary);file.write(static_cast<char*>(output.data),bytes(output));
      if(!file) throw std::runtime_error("Cannot write "+filename);
      std::ofstream meta(filename+".json");
      meta<<"{\"name\":\""<<selected[i]<<"\",\"shape_nhwc\":["<<output.n<<","<<output.h<<","<<output.w<<","<<output.c
          <<"],\"dtype\":"<<output.dtype<<",\"fraction\":"<<output.fraction<<"}\n";
    }
  }
  symbol<void(*)(void*)>(lib,"_ZN10bytenn_cpu8ThrustorD1Ev")(engine.data());
  return 0;
} catch(const std::exception& error) {std::cerr<<error.what()<<"\n";return 1;}
