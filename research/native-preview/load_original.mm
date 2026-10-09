// Documentary native preview injection. Configure private inputs through environment variables.
#import <Foundation/Foundation.h>
#import <dispatch/dispatch.h>
#include <dlfcn.h>
#include <string>
#include <fstream>
#include <vector>
#include <chrono>
#include <cstdlib>
#include <cstdint>
#include <limits>
static std::string environment(const char* name,const char* fallback="") {
 const char* value=std::getenv(name);return value && *value ? value : fallback;
}
static const std::string commandPath=environment("EFFECT_LAB_NATIVE_REQUEST","/tmp/effect-lab-native-request");
static const std::string statusPath=environment("EFFECT_LAB_NATIVE_STATUS","/tmp/effect-lab-native-status");
static const std::string originalPath=environment("EFFECT_LAB_ORIGINAL_PACKAGE");
static const std::string clearPath=environment("EFFECT_LAB_CLEAR_PACKAGE");
static int framesToRefresh=0;
static bool useFullFrame=false;
static int64_t fullWidth=0,fullHeight=0;
static std::vector<unsigned char> fullPixels;
struct PreviewFrameData {int64_t width,height,byteCount;void* data;};
static void pollRequest() {
 @autoreleasepool {
  if(framesToRefresh>0) {
   auto ptr=(void**)dlsym(RTLD_DEFAULT,"_ZN26EffectClientManagerWrapper4selfE");
   auto force=(void(*)(void*))dlsym(RTLD_DEFAULT,"_ZN12EffectClient21forceUpdateInputFrameEv");
   auto frame=(void(*)(void*))dlsym(RTLD_DEFAULT,"_ZN12EffectClient11recordFrameEv");
   if(ptr && *ptr && force && frame) {
    if(useFullFrame) {
     auto put=(bool(*)(void*,const PreviewFrameData&,double))dlsym(RTLD_DEFAULT,"_ZN12EffectClient13putInputFrameERK16PreviewFrameDatad");
     PreviewFrameData data{fullWidth,fullHeight,(int64_t)fullPixels.size(),fullPixels.data()};
     if(put) put(*ptr,data,std::chrono::duration<double>(std::chrono::steady_clock::now().time_since_epoch()).count());
    } else {force(*ptr);frame(*ptr);}
    --framesToRefresh;
   }
  }
  NSString* request=[NSString stringWithUTF8String:commandPath.c_str()];
  if (![[NSFileManager defaultManager] fileExistsAtPath:request]) return;
  if(originalPath.empty()) return;
  auto get=(void*(*)())dlsym(RTLD_DEFAULT,"_ZN15EditorEffectIPC11getInstanceEv");
  auto load=(void(*)(void*,const std::string&))dlsym(RTLD_DEFAULT,"_ZN15EditorEffectIPC17sendReloadCommandERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE");
  auto ready=(bool(*)(void*))dlsym(RTLD_DEFAULT,"_ZN15EditorEffectIPC8isInitedEv");
  if(!get||!load||!ready) return;
  void* ipc=get(); if(!ipc||!ready(ipc)) return;
  std::ifstream in(commandPath);std::string effectPath;std::getline(in,effectPath);in.close();
  if(effectPath=="FULL_ORIGINAL"||effectPath=="FULL_CLEAR") {
   fullWidth=std::strtoll(environment("EFFECT_LAB_FRAME_WIDTH").c_str(),nullptr,10);
   fullHeight=std::strtoll(environment("EFFECT_LAB_FRAME_HEIGHT").c_str(),nullptr,10);
   if(fullWidth<=0 || fullHeight<=0 || fullWidth>std::numeric_limits<int64_t>::max()/4/fullHeight) return;
   std::ifstream pixels(environment("EFFECT_LAB_FRAME_RGBA"),std::ios::binary);
   fullPixels.assign(std::istreambuf_iterator<char>(pixels),std::istreambuf_iterator<char>());
   if(fullPixels.size()!=static_cast<uint64_t>(fullWidth)*fullHeight*4) return;
   useFullFrame=true;
   effectPath=effectPath=="FULL_CLEAR" ? "CLEAR" : originalPath;
  } else {useFullFrame=false;}
  if(effectPath!=originalPath && effectPath!="CLEAR") return;
  if(effectPath=="CLEAR") {if(clearPath.empty())return;effectPath=clearPath;}
  [[NSFileManager defaultManager] removeItemAtPath:request error:nil];
  load(ipc,effectPath);
  framesToRefresh=20;
  std::ofstream out(statusPath);out<<"Native sendReloadCommand dispatched for "<<effectPath<<"\n";
 }
}
__attribute__((constructor)) static void start() {
 dispatch_async(dispatch_get_main_queue(), ^{
  dispatch_source_t timer=dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER,0,0,dispatch_get_main_queue());
  dispatch_source_set_timer(timer,dispatch_time(DISPATCH_TIME_NOW, NSEC_PER_SEC),NSEC_PER_SEC/5,0);
  dispatch_source_set_event_handler(timer, ^{pollRequest();});dispatch_resume(timer);
 });
}
