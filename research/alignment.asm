
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

000000000245c78c <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE>:
 245c78c: 6db73bef     	stp	d15, d14, [sp, #-0x90]!
 245c790: 6d0133ed     	stp	d13, d12, [sp, #0x10]
 245c794: 6d022beb     	stp	d11, d10, [sp, #0x20]
 245c798: 6d0323e9     	stp	d9, d8, [sp, #0x30]
 245c79c: a9046ffc     	stp	x28, x27, [sp, #0x40]
 245c7a0: a9055ff8     	stp	x24, x23, [sp, #0x50]
 245c7a4: a90657f6     	stp	x22, x21, [sp, #0x60]
 245c7a8: a9074ff4     	stp	x20, x19, [sp, #0x70]
 245c7ac: a9087bfd     	stp	x29, x30, [sp, #0x80]
 245c7b0: 910203fd     	add	x29, sp, #0x80
 245c7b4: d11b43ff     	sub	sp, sp, #0x6d0
 245c7b8: 90008308     	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
 245c7bc: f9435508     	ldr	x8, [x8, #0x6a8]
 245c7c0: f9400108     	ldr	x8, [x8]
 245c7c4: f81783a8     	stur	x8, [x29, #-0x88]
 245c7c8: f9400028     	ldr	x8, [x1]
 245c7cc: b40002e8     	cbz	x8, 0x245c828 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x9c>
 245c7d0: 94000935     	bl	0x245eca4 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x984>
 245c7d4: 340002e0     	cbz	w0, 0x245c830 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0xa4>
 245c7d8: 9116a3e0     	add	x0, sp, #0x5a8
 245c7dc: 97972571     	bl	0xa25da0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec0>
 245c7e0: 9116a3e1     	add	x1, sp, #0x5a8
 245c7e4: 9400095c     	bl	0x245ed54 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa34>
 245c7e8: 36000280     	tbz	w0, #0x0, 0x245c838 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0xac>
 245c7ec: f9402668     	ldr	x8, [x19, #0x48]
 245c7f0: b4000248     	cbz	x8, 0x245c838 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0xac>
 245c7f4: d2800009     	mov	x9, #0x0                ; =0
 245c7f8: 911823f7     	add	x23, sp, #0x608
 245c7fc: 2f00e408     	movi	d8, #0000000000000000
 245c800: 2f00e400     	movi	d0, #0000000000000000
 245c804: f100313f     	cmp	x9, #0xc
 245c808: 540001c2     	b.hs	0x245c840 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0xb4>
 245c80c: 8b09090a     	add	x10, x8, x9, lsl #2
 245c810: bd41a141     	ldr	s1, [x10, #0x1a0]
 245c814: 1e202820     	fadd	s0, s1, s0
 245c818: bd41a541     	ldr	s1, [x10, #0x1a4]
 245c81c: 1e282828     	fadd	s8, s1, s8
 245c820: 91000929     	add	x9, x9, #0x2
 245c824: 17fffff8     	b	0x245c804 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x78>
 245c828: 12800e33     	mov	w19, #-0x72             ; =-114
 245c82c: 14000132     	b	0x245ccf4 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x568>
 245c830: 12800cf3     	mov	w19, #-0x68             ; =-104
 245c834: 14000130     	b	0x245ccf4 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x568>
 245c838: 12800e33     	mov	w19, #-0x72             ; =-114
 245c83c: 1400012c     	b	0x245ccec <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x560>
 245c840: d2800009     	mov	x9, #0x0                ; =0
 245c844: d00049ca     	adrp	x10, 0x2d96000 <__ZTSN4Bach13AEPlaneAnchorE+0x1a10>
 245c848: bd45614a     	ldr	s10, [x10, #0x560]
 245c84c: 1e2a0800     	fmul	s0, s0, s10
 245c850: 3d800fe0     	str	q0, [sp, #0x30]
 245c854: 2f00e40c     	movi	d12, #0000000000000000
 245c858: 2f00e400     	movi	d0, #0000000000000000
 245c85c: f100313f     	cmp	x9, #0xc
 245c860: 54000102     	b.hs	0x245c880 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0xf4>
 245c864: 8b09090a     	add	x10, x8, x9, lsl #2
 245c868: bd41d141     	ldr	s1, [x10, #0x1d0]
 245c86c: 1e202820     	fadd	s0, s1, s0
 245c870: bd41d541     	ldr	s1, [x10, #0x1d4]
 245c874: 1e2c282c     	fadd	s12, s1, s12
 245c878: 91000929     	add	x9, x9, #0x2
 245c87c: 17fffff8     	b	0x245c85c <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0xd0>
 245c880: d2800009     	mov	x9, #0x0                ; =0
 245c884: 1e2a0800     	fmul	s0, s0, s10
 245c888: 3d800be0     	str	q0, [sp, #0x20]
 245c88c: 9101c108     	add	x8, x8, #0x70
 245c890: 2f00e409     	movi	d9, #0000000000000000
 245c894: f100213f     	cmp	x9, #0x8
 245c898: 540000a2     	b.hs	0x245c8ac <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x120>
 245c89c: fc408500     	ldr	d0, [x8], #0x8
 245c8a0: 0e29d409     	fadd.2s	v9, v0, v9
 245c8a4: 91000929     	add	x9, x9, #0x2
 245c8a8: 17fffffb     	b	0x245c894 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x108>
 245c8ac: 2942e275     	ldp	w21, w24, [x19, #0x14]
 245c8b0: 2d4a366e     	ldp	s14, s13, [x19, #0x50]
 245c8b4: 910082c4     	add	x4, x22, #0x20
 245c8b8: bd405a6b     	ldr	s11, [x19, #0x58]
 245c8bc: 911523e0     	add	x0, sp, #0x548
 245c8c0: 940008f4     	bl	0x245ec90 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x970>
 245c8c4: 1e2a0981     	fmul	s1, s12, s10
 245c8c8: 1e2a0900     	fmul	s0, s8, s10
 245c8cc: ad0003e1     	stp	q1, q0, [sp]
 245c8d0: 1f2a8500     	fnmsub	s0, s8, s10, s1
 245c8d4: ad4107e2     	ldp	q2, q1, [sp, #0x20]
 245c8d8: 1e223821     	fsub	s1, s1, s2
 245c8dc: 94151f8c     	bl	0x29a470c <dyld_stub_binder+0x29a470c>
 245c8e0: 1e22c000     	fcvt	d0, s0
 245c8e4: b0006908     	adrp	x8, 0x317d000 <__ZTSN13AmazingEngine19GeneralDeviceSensorE+0xb1d>
 245c8e8: fd479501     	ldr	d1, [x8, #0xf28]
 245c8ec: 1e612800     	fadd	d0, d0, d1
 245c8f0: 1e624000     	fcvt	s0, d0
 245c8f4: 94151f59     	bl	0x29a4658 <dyld_stub_binder+0x29a4658>
 245c8f8: 1e220302     	scvtf	s2, w24
 245c8fc: 1e2d39c3     	fsub	s3, s14, s13
 245c900: 1e220863     	fmul	s3, s3, s2
 245c904: ad411be5     	ldp	q5, q6, [sp, #0x20]
 245c908: 3dc003e4     	ldr	q4, [sp]
 245c90c: 6e0c0485     	mov.s	v5[1], v4[0]
 245c910: 3dc007e4     	ldr	q4, [sp, #0x10]
 245c914: 6e0c0486     	mov.s	v6[1], v4[0]
 245c918: 0f02f604     	fmov.2s	v4, #0.25000000
 245c91c: 0e26d4a5     	fadd.2s	v5, v5, v6
 245c920: 0f0167e6     	movi.2s	v6, #0x3f, lsl #24
 245c924: 2e26dca5     	fmul.2s	v5, v5, v6
 245c928: 2ea0f8a6     	fneg.2s	v6, v5
 245c92c: 0e29cc86     	fmla.2s	v6, v4, v9
 245c930: 2e26dcc4     	fmul.2s	v4, v6, v6
 245c934: 7e30d884     	faddp.2s	s4, v4
 245c938: 1e21c084     	fsqrt	s4, s4
 245c93c: 1e241863     	fdiv	s3, s3, s4
 245c940: 1e2e1004     	fmov	s4, #1.00000000
 245c944: 1e213884     	fsub	s4, s4, s1
 245c948: 0f8390a5     	fmul.2s	v5, v5, v3[0]
 245c94c: 5e0c04a6     	mov	s6, v5[1]
 245c950: 1f2299a2     	fnmsub	s2, s13, s2, s6
 245c954: 5f851002     	fmla.s	s2, s0, v5[0]
 245c958: 1e2202a6     	scvtf	s6, w21
 245c95c: 5fa51082     	fmla.s	s2, s4, v5[1]
 245c960: 1e2040a7     	fmov	s7, s5
 245c964: 5fa51007     	fmla.s	s7, s0, v5[1]
 245c968: 1f269d66     	fnmsub	s6, s11, s6, s7
 245c96c: 5f851086     	fmla.s	s6, s4, v5[0]
 245c970: 1e230821     	fmul	s1, s1, s3
 245c974: f942afe8     	ldr	x8, [sp, #0x558]
 245c978: bd000101     	str	s1, [x8]
 245c97c: 1e230804     	fmul	s4, s0, s3
 245c980: f942afe8     	ldr	x8, [sp, #0x558]
 245c984: bd000504     	str	s4, [x8, #0x4]
 245c988: 1e214063     	fneg	s3, s3
 245c98c: 1e230800     	fmul	s0, s0, s3
 245c990: f942afe8     	ldr	x8, [sp, #0x558]
 245c994: f942cbe9     	ldr	x9, [sp, #0x590]
 245c998: f9400129     	ldr	x9, [x9]
 245c99c: bc296900     	str	s0, [x8, x9]
 245c9a0: 94000925     	bl	0x245ee34 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xb14>
 245c9a4: bd000501     	str	s1, [x8, #0x4]
 245c9a8: f942afe8     	ldr	x8, [sp, #0x558]
 245c9ac: bd000906     	str	s6, [x8, #0x8]
 245c9b0: 94000921     	bl	0x245ee34 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xb14>
 245c9b4: bd000902     	str	s2, [x8, #0x8]
 245c9b8: 9113a3e0     	add	x0, sp, #0x4e8
 245c9bc: 979724f9     	bl	0xa25da0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec0>
 245c9c0: 940008ec     	bl	0x245ed70 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa50>
 245c9c4: 35000128     	cbnz	w8, 0x245c9e8 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x25c>
 245c9c8: fc414260     	ldur	d0, [x19, #0x14]
 245c9cc: fd00d3e0     	str	d0, [sp, #0x1a0]
 245c9d0: 9116a3e0     	add	x0, sp, #0x5a8
 245c9d4: 9113a3e1     	add	x1, sp, #0x4e8
 245c9d8: 911523e2     	add	x2, sp, #0x548
 245c9dc: 910683e3     	add	x3, sp, #0x1a0
 245c9e0: 9799fef9     	bl	0xadc5c4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1f66e4>
 245c9e4: 1400001a     	b	0x245ca4c <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x2c0>
 245c9e8: 6f00e400     	movi.2d	v0, #0000000000000000
 245c9ec: fd002be0     	str	d0, [sp, #0x50]
 245c9f0: 52a02028     	mov	w8, #0x1010000          ; =16842752
 245c9f4: b90043e8     	str	w8, [sp, #0x40]
 245c9f8: 9116a3e9     	add	x9, sp, #0x5a8
 245c9fc: f90027e9     	str	x9, [sp, #0x48]
 245ca00: 52a04029     	mov	w9, #0x2010000          ; =33619968
 245ca04: b90483e9     	str	w9, [sp, #0x480]
 245ca08: 9113a3e9     	add	x9, sp, #0x4e8
 245ca0c: f9024bff     	str	xzr, [sp, #0x490]
 245ca10: f90247e9     	str	x9, [sp, #0x488]
 245ca14: fd021be0     	str	d0, [sp, #0x430]
 245ca18: b90423e8     	str	w8, [sp, #0x420]
 245ca1c: 911523e8     	add	x8, sp, #0x548
 245ca20: f90217e8     	str	x8, [sp, #0x428]
 245ca24: fc414260     	ldur	d0, [x19, #0x14]
 245ca28: fd0273e0     	str	d0, [sp, #0x4e0]
 245ca2c: 910683e0     	add	x0, sp, #0x1a0
 245ca30: 97996024     	bl	0xab4ac0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1cebe0>
 245ca34: 910103e0     	add	x0, sp, #0x40
 245ca38: 911203e1     	add	x1, sp, #0x480
 245ca3c: 911083e2     	add	x2, sp, #0x420
 245ca40: 911383e3     	add	x3, sp, #0x4e0
 245ca44: 910683e6     	add	x6, sp, #0x1a0
 245ca48: 940008c5     	bl	0x245ed5c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa3c>
 245ca4c: 911203e0     	add	x0, sp, #0x480
 245ca50: 979724d4     	bl	0xa25da0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec0>
 245ca54: 911083e0     	add	x0, sp, #0x420
 245ca58: 979724d2     	bl	0xa25da0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec0>
 245ca5c: 52a02028     	mov	w8, #0x1010000          ; =16842752
 245ca60: b901a3e8     	str	w8, [sp, #0x1a0]
 245ca64: 911523e8     	add	x8, sp, #0x548
 245ca68: a91affe8     	stp	x8, xzr, [sp, #0x1a8]
 245ca6c: 52a04028     	mov	w8, #0x2010000          ; =33619968
 245ca70: b90043e8     	str	w8, [sp, #0x40]
 245ca74: 911203e8     	add	x8, sp, #0x480
 245ca78: a904ffe8     	stp	x8, xzr, [sp, #0x48]
 245ca7c: 910683e0     	add	x0, sp, #0x1a0
 245ca80: 910103e1     	add	x1, sp, #0x40
 245ca84: 97959337     	bl	0x9c1760 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0xdb880>
 245ca88: f9424be8     	ldr	x8, [sp, #0x490]
 245ca8c: f94267e9     	ldr	x9, [sp, #0x4c8]
 245ca90: fd400100     	ldr	d0, [x8]
 245ca94: fc1383a0     	stur	d0, [x29, #-0xc8]
 245ca98: b81403bf     	stur	wzr, [x29, #-0xc0]
 245ca9c: bd400900     	ldr	s0, [x8, #0x8]
 245caa0: bc1443a0     	stur	s0, [x29, #-0xbc]
 245caa4: f940012a     	ldr	x10, [x9]
 245caa8: bc6a6900     	ldr	s0, [x8, x10]
 245caac: bc1483a0     	stur	s0, [x29, #-0xb8]
 245cab0: f940012a     	ldr	x10, [x9]
 245cab4: 8b0a010a     	add	x10, x8, x10
 245cab8: bd400540     	ldr	s0, [x10, #0x4]
 245cabc: bc14c3a0     	stur	s0, [x29, #-0xb4]
 245cac0: b81503bf     	stur	wzr, [x29, #-0xb0]
 245cac4: 940008b5     	bl	0x245ed98 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa78>
 245cac8: bc1543a0     	stur	s0, [x29, #-0xac]
 245cacc: 2f00e400     	movi	d0, #0000000000000000
 245cad0: fc1583a0     	stur	d0, [x29, #-0xa8]
 245cad4: 52a7f008     	mov	w8, #0x3f800000         ; =1065353216
 245cad8: f80b42ff     	stur	xzr, [x23, #0xb4]
 245cadc: f80ac2ff     	stur	xzr, [x23, #0xac]
 245cae0: b81603a8     	stur	w8, [x29, #-0xa0]
 245cae4: b81743a8     	stur	w8, [x29, #-0x8c]
 245cae8: bd44f7e1     	ldr	s1, [sp, #0x4f4]
 245caec: bd44f3e2     	ldr	s2, [sp, #0x4f0]
 245caf0: bd45b7e3     	ldr	s3, [sp, #0x5b4]
 245caf4: bd45b3e4     	ldr	s4, [sp, #0x5b0]
 245caf8: 94000882     	bl	0x245ed00 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9e0>
 245cafc: 900049c9     	adrp	x9, 0x2d94000 <__ZTSN4Bach13MattingResultE+0x1c>
 245cb00: 3dc09525     	ldr	q5, [x9, #0x250]
 245cb04: 3c8442e5     	stur	q5, [x23, #0x44]
 245cb08: 1e301005     	fmov	s5, #-2.00000000
 245cb0c: 1e2418a4     	fdiv	s4, s5, s4
 245cb10: bd064be3     	str	s3, [sp, #0x648]
 245cb14: bd065fe4     	str	s4, [sp, #0x65c]
 245cb18: d0004ac9     	adrp	x9, 0x2db6000 <__ZTSN13AmazingEngine13AMGSpdlogSinkE+0x79b>
 245cb1c: 3dc0cd23     	ldr	q3, [x9, #0x330]
 245cb20: 3c8582e3     	stur	q3, [x23, #0x58]
 245cb24: f80742ff     	stur	xzr, [x23, #0x74]
 245cb28: f806c2ff     	stur	xzr, [x23, #0x6c]
 245cb2c: 5e21d821     	scvtf	s1, s1
 245cb30: 5e21d842     	scvtf	s2, s2
 245cb34: b90673e8     	str	w8, [sp, #0x670]
 245cb38: b90687e8     	str	w8, [sp, #0x684]
 245cb3c: 1e2c1003     	fmov	s3, #0.50000000
 245cb40: 1e230821     	fmul	s1, s1, s3
 245cb44: fc0042e0     	stur	d0, [x23, #0x4]
 245cb48: bd060be1     	str	s1, [sp, #0x608]
 245cb4c: bd0617e1     	str	s1, [sp, #0x614]
 245cb50: b9061bff     	str	wzr, [sp, #0x618]
 245cb54: 1e3c1001     	fmov	s1, #-0.50000000
 245cb58: 1e210841     	fmul	s1, s2, s1
 245cb5c: bd061fe1     	str	s1, [sp, #0x61c]
 245cb60: b90623ff     	str	wzr, [sp, #0x620]
 245cb64: 1e230841     	fmul	s1, s2, s3
 245cb68: bd0627e1     	str	s1, [sp, #0x624]
 245cb6c: fd0317e0     	str	d0, [sp, #0x628]
 245cb70: f80342ff     	stur	xzr, [x23, #0x34]
 245cb74: f802c2ff     	stur	xzr, [x23, #0x2c]
 245cb78: b90633e8     	str	w8, [sp, #0x630]
 245cb7c: b90647e8     	str	w8, [sp, #0x644]
 245cb80: 910f03e0     	add	x0, sp, #0x3c0
 245cb84: 911923e4     	add	x4, sp, #0x648
 245cb88: 94000837     	bl	0x245ec64 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x944>
 245cb8c: 910d83e0     	add	x0, sp, #0x360
 245cb90: 911823e4     	add	x4, sp, #0x608
 245cb94: 94000834     	bl	0x245ec64 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x944>
 245cb98: 910c03e0     	add	x0, sp, #0x300
 245cb9c: d10323a4     	sub	x4, x29, #0xc8
 245cba0: 94000831     	bl	0x245ec64 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x944>
 245cba4: 910103e8     	add	x8, sp, #0x40
 245cba8: 910f03e0     	add	x0, sp, #0x3c0
 245cbac: 910c03e1     	add	x1, sp, #0x300
 245cbb0: 97970c50     	bl	0xa1fcf0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x139e10>
 245cbb4: 910683e8     	add	x8, sp, #0x1a0
 245cbb8: 910103e0     	add	x0, sp, #0x40
 245cbbc: 910d83e1     	add	x1, sp, #0x360
 245cbc0: 97970c8e     	bl	0xa1fdf8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x139f18>
 245cbc4: f940d3e0     	ldr	x0, [sp, #0x1a0]
 245cbc8: 94000860     	bl	0x245ed48 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa28>
 245cbcc: 910683e1     	add	x1, sp, #0x1a0
 245cbd0: 911083e2     	add	x2, sp, #0x420
 245cbd4: 94000843     	bl	0x245ece0 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9c0>
 245cbd8: 940008aa     	bl	0x245ee80 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xb60>
 245cbdc: 910103e0     	add	x0, sp, #0x40
 245cbe0: 940e2bc3     	bl	0x27e7aec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x10ad6c>
 245cbe4: 910683e8     	add	x8, sp, #0x1a0
 245cbe8: 911083e0     	add	x0, sp, #0x420
 245cbec: 97971638     	bl	0xa224cc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13c5ec>
 245cbf0: f940d3e0     	ldr	x0, [sp, #0x1a0]
 245cbf4: 94000855     	bl	0x245ed48 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa28>
 245cbf8: 910683e1     	add	x1, sp, #0x1a0
 245cbfc: 911083e2     	add	x2, sp, #0x420
 245cc00: 94000838     	bl	0x245ece0 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9c0>
 245cc04: 9400089f     	bl	0x245ee80 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xb60>
 245cc08: f9421be8     	ldr	x8, [sp, #0x430]
 245cc0c: bd400100     	ldr	s0, [x8]
 245cc10: bd0022c0     	str	s0, [x22, #0x20]
 245cc14: f94237e9     	ldr	x9, [sp, #0x468]
 245cc18: f9400129     	ldr	x9, [x9]
 245cc1c: bc696900     	ldr	s0, [x8, x9]
 245cc20: 1e214000     	fneg	s0, s0
 245cc24: bd0026c0     	str	s0, [x22, #0x24]
 245cc28: f94237e9     	ldr	x9, [sp, #0x468]
 245cc2c: f9400129     	ldr	x9, [x9]
 245cc30: 8b090529     	add	x9, x9, x9, lsl #1
 245cc34: bc696900     	ldr	s0, [x8, x9]
 245cc38: bd002ac0     	str	s0, [x22, #0x28]
 245cc3c: bd400500     	ldr	s0, [x8, #0x4]
 245cc40: 1e214000     	fneg	s0, s0
 245cc44: bd002ec0     	str	s0, [x22, #0x2c]
 245cc48: f94237e9     	ldr	x9, [sp, #0x468]
 245cc4c: 94000870     	bl	0x245ee0c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xaec>
 245cc50: f94237e9     	ldr	x9, [sp, #0x468]
 245cc54: 9400084b     	bl	0x245ed80 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa60>
 245cc58: bd0036c0     	str	s0, [x22, #0x34]
 245cc5c: 910c03e0     	add	x0, sp, #0x300
 245cc60: 97971b0b     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cc64: 910d83e0     	add	x0, sp, #0x360
 245cc68: 97971b09     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cc6c: 910f03e0     	add	x0, sp, #0x3c0
 245cc70: 97971b07     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cc74: 911083e0     	add	x0, sp, #0x420
 245cc78: 97971b05     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cc7c: 911203e0     	add	x0, sp, #0x480
 245cc80: 97971b03     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cc84: 9400085d     	bl	0x245edf8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xad8>
 245cc88: 54000121     	b.ne	0x245ccac <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x520>
 245cc8c: 9400082a     	bl	0x245ed34 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa14>
 245cc90: b901a3eb     	str	w11, [sp, #0x1a0]
 245cc94: a91affea     	stp	x10, xzr, [sp, #0x1a8]
 245cc98: 940007f8     	bl	0x245ec78 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x958>
 245cc9c: 9113a3e0     	add	x0, sp, #0x4e8
 245cca0: 910683e1     	add	x1, sp, #0x1a0
 245cca4: 979362cb     	bl	0x9357d0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x4f8f0>
 245cca8: 14000009     	b	0x245cccc <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x540>
 245ccac: 910683e8     	add	x8, sp, #0x1a0
 245ccb0: 9113a3e0     	add	x0, sp, #0x4e8
 245ccb4: 97972264     	bl	0xa25644 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13f764>
 245ccb8: 9101c260     	add	x0, x19, #0x70
 245ccbc: 910683e1     	add	x1, sp, #0x1a0
 245ccc0: 979926f6     	bl	0xaa6898 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1c09b8>
 245ccc4: 910683e0     	add	x0, sp, #0x1a0
 245ccc8: 97971af1     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cccc: 9101c260     	add	x0, x19, #0x70
 245ccd0: 910022c1     	add	x1, x22, #0x8
 245ccd4: 940006c1     	bl	0x245e7d8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x4b8>
 245ccd8: 940007f8     	bl	0x245ecb8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x998>
 245ccdc: 9113a3e0     	add	x0, sp, #0x4e8
 245cce0: 97971aeb     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cce4: 911523e0     	add	x0, sp, #0x548
 245cce8: 97971ae9     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245ccec: 9116a3e0     	add	x0, sp, #0x5a8
 245ccf0: 97971ae7     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245ccf4: f85783a8     	ldur	x8, [x29, #-0x88]
 245ccf8: 90008309     	adrp	x9, 0x34bc000 <dyld_stub_binder+0x34bc000>
 245ccfc: f9435529     	ldr	x9, [x9, #0x6a8]
 245cd00: f9400129     	ldr	x9, [x9]
 245cd04: eb08013f     	cmp	x9, x8
 245cd08: 540001a1     	b.ne	0x245cd3c <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x5b0>
 245cd0c: aa1303e0     	mov	x0, x19
 245cd10: 911b43ff     	add	sp, sp, #0x6d0
 245cd14: a9487bfd     	ldp	x29, x30, [sp, #0x80]
 245cd18: a9474ff4     	ldp	x20, x19, [sp, #0x70]
 245cd1c: a94657f6     	ldp	x22, x21, [sp, #0x60]
 245cd20: a9455ff8     	ldp	x24, x23, [sp, #0x50]
 245cd24: a9446ffc     	ldp	x28, x27, [sp, #0x40]
 245cd28: 6d4323e9     	ldp	d9, d8, [sp, #0x30]
 245cd2c: 6d422beb     	ldp	d11, d10, [sp, #0x20]
 245cd30: 6d4133ed     	ldp	d13, d12, [sp, #0x10]
 245cd34: 6cc93bef     	ldp	d15, d14, [sp], #0x90
 245cd38: d65f03c0     	ret
 245cd3c: 94151e4d     	bl	0x29a4670 <dyld_stub_binder+0x29a4670>
 245cd40: aa0003f3     	mov	x19, x0
 245cd44: 910683e0     	add	x0, sp, #0x1a0
 245cd48: 14000021     	b	0x245cdcc <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x640>
 245cd4c: 14000025     	b	0x245cde0 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x654>
 245cd50: 14000024     	b	0x245cde0 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x654>
 245cd54: 14000023     	b	0x245cde0 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x654>
 245cd58: 14000022     	b	0x245cde0 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x654>
 245cd5c: aa0003f3     	mov	x19, x0
 245cd60: 910683e0     	add	x0, sp, #0x1a0
 245cd64: 14000007     	b	0x245cd80 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x5f4>
 245cd68: 14000008     	b	0x245cd88 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x5fc>
 245cd6c: aa0003f3     	mov	x19, x0
 245cd70: 94000844     	bl	0x245ee80 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xb60>
 245cd74: 14000002     	b	0x245cd7c <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x5f0>
 245cd78: aa0003f3     	mov	x19, x0
 245cd7c: 910103e0     	add	x0, sp, #0x40
 245cd80: 940e2b5b     	bl	0x27e7aec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x10ad6c>
 245cd84: 14000002     	b	0x245cd8c <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x600>
 245cd88: aa0003f3     	mov	x19, x0
 245cd8c: 910c03e0     	add	x0, sp, #0x300
 245cd90: 97971abf     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cd94: 910d83e0     	add	x0, sp, #0x360
 245cd98: 97971abd     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cd9c: 910f03e0     	add	x0, sp, #0x3c0
 245cda0: 97971abb     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cda4: 14000007     	b	0x245cdc0 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x634>
 245cda8: aa0003f3     	mov	x19, x0
 245cdac: 17fffffa     	b	0x245cd94 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x608>
 245cdb0: aa0003f3     	mov	x19, x0
 245cdb4: 17fffffa     	b	0x245cd9c <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x610>
 245cdb8: 14000001     	b	0x245cdbc <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x630>
 245cdbc: aa0003f3     	mov	x19, x0
 245cdc0: 911083e0     	add	x0, sp, #0x420
 245cdc4: 97971ab2     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cdc8: 911203e0     	add	x0, sp, #0x480
 245cdcc: 97971ab0     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cdd0: 14000005     	b	0x245cde4 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x658>
 245cdd4: aa0003f3     	mov	x19, x0
 245cdd8: 17fffffc     	b	0x245cdc8 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x63c>
 245cddc: 14000001     	b	0x245cde0 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x654>
 245cde0: aa0003f3     	mov	x19, x0
 245cde4: 9113a3e0     	add	x0, sp, #0x4e8
 245cde8: 97971aa9     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cdec: 911523e0     	add	x0, sp, #0x548
 245cdf0: 97971aa7     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245cdf4: 14000005     	b	0x245ce08 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x67c>
 245cdf8: aa0003f3     	mov	x19, x0
 245cdfc: 17fffffc     	b	0x245cdec <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x660>
 245ce00: 14000001     	b	0x245ce04 <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE+0x678>
 245ce04: aa0003f3     	mov	x19, x0
 245ce08: 9116a3e0     	add	x0, sp, #0x5a8
 245ce0c: 97971aa0     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 245ce10: 940007c7     	bl	0x245ed2c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa0c>

000000000245ce14 <__ZN6apollo16FceAlignmentNode15executeWithFFHQERKNS_5ImageE>:
 245ce14: 6db63bef     	stp	d15, d14, [sp, #-0xa0]!
 245ce18: 6d0133ed     	stp	d13, d12, [sp, #0x10]
 245ce1c: 6d022beb     	stp	d11, d10, [sp, #0x20]
 245ce20: 6d0323e9     	stp	d9, d8, [sp, #0x30]
 245ce24: a9046ffc     	stp	x28, x27, [sp, #0x40]
 245ce28: a90567fa     	stp	x26, x25, [sp, #0x50]
 245ce2c: a9065ff8     	stp	x24, x23, [sp, #0x60]
 245ce30: a90757f6     	stp	x22, x21, [sp, #0x70]
 245ce34: a9084ff4     	stp	x20, x19, [sp, #0x80]
 245ce38: a9097bfd     	stp	x29, x30, [sp, #0x90]
 245ce3c: 910243fd     	add	x29, sp, #0x90
 245ce40: d11d83ff     	sub	sp, sp, #0x760
 245ce44: 90008308     	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
 245ce48: f9435508     	ldr	x8, [x8, #0x6a8]
 245ce4c: f9400108     	ldr	x8, [x8]
 245ce50: f81683a8     	stur	x8, [x29, #-0x98]
 245ce54: f9400c13     	ldr	x19, [x0, #0x18]
 245ce58: f9402668     	ldr	x8, [x19, #0x48]
 245ce5c: b4002068     	cbz	x8, 0x245d268 <__ZN6apollo16FceAlignmentNode15executeWithFFHQERKNS_5ImageE+0x454>
 245ce60: aa0103f4     	mov	x20, x1
 245ce64: f9400417     	ldr	x23, [x0, #0x8]
 245ce68: bd425108     	ldr	s8, [x8, #0x250]
 245ce6c: bd425509     	ldr	s9, [x8, #0x254]
 245ce70: bd42690a     	ldr	s10, [x8, #0x268]
 245ce74: bd426d0b     	ldr	s11, [x8, #0x26c]
 245ce78: bd42a10c     	ldr	s12, [x8, #0x2a0]
 245ce7c: bd42a50d     	ldr	s13, [x8, #0x2a4]
 245ce80: bd42d10e     	ldr	s14, [x8, #0x2d0]
 245ce84: bd42d50f     	ldr	s15, [x8, #0x2d4]
 245ce88: f00079a0     	adrp	x0, 0x3393000 <dyld_stub_binder+0x3393000>
 245ce8c: 910ab400     	add	x0, x0, #0x2ad
 245ce90: 9415228a     	bl	0x29a58b8 <dyld_stub_binder+0x29a58b8>
 245ce94: 940007ef     	bl	0x245ee50 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xb30>
 245ce98: 1e22c184     	fcvt	d4, s12
 245ce9c: 1e22c1a5     	fcvt	d5, s13
 245cea0: 1e22c1c6     	fcvt	d6, s14
 245cea4: 1e22c1e7     	fcvt	d7, s15
 245cea8: 94000790     	bl	0x245ece8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9c8>
 245ceac: d00079a0     	adrp	x0, 0x3392000 <dyld_stub_binder+0x3392000>
 245ceb0: 913fc800     	add	x0, x0, #0xff2
 245ceb4: 940007c1     	bl	0x245edb8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa98>
 245ceb8: f9400288     	ldr	x8, [x20]
 245cebc: b4001d68     	cbz	x8, 0x245d268 <__ZN6apollo16FceAlignmentNode15executeWithFFHQERKNS_5ImageE+0x454>
 245cec0: aa1303e0     	mov	x0, x19
 245cec4: 9400061a     	bl	0x245e72c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x40c>
 245cec8: 34001d40     	cbz	w0, 0x245d270 <__ZN6apollo16FceAlignmentNode15executeWithFFHQERKNS_5ImageE+0x45c>
 245cecc: 9112e3e0     	add	x0, sp, #0x4b8
 245ced0: 979723b4     	bl	0xa25da0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec0>
 245ced4: 9112e3e1     	add	x1, sp, #0x4b8
 245ced8: 9400079f     	bl	0x245ed54 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa34>
 245cedc: 36001ce0     	tbz	w0, #0x0, 0x245d278 <__ZN6apollo16FceAlignmentNode15executeWithFFHQERKNS_5ImageE+0x464>
 245cee0: f00079b5     	adrp	x21, 0x3393000 <dyld_stub_binder+0x3393000>
 245cee4: 910ab6b5     	add	x21, x21, #0x2ad
 245cee8: 94000784     	bl	0x245ecf8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9d8>
 245ceec: b944c7e8     	ldr	w8, [sp, #0x4c4]
 245cef0: b944c3e9     	ldr	w9, [sp, #0x4c0]
 245cef4: a90027e8     	stp	x8, x9, [sp]
 245cef8: f00079a0     	adrp	x0, 0x3393000 <dyld_stub_binder+0x3393000>
 245cefc: 91013800     	add	x0, x0, #0x4e
 245cf00: 9415226e     	bl	0x29a58b8 <dyld_stub_binder+0x29a58b8>
 245cf04: 1e282940     	fadd	s0, s10, s8
 245cf08: 1e2c1001     	fmov	s1, #0.50000000
 245cf0c: 1e210803     	fmul	s3, s0, s1
 245cf10: 1e292960     	fadd	s0, s11, s9
 245cf14: 1e210804     	fmul	s4, s0, s1
 245cf18: bd009fe4     	str	s4, [sp, #0x9c]
 245cf1c: 1e283948     	fsub	s8, s10, s8
 245cf20: 1e293969     	fsub	s9, s11, s9
 245cf24: 1e2c29c0     	fadd	s0, s14, s12
 245cf28: 1e2d29e2     	fadd	s2, s15, s13
 245cf2c: 1f218c0a     	fnmsub	s10, s0, s1, s3
 245cf30: 1e20406e     	fmov	s14, s3
 245cf34: 1f21904b     	fnmsub	s11, s2, s1, s4
 245cf38: 94000770     	bl	0x245ecf8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9d8>
 245cf3c: 940007c5     	bl	0x245ee50 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xb30>
 245cf40: 6d010fe2     	stp	d2, d3, [sp, #0x10]
 245cf44: 6d0007e0     	stp	d0, d1, [sp]
 245cf48: f00079a0     	adrp	x0, 0x3393000 <dyld_stub_binder+0x3393000>
 245cf4c: 9101dc00     	add	x0, x0, #0x77
 245cf50: 9415225a     	bl	0x29a58b8 <dyld_stub_binder+0x29a58b8>
 245cf54: 1e282960     	fadd	s0, s11, s8
 245cf58: 1e2a3921     	fsub	s1, s9, s10
 245cf5c: 1e210822     	fmul	s2, s1, s1
 245cf60: 1f000802     	fmadd	s2, s0, s0, s2
 245cf64: 1e21c042     	fsqrt	s2, s2
 245cf68: 1e280903     	fmul	s3, s8, s8
 245cf6c: 1f090d23     	fmadd	s3, s9, s9, s3
 245cf70: 1e21c063     	fsqrt	s3, s3
 245cf74: 1e232863     	fadd	s3, s3, s3
 245cf78: 1e2a0944     	fmul	s4, s10, s10
 245cf7c: 1f0b1164     	fmadd	s4, s11, s11, s4
 245cf80: 1e21c084     	fsqrt	s4, s4
 245cf84: f0004988     	adrp	x8, 0x2d8f000 <__ZTSN2pk7SkTQuadE+0x6c3c>
 245cf88: bd46d505     	ldr	s5, [x8, #0x6d4]
 245cf8c: 1e250884     	fmul	s4, s4, s5
 245cf90: 1e246863     	fmaxnm	s3, s3, s4
 245cf94: 2d4c2264     	ldp	s4, s8, [x19, #0x60]
 245cf98: 1e230883     	fmul	s3, s4, s3
 245cf9c: 1e200860     	fmul	s0, s3, s0
 245cfa0: 1e22180d     	fdiv	s13, s0, s2
 245cfa4: 1e210860     	fmul	s0, s3, s1
 245cfa8: 1e22180f     	fdiv	s15, s0, s2
 245cfac: 1e214100     	fneg	s0, s8
 245cfb0: 1e2009e9     	fmul	s9, s15, s0
 245cfb4: 1e2809ac     	fmul	s12, s13, s8
 245cfb8: bd406a60     	ldr	s0, [x19, #0x68]
 245cfbc: 1f0a380a     	fmadd	s10, s0, s10, s14
 245cfc0: bd409fe1     	ldr	s1, [sp, #0x9c]
 245cfc4: 1f0b040b     	fmadd	s11, s0, s11, s1
 245cfc8: 9400074c     	bl	0x245ecf8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9d8>
 245cfcc: 1e22c1a0     	fcvt	d0, s13
 245cfd0: 1e22c1e1     	fcvt	d1, s15
 245cfd4: 1e22c122     	fcvt	d2, s9
 245cfd8: 1e22c183     	fcvt	d3, s12
 245cfdc: 1e22c144     	fcvt	d4, s10
 245cfe0: 1e22c165     	fcvt	d5, s11
 245cfe4: fd0027e5     	str	d5, [sp, #0x48]
 245cfe8: 6d0217e4     	stp	d4, d5, [sp, #0x20]
 245cfec: 6d0007e0     	stp	d0, d1, [sp]
 245cff0: 6d010fe2     	stp	d2, d3, [sp, #0x10]
 245cff4: f00079a0     	adrp	x0, 0x3393000 <dyld_stub_binder+0x3393000>
 245cff8: 91029000     	add	x0, x0, #0xa4
 245cffc: 9415222f     	bl	0x29a58b8 <dyld_stub_binder+0x29a58b8>
 245d000: 1f08b5e0     	fmsub	s0, s15, s8, s13
 245d004: 1e203941     	fsub	s1, s10, s0
 245d008: bd009fe1     	str	s1, [sp, #0x9c]
 245d00c: 1f083da0     	fmadd	s0, s13, s8, s15
 245d010: 1e203962     	fsub	s2, s11, s0
 245d014: 2d290ba1     	stp	s1, s2, [x29, #-0xb8]
 245d018: 1e2d3940     	fsub	s0, s10, s13
 245d01c: 1f0881e1     	fmsub	s1, s15, s8, s0
 245d020: bd0067e1     	str	s1, [sp, #0x64]
 245d024: 1e2f3960     	fsub	s0, s11, s15
 245d028: 1f0801a9     	fmadd	s9, s13, s8, s0
 245d02c: 2d2a27a1     	stp	s1, s9, [x29, #-0xb0]
 245d030: 1e2d2940     	fadd	s0, s10, s13
 245d034: 1f0881ec     	fmsub	s12, s15, s8, s0
 245d038: 1e2f2961     	fadd	s1, s11, s15
 245d03c: 1e20404a     	fmov	s10, s2
 245d040: 1f0805ab     	fmadd	s11, s13, s8, s1
 245d044: 2d2b2fac     	stp	s12, s11, [x29, #-0xa8]
 245d048: 1f0801ee     	fmadd	s14, s15, s8, s0
 245d04c: 1f0885a8     	fmsub	s8, s13, s8, s1
 245d050: 2d2c23ae     	stp	s14, s8, [x29, #-0xa0]
 245d054: 94000729     	bl	0x245ecf8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9d8>
 245d058: bd409fe0     	ldr	s0, [sp, #0x9c]
 245d05c: 1e22c000     	fcvt	d0, s0
 245d060: 2d0babe9     	stp	s9, s10, [sp, #0x5c]
 245d064: 1e22c141     	fcvt	d1, s10
 245d068: 1e20418a     	fmov	s10, s12
 245d06c: bd4067ec     	ldr	s12, [sp, #0x64]
 245d070: 1e22c182     	fcvt	d2, s12
 245d074: 1e22c123     	fcvt	d3, s9
 245d078: 1e22c144     	fcvt	d4, s10
 245d07c: bd0057eb     	str	s11, [sp, #0x54]
 245d080: 1e22c165     	fcvt	d5, s11
 245d084: 1e22c1c6     	fcvt	d6, s14
 245d088: 1e22c107     	fcvt	d7, s8
 245d08c: 94000717     	bl	0x245ece8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9c8>
 245d090: d00079a0     	adrp	x0, 0x3393000 <dyld_stub_binder+0x3393000>
 245d094: 91035800     	add	x0, x0, #0xd6
 245d098: 94000748     	bl	0x245edb8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa98>
 245d09c: 2d0837ef     	stp	s15, s13, [sp, #0x40]
 245d0a0: 1e2f09e0     	fmul	s0, s15, s15
 245d0a4: 1f0d01a0     	fmadd	s0, s13, s13, s0
 245d0a8: 1e20418d     	fmov	s13, s12
 245d0ac: 1e21c000     	fsqrt	s0, s0
 245d0b0: 1e202800     	fadd	s0, s0, s0
 245d0b4: 1e22c001     	fcvt	d1, s0
 245d0b8: 90004108     	adrp	x8, 0x2c7d000 <__ZTSN3BRC13MessageSenderE+0xb589>
 245d0bc: fd473100     	ldr	d0, [x8, #0xe60]
 245d0c0: fd0037e1     	str	d1, [sp, #0x68]
 245d0c4: 1e600820     	fmul	d0, d1, d0
 245d0c8: 1e640008     	fcvtas	w8, d0
 245d0cc: bd409fe0     	ldr	s0, [sp, #0x9c]
 245d0d0: bd051be0     	str	s0, [sp, #0x518]
 245d0d4: bd051fec     	str	s12, [sp, #0x51c]
 245d0d8: 52800069     	mov	w9, #0x3                ; =3
 245d0dc: 71000d1f     	cmp	w8, #0x3
 245d0e0: 1a89c116     	csel	w22, w8, w9, gt
 245d0e4: bd0523ea     	str	s10, [sp, #0x520]
 245d0e8: bd0083ee     	str	s14, [sp, #0x80]
 245d0ec: bd0527ee     	str	s14, [sp, #0x524]
 245d0f0: 940006f6     	bl	0x245ecc8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9a8>
 245d0f4: bd0053e0     	str	s0, [sp, #0x50]
 245d0f8: 2d4bbbec     	ldp	s12, s14, [sp, #0x5c]
 245d0fc: bd051bee     	str	s14, [sp, #0x518]
 245d100: bd051fec     	str	s12, [sp, #0x51c]
 245d104: bd4057e0     	ldr	s0, [sp, #0x54]
 245d108: 1e20400f     	fmov	s15, s0
 245d10c: bd0523e0     	str	s0, [sp, #0x520]
 245d110: bd0527e8     	str	s8, [sp, #0x524]
 245d114: 940006ed     	bl	0x245ecc8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9a8>
 245d118: 1e204009     	fmov	s9, s0
 245d11c: bd409fe0     	ldr	s0, [sp, #0x9c]
 245d120: bd051be0     	str	s0, [sp, #0x518]
 245d124: bd051fed     	str	s13, [sp, #0x51c]
 245d128: bd005bea     	str	s10, [sp, #0x58]
 245d12c: bd0523ea     	str	s10, [sp, #0x520]
 245d130: bd4083e0     	ldr	s0, [sp, #0x80]
 245d134: bd0527e0     	str	s0, [sp, #0x524]
 245d138: 940006e7     	bl	0x245ecd4 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9b4>
 245d13c: fd4037eb     	ldr	d11, [sp, #0x68]
 245d140: 1e20400a     	fmov	s10, s0
 245d144: bd051bee     	str	s14, [sp, #0x518]
 245d148: bd051fec     	str	s12, [sp, #0x51c]
 245d14c: bd0523ef     	str	s15, [sp, #0x520]
 245d150: bd0073e8     	str	s8, [sp, #0x70]
 245d154: bd0527e8     	str	s8, [sp, #0x524]
 245d158: 940006df     	bl	0x245ecd4 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9b4>
 245d15c: bd4053e1     	ldr	s1, [sp, #0x50]
 245d160: 1e300028     	fcvtms	w8, s1
 245d164: 1e300129     	fcvtms	w9, s9
 245d168: 1e28014a     	fcvtps	w10, s10
 245d16c: 4b160108     	sub	w8, w8, w22
 245d170: 7100011f     	cmp	w8, #0x0
 245d174: 1a9fc118     	csel	w24, w8, wzr, gt
 245d178: 4b160128     	sub	w8, w9, w22
 245d17c: 7100011f     	cmp	w8, #0x0
 245d180: 1a9fc119     	csel	w25, w8, wzr, gt
 245d184: 29412688     	ldp	w8, w9, [x20, #0x8]
 245d188: 0b0a02ca     	add	w10, w22, w10
 245d18c: 6b0a011f     	cmp	w8, w10
 245d190: 1a8ab11a     	csel	w26, w8, w10, lt
 245d194: 1e280008     	fcvtps	w8, s0
 245d198: 0b0802c8     	add	w8, w22, w8
 245d19c: 6b08013f     	cmp	w9, w8
 245d1a0: 1a88b13b     	csel	w27, w9, w8, lt
 245d1a4: d00079b5     	adrp	x21, 0x3393000 <dyld_stub_binder+0x3393000>
 245d1a8: 910ab6b5     	add	x21, x21, #0x2ad
 245d1ac: 940006d3     	bl	0x245ecf8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9d8>
 245d1b0: f90007f6     	str	x22, [sp, #0x8]
 245d1b4: fd0003eb     	str	d11, [sp]
 245d1b8: d00079a0     	adrp	x0, 0x3393000 <dyld_stub_binder+0x3393000>
 245d1bc: 91045400     	add	x0, x0, #0x115
 245d1c0: 941521be     	bl	0x29a58b8 <dyld_stub_binder+0x29a58b8>
 245d1c4: 940006cd     	bl	0x245ecf8 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x9d8>
 245d1c8: a9016ffa     	stp	x26, x27, [sp, #0x10]
 245d1cc: a90067f8     	stp	x24, x25, [sp]
 245d1d0: d00079a0     	adrp	x0, 0x3393000 <dyld_stub_binder+0x3393000>
 245d1d4: 9104cc00     	add	x0, x0, #0x133
 245d1d8: 941521b8     	bl	0x29a58b8 <dyld_stub_binder+0x29a58b8>
 245d1dc: 4b190368     	sub	w8, w27, w25
 245d1e0: b904abf8     	str	w24, [sp, #0x4a8]
 245d1e4: b904aff9     	str	w25, [sp, #0x4ac]
 245d1e8: b944c7e9     	ldr	w9, [sp, #0x4c4]
 245d1ec: b944c3ea     	ldr	w10, [sp, #0x4c0]
 245d1f0: 4b18034b     	sub	w11, w26, w24
 245d1f4: 6b09017f     	cmp	w11, w9
 245d1f8: 7a4aa108     	ccmp	w8, w10, #0x8, ge
 245d1fc: b904b3eb     	str	w11, [sp, #0x4b0]
