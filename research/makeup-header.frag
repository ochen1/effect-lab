
 precision highp float;
 varying vec2 texCoord;
 varying vec2 sucaiTexCoord;
 uniform float opacity;

 uniform sampler2D inputImageTexture;
 uniform sampler2D sucaiImageTexture;

 uniform float intensity;
#ifdef USE_SEG
 varying vec2 segCoord;
 uniform sampler2D segMaskTexture;
#endif
 