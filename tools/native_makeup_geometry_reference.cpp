// Synthetic-only development oracle for independently ported landmark geometry.
// Requires a local Effect House installation; no framework is distributed.
#include <dlfcn.h>
#include <vector>
#include <array>
#include <fstream>
#include <iostream>
#include <string>
#include <stdexcept>
struct P {float x,y;};
template<class T>T sym(void*l,const char*n){auto p=dlsym(l,n);if(!p)throw std::runtime_error(dlerror());return (T)p;}
void dump(std::string p,const std::vector<P>&v){std::ofstream f(p,std::ios::binary);f.write((char*)v.data(),v.size()*sizeof(P));}
int main(int argc,char**argv){
 auto*l=dlopen("/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib",RTLD_LAZY);if(!l)throw std::runtime_error(dlerror());
 auto eye=sym<std::vector<P>(*)(const std::vector<P>&)>(l,"_ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE");
 auto brow=sym<std::vector<P>(*)(const std::vector<P>&)>(l,"_ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE");
 auto mouth=sym<std::vector<P>(*)(const std::vector<P>&)>(l,"_ZN3BEF8MakeupV216cvtMouth106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE");
 if(argc==1){Dl_info di;dladdr((void*)eye,&di);auto base=(char*)di.dli_fbase;
  for(auto offset:{0x2c47b70,0x2c47b88}){auto p=(int*)(base+offset);for(int i=0;i<6;i++)std::cout<<p[i]<<" ";std::cout<<"\n";}
  auto p=*(int**)(base+0x36b5648);for(int i=0;i<8;i++)std::cout<<p[i]<<" ";std::cout<<"\n";return 0;
 }
 std::vector<P> points(106);std::ifstream in(argv[1],std::ios::binary);in.read((char*)points.data(),848);std::string dest=argv[2];
 dump(dest+".eye.f32",eye(points));dump(dest+".brow.f32",brow(points));dump(dest+".mouth.f32",mouth(points));
 std::array<char,8192>face{},extra{};std::copy((char*)points.data(),(char*)points.data()+848,face.data()+20);
 std::array<char,65536> object{};sym<void(*)(void*)>(l,"_ZN3BEF19FaceParamFaceUCV248C1Ev")(object.data());
 sym<void(*)(void*,void*,int,int,int,int,void*)>(l,"_ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE")(object.data(),face.data(),256,256,256,256,extra.data());
 dump(dest+".mesh.f32",sym<const std::vector<P>&(*)(void*,int)>(l,"_ZN3BEF19FaceParamFaceUCV24813getFaceVertexEi")(object.data(),0));
}
