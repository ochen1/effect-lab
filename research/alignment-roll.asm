
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

000000000245e320 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE>:
 245e320: 6db82beb     	stp	d11, d10, [sp, #-0x80]!
 245e324: 6d0123e9     	stp	d9, d8, [sp, #0x10]
 245e328: a9026ffc     	stp	x28, x27, [sp, #0x20]
 245e32c: a90367fa     	stp	x26, x25, [sp, #0x30]
 245e330: a9045ff8     	stp	x24, x23, [sp, #0x40]
 245e334: a90557f6     	stp	x22, x21, [sp, #0x50]
 245e338: a9064ff4     	stp	x20, x19, [sp, #0x60]
 245e33c: a9077bfd     	stp	x29, x30, [sp, #0x70]
 245e340: 9101c3fd     	add	x29, sp, #0x70
 245e344: d10743ff     	sub	sp, sp, #0x1d0
 245e348: f9400028     	ldr	x8, [x1]
 245e34c: b4000e88     	cbz	x8, 0x245e51c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x1fc>
 245e350: 94000255     	bl	0x245eca4 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x984>
 245e354: 34000e80     	cbz	w0, 0x245e524 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x204>
 245e358: d10343a0     	sub	x0, x29, #0xd0
 245e35c: 97971e91     	bl	0xa25da0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec0>
 245e360: d10343a1     	sub	x1, x29, #0xd0
 245e364: 9400027c     	bl	0x245ed54 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa34>
 245e368: 36000e20     	tbz	w0, #0x0, 0x245e52c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x20c>
 245e36c: 29465679     	ldp	w25, w21, [x19, #0x30]
 245e370: 2947627a     	ldp	w26, w24, [x19, #0x38]
 245e374: 4b190348     	sub	w8, w26, w25
 245e378: 4b150309     	sub	w9, w24, w21
 245e37c: 6b09011f     	cmp	w8, w9
 245e380: 1a89c108     	csel	w8, w8, w9, gt
 245e384: 1e220100     	scvtf	s0, w8
 245e388: 2d410662     	ldp	s2, s1, [x19, #0x8]
 245e38c: 1e200820     	fmul	s0, s1, s0
 245e390: 1e380008     	fcvtzs	w8, s0
 245e394: 7100011f     	cmp	w8, #0x0
 245e398: 1a9f1517     	csinc	w23, w8, wzr, ne
 245e39c: 1e22c040     	fcvt	d0, s2
 245e3a0: b0004988     	adrp	x8, 0x2d8f000 <__ZTSN2pk7SkTQuadE+0x6c3c>
 245e3a4: fd435901     	ldr	d1, [x8, #0x6b0]
 245e3a8: 1e610800     	fmul	d0, d0, d1
 245e3ac: 1e624000     	fcvt	s0, d0
 245e3b0: bd40126a     	ldr	s10, [x19, #0x10]
 245e3b4: 5280005b     	mov	w27, #0x2               ; =2
 245e3b8: 941518a8     	bl	0x29a4658 <dyld_stub_binder+0x29a4658>
 245e3bc: 1e204009     	fmov	s9, s0
 245e3c0: 1e204028     	fmov	s8, s1
 245e3c4: 910082c4     	add	x4, x22, #0x20
 245e3c8: 910443e0     	add	x0, sp, #0x110
 245e3cc: 94000231     	bl	0x245ec90 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x970>
 245e3d0: 1e22c141     	fcvt	d1, s10
 245e3d4: 1e7c1000     	fmov	d0, #-0.50000000
 245e3d8: 1e602822     	fadd	d2, d1, d0
 245e3dc: 1e6202a3     	scvtf	d3, w21
 245e3e0: 1e6c1000     	fmov	d0, #0.50000000
 245e3e4: 1e613801     	fsub	d1, d0, d1
 245e3e8: 1e620304     	scvtf	d4, w24
 245e3ec: 1e640821     	fmul	d1, d1, d4
 245e3f0: 1f430441     	fmadd	d1, d2, d3, d1
 245e3f4: 1e624021     	fcvt	s1, d1
 245e3f8: 0b190348     	add	w8, w26, w25
 245e3fc: 1adb0d08     	sdiv	w8, w8, w27
 245e400: 1e220102     	scvtf	s2, w8
 245e404: 1f010922     	fmadd	s2, s9, s1, s2
 245e408: 1e380059     	fcvtzs	w25, s2
 245e40c: 0b150308     	add	w8, w24, w21
 245e410: 1adb0d08     	sdiv	w8, w8, w27
 245e414: 1e220102     	scvtf	s2, w8
 245e418: 1f010901     	fmadd	s1, s8, s1, s2
 245e41c: 1e380038     	fcvtzs	w24, s1
 245e420: b9401668     	ldr	w8, [x19, #0x14]
 245e424: 1e620101     	scvtf	d1, w8
 245e428: 531f7ae8     	lsl	w8, w23, #1
 245e42c: 1e620102     	scvtf	d2, w8
 245e430: 1e621821     	fdiv	d1, d1, d2
 245e434: 1e624021     	fcvt	s1, d1
 245e438: b9400668     	ldr	w8, [x19, #0x4]
 245e43c: 1e214122     	fneg	s2, s9
 245e440: 1e210842     	fmul	s2, s2, s1
 245e444: 7100011f     	cmp	w8, #0x0
 245e448: 1e2e1003     	fmov	s3, #1.00000000
 245e44c: 1e280c63     	fcsel	s3, s3, s8, eq
 245e450: 1e210861     	fmul	s1, s3, s1
 245e454: 2f00e403     	movi	d3, #0000000000000000
 245e458: 1e220c62     	fcsel	s2, s3, s2, eq
 245e45c: f94093e8     	ldr	x8, [sp, #0x120]
 245e460: bd000101     	str	s1, [x8]
 245e464: f94093e8     	ldr	x8, [sp, #0x120]
 245e468: bd000502     	str	s2, [x8, #0x4]
 245e46c: 1e214043     	fneg	s3, s2
 245e470: f94093e8     	ldr	x8, [sp, #0x120]
 245e474: f940afe9     	ldr	x9, [sp, #0x158]
 245e478: f9400129     	ldr	x9, [x9]
 245e47c: bc296903     	str	s3, [x8, x9]
 245e480: f94093e8     	ldr	x8, [sp, #0x120]
 245e484: f940afe9     	ldr	x9, [sp, #0x158]
 245e488: 94000266     	bl	0x245ee20 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xb00>
 245e48c: 1e620103     	scvtf	d3, w8
 245e490: 1e220324     	scvtf	s4, w25
 245e494: 1e240825     	fmul	s5, s1, s4
 245e498: 1e22c0a5     	fcvt	d5, s5
 245e49c: 1e220306     	scvtf	s6, w24
 245e4a0: 1e260847     	fmul	s7, s2, s6
 245e4a4: 1e22c0e7     	fcvt	d7, s7
 245e4a8: 1e6728a5     	fadd	d5, d5, d7
 245e4ac: 1f609463     	fnmsub	d3, d3, d0, d5
 245e4b0: 1e624063     	fcvt	s3, d3
 245e4b4: f94093e8     	ldr	x8, [sp, #0x120]
 245e4b8: bd000903     	str	s3, [x8, #0x8]
 245e4bc: b9401a68     	ldr	w8, [x19, #0x18]
 245e4c0: 1e620103     	scvtf	d3, w8
 245e4c4: 1e240842     	fmul	s2, s2, s4
 245e4c8: 1e22c042     	fcvt	d2, s2
 245e4cc: 1e260821     	fmul	s1, s1, s6
 245e4d0: 1e22c021     	fcvt	d1, s1
 245e4d4: 1e613841     	fsub	d1, d2, d1
 245e4d8: 1f400460     	fmadd	d0, d3, d0, d1
 245e4dc: 1e624000     	fcvt	s0, d0
 245e4e0: f94093e8     	ldr	x8, [sp, #0x120]
 245e4e4: f940afe9     	ldr	x9, [sp, #0x158]
 245e4e8: 94000230     	bl	0x245eda8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa88>
 245e4ec: 9102c3e0     	add	x0, sp, #0xb0
 245e4f0: 97971e2c     	bl	0xa25da0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec0>
 245e4f4: 9400021f     	bl	0x245ed70 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa50>
 245e4f8: 350001e8     	cbnz	w8, 0x245e534 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x214>
 245e4fc: fc414260     	ldur	d0, [x19, #0x14]
 245e500: fd0003e0     	str	d0, [sp]
 245e504: d10343a0     	sub	x0, x29, #0xd0
 245e508: 9102c3e1     	add	x1, sp, #0xb0
 245e50c: 910443e2     	add	x2, sp, #0x110
 245e510: 910003e3     	mov	x3, sp
 245e514: 9799f82c     	bl	0xadc5c4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1f66e4>
 245e518: 1400001f     	b	0x245e594 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x274>
 245e51c: 12800e33     	mov	w19, #-0x72             ; =-114
 245e520: 14000064     	b	0x245e6b0 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x390>
 245e524: 12800cf3     	mov	w19, #-0x68             ; =-104
 245e528: 14000062     	b	0x245e6b0 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x390>
 245e52c: 12800e33     	mov	w19, #-0x72             ; =-114
 245e530: 1400005e     	b	0x245e6a8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x388>
 245e534: 6f00e400     	movi.2d	v0, #0000000000000000
 245e538: fd0057e0     	str	d0, [sp, #0xa8]
 245e53c: 52a02028     	mov	w8, #0x1010000          ; =16842752
 245e540: b9009be8     	str	w8, [sp, #0x98]
 245e544: d10343a9     	sub	x9, x29, #0xd0
 245e548: f90053e9     	str	x9, [sp, #0xa0]
 245e54c: 52a04029     	mov	w9, #0x2010000          ; =33619968
 245e550: b90083e9     	str	w9, [sp, #0x80]
 245e554: 9102c3e9     	add	x9, sp, #0xb0
 245e558: a908ffe9     	stp	x9, xzr, [sp, #0x88]
 245e55c: fd003fe0     	str	d0, [sp, #0x78]
 245e560: b9006be8     	str	w8, [sp, #0x68]
 245e564: 910443e8     	add	x8, sp, #0x110
 245e568: f9003be8     	str	x8, [sp, #0x70]
 245e56c: fc414260     	ldur	d0, [x19, #0x14]
 245e570: fd0033e0     	str	d0, [sp, #0x60]
 245e574: 910003e0     	mov	x0, sp
 245e578: 97995952     	bl	0xab4ac0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1cebe0>
 245e57c: 910263e0     	add	x0, sp, #0x98
 245e580: 910203e1     	add	x1, sp, #0x80
 245e584: 9101a3e2     	add	x2, sp, #0x68
 245e588: 910183e3     	add	x3, sp, #0x60
 245e58c: 910003e6     	mov	x6, sp
 245e590: 940001f3     	bl	0x245ed5c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa3c>
 245e594: 94000219     	bl	0x245edf8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xad8>
 245e598: 54000181     	b.ne	0x245e5c8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x2a8>
 245e59c: b9402668     	ldr	w8, [x19, #0x24]
 245e5a0: b9401289     	ldr	w9, [x20, #0x10]
 245e5a4: 9101c26a     	add	x10, x19, #0x70
 245e5a8: 52a0402b     	mov	w11, #0x2010000         ; =33619968
 245e5ac: b90003eb     	str	w11, [sp]
 245e5b0: a900ffea     	stp	x10, xzr, [sp, #0x8]
 245e5b4: 940001b1     	bl	0x245ec78 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x958>
 245e5b8: 9102c3e0     	add	x0, sp, #0xb0
 245e5bc: 910003e1     	mov	x1, sp
 245e5c0: 97935c84     	bl	0x9357d0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x4f8f0>
 245e5c4: 14000008     	b	0x245e5e4 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x2c4>
 245e5c8: 910003e8     	mov	x8, sp
 245e5cc: 9102c3e0     	add	x0, sp, #0xb0
 245e5d0: 97971c1d     	bl	0xa25644 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13f764>
 245e5d4: 9101c260     	add	x0, x19, #0x70
 245e5d8: 910003e1     	mov	x1, sp
 245e5dc: 979920af     	bl	0xaa6898 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1c09b8>
 245e5e0: 940001fe     	bl	0x245edd8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xab8>
 245e5e4: 1e6202e0     	scvtf	d0, w23
 245e5e8: 1e602800     	fadd	d0, d0, d0
 245e5ec: 1e624000     	fcvt	s0, d0
 245e5f0: b9400668     	ldr	w8, [x19, #0x4]
 245e5f4: 1e200921     	fmul	s1, s9, s0
 245e5f8: 7100011f     	cmp	w8, #0x0
 245e5fc: 1e2e1002     	fmov	s2, #1.00000000
 245e600: 1e280c42     	fcsel	s2, s2, s8, eq
 245e604: 1e200840     	fmul	s0, s2, s0
 245e608: 2f00e402     	movi	d2, #0000000000000000
 245e60c: 1e210c41     	fcsel	s1, s2, s1, eq
 245e610: 2d428a63     	ldp	s3, s2, [x19, #0x14]
 245e614: 5e21d842     	scvtf	s2, s2
 245e618: 5e21d863     	scvtf	s3, s3
 245e61c: 1e231842     	fdiv	s2, s2, s3
 245e620: 296723a9     	ldp	w9, w8, [x29, #-0xc8]
 245e624: 1e220103     	scvtf	s3, w8
 245e628: 1e231804     	fdiv	s4, s0, s3
 245e62c: 1e210845     	fmul	s5, s2, s1
 245e630: 1e2318a3     	fdiv	s3, s5, s3
 245e634: 2d040ec4     	stp	s4, s3, [x22, #0x20]
 245e638: 1e214021     	fneg	s1, s1
 245e63c: 1e220123     	scvtf	s3, w9
 245e640: 1e231821     	fdiv	s1, s1, s3
 245e644: 1e200840     	fmul	s0, s2, s0
 245e648: 1e620322     	scvtf	d2, w25
 245e64c: 1e622842     	fadd	d2, d2, d2
 245e650: 1e620104     	scvtf	d4, w8
 245e654: 1e641842     	fdiv	d2, d2, d4
 245e658: 1e7e1004     	fmov	d4, #-1.00000000
 245e65c: 1e642842     	fadd	d2, d2, d4
 245e660: 1e624042     	fcvt	s2, d2
 245e664: 1e620305     	scvtf	d5, w24
 245e668: 2d0506c2     	stp	s2, s1, [x22, #0x28]
 245e66c: 1e6528a1     	fadd	d1, d5, d5
 245e670: 1e620122     	scvtf	d2, w9
 245e674: 1e621821     	fdiv	d1, d1, d2
 245e678: 1e642821     	fadd	d1, d1, d4
 245e67c: 1e624021     	fcvt	s1, d1
 245e680: 1e231800     	fdiv	s0, s0, s3
 245e684: 2d0606c0     	stp	s0, s1, [x22, #0x30]
 245e688: 9101c260     	add	x0, x19, #0x70
 245e68c: 910022c1     	add	x1, x22, #0x8
 245e690: 94000052     	bl	0x245e7d8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x4b8>
 245e694: 94000189     	bl	0x245ecb8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x998>
 245e698: 9102c3e0     	add	x0, sp, #0xb0
 245e69c: 9797147c     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245e6a0: 910443e0     	add	x0, sp, #0x110
 245e6a4: 9797147a     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245e6a8: d10343a0     	sub	x0, x29, #0xd0
 245e6ac: 97971478     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245e6b0: aa1303e0     	mov	x0, x19
 245e6b4: 910743ff     	add	sp, sp, #0x1d0
 245e6b8: a9477bfd     	ldp	x29, x30, [sp, #0x70]
 245e6bc: a9464ff4     	ldp	x20, x19, [sp, #0x60]
 245e6c0: a94557f6     	ldp	x22, x21, [sp, #0x50]
 245e6c4: a9445ff8     	ldp	x24, x23, [sp, #0x40]
 245e6c8: a94367fa     	ldp	x26, x25, [sp, #0x30]
 245e6cc: a9426ffc     	ldp	x28, x27, [sp, #0x20]
 245e6d0: 6d4123e9     	ldp	d9, d8, [sp, #0x10]
 245e6d4: 6cc82beb     	ldp	d11, d10, [sp], #0x80
 245e6d8: d65f03c0     	ret
 245e6dc: aa0003f3     	mov	x19, x0
 245e6e0: 940001be     	bl	0x245edd8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xab8>
 245e6e4: 14000006     	b	0x245e6fc <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x3dc>
 245e6e8: 14000004     	b	0x245e6f8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x3d8>
 245e6ec: 14000003     	b	0x245e6f8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x3d8>
 245e6f0: 14000002     	b	0x245e6f8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x3d8>
 245e6f4: 14000001     	b	0x245e6f8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x3d8>
 245e6f8: aa0003f3     	mov	x19, x0
 245e6fc: 9102c3e0     	add	x0, sp, #0xb0
 245e700: 97971463     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245e704: 14000002     	b	0x245e70c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x3ec>
 245e708: aa0003f3     	mov	x19, x0
 245e70c: 910443e0     	add	x0, sp, #0x110
 245e710: 9797145f     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245e714: 14000003     	b	0x245e720 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x400>
 245e718: 14000001     	b	0x245e71c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x3fc>
 245e71c: aa0003f3     	mov	x19, x0
 245e720: d10343a0     	sub	x0, x29, #0xd0
 245e724: 9797145a     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245e728: 94000181     	bl	0x245ed2c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa0c>
 245e72c: b9400008     	ldr	w8, [x0]
 245e730: 340000e8     	cbz	w8, 0x245e74c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x42c>
 245e734: b9401408     	ldr	w8, [x0, #0x14]
 245e738: 340000a8     	cbz	w8, 0x245e74c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x42c>
 245e73c: b9401808     	ldr	w8, [x0, #0x18]
 245e740: 7100011f     	cmp	w8, #0x0
 245e744: 1a9f07e0     	cset	w0, ne
 245e748: d65f03c0     	ret
 245e74c: 52800000     	mov	w0, #0x0                ; =0
 245e750: d65f03c0     	ret
 245e754: d10203ff     	sub	sp, sp, #0x80
 245e758: a9064ff4     	stp	x20, x19, [sp, #0x60]
 245e75c: a9077bfd     	stp	x29, x30, [sp, #0x70]
 245e760: 9101c3fd     	add	x29, sp, #0x70
 245e764: b9401414     	ldr	w20, [x0, #0x14]
 245e768: 71001a9f     	cmp	w20, #0x6
 245e76c: 54000208     	b.hi	0x245e7ac <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x48c>
 245e770: aa0103f3     	mov	x19, x1
 245e774: 2941a001     	ldp	w1, w8, [x0, #0xc]
 245e778: 531d7108     	lsl	w8, w8, #3
 245e77c: 51002108     	sub	w8, w8, #0x8
 245e780: 2a140103     	orr	w3, w8, w20
 245e784: b9400802     	ldr	w2, [x0, #0x8]
 245e788: f9400004     	ldr	x4, [x0]
 245e78c: 910003e0     	mov	x0, sp
 245e790: d2800005     	mov	x5, #0x0                ; =0
 245e794: 97971d84     	bl	0xa25da4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec4>
 245e798: 910003e1     	mov	x1, sp
 245e79c: aa1303e0     	mov	x0, x19
 245e7a0: 9799203e     	bl	0xaa6898 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1c09b8>
 245e7a4: 910003e0     	mov	x0, sp
 245e7a8: 97971439     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245e7ac: 71001e9f     	cmp	w20, #0x7
 245e7b0: 1a9f27e0     	cset	w0, lo
 245e7b4: a9477bfd     	ldp	x29, x30, [sp, #0x70]
 245e7b8: a9464ff4     	ldp	x20, x19, [sp, #0x60]
 245e7bc: 910203ff     	add	sp, sp, #0x80
 245e7c0: d65f03c0     	ret
 245e7c4: aa0003f3     	mov	x19, x0
 245e7c8: 910003e0     	mov	x0, sp
 245e7cc: 97971430     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245e7d0: aa1303e0     	mov	x0, x19
 245e7d4: 94151267     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 245e7d8: b9400008     	ldr	w8, [x0]
 245e7dc: 12000908     	and	w8, w8, #0x7
 245e7e0: 71001d1f     	cmp	w8, #0x7
 245e7e4: 54000160     	b.eq	0x245e810 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x4f0>
 245e7e8: f9400809     	ldr	x9, [x0, #0x10]
 245e7ec: f9000029     	str	x9, [x1]
 245e7f0: b9400c09     	ldr	w9, [x0, #0xc]
 245e7f4: b9000829     	str	w9, [x1, #0x8]
 245e7f8: b9400809     	ldr	w9, [x0, #0x8]
 245e7fc: b9000c29     	str	w9, [x1, #0xc]
 245e800: b9400009     	ldr	w9, [x0]
 245e804: 53032d29     	ubfx	w9, w9, #3, #9
 245e808: 11000529     	add	w9, w9, #0x1
 245e80c: 29022029     	stp	w9, w8, [x1, #0x10]
 245e810: 71001d1f     	cmp	w8, #0x7
 245e814: 1a9f07e0     	cset	w0, ne
 245e818: d65f03c0     	ret
 245e81c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 245e820: 910003fd     	mov	x29, sp
 245e824: 8b010801     	add	x1, x0, x1, lsl #2
 245e828: 9400001f     	bl	0x245e8a4 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x584>
 245e82c: bd400000     	ldr	s0, [x0]
 245e830: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 245e834: d65f03c0     	ret
 245e838: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 245e83c: 910003fd     	mov	x29, sp
 245e840: 8b010801     	add	x1, x0, x1, lsl #2
 245e844: 94000035     	bl	0x245e918 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x5f8>
 245e848: bd400000     	ldr	s0, [x0]
 245e84c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 245e850: d65f03c0     	ret
 245e854: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 245e858: 910003fd     	mov	x29, sp
 245e85c: 8b010801     	add	x1, x0, x1, lsl #2
 245e860: 94000043     	bl	0x245e96c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x64c>
 245e864: b9400000     	ldr	w0, [x0]
 245e868: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 245e86c: d65f03c0     	ret
 245e870: 52800000     	mov	w0, #0x0                ; =0
 245e874: d65f03c0     	ret
 245e878: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 245e87c: a9017bfd     	stp	x29, x30, [sp, #0x10]
 245e880: 910043fd     	add	x29, sp, #0x10
 245e884: aa0003f3     	mov	x19, x0
 245e888: 94000568     	bl	0x245fe28 <_MangaDbgPretty+0x1a8>
 245e88c: 9101c000     	add	x0, x0, #0x70
 245e890: 97971d44     	bl	0xa25da0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec0>
 245e894: aa1303e0     	mov	x0, x19
 245e898: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 245e89c: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 245e8a0: d65f03c0     	ret
 245e8a4: d10083ff     	sub	sp, sp, #0x20
 245e8a8: a9017bfd     	stp	x29, x30, [sp, #0x10]
 245e8ac: 910043fd     	add	x29, sp, #0x10
 245e8b0: 910023e2     	add	x2, sp, #0x8
 245e8b4: 94000004     	bl	0x245e8c4 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x5a4>
 245e8b8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 245e8bc: 910083ff     	add	sp, sp, #0x20
 245e8c0: d65f03c0     	ret
 245e8c4: d10083ff     	sub	sp, sp, #0x20
 245e8c8: a9017bfd     	stp	x29, x30, [sp, #0x10]
 245e8cc: 910043fd     	add	x29, sp, #0x10
 245e8d0: 910023e3     	add	x3, sp, #0x8
 245e8d4: 94000004     	bl	0x245e8e4 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x5c4>
 245e8d8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 245e8dc: 910083ff     	add	sp, sp, #0x20
 245e8e0: d65f03c0     	ret
 245e8e4: eb01001f     	cmp	x0, x1
 245e8e8: 54000160     	b.eq	0x245e914 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x5f4>
 245e8ec: 91001008     	add	x8, x0, #0x4
 245e8f0: eb01011f     	cmp	x8, x1
 245e8f4: 54000100     	b.eq	0x245e914 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x5f4>
 245e8f8: aa0803e9     	mov	x9, x8
 245e8fc: bc404520     	ldr	s0, [x9], #0x4
 245e900: bd400001     	ldr	s1, [x0]
 245e904: 1e212000     	fcmp	s0, s1
 245e908: 9a80b100     	csel	x0, x8, x0, lt
 245e90c: aa0903e8     	mov	x8, x9
 245e910: 17fffff8     	b	0x245e8f0 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x5d0>
 245e914: d65f03c0     	ret
 245e918: d10083ff     	sub	sp, sp, #0x20
 245e91c: a9017bfd     	stp	x29, x30, [sp, #0x10]
