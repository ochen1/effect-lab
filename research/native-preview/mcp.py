"""Call the local Effect House MCP endpoint; keep preview outputs outside the repository."""
import urllib.request,json,sys,pathlib,base64,os,tempfile
root=pathlib.Path(os.environ.get('EFFECT_LAB_PREVIEW_OUTPUT_DIR',str(pathlib.Path(tempfile.gettempdir())/'effect-lab-native-preview'))).expanduser()
port_file=pathlib.Path(os.environ.get('EFFECT_HOUSE_MCP_PORT_FILE',str(pathlib.Path.home()/'Library/Application Support/EffectHouse/Instances/Instance1/MCP/mcp_port.json'))).expanduser()
port=json.loads(port_file.read_text())['port']
name=sys.argv[1];args=json.loads(sys.argv[2]);args.setdefault('intention','Render the original unchanged BOY II package with the locally configured input.')
payload={'jsonrpc':'2.0','id':7,'method':'tools/call','params':{'name':name,'arguments':args}}
req=urllib.request.Request(f'http://127.0.0.1:{port}/mcp',data=json.dumps(payload).encode(),headers={'Content-Type':'application/json','Accept':'application/json, text/event-stream'})
s=urllib.request.urlopen(req,timeout=90).read().decode();d=json.loads(next(l[6:] for l in s.splitlines() if l.startswith('data: '))) if 'data: ' in s else json.loads(s)
for c in d.get('result',{}).get('content',[]):
 if c.get('type')=='image':
  root.mkdir(parents=True,exist_ok=True)
  ext='jpg' if c.get('mimeType')=='image/jpeg' else 'png';p=root/('latest-preview.'+ext);p.write_bytes(base64.b64decode(c['data']));print('IMAGE',p)
 elif c.get('type')=='text': print(c['text'])
if 'error' in d:print(d['error'])
