// Development-only oracle. The browser application never loads this library.
// Config/Tensor offsets are derived from this exact libbytenn build's accessors.
#include <dlfcn.h>
#include <array>
#include <cstdint>
#include <cstring>
#include <cstdlib>
#include <limits>
#include <fstream>
#include <iostream>
#include <iterator>
#include <memory>
#include <string>
#include <vector>

struct NativeVector { unsigned char *begin=nullptr, *end=nullptr, *capacity=nullptr; };
template<class T> T symbol(void* lib,const char* name) {
  auto pointer=dlsym(lib,name);
  if(!pointer) throw std::runtime_error(dlerror());
  return reinterpret_cast<T>(pointer);
}
template<class T> void store(unsigned char* p,size_t offset,T value) {std::memcpy(p+offset,&value,sizeof(T));}
template<class T> T read(const unsigned char* p,size_t offset) {T value;std::memcpy(&value,p+offset,sizeof(T));return value;}

int main(int argc,char** argv) {
  if(argc!=2 && argc!=4 && argc!=5) {
    std::cerr<<"Usage: native-reference MODEL.bm [INPUT.f32 OUTPUT.f32 [LAYER]]\n";
    return 2;
  }
  const char* library=std::getenv("BYTENN_LIBRARY");
  if(!library) library="/Volumes/Effect House/Effect House.app/Contents/Frameworks/libbytenn.dylib";
  void* lib=dlopen(library,RTLD_LAZY);
  if(!lib) {std::cerr<<dlerror()<<"\n";return 2;}
  std::ifstream stream(argv[1],std::ios::binary);
  if(!stream) throw std::runtime_error("Cannot open native model");
  std::vector<unsigned char> model((std::istreambuf_iterator<char>(stream)),{});
  if(model.empty() || model.size()>std::numeric_limits<int>::max()) throw std::runtime_error("Invalid model size");
  alignas(16) std::array<unsigned char,512> config{};
  store<int>(config.data(),0,0);
  store<void*>(config.data(),8,model.data());
  store<int>(config.data(),16,(int)model.size());
  store<int>(config.data(),24,2);
  std::vector<std::string> selectedOutput;
  if(argc>4) {
    selectedOutput.push_back(argv[4]);
    std::memcpy(config.data()+104,&selectedOutput,sizeof(selectedOutput));
  }
  auto create=symbol<std::shared_ptr<void>(*)()>(lib,"_ZN6BYTENN13EngineFactory6CreateEv");
  auto engine=create();
  auto init=symbol<int(*)(void*,const void*)>(lib,"_ZN6BYTENN16ByteNNEngineImpl4InitERKNS_6ConfigE");
  int status=init(engine.get(),config.data());
  std::cout<<"INIT "<<status<<std::endl;
  if(status) return 1;
  NativeVector input;
  auto get=symbol<int(*)(void*,NativeVector&)>(lib,"_ZN6BYTENN16ByteNNEngineImpl14GetInputConfigERNSt3__16vectorINS_6TensorENS1_9allocatorIS3_EEEE");
  status=get(engine.get(),input);
  if(status || !input.begin || !input.end) throw std::runtime_error("Cannot read native input config");
  std::cout<<"INPUT "<<status<<" bytes="<<(input.end-input.begin)<<std::endl;
  if(input.end-input.begin!=64) throw std::runtime_error("Unexpected native input tensor ABI");
  if(read<int>(input.begin,8)!=1 || read<int>(input.begin,12)!=4 ||
     read<int>(input.begin,16)!=1 || read<int>(input.begin,20)!=320 ||
     read<int>(input.begin,24)!=320 || read<int>(input.begin,28)!=3)
    throw std::runtime_error("Expected native NHWC float32 1x320x320x3 input");
  if(argc<4) return 0;
  std::ifstream inputFile(argv[2],std::ios::binary);
  std::vector<unsigned char> pixels((std::istreambuf_iterator<char>(inputFile)),{});
  if(pixels.size()!=320*320*3*sizeof(float)) throw std::runtime_error("Input must be NHWC float32 1x320x320x3");
  store<void*>(input.begin,0,pixels.data());
  auto set=symbol<int(*)(void*,const NativeVector&)>(lib,"_ZN6BYTENN16ByteNNEngineImpl8SetInputERKNSt3__16vectorINS_6TensorENS1_9allocatorIS3_EEEE");
  status=set(engine.get(),input);if(status) return status;
  auto infer=symbol<int(*)(void*)>(lib,"_ZN6BYTENN16ByteNNEngineImpl9InferenceEv");
  status=infer(engine.get());std::cout<<"INFERENCE "<<status<<std::endl;if(status) return status;
  NativeVector output;
  auto result=symbol<int(*)(void*,NativeVector*)>(lib,"_ZN6BYTENN16ByteNNEngineImpl9GetOutputEPNSt3__16vectorINS_6TensorENS1_9allocatorIS3_EEEE");
  status=result(engine.get(),&output);if(status) return status;
  if(!output.begin || !output.end || output.end-output.begin!=64) throw std::runtime_error("Unexpected native output tensor ABI");
  size_t count=1;
  std::cout<<"OUTPUT format="<<read<int>(output.begin,8)<<" dtype="<<read<int>(output.begin,12)<<" shape=";
  for(int offset=16;offset<32;offset+=4){int size=read<int>(output.begin,offset);if(size<=0 || size>1000000 || count>100000000/static_cast<size_t>(size)) throw std::runtime_error("Invalid native output dimensions");count*=size;std::cout<<size<<",";}
  std::cout<<std::endl;
  if(read<int>(output.begin,12)!=4) throw std::runtime_error("Expected float32 native output");
  std::ofstream destination(argv[3],std::ios::binary);
  if(count>100000000 || !read<char*>(output.begin,0)) throw std::runtime_error("Invalid native output size/pointer");
  destination.write(read<char*>(output.begin,0),count*sizeof(float));
  if(!destination) throw std::runtime_error("Could not write native output");
  return 0;
}
