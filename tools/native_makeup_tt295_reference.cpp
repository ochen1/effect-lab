// Development-only calcTT295Pts oracle; input arrays must be synthetic.
#include <dlfcn.h>
#include <vector>
#include <fstream>
#include <iostream>
#include <stdexcept>
struct P{float x,y;};
struct Buffer{void*vtable;int ref;int padding;P*begin;P*end;P*capacity;};
struct Vector{Buffer*buffer;~Vector(){}};
int main(int argc,char**argv){
 auto*l=dlopen("/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib",RTLD_LAZY);if(!l)throw std::runtime_error(dlerror());
 auto fn=(Vector(*)(const Vector&,const Vector&,int,int,int))dlsym(l,"_ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii");
 std::vector<P>a(106),b(134);std::ifstream in(argv[1],std::ios::binary);in.read((char*)a.data(),848);in.read((char*)b.data(),1072);
 Buffer ab{nullptr,0,0,a.data(),a.data()+a.size(),a.data()+a.size()},bb{nullptr,0,0,b.data(),b.data()+b.size(),b.data()+b.size()};Vector av{&ab},bv{&bb};
 auto out=fn(av,bv,1,1,1);auto&o=*out.buffer;std::cerr<<(o.end-o.begin)<<" vertices\n";std::ofstream f(argv[2],std::ios::binary);f.write((char*)o.begin,(o.end-o.begin)*8);
}
