// Documentary native preview bridge. Requires a separately installed Effect House.
#include <node_api.h>
#include <dlfcn.h>
#include <cstdlib>
#include <string>
struct NapiObject { napi_env env; napi_value value; };
static napi_value Init(napi_env env, napi_value exports) {
 const char* frameworks=std::getenv("EFFECT_HOUSE_FRAMEWORKS");
 if(!frameworks || !*frameworks){napi_throw_error(env,nullptr,"Set EFFECT_HOUSE_FRAMEWORKS to the local application's Frameworks directory");return exports;}
 std::string path=std::string(frameworks)+"/EffectWrapper.node";
 void* lib=dlopen(path.c_str(), RTLD_LAZY);
 if(!lib){ napi_throw_error(env,nullptr,dlerror()); return exports; }
 auto init=reinterpret_cast<NapiObject(*)(const napi_env&)>(dlsym(lib,"_ZN26EffectClientManagerWrapper4initERKN4Napi3EnvE"));
 if(!init){napi_throw_error(env,nullptr,dlerror());return exports;}
 auto api=init(env);napi_set_named_property(env,exports,"client",api.value);return exports;
}
NAPI_MODULE(NODE_GYP_MODULE_NAME,Init)
