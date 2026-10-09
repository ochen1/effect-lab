#version 300 es
precision highp float;
precision highp int;

uniform mediump sampler2D maskTexture;
uniform mediump sampler2D ganTexture;
uniform mediump float enable;

in mediump vec2 uv;
layout(location = 0) out mediump vec4 color;

void main()
{
    mediump vec4 mask = texture(maskTexture, uv);
    mediump vec4 gancolor = texture(ganTexture, vec2(uv.x, 1.0 - uv.y));
    color = vec4(gancolor.xyz, (gancolor.w * mask.x) * enable);
}

