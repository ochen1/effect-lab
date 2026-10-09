
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000001c15f38 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb>:
 1c15f38: d10243ff     	sub	sp, sp, #0x90
 1c15f3c: a90467fa     	stp	x26, x25, [sp, #0x40]
 1c15f40: a9055ff8     	stp	x24, x23, [sp, #0x50]
 1c15f44: a90657f6     	stp	x22, x21, [sp, #0x60]
 1c15f48: a9074ff4     	stp	x20, x19, [sp, #0x70]
 1c15f4c: a9087bfd     	stp	x29, x30, [sp, #0x80]
 1c15f50: 910203fd     	add	x29, sp, #0x80
 1c15f54: aa0003f3     	mov	x19, x0
 1c15f58: 340047c4     	cbz	w4, 0x1c16850 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x918>
 1c15f5c: aa0103f6     	mov	x22, x1
 1c15f60: a9402428     	ldp	x8, x9, [x1]
 1c15f64: cb080129     	sub	x9, x9, x8
 1c15f68: f123e13f     	cmp	x9, #0x8f8
 1c15f6c: 54004721     	b.ne	0x1c16850 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x918>
 1c15f70: f9410e69     	ldr	x9, [x19, #0x218]
 1c15f74: 911ef12a     	add	x10, x9, #0x7bc
 1c15f78: 911ef10b     	add	x11, x8, #0x7bc
 1c15f7c: 9100112c     	add	x12, x9, #0x4
 1c15f80: 9100110d     	add	x13, x8, #0x4
 1c15f84: eb0b013f     	cmp	x9, x11
 1c15f88: 1a9f27eb     	cset	w11, lo
 1c15f8c: eb0a011f     	cmp	x8, x10
 1c15f90: 1a9f27ea     	cset	w10, lo
 1c15f94: 0a0a016e     	and	w14, w11, w10
 1c15f98: 911f010a     	add	x10, x8, #0x7c0
 1c15f9c: eb0a019f     	cmp	x12, x10
 1c15fa0: 1a9f27ea     	cset	w10, lo
 1c15fa4: 911f012b     	add	x11, x9, #0x7c0
 1c15fa8: eb0b01bf     	cmp	x13, x11
 1c15fac: 1a9f27eb     	cset	w11, lo
 1c15fb0: 370001ce     	tbnz	w14, #0x0, 0x1c15fe8 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xb0>
 1c15fb4: 0a0b014a     	and	w10, w10, w11
 1c15fb8: 3700018a     	tbnz	w10, #0x0, 0x1c15fe8 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xb0>
 1c15fbc: d280000a     	mov	x10, #0x0               ; =0
 1c15fc0: 8b0a010b     	add	x11, x8, x10
 1c15fc4: ad400161     	ldp	q1, q0, [x11]
 1c15fc8: ad410963     	ldp	q3, q2, [x11, #0x20]
 1c15fcc: 8b0a012b     	add	x11, x9, x10
 1c15fd0: ad000161     	stp	q1, q0, [x11]
 1c15fd4: ad010963     	stp	q3, q2, [x11, #0x20]
 1c15fd8: 9101014a     	add	x10, x10, #0x40
 1c15fdc: f11f015f     	cmp	x10, #0x7c0
 1c15fe0: 54ffff01     	b.ne	0x1c15fc0 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x88>
 1c15fe4: 14000007     	b	0x1c16000 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xc8>
 1c15fe8: d280000a     	mov	x10, #0x0               ; =0
 1c15fec: fc6a6900     	ldr	d0, [x8, x10]
 1c15ff0: fc2a6920     	str	d0, [x9, x10]
 1c15ff4: 9100214a     	add	x10, x10, #0x8
 1c15ff8: f11f015f     	cmp	x10, #0x7c0
 1c15ffc: 54ffff81     	b.ne	0x1c15fec <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xb4>
 1c16000: 52800500     	mov	w0, #0x28               ; =40
 1c16004: 94363953     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c16008: aa0003f4     	mov	x20, x0
 1c1600c: b900081f     	str	wzr, [x0, #0x8]
 1c16010: 9000d037     	adrp	x23, 0x361a000 <__ZTIN4Bach21BachAlgorithmSystemGEE+0x470>
 1c16014: 913c02f7     	add	x23, x23, #0xf00
 1c16018: 910042e8     	add	x8, x23, #0x10
 1c1601c: f9000008     	str	x8, [x0]
 1c16020: aa0003f5     	mov	x21, x0
 1c16024: f8010ebf     	str	xzr, [x21, #0x10]!
 1c16028: a901fc1f     	stp	xzr, xzr, [x0, #0x18]
 1c1602c: f9001fe0     	str	x0, [sp, #0x38]
 1c16030: 94197c65     	bl	0x22751c4 <__ZNK13AmazingEngine7RefBase6retainEv>
 1c16034: f94002a8     	ldr	x8, [x21]
 1c16038: f9400e89     	ldr	x9, [x20, #0x18]
 1c1603c: cb08012a     	sub	x10, x9, x8
 1c16040: 9343fd49     	asr	x9, x10, #3
 1c16044: f100553f     	cmp	x9, #0x15
 1c16048: 540000c8     	b.hi	0x1c16060 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x128>
 1c1604c: 528002c8     	mov	w8, #0x16               ; =22
 1c16050: cb090101     	sub	x1, x8, x9
 1c16054: aa1503e0     	mov	x0, x21
 1c16058: 94138712     	bl	0x20f7ca0 <__ZNK4Bach10BachObjectcvPNS_10BachVectorEEv+0x21b0>
 1c1605c: 14000005     	b	0x1c16070 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x138>
 1c16060: f102c15f     	cmp	x10, #0xb0
 1c16064: 54000060     	b.eq	0x1c16070 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x138>
 1c16068: 9102c108     	add	x8, x8, #0xb0
 1c1606c: f9000e88     	str	x8, [x20, #0x18]
 1c16070: 52800500     	mov	w0, #0x28               ; =40
 1c16074: 94363937     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c16078: aa0003f5     	mov	x21, x0
 1c1607c: b900081f     	str	wzr, [x0, #0x8]
 1c16080: 910042e8     	add	x8, x23, #0x10
 1c16084: f9000008     	str	x8, [x0]
 1c16088: aa0003f7     	mov	x23, x0
 1c1608c: f8010eff     	str	xzr, [x23, #0x10]!
 1c16090: a901fc1f     	stp	xzr, xzr, [x0, #0x18]
 1c16094: f9001be0     	str	x0, [sp, #0x30]
 1c16098: 94197c4b     	bl	0x22751c4 <__ZNK13AmazingEngine7RefBase6retainEv>
 1c1609c: a94122ab     	ldp	x11, x8, [x21, #0x10]
 1c160a0: cb0b0109     	sub	x9, x8, x11
 1c160a4: 9343fd28     	asr	x8, x9, #3
 1c160a8: f100551f     	cmp	x8, #0x15
 1c160ac: 540000e8     	b.hi	0x1c160c8 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x190>
 1c160b0: 528002c9     	mov	w9, #0x16               ; =22
 1c160b4: cb080121     	sub	x1, x9, x8
 1c160b8: aa1703e0     	mov	x0, x23
 1c160bc: 941386f9     	bl	0x20f7ca0 <__ZNK4Bach10BachObjectcvPNS_10BachVectorEEv+0x21b0>
 1c160c0: f9400aab     	ldr	x11, [x21, #0x10]
 1c160c4: 14000005     	b	0x1c160d8 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x1a0>
 1c160c8: f102c13f     	cmp	x9, #0xb0
 1c160cc: 54000060     	b.eq	0x1c160d8 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x1a0>
 1c160d0: 9102c168     	add	x8, x11, #0xb0
 1c160d4: f9000ea8     	str	x8, [x21, #0x18]
 1c160d8: d280000e     	mov	x14, #0x0               ; =0
 1c160dc: f94002cc     	ldr	x12, [x22]
 1c160e0: f9400a8d     	ldr	x13, [x20, #0x10]
 1c160e4: 9102b1b0     	add	x16, x13, #0xac
 1c160e8: 9102b160     	add	x0, x11, #0xac
 1c160ec: 91118188     	add	x8, x12, #0x460
 1c160f0: 9116f181     	add	x1, x12, #0x5bc
 1c160f4: 910011a9     	add	x9, x13, #0x4
 1c160f8: 9100116a     	add	x10, x11, #0x4
 1c160fc: 91119186     	add	x6, x12, #0x464
 1c16100: eb0001bf     	cmp	x13, x0
 1c16104: 1a9f27e7     	cset	w7, lo
 1c16108: eb10017f     	cmp	x11, x16
 1c1610c: 1a9f27f7     	cset	w23, lo
 1c16110: eb0101bf     	cmp	x13, x1
 1c16114: 1a9f27ef     	cset	w15, lo
 1c16118: eb10011f     	cmp	x8, x16
 1c1611c: 1a9f27f1     	cset	w17, lo
 1c16120: eb01017f     	cmp	x11, x1
 1c16124: 1a9f27f0     	cset	w16, lo
 1c16128: eb00011f     	cmp	x8, x0
 1c1612c: 1a9f27e0     	cset	w0, lo
 1c16130: 9102c178     	add	x24, x11, #0xb0
 1c16134: eb18013f     	cmp	x9, x24
 1c16138: 1a9f27e1     	cset	w1, lo
 1c1613c: 9102c1a4     	add	x4, x13, #0xb0
 1c16140: eb04015f     	cmp	x10, x4
 1c16144: 1a9f27e2     	cset	w2, lo
 1c16148: 91170199     	add	x25, x12, #0x5c0
 1c1614c: eb19013f     	cmp	x9, x25
 1c16150: 1a9f27e3     	cset	w3, lo
 1c16154: eb0400df     	cmp	x6, x4
 1c16158: 1a9f27e5     	cset	w5, lo
 1c1615c: eb19015f     	cmp	x10, x25
 1c16160: 1a9f27e4     	cset	w4, lo
 1c16164: eb1800df     	cmp	x6, x24
 1c16168: 0a1700e7     	and	w7, w7, w23
 1c1616c: 1a9f27e6     	cset	w6, lo
 1c16170: 4f03f600     	fmov.4s	v0, #1.00000000
 1c16174: 3d8003e0     	str	q0, [sp]
 1c16178: 370007a7     	tbnz	w7, #0x0, 0x1c1626c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x334>
 1c1617c: 0a1101ef     	and	w15, w15, w17
 1c16180: 3700076f     	tbnz	w15, #0x0, 0x1c1626c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x334>
 1c16184: 0a00020f     	and	w15, w16, w0
 1c16188: 3700072f     	tbnz	w15, #0x0, 0x1c1626c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x334>
 1c1618c: 0a02002f     	and	w15, w1, w2
 1c16190: 370006ef     	tbnz	w15, #0x0, 0x1c1626c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x334>
 1c16194: 0a05006f     	and	w15, w3, w5
 1c16198: 370006af     	tbnz	w15, #0x0, 0x1c1626c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x334>
 1c1619c: 0a06008f     	and	w15, w4, w6
 1c161a0: 3500066f     	cbnz	w15, 0x1c1626c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x334>
 1c161a4: 9111818e     	add	x14, x12, #0x460
 1c161a8: 4c4089c0     	ld2.4s	{ v0, v1 }, [x14]
 1c161ac: 3dc003e2     	ldr	q2, [sp]
 1c161b0: 4ea1d441     	fsub.4s	v1, v2, v1
 1c161b4: aa0d03ee     	mov	x14, x13
 1c161b8: 4c9f89c0     	st2.4s	{ v0, v1 }, [x14], #32
 1c161bc: 9114418f     	add	x15, x12, #0x510
 1c161c0: 4c4089e0     	ld2.4s	{ v0, v1 }, [x15]
 1c161c4: 4ea1d441     	fsub.4s	v1, v2, v1
 1c161c8: aa0b03ef     	mov	x15, x11
 1c161cc: 4c9f89e0     	st2.4s	{ v0, v1 }, [x15], #32
 1c161d0: 91120190     	add	x16, x12, #0x480
 1c161d4: 4c408a00     	ld2.4s	{ v0, v1 }, [x16]
 1c161d8: 4ea1d441     	fsub.4s	v1, v2, v1
 1c161dc: 4c0089c0     	st2.4s	{ v0, v1 }, [x14]
 1c161e0: 9114c18e     	add	x14, x12, #0x530
 1c161e4: 4c4089c0     	ld2.4s	{ v0, v1 }, [x14]
 1c161e8: 4ea1d441     	fsub.4s	v1, v2, v1
 1c161ec: 4c0089e0     	st2.4s	{ v0, v1 }, [x15]
 1c161f0: 9112818e     	add	x14, x12, #0x4a0
 1c161f4: 4c4089c0     	ld2.4s	{ v0, v1 }, [x14]
 1c161f8: 4ea1d441     	fsub.4s	v1, v2, v1
 1c161fc: 910101ae     	add	x14, x13, #0x40
 1c16200: 4c0089c0     	st2.4s	{ v0, v1 }, [x14]
 1c16204: 9115418e     	add	x14, x12, #0x550
 1c16208: 4c4089c0     	ld2.4s	{ v0, v1 }, [x14]
 1c1620c: 4ea1d441     	fsub.4s	v1, v2, v1
 1c16210: 9101016e     	add	x14, x11, #0x40
 1c16214: 4c0089c0     	st2.4s	{ v0, v1 }, [x14]
 1c16218: 9113018e     	add	x14, x12, #0x4c0
 1c1621c: 4c4089c0     	ld2.4s	{ v0, v1 }, [x14]
 1c16220: 4ea1d441     	fsub.4s	v1, v2, v1
 1c16224: 910181ae     	add	x14, x13, #0x60
 1c16228: 4c0089c0     	st2.4s	{ v0, v1 }, [x14]
 1c1622c: 9115c18e     	add	x14, x12, #0x570
 1c16230: 4c4089c0     	ld2.4s	{ v0, v1 }, [x14]
 1c16234: 4ea1d441     	fsub.4s	v1, v2, v1
 1c16238: 9101816e     	add	x14, x11, #0x60
 1c1623c: 4c0089c0     	st2.4s	{ v0, v1 }, [x14]
 1c16240: 9113818e     	add	x14, x12, #0x4e0
 1c16244: 4c4089c0     	ld2.4s	{ v0, v1 }, [x14]
 1c16248: 4ea1d441     	fsub.4s	v1, v2, v1
 1c1624c: 910201ad     	add	x13, x13, #0x80
 1c16250: 4c0089a0     	st2.4s	{ v0, v1 }, [x13]
 1c16254: 9116418c     	add	x12, x12, #0x590
 1c16258: 4c408980     	ld2.4s	{ v0, v1 }, [x12]
 1c1625c: 4ea1d441     	fsub.4s	v1, v2, v1
 1c16260: 9102016b     	add	x11, x11, #0x80
 1c16264: 4c008960     	st2.4s	{ v0, v1 }, [x11]
 1c16268: 5280028e     	mov	w14, #0x14              ; =20
 1c1626c: d37df1cb     	lsl	x11, x14, #3
 1c16270: 1e2e1000     	fmov	s0, #1.00000000
 1c16274: 8b0b010c     	add	x12, x8, x11
 1c16278: bd400181     	ldr	s1, [x12]
 1c1627c: 8b0b012d     	add	x13, x9, x11
 1c16280: bc1fc1a1     	stur	s1, [x13, #-0x4]
 1c16284: bd400581     	ldr	s1, [x12, #0x4]
 1c16288: 1e213801     	fsub	s1, s0, s1
 1c1628c: bd0001a1     	str	s1, [x13]
 1c16290: bd40b181     	ldr	s1, [x12, #0xb0]
 1c16294: 8b0b014d     	add	x13, x10, x11
 1c16298: bc1fc1a1     	stur	s1, [x13, #-0x4]
 1c1629c: bd40b581     	ldr	s1, [x12, #0xb4]
 1c162a0: 1e213801     	fsub	s1, s0, s1
 1c162a4: bd0001a1     	str	s1, [x13]
 1c162a8: 9100216b     	add	x11, x11, #0x8
 1c162ac: f102c17f     	cmp	x11, #0xb0
 1c162b0: 54fffe21     	b.ne	0x1c16274 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x33c>
 1c162b4: 5280ae00     	mov	w0, #0x570              ; =1392
 1c162b8: 943638a6     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c162bc: 9115c017     	add	x23, x0, #0x570
 1c162c0: f9000fe0     	str	x0, [sp, #0x18]
 1c162c4: f90017f7     	str	x23, [sp, #0x28]
 1c162c8: 5280ae01     	mov	w1, #0x570              ; =1392
 1c162cc: 94363991     	bl	0x29a4910 <dyld_stub_binder+0x29a4910>
 1c162d0: f90013f7     	str	x23, [sp, #0x20]
 1c162d4: 9108c277     	add	x23, x19, #0x230
 1c162d8: 9100e3e0     	add	x0, sp, #0x38
 1c162dc: 9100c3e1     	add	x1, sp, #0x30
 1c162e0: 2f00e400     	movi	d0, #0000000000000000
 1c162e4: 2f00e401     	movi	d1, #0000000000000000
 1c162e8: 910063e3     	add	x3, sp, #0x18
 1c162ec: aa1703e2     	mov	x2, x23
 1c162f0: 52800004     	mov	w4, #0x0                ; =0
 1c162f4: 52800005     	mov	w5, #0x0                ; =0
 1c162f8: 97fff782     	bl	0x1c14100 <__ZN13AmazingEngine14EffectMakeupV218combineEyePartMeshERKNS_8SharePtrIN4Bach7Face106EvEEffRKNS1_INS2_9FaceExtraEvEERKNSt3__16vectorINS_8Vector2fENSB_9allocatorISD_EEEERSG_SJ_iib+0x2c4>
 1c162fc: d2800009     	mov	x9, #0x0                ; =0
 1c16300: f94002e8     	ldr	x8, [x23]
 1c16304: 3dc003e2     	ldr	q2, [sp]
 1c16308: 8b09010a     	add	x10, x8, x9
 1c1630c: 9100114b     	add	x11, x10, #0x4
 1c16310: 9100314c     	add	x12, x10, #0xc
 1c16314: 4c408960     	ld2.4s	{ v0, v1 }, [x11]
 1c16318: 9100514b     	add	x11, x10, #0x14
 1c1631c: 9100714d     	add	x13, x10, #0x1c
 1c16320: 4ea0d440     	fsub.4s	v0, v2, v0
 1c16324: bd000540     	str	s0, [x10, #0x4]
 1c16328: 0d009180     	st1.s	{ v0 }[1], [x12]
 1c1632c: 4d008160     	st1.s	{ v0 }[2], [x11]
 1c16330: 4d0091a0     	st1.s	{ v0 }[3], [x13]
 1c16334: 91008129     	add	x9, x9, #0x20
 1c16338: f115813f     	cmp	x9, #0x560
 1c1633c: 54fffe61     	b.ne	0x1c16308 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x3d0>
 1c16340: bd456500     	ldr	s0, [x8, #0x564]
 1c16344: 1e2e1001     	fmov	s1, #1.00000000
 1c16348: 1e203820     	fsub	s0, s1, s0
 1c1634c: bd056500     	str	s0, [x8, #0x564]
 1c16350: bd456d00     	ldr	s0, [x8, #0x56c]
 1c16354: 1e203820     	fsub	s0, s1, s0
 1c16358: bd056d00     	str	s0, [x8, #0x56c]
 1c1635c: 91098277     	add	x23, x19, #0x260
 1c16360: f9413268     	ldr	x8, [x19, #0x260]
 1c16364: f9413669     	ldr	x9, [x19, #0x268]
 1c16368: cb08012a     	sub	x10, x9, x8
 1c1636c: 9343fd49     	asr	x9, x10, #3
 1c16370: f101393f     	cmp	x9, #0x4e
 1c16374: 540000c2     	b.hs	0x1c1638c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x454>
 1c16378: 528009c8     	mov	w8, #0x4e               ; =78
 1c1637c: cb090101     	sub	x1, x8, x9
 1c16380: aa1703e0     	mov	x0, x23
 1c16384: 94138647     	bl	0x20f7ca0 <__ZNK4Bach10BachObjectcvPNS_10BachVectorEEv+0x21b0>
 1c16388: 14000005     	b	0x1c1639c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x464>
 1c1638c: f109c15f     	cmp	x10, #0x270
 1c16390: 54000060     	b.eq	0x1c1639c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x464>
 1c16394: 9109c108     	add	x8, x8, #0x270
 1c16398: f9013668     	str	x8, [x19, #0x268]
 1c1639c: f9413e69     	ldr	x9, [x19, #0x278]
 1c163a0: f9414268     	ldr	x8, [x19, #0x280]
 1c163a4: cb09010a     	sub	x10, x8, x9
 1c163a8: 9343fd48     	asr	x8, x10, #3
 1c163ac: f101351f     	cmp	x8, #0x4d
 1c163b0: 54000108     	b.hi	0x1c163d0 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x498>
 1c163b4: 9109e278     	add	x24, x19, #0x278
 1c163b8: 528009c9     	mov	w9, #0x4e               ; =78
 1c163bc: cb080121     	sub	x1, x9, x8
 1c163c0: aa1803e0     	mov	x0, x24
 1c163c4: 94138637     	bl	0x20f7ca0 <__ZNK4Bach10BachObjectcvPNS_10BachVectorEEv+0x21b0>
 1c163c8: f9400309     	ldr	x9, [x24]
 1c163cc: 14000005     	b	0x1c163e0 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x4a8>
 1c163d0: f109c15f     	cmp	x10, #0x270
 1c163d4: 54000060     	b.eq	0x1c163e0 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x4a8>
 1c163d8: 9109c128     	add	x8, x9, #0x270
 1c163dc: f9014268     	str	x8, [x19, #0x280]
 1c163e0: f94002c8     	ldr	x8, [x22]
 1c163e4: f94002ea     	ldr	x10, [x23]
 1c163e8: 9107514d     	add	x13, x10, #0x1d4
 1c163ec: 9107512e     	add	x14, x9, #0x1d4
 1c163f0: 911f010b     	add	x11, x8, #0x7c0
 1c163f4: 91217110     	add	x16, x8, #0x85c
 1c163f8: 91001151     	add	x17, x10, #0x4
 1c163fc: 911f1100     	add	x0, x8, #0x7c4
 1c16400: eb0e015f     	cmp	x10, x14
 1c16404: 1a9f27ec     	cset	w12, lo
 1c16408: eb0d013f     	cmp	x9, x13
 1c1640c: 1a9f27ef     	cset	w15, lo
 1c16410: 0a0f0181     	and	w1, w12, w15
 1c16414: eb10015f     	cmp	x10, x16
 1c16418: 1a9f27ec     	cset	w12, lo
 1c1641c: eb0d017f     	cmp	x11, x13
 1c16420: 1a9f27ef     	cset	w15, lo
 1c16424: eb10013f     	cmp	x9, x16
 1c16428: 1a9f27ed     	cset	w13, lo
 1c1642c: eb0e017f     	cmp	x11, x14
 1c16430: 1a9f27f0     	cset	w16, lo
 1c16434: 9121810e     	add	x14, x8, #0x860
 1c16438: eb0e023f     	cmp	x17, x14
 1c1643c: 1a9f27ee     	cset	w14, lo
 1c16440: 91076151     	add	x17, x10, #0x1d8
 1c16444: eb11001f     	cmp	x0, x17
 1c16448: 1a9f27f1     	cset	w17, lo
 1c1644c: 37000bc1     	tbnz	w1, #0x0, 0x1c165c4 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x68c>
 1c16450: 0a0f018c     	and	w12, w12, w15
 1c16454: 37000b8c     	tbnz	w12, #0x0, 0x1c165c4 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x68c>
 1c16458: 0a1001ac     	and	w12, w13, w16
 1c1645c: 37000b4c     	tbnz	w12, #0x0, 0x1c165c4 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x68c>
 1c16460: 0a1101cc     	and	w12, w14, w17
 1c16464: 35000b0c     	cbnz	w12, 0x1c165c4 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x68c>
 1c16468: 911f010c     	add	x12, x8, #0x7c0
 1c1646c: 4c408980     	ld2.4s	{ v0, v1 }, [x12]
 1c16470: 3dc003e2     	ldr	q2, [sp]
 1c16474: 4ea1d441     	fsub.4s	v1, v2, v1
 1c16478: aa0a03ed     	mov	x13, x10
 1c1647c: 4c9f89a0     	st2.4s	{ v0, v1 }, [x13], #32
 1c16480: 52a7f00b     	mov	w11, #0x3f800000        ; =1065353216
 1c16484: b900012b     	str	w11, [x9]
 1c16488: b900092b     	str	w11, [x9, #0x8]
 1c1648c: b900112b     	str	w11, [x9, #0x10]
 1c16490: b900192b     	str	w11, [x9, #0x18]
 1c16494: 4c408980     	ld2.4s	{ v0, v1 }, [x12]
 1c16498: 4ea1d441     	fsub.4s	v1, v2, v1
 1c1649c: 9104e14c     	add	x12, x10, #0x138
 1c164a0: 4c008980     	st2.4s	{ v0, v1 }, [x12]
 1c164a4: b901392b     	str	w11, [x9, #0x138]
 1c164a8: b901412b     	str	w11, [x9, #0x140]
 1c164ac: b901492b     	str	w11, [x9, #0x148]
 1c164b0: b901512b     	str	w11, [x9, #0x150]
 1c164b4: 911f810c     	add	x12, x8, #0x7e0
 1c164b8: 4c408980     	ld2.4s	{ v0, v1 }, [x12]
 1c164bc: 4ea1d441     	fsub.4s	v1, v2, v1
 1c164c0: 4c0089a0     	st2.4s	{ v0, v1 }, [x13]
 1c164c4: b900212b     	str	w11, [x9, #0x20]
 1c164c8: b900292b     	str	w11, [x9, #0x28]
 1c164cc: b900312b     	str	w11, [x9, #0x30]
 1c164d0: b900392b     	str	w11, [x9, #0x38]
 1c164d4: 4c408980     	ld2.4s	{ v0, v1 }, [x12]
 1c164d8: 4ea1d441     	fsub.4s	v1, v2, v1
 1c164dc: 9105614c     	add	x12, x10, #0x158
 1c164e0: 4c008980     	st2.4s	{ v0, v1 }, [x12]
 1c164e4: b901592b     	str	w11, [x9, #0x158]
 1c164e8: b901612b     	str	w11, [x9, #0x160]
 1c164ec: b901692b     	str	w11, [x9, #0x168]
 1c164f0: b901712b     	str	w11, [x9, #0x170]
 1c164f4: 9120010c     	add	x12, x8, #0x800
 1c164f8: 4c408980     	ld2.4s	{ v0, v1 }, [x12]
 1c164fc: 4ea1d441     	fsub.4s	v1, v2, v1
 1c16500: 9101014d     	add	x13, x10, #0x40
 1c16504: 4c0089a0     	st2.4s	{ v0, v1 }, [x13]
 1c16508: b900412b     	str	w11, [x9, #0x40]
 1c1650c: b900492b     	str	w11, [x9, #0x48]
 1c16510: b900512b     	str	w11, [x9, #0x50]
 1c16514: b900592b     	str	w11, [x9, #0x58]
 1c16518: 4c408980     	ld2.4s	{ v0, v1 }, [x12]
 1c1651c: 4ea1d441     	fsub.4s	v1, v2, v1
 1c16520: 9105e14c     	add	x12, x10, #0x178
 1c16524: 4c008980     	st2.4s	{ v0, v1 }, [x12]
 1c16528: b901792b     	str	w11, [x9, #0x178]
 1c1652c: b901812b     	str	w11, [x9, #0x180]
 1c16530: b901892b     	str	w11, [x9, #0x188]
 1c16534: b901912b     	str	w11, [x9, #0x190]
 1c16538: 9120810c     	add	x12, x8, #0x820
 1c1653c: 4c408980     	ld2.4s	{ v0, v1 }, [x12]
 1c16540: 4ea1d441     	fsub.4s	v1, v2, v1
 1c16544: 9101814d     	add	x13, x10, #0x60
 1c16548: 4c0089a0     	st2.4s	{ v0, v1 }, [x13]
 1c1654c: b900612b     	str	w11, [x9, #0x60]
 1c16550: b900692b     	str	w11, [x9, #0x68]
 1c16554: b900712b     	str	w11, [x9, #0x70]
 1c16558: b900792b     	str	w11, [x9, #0x78]
 1c1655c: 4c408980     	ld2.4s	{ v0, v1 }, [x12]
 1c16560: 4ea1d441     	fsub.4s	v1, v2, v1
 1c16564: 9106614c     	add	x12, x10, #0x198
 1c16568: 4c008980     	st2.4s	{ v0, v1 }, [x12]
 1c1656c: b901992b     	str	w11, [x9, #0x198]
 1c16570: b901a12b     	str	w11, [x9, #0x1a0]
 1c16574: b901a92b     	str	w11, [x9, #0x1a8]
 1c16578: b901b12b     	str	w11, [x9, #0x1b0]
 1c1657c: 9121010c     	add	x12, x8, #0x840
 1c16580: 4c408980     	ld2.4s	{ v0, v1 }, [x12]
 1c16584: 4ea1d441     	fsub.4s	v1, v2, v1
 1c16588: 9102014d     	add	x13, x10, #0x80
 1c1658c: 4c0089a0     	st2.4s	{ v0, v1 }, [x13]
 1c16590: b900812b     	str	w11, [x9, #0x80]
 1c16594: b900892b     	str	w11, [x9, #0x88]
 1c16598: b900912b     	str	w11, [x9, #0x90]
 1c1659c: b900992b     	str	w11, [x9, #0x98]
 1c165a0: 4c408980     	ld2.4s	{ v0, v1 }, [x12]
 1c165a4: 4ea1d441     	fsub.4s	v1, v2, v1
 1c165a8: 9106e14c     	add	x12, x10, #0x1b8
 1c165ac: 4c008980     	st2.4s	{ v0, v1 }, [x12]
 1c165b0: b901b92b     	str	w11, [x9, #0x1b8]
 1c165b4: b901c12b     	str	w11, [x9, #0x1c0]
 1c165b8: b901c92b     	str	w11, [x9, #0x1c8]
 1c165bc: b901d12b     	str	w11, [x9, #0x1d0]
 1c165c0: 14000016     	b	0x1c16618 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x6e0>
 1c165c4: d280000c     	mov	x12, #0x0               ; =0
 1c165c8: 1e2e1000     	fmov	s0, #1.00000000
 1c165cc: 52a7f00d     	mov	w13, #0x3f800000        ; =1065353216
 1c165d0: 8b0c016e     	add	x14, x11, x12
 1c165d4: bd4001c1     	ldr	s1, [x14]
 1c165d8: 8b0c014f     	add	x15, x10, x12
 1c165dc: bd0001e1     	str	s1, [x15]
 1c165e0: bd4005c1     	ldr	s1, [x14, #0x4]
 1c165e4: 1e213801     	fsub	s1, s0, s1
 1c165e8: bd0005e1     	str	s1, [x15, #0x4]
 1c165ec: 8b0c0130     	add	x16, x9, x12
 1c165f0: b900020d     	str	w13, [x16]
 1c165f4: bd4001c1     	ldr	s1, [x14]
 1c165f8: bd0139e1     	str	s1, [x15, #0x138]
 1c165fc: bd4005c1     	ldr	s1, [x14, #0x4]
 1c16600: 1e213801     	fsub	s1, s0, s1
 1c16604: bd013de1     	str	s1, [x15, #0x13c]
 1c16608: b9013a0d     	str	w13, [x16, #0x138]
 1c1660c: 9100218c     	add	x12, x12, #0x8
 1c16610: f102819f     	cmp	x12, #0xa0
 1c16614: 54fffde1     	b.ne	0x1c165d0 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x698>
 1c16618: 9102814b     	add	x11, x10, #0xa0
 1c1661c: 9109b14c     	add	x12, x10, #0x26c
 1c16620: 9102812e     	add	x14, x9, #0xa0
 1c16624: 9109b130     	add	x16, x9, #0x26c
 1c16628: 91218111     	add	x17, x8, #0x860
 1c1662c: 9123d100     	add	x0, x8, #0x8f4
 1c16630: 91029141     	add	x1, x10, #0xa4
 1c16634: 91219102     	add	x2, x8, #0x864
 1c16638: eb10017f     	cmp	x11, x16
 1c1663c: 1a9f27ed     	cset	w13, lo
 1c16640: eb0c01df     	cmp	x14, x12
 1c16644: 1a9f27ef     	cset	w15, lo
 1c16648: 0a0f01a3     	and	w3, w13, w15
 1c1664c: eb00017f     	cmp	x11, x0
 1c16650: 1a9f27ed     	cset	w13, lo
 1c16654: eb0c023f     	cmp	x17, x12
 1c16658: 1a9f27ef     	cset	w15, lo
 1c1665c: eb0001df     	cmp	x14, x0
 1c16660: 1a9f27ee     	cset	w14, lo
 1c16664: eb10023f     	cmp	x17, x16
 1c16668: 1a9f27f0     	cset	w16, lo
 1c1666c: 9123e10b     	add	x11, x8, #0x8f8
 1c16670: eb0b003f     	cmp	x1, x11
 1c16674: 1a9f27f1     	cset	w17, lo
 1c16678: 9109c14b     	add	x11, x10, #0x270
 1c1667c: eb0b005f     	cmp	x2, x11
 1c16680: 1a9f27e0     	cset	w0, lo
 1c16684: 5280028b     	mov	w11, #0x14              ; =20
 1c16688: 5280218c     	mov	w12, #0x10c             ; =268
 1c1668c: 370009c3     	tbnz	w3, #0x0, 0x1c167c4 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x88c>
 1c16690: 0a0f01ad     	and	w13, w13, w15
 1c16694: 3700098d     	tbnz	w13, #0x0, 0x1c167c4 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x88c>
 1c16698: 0a1001cd     	and	w13, w14, w16
 1c1669c: 3700094d     	tbnz	w13, #0x0, 0x1c167c4 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x88c>
 1c166a0: 0a00022d     	and	w13, w17, w0
 1c166a4: 3500090d     	cbnz	w13, 0x1c167c4 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x88c>
 1c166a8: 9121810b     	add	x11, x8, #0x860
 1c166ac: 4c408960     	ld2.4s	{ v0, v1 }, [x11]
 1c166b0: 3dc003e2     	ldr	q2, [sp]
 1c166b4: 4ea1d441     	fsub.4s	v1, v2, v1
 1c166b8: 9102814c     	add	x12, x10, #0xa0
 1c166bc: 4c008980     	st2.4s	{ v0, v1 }, [x12]
 1c166c0: b900a13f     	str	wzr, [x9, #0xa0]
 1c166c4: b900a93f     	str	wzr, [x9, #0xa8]
 1c166c8: b900b13f     	str	wzr, [x9, #0xb0]
 1c166cc: b900b93f     	str	wzr, [x9, #0xb8]
 1c166d0: 4c408960     	ld2.4s	{ v0, v1 }, [x11]
 1c166d4: 4ea1d441     	fsub.4s	v1, v2, v1
 1c166d8: 9107614b     	add	x11, x10, #0x1d8
 1c166dc: 4c008960     	st2.4s	{ v0, v1 }, [x11]
 1c166e0: b901d93f     	str	wzr, [x9, #0x1d8]
 1c166e4: b901e13f     	str	wzr, [x9, #0x1e0]
 1c166e8: b901e93f     	str	wzr, [x9, #0x1e8]
 1c166ec: b901f13f     	str	wzr, [x9, #0x1f0]
 1c166f0: 9122010b     	add	x11, x8, #0x880
 1c166f4: 4c408960     	ld2.4s	{ v0, v1 }, [x11]
 1c166f8: 4ea1d441     	fsub.4s	v1, v2, v1
 1c166fc: 9103014c     	add	x12, x10, #0xc0
 1c16700: 4c008980     	st2.4s	{ v0, v1 }, [x12]
 1c16704: b900c13f     	str	wzr, [x9, #0xc0]
 1c16708: b900c93f     	str	wzr, [x9, #0xc8]
 1c1670c: b900d13f     	str	wzr, [x9, #0xd0]
 1c16710: b900d93f     	str	wzr, [x9, #0xd8]
 1c16714: 4c408960     	ld2.4s	{ v0, v1 }, [x11]
 1c16718: 4ea1d441     	fsub.4s	v1, v2, v1
 1c1671c: 9107e14b     	add	x11, x10, #0x1f8
 1c16720: 4c008960     	st2.4s	{ v0, v1 }, [x11]
 1c16724: b901f93f     	str	wzr, [x9, #0x1f8]
 1c16728: b902013f     	str	wzr, [x9, #0x200]
 1c1672c: b902093f     	str	wzr, [x9, #0x208]
 1c16730: b902113f     	str	wzr, [x9, #0x210]
 1c16734: 9122810b     	add	x11, x8, #0x8a0
 1c16738: 4c408960     	ld2.4s	{ v0, v1 }, [x11]
 1c1673c: 4ea1d441     	fsub.4s	v1, v2, v1
 1c16740: 9103814c     	add	x12, x10, #0xe0
 1c16744: 4c008980     	st2.4s	{ v0, v1 }, [x12]
 1c16748: b900e13f     	str	wzr, [x9, #0xe0]
 1c1674c: b900e93f     	str	wzr, [x9, #0xe8]
 1c16750: b900f13f     	str	wzr, [x9, #0xf0]
 1c16754: b900f93f     	str	wzr, [x9, #0xf8]
 1c16758: 4c408960     	ld2.4s	{ v0, v1 }, [x11]
 1c1675c: 4ea1d441     	fsub.4s	v1, v2, v1
 1c16760: 9108614b     	add	x11, x10, #0x218
 1c16764: 4c008960     	st2.4s	{ v0, v1 }, [x11]
 1c16768: b902193f     	str	wzr, [x9, #0x218]
 1c1676c: b902213f     	str	wzr, [x9, #0x220]
 1c16770: b902293f     	str	wzr, [x9, #0x228]
 1c16774: b902313f     	str	wzr, [x9, #0x230]
 1c16778: 9123010b     	add	x11, x8, #0x8c0
 1c1677c: 4c408960     	ld2.4s	{ v0, v1 }, [x11]
 1c16780: 4ea1d441     	fsub.4s	v1, v2, v1
 1c16784: 9104014c     	add	x12, x10, #0x100
 1c16788: 4c008980     	st2.4s	{ v0, v1 }, [x12]
 1c1678c: b901013f     	str	wzr, [x9, #0x100]
 1c16790: b901093f     	str	wzr, [x9, #0x108]
 1c16794: b901113f     	str	wzr, [x9, #0x110]
 1c16798: b901193f     	str	wzr, [x9, #0x118]
 1c1679c: 4c408960     	ld2.4s	{ v0, v1 }, [x11]
 1c167a0: 4ea1d441     	fsub.4s	v1, v2, v1
 1c167a4: 9108e14b     	add	x11, x10, #0x238
 1c167a8: 4c008960     	st2.4s	{ v0, v1 }, [x11]
 1c167ac: b902393f     	str	wzr, [x9, #0x238]
 1c167b0: b902413f     	str	wzr, [x9, #0x240]
 1c167b4: b902493f     	str	wzr, [x9, #0x248]
 1c167b8: b902513f     	str	wzr, [x9, #0x250]
 1c167bc: 5280048b     	mov	w11, #0x24              ; =36
 1c167c0: 5280238c     	mov	w12, #0x11c             ; =284
 1c167c4: d37df16d     	lsl	x13, x11, #3
 1c167c8: 8b0d014a     	add	x10, x10, x13
 1c167cc: d37df18b     	lsl	x11, x12, #3
 1c167d0: 8b0d0129     	add	x9, x9, x13
 1c167d4: 1e2e1000     	fmov	s0, #1.00000000
 1c167d8: 8b0b010c     	add	x12, x8, x11
 1c167dc: bd400181     	ldr	s1, [x12]
 1c167e0: bd000141     	str	s1, [x10]
 1c167e4: bd400581     	ldr	s1, [x12, #0x4]
 1c167e8: 1e213801     	fsub	s1, s0, s1
 1c167ec: bd000541     	str	s1, [x10, #0x4]
 1c167f0: b900013f     	str	wzr, [x9]
 1c167f4: bd400181     	ldr	s1, [x12]
 1c167f8: bd013941     	str	s1, [x10, #0x138]
 1c167fc: bd400581     	ldr	s1, [x12, #0x4]
 1c16800: 1e213801     	fsub	s1, s0, s1
 1c16804: bd013d41     	str	s1, [x10, #0x13c]
 1c16808: b901393f     	str	wzr, [x9, #0x138]
 1c1680c: 9100214a     	add	x10, x10, #0x8
 1c16810: 9100216b     	add	x11, x11, #0x8
 1c16814: 91002129     	add	x9, x9, #0x8
 1c16818: f123e17f     	cmp	x11, #0x8f8
 1c1681c: 54fffde1     	b.ne	0x1c167d8 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x8a0>
 1c16820: f9400fe0     	ldr	x0, [sp, #0x18]
 1c16824: b4000060     	cbz	x0, 0x1c16830 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x8f8>
 1c16828: f90013e0     	str	x0, [sp, #0x20]
 1c1682c: 9436373d     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c16830: f94002a8     	ldr	x8, [x21]
 1c16834: f9400508     	ldr	x8, [x8, #0x8]
 1c16838: aa1503e0     	mov	x0, x21
 1c1683c: d63f0100     	blr	x8
 1c16840: f9400288     	ldr	x8, [x20]
 1c16844: f9400508     	ldr	x8, [x8, #0x8]
 1c16848: aa1403e0     	mov	x0, x20
 1c1684c: d63f0100     	blr	x8
 1c16850: 39420268     	ldrb	w8, [x19, #0x80]
 1c16854: 52000109     	eor	w9, w8, #0x1
 1c16858: 39020269     	strb	w9, [x19, #0x80]
 1c1685c: 7100051f     	cmp	w8, #0x1
 1c16860: 54000c81     	b.ne	0x1c169f0 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xab8>
 1c16864: b9001bff     	str	wzr, [sp, #0x18]
 1c16868: 910063e1     	add	x1, sp, #0x18
 1c1686c: aa1303e0     	mov	x0, x19
 1c16870: 97fffcf3     	bl	0x1c15c3c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV24815getUVDataByTypeERKNS0_10PartUVTypeE>
 1c16874: aa1303f4     	mov	x20, x19
 1c16878: f84a8e89     	ldr	x9, [x20, #0xa8]!
 1c1687c: a9570a81     	ldp	x1, x2, [x20, #0x170]
 1c16880: cb010048     	sub	x8, x2, x1
 1c16884: 9343fd0a     	asr	x10, x8, #3
 1c16888: f9400688     	ldr	x8, [x20, #0x8]
 1c1688c: cb090108     	sub	x8, x8, x9
 1c16890: 9343fd08     	asr	x8, x8, #3
 1c16894: eb080148     	subs	x8, x10, x8
 1c16898: 540000e9     	b.ls	0x1c168b4 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x97c>
 1c1689c: aa1403e0     	mov	x0, x20
 1c168a0: aa0803e1     	mov	x1, x8
 1c168a4: 941384ff     	bl	0x20f7ca0 <__ZNK4Bach10BachObjectcvPNS_10BachVectorEEv+0x21b0>
 1c168a8: f9410e61     	ldr	x1, [x19, #0x218]
 1c168ac: f9411262     	ldr	x2, [x19, #0x220]
 1c168b0: 14000004     	b	0x1c168c0 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x988>
 1c168b4: 54000062     	b.hs	0x1c168c0 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x988>
 1c168b8: 8b0a0d28     	add	x8, x9, x10, lsl #3
 1c168bc: f9005a68     	str	x8, [x19, #0xb0]
 1c168c0: aa1403e0     	mov	x0, x20
 1c168c4: 97ed4e74     	bl	0x176a294 <__ZN13AmazingEngine17TextMeshGenerator12updateRTMeshEPNS_4TextE+0x2c94>
 1c168c8: 52800028     	mov	w8, #0x1                ; =1
 1c168cc: b9001be8     	str	w8, [sp, #0x18]
 1c168d0: 910063e1     	add	x1, sp, #0x18
 1c168d4: aa1303e0     	mov	x0, x19
 1c168d8: 97fffcd9     	bl	0x1c15c3c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV24815getUVDataByTypeERKNS0_10PartUVTypeE>
 1c168dc: aa1303f4     	mov	x20, x19
 1c168e0: f84c0e89     	ldr	x9, [x20, #0xc0]!
 1c168e4: a9570a81     	ldp	x1, x2, [x20, #0x170]
 1c168e8: cb010048     	sub	x8, x2, x1
 1c168ec: 9343fd0a     	asr	x10, x8, #3
 1c168f0: f9400688     	ldr	x8, [x20, #0x8]
 1c168f4: cb090108     	sub	x8, x8, x9
 1c168f8: 9343fd08     	asr	x8, x8, #3
 1c168fc: eb080148     	subs	x8, x10, x8
 1c16900: 540000e9     	b.ls	0x1c1691c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x9e4>
 1c16904: aa1403e0     	mov	x0, x20
 1c16908: aa0803e1     	mov	x1, x8
 1c1690c: 941384e5     	bl	0x20f7ca0 <__ZNK4Bach10BachObjectcvPNS_10BachVectorEEv+0x21b0>
 1c16910: f9411a61     	ldr	x1, [x19, #0x230]
 1c16914: f9411e62     	ldr	x2, [x19, #0x238]
 1c16918: 14000004     	b	0x1c16928 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x9f0>
 1c1691c: 54000062     	b.hs	0x1c16928 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0x9f0>
 1c16920: 8b0a0d28     	add	x8, x9, x10, lsl #3
 1c16924: f9006668     	str	x8, [x19, #0xc8]
 1c16928: aa1403e0     	mov	x0, x20
 1c1692c: 97ed4e5a     	bl	0x176a294 <__ZN13AmazingEngine17TextMeshGenerator12updateRTMeshEPNS_4TextE+0x2c94>
 1c16930: 52800048     	mov	w8, #0x2                ; =2
 1c16934: b9001be8     	str	w8, [sp, #0x18]
 1c16938: 910063e1     	add	x1, sp, #0x18
 1c1693c: aa1303e0     	mov	x0, x19
 1c16940: 97fffcbf     	bl	0x1c15c3c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV24815getUVDataByTypeERKNS0_10PartUVTypeE>
 1c16944: f9413268     	ldr	x8, [x19, #0x260]
 1c16948: f9413669     	ldr	x9, [x19, #0x268]
 1c1694c: cb080128     	sub	x8, x9, x8
 1c16950: 9343fd0a     	asr	x10, x8, #3
 1c16954: a9522668     	ldp	x8, x9, [x19, #0x120]
 1c16958: cb08012b     	sub	x11, x9, x8
 1c1695c: 9342fd6b     	asr	x11, x11, #2
 1c16960: b201f3ec     	mov	x12, #-0x5555555555555556 ; =-6148914691236517206
 1c16964: f295556c     	movk	x12, #0xaaab
 1c16968: 9b0c7d6b     	mul	x11, x11, x12
 1c1696c: eb0b0141     	subs	x1, x10, x11
 1c16970: 540000a9     	b.ls	0x1c16984 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xa4c>
 1c16974: 91048260     	add	x0, x19, #0x120
 1c16978: 9413858d     	bl	0x20f7fac <__ZNK4Bach10BachObjectcvPNS_10BachVectorEEv+0x24bc>
 1c1697c: a9522668     	ldp	x8, x9, [x19, #0x120]
 1c16980: 14000005     	b	0x1c16994 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xa5c>
 1c16984: 54000082     	b.hs	0x1c16994 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xa5c>
 1c16988: 52800189     	mov	w9, #0xc                ; =12
 1c1698c: 9b092149     	madd	x9, x10, x9, x8
 1c16990: f9009669     	str	x9, [x19, #0x128]
 1c16994: eb08013f     	cmp	x9, x8
 1c16998: 540002c0     	b.eq	0x1c169f0 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xab8>
 1c1699c: d2800009     	mov	x9, #0x0                ; =0
 1c169a0: d280000a     	mov	x10, #0x0               ; =0
 1c169a4: d280000b     	mov	x11, #0x0               ; =0
 1c169a8: b201f3ec     	mov	x12, #-0x5555555555555556 ; =-6148914691236517206
 1c169ac: f295556c     	movk	x12, #0xaaab
 1c169b0: f941326d     	ldr	x13, [x19, #0x260]
 1c169b4: fc6969a0     	ldr	d0, [x13, x9]
 1c169b8: f9413e6d     	ldr	x13, [x19, #0x278]
 1c169bc: bc6969a1     	ldr	s1, [x13, x9]
 1c169c0: 8b0a0108     	add	x8, x8, x10
 1c169c4: fd000100     	str	d0, [x8]
 1c169c8: bd000901     	str	s1, [x8, #0x8]
 1c169cc: 9100056b     	add	x11, x11, #0x1
 1c169d0: a9523668     	ldp	x8, x13, [x19, #0x120]
 1c169d4: cb0801ad     	sub	x13, x13, x8
 1c169d8: 9342fdad     	asr	x13, x13, #2
 1c169dc: 9b0c7dad     	mul	x13, x13, x12
 1c169e0: 9100314a     	add	x10, x10, #0xc
 1c169e4: 91002129     	add	x9, x9, #0x8
 1c169e8: eb0b01bf     	cmp	x13, x11
 1c169ec: 54fffe28     	b.hi	0x1c169b0 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xa78>
 1c169f0: 52800020     	mov	w0, #0x1                ; =1
 1c169f4: a9487bfd     	ldp	x29, x30, [sp, #0x80]
 1c169f8: a9474ff4     	ldp	x20, x19, [sp, #0x70]
 1c169fc: a94657f6     	ldp	x22, x21, [sp, #0x60]
 1c16a00: a9455ff8     	ldp	x24, x23, [sp, #0x50]
 1c16a04: a94467fa     	ldp	x26, x25, [sp, #0x40]
 1c16a08: 910243ff     	add	sp, sp, #0x90
 1c16a0c: d65f03c0     	ret
 1c16a10: 14000004     	b	0x1c16a20 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xae8>
 1c16a14: 14000010     	b	0x1c16a54 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xb1c>
 1c16a18: 978fdb5d     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c16a1c: 978fdb5c     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c16a20: aa0003f3     	mov	x19, x0
 1c16a24: 14000006     	b	0x1c16a3c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xb04>
 1c16a28: aa0003f3     	mov	x19, x0
 1c16a2c: f9400fe0     	ldr	x0, [sp, #0x18]
 1c16a30: b4000060     	cbz	x0, 0x1c16a3c <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xb04>
 1c16a34: f90013e0     	str	x0, [sp, #0x20]
 1c16a38: 943636ba     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c16a3c: f94002a8     	ldr	x8, [x21]
 1c16a40: f9400508     	ldr	x8, [x8, #0x8]
 1c16a44: aa1503e0     	mov	x0, x21
 1c16a48: d63f0100     	blr	x8
 1c16a4c: 14000003     	b	0x1c16a58 <__ZN13AmazingEngine14EffectMakeupV219FaceParamFaceUCV2486updateERKNSt3__16vectorINS_8Vector2fENS2_9allocatorIS4_EEEEjjb+0xb20>
 1c16a50: 978fdb4f     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c16a54: aa0003f3     	mov	x19, x0
 1c16a58: f9400288     	ldr	x8, [x20]
 1c16a5c: f9400508     	ldr	x8, [x8, #0x8]
 1c16a60: aa1403e0     	mov	x0, x20
 1c16a64: d63f0100     	blr	x8
 1c16a68: aa1303e0     	mov	x0, x19
 1c16a6c: 943631c1     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 1c16a70: 978fdb47     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
