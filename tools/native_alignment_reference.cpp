// Synthetic oracle for the exact native crop_type=1 similarity/margin/offset path.
#include <dlfcn.h>
#include <vector>
#include <array>
#include <iostream>
#include <fstream>
#include <cstring>
struct Point{float x,y;};
template<class T>T read(const char*p,size_t n){T x;memcpy(&x,p+n,sizeof x);return x;}
int main(int argc,char**argv){
 void*lib=dlopen("/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib",RTLD_LAZY);if(!lib){std::cerr<<dlerror();return 1;}
 auto anchor=(char*)dlsym(lib,"_ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv");auto base=anchor-0x1f278e4;
 auto ref=((const std::vector<Point>&(*)())(base+0x1f31858))();
 std::vector<Point>points;for(auto p:ref)points.push_back({170*p.x-30*p.y+340,30*p.x+170*p.y+220});
 std::array<char,256>matrix{};((void(*)(void*))(base+0xa25da0))(matrix.data());
 ((void(*)(const std::vector<Point>&,const std::vector<Point>&,void*))(base+0x1f287c0))(points,ref,matrix.data());
 ((void(*)(void*,void*,int,int,float,float))(base+0x1f289f8))(matrix.data(),matrix.data(),320,320,.375f,.375f);
 ((void(*)(void*,void*,float,float))(base+0x1f28bdc))(matrix.data(),matrix.data(),0,31);
 auto data=read<char*>(matrix.data(),16);auto step=*read<size_t*>(matrix.data(),72);
 std::ofstream out(argv[1]);out<<"{\"sourceToCrop\":[";for(int y=0;y<2;y++)for(int x=0;x<3;x++){if(y||x)out<<",";out.precision(12);out<<read<float>(data+y*step,x*4);}out<<"],\"points\":[";
 for(int i=0;i<points.size();i++){if(i)out<<",";out<<"{\"x\":"<<points[i].x<<",\"y\":"<<points[i].y<<"}";}out<<"]}\n";
}
