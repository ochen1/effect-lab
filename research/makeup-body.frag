
 void main(void)
 {
    lowp vec4 srcColor = texture2D(inputImageTexture, texCoord);
    vec4 materialColor = texture2D(sucaiImageTexture, sucaiTexCoord) * clamp(intensity * opacity, 0.0, 1.0);

    float nonZeroSrcAlpha = step(0.0, -srcColor.a) * 0.000001 + srcColor.a;
    float nonZeroMaterialAlpha = step(0.0, -materialColor.a) * 0.000001 + materialColor.a;
    vec3 newSrcColor = clamp(srcColor.rgb / nonZeroSrcAlpha, 0.0, 1.0);

    vec3 blendColor = blendModel(newSrcColor, clamp(materialColor.rgb / nonZeroMaterialAlpha, 0.0, 1.0));
    blendColor = mix(newSrcColor, blendColor, materialColor.a);
    float blendAlpha = srcColor.a + materialColor.a * (1.0 - srcColor.a);
#ifdef USE_SEG
    float seg_opacity = (texture2D(segMaskTexture, segCoord)).x;
    if(clamp(segCoord, 0.0, 1.0) != segCoord) seg_opacity = 1.;
    blendColor = mix(newSrcColor, blendColor, seg_opacity);
#endif
     gl_FragColor = vec4(blendColor * blendAlpha, blendAlpha);
 }
 