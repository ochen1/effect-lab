// Synthetic, image-free oracle for recovered SSD anchor and bounding-box math.
// Build: clang++ -std=c++17 tools/native_ssd_reference.cpp -o research/native-ssd-reference
#include <cstdlib>
#include <dlfcn.h>
#include <iostream>
#include <stdexcept>
#include <vector>
struct Box { float left,top,right,bottom,score; };
struct Candidate { float dx,dy,dw,dh,score; int x,y,anchor; };
template<class T>T sym(void* library,const char* name){auto p=dlsym(library,name);if(!p)throw std::runtime_error(dlerror());return reinterpret_cast<T>(p);}
int main()try {
 const char* path=std::getenv("EFFECT_LIBRARY");if(!path)path="/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib";
 void* lib=dlopen(path,RTLD_LAZY);if(!lib)throw std::runtime_error(dlerror());
 std::vector<float> scales{1,2},ratios{1};std::vector<Box> anchors,result;
 auto generate=sym<int(*)(int,const std::vector<float>&,const std::vector<float>&,std::vector<Box>&)>(lib,"_ZN5smash13private_utils3ssd6Anchor15GenerateAnchorsEiRKNSt3__16vectorIfNS3_9allocatorIfEEEES9_RNS4_INS1_3BoxENS5_ISA_EEEE");
 if(generate(16,scales,ratios,anchors))return 1;
 auto proposal=sym<void(*)(void*,std::vector<Candidate>&,const std::vector<Box>&,float,int,int,float,int,int,std::vector<Box>&)>(lib,"_ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__16vectorINS1_15TargetCandidateENS3_9allocatorIS5_EEEERKNS4_INS1_3BoxENS6_ISA_EEEEfiifiiRSC_");
 std::vector<Candidate> candidates{{0,0,0,0,.9f,3,4,0},{.25f,-.125f,0,0,.8f,3,4,1}};
 proposal(nullptr,candidates,anchors,.5f,1,8,0,160,160,result);
 std::cout<<"{\"synthetic\":true,\"anchors\":[";
 for(size_t i=0;i<anchors.size();i++){if(i)std::cout<<",";auto b=anchors[i];std::cout<<"["<<b.left<<","<<b.top<<","<<b.right<<","<<b.bottom<<"]";}
 std::cout<<"],\"boxes\":[";
 for(size_t i=0;i<result.size();i++){if(i)std::cout<<",";auto b=result[i];std::cout<<"["<<b.left<<","<<b.top<<","<<b.right<<","<<b.bottom<<","<<b.score<<"]";}
 std::cout<<"]}\n";
 return 0;
}catch(const std::exception&e){std::cerr<<e.what()<<"\n";return 1;}
