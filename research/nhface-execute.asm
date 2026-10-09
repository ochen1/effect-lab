
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000738a9c <__ZN3BEF21EffectManagerRefactor34algorithmMultiTextureWithProcessorEP18bef_src_texture_stjP22bef_algorithm_param_stRK14BefRequirement>:
  738b00: f2d7f964     	movk	x4, #0xbfcb, lsl #32
  738b04: f2e89084     	movk	x4, #0x4484, lsl #48
  738b08: 946cf64d     	bl	0x227643c <__ZN13AmazingEngine16g_spdLogWithHashEPKciiS1_yS1_z>
  738b0c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  738b10: 9100c3ff     	add	sp, sp, #0x30
  738b14: d65f03c0     	ret
  738b18: 5280f128     	mov	w8, #0x789              ; =1929
  738b1c: 90015889     	adrp	x9, 0x3248000 <dyld_stub_binder+0x3248000>
  738b20: 910ae929     	add	x9, x9, #0x2ba
  738b24: f0015bea     	adrp	x10, 0x32b7000 <dyld_stub_binder+0x32b7000>
  738b28: 911c714a     	add	x10, x10, #0x71c
  738b2c: 90015880     	adrp	x0, 0x3248000 <dyld_stub_binder+0x3248000>
  738b30: 910a8000     	add	x0, x0, #0x2a0
  738b34: a900a3e9     	stp	x9, x8, [sp, #0x8]
  738b38: d0015443     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  738b3c: 9124e863     	add	x3, x3, #0x93a
  738b40: d0015444     	adrp	x4, 0x31c2000 <dyld_stub_binder+0x31c2000>
  738b44: 91251884     	add	x4, x4, #0x946
  738b48: f90003ea     	str	x10, [sp]
  738b4c: 5280f121     	mov	w1, #0x789              ; =1929
  738b50: 52800142     	mov	w2, #0xa                ; =10
  738b54: 946ce1a8     	bl	0x22711f4 <__ZN13AmazingEngine8g_aeLogTEPKciiS1_S1_z>
  738b58: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  738b5c: 9100c3ff     	add	sp, sp, #0x30
  738b60: d65f03c0     	ret

0000000000738b64 <__ZN3BEF21EffectManagerRefactor30syncLatestAlgorithmCalculationERd>:
  738b64: d100c3ff     	sub	sp, sp, #0x30
  738b68: a9027bfd     	stp	x29, x30, [sp, #0x20]
  738b6c: 910083fd     	add	x29, sp, #0x20
  738b70: 946ce23b     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
  738b74: 34000380     	cbz	w0, 0x738be4 <__ZN3BEF21EffectManagerRefactor30syncLatestAlgorithmCalculationERd+0x80>
  738b78: 946ce23c     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
  738b7c: 7100281f     	cmp	w0, #0xa
  738b80: 540002ab     	b.lt	0x738bd4 <__ZN3BEF21EffectManagerRefactor30syncLatestAlgorithmCalculationERd+0x70>
  738b84: 5280f1ea     	mov	w10, #0x78f             ; =1935
  738b88: 90015888     	adrp	x8, 0x3248000 <dyld_stub_binder+0x3248000>
  738b8c: 910ae908     	add	x8, x8, #0x2ba
  738b90: f0015be9     	adrp	x9, 0x32b7000 <dyld_stub_binder+0x32b7000>
  738b94: 911c7129     	add	x9, x9, #0x71c
  738b98: a900abe8     	stp	x8, x10, [sp, #0x8]
  738b9c: f90003e9     	str	x9, [sp]
  738ba0: 90015880     	adrp	x0, 0x3248000 <dyld_stub_binder+0x3248000>
  738ba4: 910a8000     	add	x0, x0, #0x2a0
  738ba8: d0015443     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  738bac: 9124e863     	add	x3, x3, #0x93a
  738bb0: d0015445     	adrp	x5, 0x31c2000 <dyld_stub_binder+0x31c2000>
  738bb4: 912518a5     	add	x5, x5, #0x946
  738bb8: 5280f1e1     	mov	w1, #0x78f              ; =1935
  738bbc: 52800082     	mov	w2, #0x4                ; =4
  738bc0: d29e4d84     	mov	x4, #0xf26c             ; =62060
  738bc4: f2aa04a4     	movk	x4, #0x5025, lsl #16
  738bc8: f2d47324     	movk	x4, #0xa399, lsl #32
  738bcc: f2f4e944     	movk	x4, #0xa74a, lsl #48
  738bd0: 946cf61b     	bl	0x227643c <__ZN13AmazingEngine16g_spdLogWithHashEPKciiS1_yS1_z>
  738bd4: 52800000     	mov	w0, #0x0                ; =0
  738bd8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  738bdc: 9100c3ff     	add	sp, sp, #0x30
  738be0: d65f03c0     	ret
  738be4: 5280f1e8     	mov	w8, #0x78f              ; =1935
  738be8: 90015889     	adrp	x9, 0x3248000 <dyld_stub_binder+0x3248000>
  738bec: 910ae929     	add	x9, x9, #0x2ba
  738bf0: f0015bea     	adrp	x10, 0x32b7000 <dyld_stub_binder+0x32b7000>
  738bf4: 911c714a     	add	x10, x10, #0x71c
  738bf8: 90015880     	adrp	x0, 0x3248000 <dyld_stub_binder+0x3248000>
  738bfc: 910a8000     	add	x0, x0, #0x2a0
  738c00: a900a3e9     	stp	x9, x8, [sp, #0x8]
  738c04: d0015443     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  738c08: 9124e863     	add	x3, x3, #0x93a
  738c0c: d0015444     	adrp	x4, 0x31c2000 <dyld_stub_binder+0x31c2000>
  738c10: 91251884     	add	x4, x4, #0x946
  738c14: f90003ea     	str	x10, [sp]
  738c18: 5280f1e1     	mov	w1, #0x78f              ; =1935
  738c1c: 52800142     	mov	w2, #0xa                ; =10
  738c20: 946ce175     	bl	0x22711f4 <__ZN13AmazingEngine8g_aeLogTEPKciiS1_S1_z>
  738c24: 52800000     	mov	w0, #0x0                ; =0
  738c28: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  738c2c: 9100c3ff     	add	sp, sp, #0x30
  738c30: d65f03c0     	ret

0000000000738c34 <__ZN3BEF21EffectManagerRefactor19getCurrentClipIndexEPNS_14BEFBaseFeatureE>:
  738c34: 52992a08     	mov	w8, #0xc950             ; =51536
  738c38: 72a00088     	movk	w8, #0x4, lsl #16
  738c3c: f8686800     	ldr	x0, [x0, x8]
  738c40: b4000040     	cbz	x0, 0x738c48 <__ZN3BEF21EffectManagerRefactor19getCurrentClipIndexEPNS_14BEFBaseFeatureE+0x14>
  738c44: 1401a663     	b	0x7a25d0 <__ZN3BEF15BEFMVController19getCurrentClipIndexEPNS_14BEFBaseFeatureE>
  738c48: 12800000     	mov	w0, #-0x1               ; =-1
  738c4c: d65f03c0     	ret

0000000000738c50 <__ZN3BEF21EffectManagerRefactor23getMVAlgorithmResultKeyEiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE>:
  738c50: 52992a09     	mov	w9, #0xc950             ; =51536
  738c54: 72a00089     	movk	w9, #0x4, lsl #16
  738c58: f8696800     	ldr	x0, [x0, x9]
  738c5c: b4000040     	cbz	x0, 0x738c64 <__ZN3BEF21EffectManagerRefactor23getMVAlgorithmResultKeyEiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE+0x14>
  738c60: 1401a6e4     	b	0x7a27f0 <__ZN3BEF15BEFMVController23getMVAlgorithmResultKeyEiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE>
  738c64: 39005d1f     	strb	wzr, [x8, #0x17]
  738c68: 3900011f     	strb	wzr, [x8]
  738c6c: d65f03c0     	ret

0000000000738c70 <__ZN3BEF21EffectManagerRefactor20updateStickerInfoOutENSt3__110shared_ptrI13bef_effect_stEEP23bef_sticker_info_out_st>:
  738c70: d100c3ff     	sub	sp, sp, #0x30
  738c74: a9027bfd     	stp	x29, x30, [sp, #0x20]
  738c78: 910083fd     	add	x29, sp, #0x20
  738c7c: b40000a2     	cbz	x2, 0x738c90 <__ZN3BEF21EffectManagerRefactor20updateStickerInfoOutENSt3__110shared_ptrI13bef_effect_stEEP23bef_sticker_info_out_st+0x20>
  738c80: f9400028     	ldr	x8, [x1]
  738c84: b40000e8     	cbz	x8, 0x738ca0 <__ZN3BEF21EffectManagerRefactor20updateStickerInfoOutENSt3__110shared_ptrI13bef_effect_stEEP23bef_sticker_info_out_st+0x30>
  738c88: b9435d08     	ldr	w8, [x8, #0x35c]
  738c8c: b9000048     	str	w8, [x2]
  738c90: 52800020     	mov	w0, #0x1                ; =1
  738c94: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  738c98: 9100c3ff     	add	sp, sp, #0x30
  738c9c: d65f03c0     	ret
  738ca0: 9406937f     	bl	0x8dda9c <__ZN8BEFBasic6BEFLog12GetSingletonEv>
  738ca4: b0015868     	adrp	x8, 0x3245000 <dyld_stub_binder+0x3245000>
  738ca8: 9113e908     	add	x8, x8, #0x4fa
  738cac: 5280f6a9     	mov	w9, #0x7b5              ; =1973
  738cb0: a90123e9     	stp	x9, x8, [sp, #0x10]
  738cb4: 90015888     	adrp	x8, 0x3248000 <dyld_stub_binder+0x3248000>
  738cb8: 910a8108     	add	x8, x8, #0x2a0
  738cbc: 90015329     	adrp	x9, 0x319c000 <dyld_stub_binder+0x319c000>
  738cc0: 91114529     	add	x9, x9, #0x451
  738cc4: a90023e9     	stp	x9, x8, [sp]
  738cc8: b0015862     	adrp	x2, 0x3245000 <dyld_stub_binder+0x3245000>
  738ccc: 91133042     	add	x2, x2, #0x4cc
  738cd0: 528000c1     	mov	w1, #0x6                ; =6
  738cd4: 9406941f     	bl	0x8ddd50 <__ZN8BEFBasic6BEFLog8outPrintEiPKcz>
  738cd8: 52800060     	mov	w0, #0x3                ; =3
  738cdc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  738ce0: 9100c3ff     	add	sp, sp, #0x30
  738ce4: d65f03c0     	ret

0000000000738ce8 <__ZN3BEF21EffectManagerRefactor13prepareRenderEv>:
  738ce8: d100c3ff     	sub	sp, sp, #0x30
  738cec: a9014ff4     	stp	x20, x19, [sp, #0x10]
  738cf0: a9027bfd     	stp	x29, x30, [sp, #0x20]
  738cf4: 910083fd     	add	x29, sp, #0x20
  738cf8: aa0003f3     	mov	x19, x0
  738cfc: 90015880     	adrp	x0, 0x3248000 <dyld_stub_binder+0x3248000>
  738d00: 91234400     	add	x0, x0, #0x8d1
  738d04: d0015441     	adrp	x1, 0x31c2000 <dyld_stub_binder+0x31c2000>
  738d08: 9128b021     	add	x1, x1, #0xa2c
  738d0c: 910003e8     	mov	x8, sp
  738d10: 97ea2ca4     	bl	0x1c3fa0 <__ZN9Telemetry9Singleton14makeScopedZoneEPKcS2_>
  738d14: f942a660     	ldr	x0, [x19, #0x548]
  738d18: f9400008     	ldr	x8, [x0]
  738d1c: f9408908     	ldr	x8, [x8, #0x110]
  738d20: d63f0100     	blr	x8
  738d24: f942a660     	ldr	x0, [x19, #0x548]
  738d28: f9400008     	ldr	x8, [x0]
  738d2c: f9404108     	ldr	x8, [x8, #0x80]
  738d30: d63f0100     	blr	x8
  738d34: 5298f8c8     	mov	w8, #0xc7c6             ; =51142
  738d38: 72a00088     	movk	w8, #0x4, lsl #16
  738d3c: 38e86a61     	ldrsb	w1, [x19, x8]
  738d40: 94052c78     	bl	0x883f20 <__ZN3BRC12RenderEngine13setColorSpaceENS_10ColorSpaceE>
  738d44: f942a660     	ldr	x0, [x19, #0x548]
  738d48: f9400008     	ldr	x8, [x0]
  738d4c: f9404108     	ldr	x8, [x8, #0x80]
  738d50: d63f0100     	blr	x8
  738d54: f9403800     	ldr	x0, [x0, #0x70]
  738d58: 9405229d     	bl	0x8817cc <__ZN3BRC12RenderDevice7prepareEv>
  738d5c: 910003e0     	mov	x0, sp
  738d60: 97ea284f     	bl	0x1c2e9c <__ZN9Telemetry10ScopedZoneD1Ev>
  738d64: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  738d68: a9414ff4     	ldp	x20, x19, [sp, #0x10]
  738d6c: 9100c3ff     	add	sp, sp, #0x30
  738d70: d65f03c0     	ret
  738d74: aa0003f3     	mov	x19, x0
  738d78: 910003e0     	mov	x0, sp
  738d7c: 97ea2848     	bl	0x1c2e9c <__ZN9Telemetry10ScopedZoneD1Ev>
  738d80: aa1303e0     	mov	x0, x19
  738d84: 9489a8fb     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

0000000000738d88 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type>:
  738d88: d10143ff     	sub	sp, sp, #0x50
  738d8c: a90257f6     	stp	x22, x21, [sp, #0x20]
  738d90: a9034ff4     	stp	x20, x19, [sp, #0x30]
  738d94: a9047bfd     	stp	x29, x30, [sp, #0x40]
  738d98: 910103fd     	add	x29, sp, #0x40
  738d9c: aa0303f5     	mov	x21, x3
  738da0: aa0203f6     	mov	x22, x2
  738da4: aa0103f4     	mov	x20, x1
  738da8: aa0003f3     	mov	x19, x0
  738dac: 90015880     	adrp	x0, 0x3248000 <dyld_stub_binder+0x3248000>
  738db0: 9123d800     	add	x0, x0, #0x8f6
  738db4: d0015441     	adrp	x1, 0x31c2000 <dyld_stub_binder+0x31c2000>
  738db8: 9128b021     	add	x1, x1, #0xa2c
  738dbc: 910043e8     	add	x8, sp, #0x10
  738dc0: 97ea2c78     	bl	0x1c3fa0 <__ZN9Telemetry9Singleton14makeScopedZoneEPKcS2_>
  738dc4: 52991d08     	mov	w8, #0xc8e8             ; =51432
  738dc8: 72a00088     	movk	w8, #0x4, lsl #16
  738dcc: 8b080260     	add	x0, x19, x8
  738dd0: aa1603e1     	mov	x1, x22
  738dd4: 97e64690     	bl	0xca814 <__ZN3BEF16AlgorithmManager21refreshFaceResolutionEPN4Bach4rtti19BachAlgorithmResultE+0x5ac>
  738dd8: b944de68     	ldr	w8, [x19, #0x4dc]
  738ddc: b9408e81     	ldr	w1, [x20, #0x8c]
  738de0: 6b01011f     	cmp	w8, w1
  738de4: 540000a0     	b.eq	0x738df8 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x70>
  738de8: f9400268     	ldr	x8, [x19]
  738dec: f9418908     	ldr	x8, [x8, #0x310]
  738df0: aa1303e0     	mov	x0, x19
  738df4: d63f0100     	blr	x8
  738df8: 39597688     	ldrb	w8, [x20, #0x65d]
  738dfc: 340000a8     	cbz	w8, 0x738e10 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x88>
  738e00: b9465a81     	ldr	w1, [x20, #0x658]
  738e04: b944d668     	ldr	w8, [x19, #0x4d4]
  738e08: 6b08003f     	cmp	w1, w8
  738e0c: 540002c1     	b.ne	0x738e64 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0xdc>
  738e10: f9400268     	ldr	x8, [x19]
  738e14: f9456108     	ldr	x8, [x8, #0xac0]
  738e18: aa1303e0     	mov	x0, x19
  738e1c: d63f0100     	blr	x8
  738e20: 37000080     	tbnz	w0, #0x0, 0x738e30 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0xa8>
  738e24: b944d668     	ldr	w8, [x19, #0x4d4]
  738e28: 6b15011f     	cmp	w8, w21
  738e2c: 54000320     	b.eq	0x738e90 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x108>
  738e30: f9400268     	ldr	x8, [x19]
  738e34: f9418508     	ldr	x8, [x8, #0x308]
  738e38: aa1303e0     	mov	x0, x19
  738e3c: aa1503e1     	mov	x1, x21
  738e40: d63f0100     	blr	x8
  738e44: f9400268     	ldr	x8, [x19]
  738e48: f9458508     	ldr	x8, [x8, #0xb08]
  738e4c: aa1303e0     	mov	x0, x19
  738e50: d63f0100     	blr	x8
  738e54: f9402800     	ldr	x0, [x0, #0x50]
  738e58: aa1503e1     	mov	x1, x21
  738e5c: 940fd497     	bl	0xb2e0b8 <_amazingef_effect_set_device_orientation>
  738e60: 1400000c     	b	0x738e90 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x108>
  738e64: f9400268     	ldr	x8, [x19]
  738e68: f9418508     	ldr	x8, [x8, #0x308]
  738e6c: aa1303e0     	mov	x0, x19
  738e70: d63f0100     	blr	x8
  738e74: f9400268     	ldr	x8, [x19]
  738e78: f9458508     	ldr	x8, [x8, #0xb08]
  738e7c: aa1303e0     	mov	x0, x19
  738e80: d63f0100     	blr	x8
  738e84: f9402800     	ldr	x0, [x0, #0x50]
  738e88: b9465a81     	ldr	w1, [x20, #0x658]
  738e8c: 940fd48b     	bl	0xb2e0b8 <_amazingef_effect_set_device_orientation>
  738e90: 39597288     	ldrb	w8, [x20, #0x65c]
  738e94: 340005a8     	cbz	w8, 0x738f48 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x1c0>
  738e98: 90015880     	adrp	x0, 0x3248000 <dyld_stub_binder+0x3248000>
  738e9c: 91249c00     	add	x0, x0, #0x927
  738ea0: d0015441     	adrp	x1, 0x31c2000 <dyld_stub_binder+0x31c2000>
  738ea4: 9128b021     	add	x1, x1, #0xa2c
  738ea8: 910003e8     	mov	x8, sp
  738eac: 97ea2c3d     	bl	0x1c3fa0 <__ZN9Telemetry9Singleton14makeScopedZoneEPKcS2_>
  738eb0: 91192295     	add	x21, x20, #0x648
  738eb4: 39538268     	ldrb	w8, [x19, #0x4e0]
  738eb8: 34000228     	cbz	w8, 0x738efc <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x174>
  738ebc: bd4002a0     	ldr	s0, [x21]
  738ec0: bd44e661     	ldr	s1, [x19, #0x4e4]
  738ec4: 1e212000     	fcmp	s0, s1
  738ec8: 540001a1     	b.ne	0x738efc <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x174>
  738ecc: bd464e80     	ldr	s0, [x20, #0x64c]
  738ed0: bd44ea61     	ldr	s1, [x19, #0x4e8]
  738ed4: 1e212000     	fcmp	s0, s1
  738ed8: 54000121     	b.ne	0x738efc <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x174>
  738edc: bd465280     	ldr	s0, [x20, #0x650]
  738ee0: bd44ee61     	ldr	s1, [x19, #0x4ec]
  738ee4: 1e212000     	fcmp	s0, s1
  738ee8: 540000a1     	b.ne	0x738efc <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x174>
  738eec: bd465680     	ldr	s0, [x20, #0x654]
  738ef0: bd44f261     	ldr	s1, [x19, #0x4f0]
  738ef4: 1e212000     	fcmp	s0, s1
  738ef8: 54000240     	b.eq	0x738f40 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x1b8>
  738efc: f9400268     	ldr	x8, [x19]
  738f00: f9458508     	ldr	x8, [x8, #0xb08]
  738f04: aa1303e0     	mov	x0, x19
  738f08: d63f0100     	blr	x8
  738f0c: f9402800     	ldr	x0, [x0, #0x50]
  738f10: aa1503e1     	mov	x1, x21
  738f14: 940fd3c1     	bl	0xb2de18 <_amazingef_effect_set_device_rotation>
  738f18: bd464a80     	ldr	s0, [x20, #0x648]
  738f1c: bd04e660     	str	s0, [x19, #0x4e4]
  738f20: bd464e80     	ldr	s0, [x20, #0x64c]
  738f24: bd04ea60     	str	s0, [x19, #0x4e8]
  738f28: bd465280     	ldr	s0, [x20, #0x650]
  738f2c: bd04ee60     	str	s0, [x19, #0x4ec]
  738f30: bd465680     	ldr	s0, [x20, #0x654]
  738f34: bd04f260     	str	s0, [x19, #0x4f0]
  738f38: 52800028     	mov	w8, #0x1                ; =1
  738f3c: 39138268     	strb	w8, [x19, #0x4e0]
  738f40: 910003e0     	mov	x0, sp
  738f44: 97ea27d6     	bl	0x1c2e9c <__ZN9Telemetry10ScopedZoneD1Ev>
  738f48: 395a0288     	ldrb	w8, [x20, #0x680]
  738f4c: 34000088     	cbz	w8, 0x738f5c <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x1d4>
  738f50: f940a260     	ldr	x0, [x19, #0x140]
  738f54: 91198281     	add	x1, x20, #0x660
  738f58: 97f6aba9     	bl	0x4e3dfc <__ZN3BEF13DeviceInfoCap18updateDeviceMotionERK21device_orientation_st>
  738f5c: 395a2288     	ldrb	w8, [x20, #0x688]
  738f60: 340002e8     	cbz	w8, 0x738fbc <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x234>
  738f64: f942a660     	ldr	x0, [x19, #0x548]
  738f68: f9400008     	ldr	x8, [x0]
  738f6c: f9404108     	ldr	x8, [x8, #0x80]
  738f70: d63f0100     	blr	x8
  738f74: aa0003f4     	mov	x20, x0
  738f78: f9400268     	ldr	x8, [x19]
  738f7c: f9470508     	ldr	x8, [x8, #0xe08]
  738f80: aa1303e0     	mov	x0, x19
  738f84: 52800021     	mov	w1, #0x1                ; =1
  738f88: d63f0100     	blr	x8
  738f8c: aa0003e2     	mov	x2, x0
  738f90: 910003e0     	mov	x0, sp
  738f94: aa1403e1     	mov	x1, x20
  738f98: 52800003     	mov	w3, #0x0                ; =0
  738f9c: 9405318a     	bl	0x8855c4 <__ZN3BRC12RenderEngine16AGFXContextGuardC1EPS0_bb>
  738fa0: f942a660     	ldr	x0, [x19, #0x548]
  738fa4: f9400008     	ldr	x8, [x0]
  738fa8: f9407d08     	ldr	x8, [x8, #0xf8]
  738fac: d63f0100     	blr	x8
  738fb0: 97f5f82b     	bl	0x4b705c <__ZN3BEF11RenderUtils19resetScaleTexBufferEv>
  738fb4: 910003e0     	mov	x0, sp
  738fb8: 940531ac     	bl	0x885668 <__ZN3BRC12RenderEngine16AGFXContextGuardD1Ev>
  738fbc: 52994308     	mov	w8, #0xca18             ; =51736
  738fc0: 72a00088     	movk	w8, #0x4, lsl #16
  738fc4: 8b080273     	add	x19, x19, x8
  738fc8: f9400660     	ldr	x0, [x19, #0x8]
  738fcc: b4000220     	cbz	x0, 0x739010 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x288>
  738fd0: 9489ac7c     	bl	0x29a41c0 <dyld_stub_binder+0x29a41c0>
  738fd4: b40001e0     	cbz	x0, 0x739010 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x288>
  738fd8: aa0003f4     	mov	x20, x0
  738fdc: f9400260     	ldr	x0, [x19]
  738fe0: b4000040     	cbz	x0, 0x738fe8 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x260>
  738fe4: 97e6096b     	bl	0xbb590 <__ZN3BEF23AlgorithmEffectOperator20updateConfigToRenderEv>
  738fe8: 91002288     	add	x8, x20, #0x8
  738fec: 92800009     	mov	x9, #-0x1               ; =-1
  738ff0: f8e90108     	ldaddal	x9, x8, [x8]
  738ff4: b50000e8     	cbnz	x8, 0x739010 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x288>
  738ff8: f9400288     	ldr	x8, [x20]
  738ffc: f9400908     	ldr	x8, [x8, #0x10]
  739000: aa1403e0     	mov	x0, x20
  739004: d63f0100     	blr	x8
  739008: aa1403e0     	mov	x0, x20
  73900c: 9489ac6a     	bl	0x29a41b4 <dyld_stub_binder+0x29a41b4>
  739010: 910043e0     	add	x0, sp, #0x10
  739014: 97ea27a2     	bl	0x1c2e9c <__ZN9Telemetry10ScopedZoneD1Ev>
  739018: a9447bfd     	ldp	x29, x30, [sp, #0x40]
  73901c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
  739020: a94257f6     	ldp	x22, x21, [sp, #0x20]
  739024: 910143ff     	add	sp, sp, #0x50
  739028: d65f03c0     	ret
  73902c: aa0003f3     	mov	x19, x0
  739030: 91002288     	add	x8, x20, #0x8
  739034: 92800009     	mov	x9, #-0x1               ; =-1
  739038: f8e90108     	ldaddal	x9, x8, [x8]
  73903c: b50001e8     	cbnz	x8, 0x739078 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x2f0>
  739040: aa1403e0     	mov	x0, x20
  739044: 94873c35     	bl	0x2908118 <__ZN5smash15CvtInputAsFloatEPhPfif+0x26424>
  739048: 1400000c     	b	0x739078 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x2f0>
  73904c: 1400000a     	b	0x739074 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x2ec>
  739050: aa0003f3     	mov	x19, x0
  739054: 910003e0     	mov	x0, sp
  739058: 94053184     	bl	0x885668 <__ZN3BRC12RenderEngine16AGFXContextGuardD1Ev>
  73905c: 14000007     	b	0x739078 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x2f0>
  739060: aa0003f3     	mov	x19, x0
  739064: 910003e0     	mov	x0, sp
  739068: 97ea278d     	bl	0x1c2e9c <__ZN9Telemetry10ScopedZoneD1Ev>
  73906c: 14000003     	b	0x739078 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x2f0>
  739070: 14000001     	b	0x739074 <__ZN3BEF21EffectManagerRefactor25preProcessAlgorithmOutputERNS_15AlgoProcessInfoERKN4Bach7BachMapE15bef_rotate_type+0x2ec>
  739074: aa0003f3     	mov	x19, x0
  739078: 910043e0     	add	x0, sp, #0x10
  73907c: 97ea2788     	bl	0x1c2e9c <__ZN9Telemetry10ScopedZoneD1Ev>
  739080: aa1303e0     	mov	x0, x19
  739084: 9489a83b     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

0000000000739088 <__ZN3BEF21EffectManagerRefactor21algorithmMultiTextureEP18bef_src_texture_stjP22bef_algorithm_param_st>:
  739088: d100c3ff     	sub	sp, sp, #0x30
  73908c: a9027bfd     	stp	x29, x30, [sp, #0x20]
  739090: 910083fd     	add	x29, sp, #0x20
  739094: 946ce0f2     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
  739098: 34000380     	cbz	w0, 0x739108 <__ZN3BEF21EffectManagerRefactor21algorithmMultiTextureEP18bef_src_texture_stjP22bef_algorithm_param_st+0x80>
  73909c: 946ce0f3     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
  7390a0: 7100281f     	cmp	w0, #0xa
  7390a4: 540002ab     	b.lt	0x7390f8 <__ZN3BEF21EffectManagerRefactor21algorithmMultiTextureEP18bef_src_texture_stjP22bef_algorithm_param_st+0x70>
  7390a8: 52810aaa     	mov	w10, #0x855             ; =2133
  7390ac: f0015868     	adrp	x8, 0x3248000 <dyld_stub_binder+0x3248000>
  7390b0: 910ae908     	add	x8, x8, #0x2ba
  7390b4: d0015be9     	adrp	x9, 0x32b7000 <dyld_stub_binder+0x32b7000>
  7390b8: 911c7129     	add	x9, x9, #0x71c
  7390bc: a900abe8     	stp	x8, x10, [sp, #0x8]
  7390c0: f90003e9     	str	x9, [sp]
  7390c4: f0015860     	adrp	x0, 0x3248000 <dyld_stub_binder+0x3248000>
  7390c8: 910a8000     	add	x0, x0, #0x2a0
  7390cc: b0015443     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  7390d0: 9124e863     	add	x3, x3, #0x93a
  7390d4: b0015445     	adrp	x5, 0x31c2000 <dyld_stub_binder+0x31c2000>
  7390d8: 912518a5     	add	x5, x5, #0x946
  7390dc: 52810aa1     	mov	w1, #0x855              ; =2133
  7390e0: 52800082     	mov	w2, #0x4                ; =4
  7390e4: d29d4e64     	mov	x4, #0xea73             ; =60019
  7390e8: f2a2b104     	movk	x4, #0x1588, lsl #16
  7390ec: f2dfd504     	movk	x4, #0xfea8, lsl #32
  7390f0: f2e401a4     	movk	x4, #0x200d, lsl #48
  7390f4: 946cf4d2     	bl	0x227643c <__ZN13AmazingEngine16g_spdLogWithHashEPKciiS1_yS1_z>
  7390f8: 52800000     	mov	w0, #0x0                ; =0
  7390fc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  739100: 9100c3ff     	add	sp, sp, #0x30
  739104: d65f03c0     	ret
  739108: 52810aa8     	mov	w8, #0x855              ; =2133
  73910c: f0015869     	adrp	x9, 0x3248000 <dyld_stub_binder+0x3248000>
  739110: 910ae929     	add	x9, x9, #0x2ba
  739114: d0015bea     	adrp	x10, 0x32b7000 <dyld_stub_binder+0x32b7000>
  739118: 911c714a     	add	x10, x10, #0x71c
  73911c: f0015860     	adrp	x0, 0x3248000 <dyld_stub_binder+0x3248000>
  739120: 910a8000     	add	x0, x0, #0x2a0
  739124: a900a3e9     	stp	x9, x8, [sp, #0x8]
  739128: b0015443     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  73912c: 9124e863     	add	x3, x3, #0x93a
  739130: b0015444     	adrp	x4, 0x31c2000 <dyld_stub_binder+0x31c2000>
  739134: 91251884     	add	x4, x4, #0x946
  739138: f90003ea     	str	x10, [sp]
  73913c: 52810aa1     	mov	w1, #0x855              ; =2133
  739140: 52800142     	mov	w2, #0xa                ; =10
  739144: 946ce02c     	bl	0x22711f4 <__ZN13AmazingEngine8g_aeLogTEPKciiS1_S1_z>
  739148: 52800000     	mov	w0, #0x0                ; =0
  73914c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  739150: 9100c3ff     	add	sp, sp, #0x30
  739154: d65f03c0     	ret

0000000000739158 <__ZNK3BEF21EffectManagerRefactor23getAlgorithmProfileInfoEi>:
  739158: 52991d08     	mov	w8, #0xc8e8             ; =51432
  73915c: 72a00088     	movk	w8, #0x4, lsl #16
  739160: 8b080000     	add	x0, x0, x8
  739164: d65f03c0     	ret

0000000000739168 <__ZN3BEF21EffectManagerRefactor33algorithmProcessEmptyRequirementsEP18bef_src_texture_stjR14BefRequirementRKNS_15BachProcessInfoENS_15BachRuntimeInfoE>:
  739168: d100c3ff     	sub	sp, sp, #0x30
  73916c: a9027bfd     	stp	x29, x30, [sp, #0x20]
  739170: 910083fd     	add	x29, sp, #0x20
  739174: 946ce0ba     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
  739178: 34000360     	cbz	w0, 0x7391e4 <__ZN3BEF21EffectManagerRefactor33algorithmProcessEmptyRequirementsEP18bef_src_texture_stjR14BefRequirementRKNS_15BachProcessInfoENS_15BachRuntimeInfoE+0x7c>
  73917c: 946ce0bb     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
  739180: 7100281f     	cmp	w0, #0xa
  739184: 540002ab     	b.lt	0x7391d8 <__ZN3BEF21EffectManagerRefactor33algorithmProcessEmptyRequirementsEP18bef_src_texture_stjR14BefRequirementRKNS_15BachProcessInfoENS_15BachRuntimeInfoE+0x70>
  739188: 52810c8a     	mov	w10, #0x864             ; =2148
  73918c: f0015868     	adrp	x8, 0x3248000 <dyld_stub_binder+0x3248000>
  739190: 910ae908     	add	x8, x8, #0x2ba
  739194: d0015be9     	adrp	x9, 0x32b7000 <dyld_stub_binder+0x32b7000>
  739198: 911c7129     	add	x9, x9, #0x71c
  73919c: a900abe8     	stp	x8, x10, [sp, #0x8]
  7391a0: f90003e9     	str	x9, [sp]
  7391a4: f0015860     	adrp	x0, 0x3248000 <dyld_stub_binder+0x3248000>
  7391a8: 910a8000     	add	x0, x0, #0x2a0
  7391ac: b0015443     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  7391b0: 9124e863     	add	x3, x3, #0x93a
  7391b4: b0015445     	adrp	x5, 0x31c2000 <dyld_stub_binder+0x31c2000>
  7391b8: 912518a5     	add	x5, x5, #0x946
  7391bc: 52810c81     	mov	w1, #0x864              ; =2148
  7391c0: 52800082     	mov	w2, #0x4                ; =4
  7391c4: d28f4444     	mov	x4, #0x7a22             ; =31266
  7391c8: f2a1aee4     	movk	x4, #0xd77, lsl #16
  7391cc: f2dc4344     	movk	x4, #0xe21a, lsl #32
  7391d0: f2feba04     	movk	x4, #0xf5d0, lsl #48
  7391d4: 946cf49a     	bl	0x227643c <__ZN13AmazingEngine16g_spdLogWithHashEPKciiS1_yS1_z>
  7391d8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  7391dc: 9100c3ff     	add	sp, sp, #0x30
  7391e0: d65f03c0     	ret
  7391e4: 52810c88     	mov	w8, #0x864              ; =2148
  7391e8: f0015869     	adrp	x9, 0x3248000 <dyld_stub_binder+0x3248000>
  7391ec: 910ae929     	add	x9, x9, #0x2ba
  7391f0: d0015bea     	adrp	x10, 0x32b7000 <dyld_stub_binder+0x32b7000>
  7391f4: 911c714a     	add	x10, x10, #0x71c
  7391f8: f0015860     	adrp	x0, 0x3248000 <dyld_stub_binder+0x3248000>
  7391fc: 910a8000     	add	x0, x0, #0x2a0
  739200: a900a3e9     	stp	x9, x8, [sp, #0x8]
  739204: b0015443     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  739208: 9124e863     	add	x3, x3, #0x93a
  73920c: b0015444     	adrp	x4, 0x31c2000 <dyld_stub_binder+0x31c2000>
  739210: 91251884     	add	x4, x4, #0x946
  739214: f90003ea     	str	x10, [sp]
  739218: 52810c81     	mov	w1, #0x864              ; =2148
  73921c: 52800142     	mov	w2, #0xa                ; =10
  739220: 946cdff5     	bl	0x22711f4 <__ZN13AmazingEngine8g_aeLogTEPKciiS1_S1_z>
  739224: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  739228: 9100c3ff     	add	sp, sp, #0x30
  73922c: d65f03c0     	ret

0000000000739230 <__ZN3BEF21EffectManagerRefactor16refreshAlgorithmE14BefRequirementb>:
  739230: d101c3ff     	sub	sp, sp, #0x70
  739234: a90457f6     	stp	x22, x21, [sp, #0x40]
  739238: a9054ff4     	stp	x20, x19, [sp, #0x50]
  73923c: a9067bfd     	stp	x29, x30, [sp, #0x60]
  739240: 910183fd     	add	x29, sp, #0x60
  739244: aa0203f4     	mov	x20, x2
  739248: aa0103f5     	mov	x21, x1
  73924c: aa0003f6     	mov	x22, x0
  739250: 9100a3e0     	add	x0, sp, #0x28
  739254: aa1603e1     	mov	x1, x22
  739258: 97fe2eb6     	bl	0x6c4d30 <__ZN3BEF18EffectAmazerSetterC1EPNS_13EffectManagerE>
  73925c: 911422d3     	add	x19, x22, #0x508
  739260: aa1303e0     	mov	x0, x19
  739264: 9489abf2     	bl	0x29a422c <dyld_stub_binder+0x29a422c>
  739268: f94002c8     	ldr	x8, [x22]
  73926c: f9445908     	ldr	x8, [x8, #0x8b0]
  739270: aa1603e0     	mov	x0, x22
  739274: d63f0100     	blr	x8
  739278: ad4006a0     	ldp	q0, q1, [x21]
  73927c: ad0007e0     	stp	q0, q1, [sp]
  739280: f9400008     	ldr	x8, [x0]
  739284: f9402508     	ldr	x8, [x8, #0x48]
  739288: 910003e1     	mov	x1, sp
  73928c: aa1403e2     	mov	x2, x20
  739290: d63f0100     	blr	x8
  739294: aa0003f4     	mov	x20, x0
  739298: aa1303e0     	mov	x0, x19
  73929c: 9489abe7     	bl	0x29a4238 <dyld_stub_binder+0x29a4238>
  7392a0: 9100a3e0     	add	x0, sp, #0x28
  7392a4: 97fe2ebd     	bl	0x6c4d98 <__ZN3BEF18EffectAmazerSetterD1Ev>
  7392a8: aa1403e0     	mov	x0, x20
  7392ac: a9467bfd     	ldp	x29, x30, [sp, #0x60]
  7392b0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
  7392b4: a94457f6     	ldp	x22, x21, [sp, #0x40]
  7392b8: 9101c3ff     	add	sp, sp, #0x70
  7392bc: d65f03c0     	ret
  7392c0: aa0003f4     	mov	x20, x0
  7392c4: 14000004     	b	0x7392d4 <__ZN3BEF21EffectManagerRefactor16refreshAlgorithmE14BefRequirementb+0xa4>
  7392c8: aa0003f4     	mov	x20, x0
  7392cc: aa1303e0     	mov	x0, x19
  7392d0: 9489abda     	bl	0x29a4238 <dyld_stub_binder+0x29a4238>
  7392d4: 9100a3e0     	add	x0, sp, #0x28
  7392d8: 97fe2eb0     	bl	0x6c4d98 <__ZN3BEF18EffectAmazerSetterD1Ev>
  7392dc: aa1403e0     	mov	x0, x20
  7392e0: 9489a7a4     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

00000000007392e4 <__ZN3BEF21EffectManagerRefactor16getAlgorithmSizeEPiS1_>:
  7392e4: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
  7392e8: a9017bfd     	stp	x29, x30, [sp, #0x10]
  7392ec: 910043fd     	add	x29, sp, #0x10
  7392f0: aa0203f3     	mov	x19, x2
  7392f4: aa0103f4     	mov	x20, x1
  7392f8: f9400008     	ldr	x8, [x0]
  7392fc: f9445908     	ldr	x8, [x8, #0x8b0]
