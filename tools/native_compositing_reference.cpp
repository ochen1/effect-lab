// Development-only synthetic geometry oracle. Browser never loads native code.
#include <dlfcn.h>
#include <vector>
#include <array>
#include <fstream>
#include <iostream>
#include <cstring>
#include <cmath>
struct P {float x,y;};
template<class T>T sym(void*l,const char*n){auto p=dlsym(l,n);if(!p)throw std::runtime_error(dlerror());return (T)p;}
template<class T>void dump(const std::string&p,const T*data,size_t size){std::ofstream f(p,std::ios::binary);f.write((char*)data,size*sizeof(T));}
int main(int argc,char**argv){
 void*l=dlopen("/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib",RTLD_LAZY);if(!l){std::cerr<<dlerror();return 1;}
 std::array<char,8192>face{},extra{};std::ifstream in(argv[1],std::ios::binary);in.read(face.data()+20,848);
 std::array<char,65536> object{};
 auto ctor=sym<void(*)(void*)>(l,"_ZN3BEF19FaceParamFaceUCV248C1Ev");ctor(object.data());
 auto update=sym<void(*)(void*,void*,int,int,int,int,void*)>(l,"_ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE");
 auto get=sym<const std::vector<P>&(*)(void*,int)>(l,"_ZN3BEF19FaceParamFaceUCV24813getFaceVertexEi");
 auto uv=sym<const std::vector<P>&(*)(void*,int)>(l,"_ZN3BEF19FaceParamFaceUCV24815getUVDataByTypeEi");
 auto triangles=sym<const std::vector<unsigned short>&(*)(void*,int)>(l,"_ZN3BEF19FaceParamFaceUCV24815getFaceTriangleEi");
 update(object.data(),face.data(),256,256,256,256,extra.data());
 std::vector<P> base=get(object.data(),0);const auto&tex=uv(object.data(),0);const auto&idx=triangles(object.data(),0);
 std::string dest=argv[2];dump(dest+".positions.f32",base.data(),base.size());dump(dest+".uv.f32",tex.data(),tex.size());dump(dest+".triangles.u16",idx.data(),idx.size());
 std::cerr<<base.size()<<" vertices "<<tex.size()<<" uv "<<idx.size()<<" indices\n";
 auto saved=face;std::vector<float>weights;
 for(int k=0;k<212;k++){
  face=saved;float *p=(float*)(face.data()+20);p[k]+=4;
  update(object.data(),face.data(),256,256,256,256,extra.data());const auto&out=get(object.data(),0);
  for(int j=0;j<out.size();j++){weights.push_back((out[j].x-base[j].x)/4);weights.push_back((out[j].y-base[j].y)/4);}
 }
 dump(dest+".jacobian.f32",weights.data(),weights.size());
}
