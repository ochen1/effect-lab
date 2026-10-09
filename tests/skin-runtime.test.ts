import {expect,test} from 'bun:test';
import {fileURLToPath} from 'node:url';

for(const scenario of ['good','finite-wrong','alpha-wrong','mean-drift','nonfinite','minor-drift','gpu-error','reference-retry','download-retry','run-fallback','dispose-during-check','preference']){
  test(`skin backend qualification: ${scenario}`,async()=>{
    const child=Bun.spawn([process.execPath,fileURLToPath(new URL('../tools/test_skin_runtime.ts',import.meta.url)),scenario],{stdout:'pipe',stderr:'pipe'});
    const [stdout,stderr,exit]=await Promise.all([new Response(child.stdout).text(),new Response(child.stderr).text(),child.exited]);
    expect({exit,stderr}).toEqual({exit:0,stderr:''});
    expect(JSON.parse(stdout)).toMatchObject({scenario,passed:true});
  });
}
