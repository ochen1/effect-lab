// Synthetic reference for the native MobileCV float32 -> U8 scaled conversion kernel.
#include <dlfcn.h>
#include <fstream>
#include <iostream>
#include <vector>
#include <cmath>
#include <cstdint>
int main(int argc,char**argv){
 void*lib=dlopen("/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib",RTLD_LAZY);if(!lib){std::cerr<<dlerror();return 1;}
 auto base=(char*)dlsym(lib,"_ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv")-0x1f278e4;
 // cv::Mat::convertTo at0x9357d0 selects scaling table0x3521898[dstDepth][srcDepth].
 auto kernel=*(void(**)(const void*,size_t,const void*,size_t,void*,size_t,const int*,void*))(base+0x3521898+5*8);
 std::cerr<<"kernel offset="<<std::hex<<((char*)kernel-base)<<"\n";
 std::vector<float>input;for(int i=-8;i<264;i++){input.push_back(float((i+.5-127.5)/127.5));input.push_back(std::nextafter(input.back(),-INFINITY));input.push_back(std::nextafter(input[input.size()-2],INFINITY));}
 for(int i=0;i<4096;i++)input.push_back(float(std::sin(i*.419)*1.2));
 std::vector<unsigned char>out(input.size());int size[2]={(int)input.size(),1};double coeff[2]={127.5,127.5};kernel(input.data(),input.size()*4,nullptr,0,out.data(),out.size(),size,coeff);
 std::ofstream f(argv[1]);f<<"{\"input\":[";f.precision(12);for(int i=0;i<input.size();i++){if(i)f<<",";f<<input[i];}f<<"],\"output\":[";for(int i=0;i<out.size();i++){if(i)f<<",";f<<(int)out[i];}f<<"]}\n";
}
