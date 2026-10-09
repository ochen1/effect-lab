
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000300c64 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE>:
  300c64: 6db923e9     	stp	d9, d8, [sp, #-0x70]!
  300c68: a9016ffc     	stp	x28, x27, [sp, #0x10]
  300c6c: a90267fa     	stp	x26, x25, [sp, #0x20]
  300c70: a9035ff8     	stp	x24, x23, [sp, #0x30]
  300c74: a90457f6     	stp	x22, x21, [sp, #0x40]
  300c78: a9054ff4     	stp	x20, x19, [sp, #0x50]
  300c7c: a9067bfd     	stp	x29, x30, [sp, #0x60]
  300c80: 910183fd     	add	x29, sp, #0x60
  300c84: d10843ff     	sub	sp, sp, #0x210
  300c88: aa0203f3     	mov	x19, x2
  300c8c: aa0103f8     	mov	x24, x1
  300c90: aa0003f4     	mov	x20, x0
  300c94: 90018de8     	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
  300c98: f9435508     	ldr	x8, [x8, #0x6a8]
  300c9c: f9400108     	ldr	x8, [x8]
  300ca0: f81903a8     	stur	x8, [x29, #-0x70]
  300ca4: d102c3b5     	sub	x21, x29, #0xb0
  300ca8: d102c3a0     	sub	x0, x29, #0xb0
  300cac: 941787fb     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300cb0: 910022bb     	add	x27, x21, #0x8
  300cb4: aa1b03f7     	mov	x23, x27
  300cb8: aa1b03e0     	mov	x0, x27
  300cbc: 941787f7     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300cc0: 910042a0     	add	x0, x21, #0x10
  300cc4: aa0003f7     	mov	x23, x0
  300cc8: f900b3e0     	str	x0, [sp, #0x160]
  300ccc: 941787f3     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300cd0: d102c3b6     	sub	x22, x29, #0xb0
  300cd4: 910062c0     	add	x0, x22, #0x18
  300cd8: aa0003f7     	mov	x23, x0
  300cdc: f900afe0     	str	x0, [sp, #0x158]
  300ce0: 941787ee     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300ce4: 910082c0     	add	x0, x22, #0x20
  300ce8: aa0003f7     	mov	x23, x0
  300cec: f900abe0     	str	x0, [sp, #0x150]
  300cf0: 941787ea     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300cf4: d102c3b6     	sub	x22, x29, #0xb0
  300cf8: 9100a2c0     	add	x0, x22, #0x28
  300cfc: aa0003f7     	mov	x23, x0
  300d00: f900a7e0     	str	x0, [sp, #0x148]
  300d04: 941787e5     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300d08: 9100c2c0     	add	x0, x22, #0x30
  300d0c: aa0003f7     	mov	x23, x0
  300d10: f900a3e0     	str	x0, [sp, #0x140]
  300d14: 941787e1     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300d18: d102c3a8     	sub	x8, x29, #0xb0
  300d1c: 9100e117     	add	x23, x8, #0x38
  300d20: aa1703e0     	mov	x0, x23
  300d24: 941787dd     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300d28: a9400268     	ldp	x8, x0, [x19]
  300d2c: cb08000a     	sub	x10, x0, x8
  300d30: 9343fd49     	asr	x9, x10, #3
  300d34: f103e13f     	cmp	x9, #0xf8
  300d38: 540000c2     	b.hs	0x300d50 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xec>
  300d3c: 52801f08     	mov	w8, #0xf8               ; =248
  300d40: cb090101     	sub	x1, x8, x9
  300d44: aa1303e0     	mov	x0, x19
  300d48: 97fe3153     	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  300d4c: 1400000b     	b	0x300d78 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x114>
  300d50: f11f015f     	cmp	x10, #0x7c0
  300d54: 54000120     	b.eq	0x300d78 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x114>
  300d58: 911f0115     	add	x21, x8, #0x7c0
  300d5c: eb15001f     	cmp	x0, x21
  300d60: 540000a0     	b.eq	0x300d74 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x110>
  300d64: d1002000     	sub	x0, x0, #0x8
  300d68: 941787f3     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  300d6c: eb15001f     	cmp	x0, x21
  300d70: 54ffffa1     	b.ne	0x300d64 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x100>
  300d74: f9000675     	str	x21, [x19, #0x8]
  300d78: 91005281     	add	x1, x20, #0x14
  300d7c: f9400260     	ldr	x0, [x19]
  300d80: f9009fe1     	str	x1, [sp, #0x138]
  300d84: 52806a02     	mov	w2, #0x350              ; =848
  300d88: 949a9263     	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
  300d8c: bd418680     	ldr	s0, [x20, #0x184]
  300d90: bd418a81     	ldr	s1, [x20, #0x188]
  300d94: d102e3a0     	sub	x0, x29, #0xb8
  300d98: 941787c2     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  300d9c: d2800015     	mov	x21, #0x0               ; =0
  300da0: b0019db6     	adrp	x22, 0x36b5000 <__ZN13AmazingEngine9IFLayer2d36IF_LAYER2D_BLEND_VERTEX_SHADER_METALE+0x10>
  300da4: 911922d6     	add	x22, x22, #0x648
  300da8: 1e201008     	fmov	s8, #2.00000000
  300dac: 1e211009     	fmov	s9, #3.00000000
  300db0: d102c3b9     	sub	x25, x29, #0xb0
  300db4: f94002c8     	ldr	x8, [x22]
  300db8: b8b57908     	ldrsw	x8, [x8, x21, lsl #2]
  300dbc: 8b080e88     	add	x8, x20, x8, lsl #3
  300dc0: 2d428500     	ldp	s0, s1, [x8, #0x14]
  300dc4: d10343a0     	sub	x0, x29, #0xd0
  300dc8: 941787b6     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  300dcc: 2d6607a0     	ldp	s0, s1, [x29, #-0xd0]
  300dd0: 2d690fa2     	ldp	s2, s3, [x29, #-0xb8]
  300dd4: 1e223800     	fsub	s0, s0, s2
  300dd8: 1e233821     	fsub	s1, s1, s3
  300ddc: d10403a0     	sub	x0, x29, #0x100
  300de0: 941787b0     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  300de4: f1001ebf     	cmp	x21, #0x7
  300de8: 1e280d21     	fcsel	s1, s9, s8, eq
  300dec: 2d600ba0     	ldp	s0, s2, [x29, #-0x100]
  300df0: 1e200820     	fmul	s0, s1, s0
  300df4: 1e220821     	fmul	s1, s1, s2
  300df8: d103a3a0     	sub	x0, x29, #0xe8
  300dfc: 941787a9     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  300e00: d10403a0     	sub	x0, x29, #0x100
  300e04: 941787cc     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  300e08: fc5483a0     	ldur	d0, [x29, #-0xb8]
  300e0c: fc5183a1     	ldur	d1, [x29, #-0xe8]
  300e10: 0e21d400     	fadd.2s	v0, v0, v1
  300e14: fc357b20     	str	d0, [x25, x21, lsl #3]
  300e18: d103a3a0     	sub	x0, x29, #0xe8
  300e1c: 941787c6     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  300e20: d10343a0     	sub	x0, x29, #0xd0
  300e24: 941787c4     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  300e28: 910006b5     	add	x21, x21, #0x1
  300e2c: f10022bf     	cmp	x21, #0x8
  300e30: 54fffc21     	b.ne	0x300db4 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x150>
  300e34: f9400268     	ldr	x8, [x19]
  300e38: ad7a87a0     	ldp	q0, q1, [x29, #-0xb0]
  300e3c: ad1a8500     	stp	q0, q1, [x8, #0x350]
  300e40: ad7b87a0     	ldp	q0, q1, [x29, #-0x90]
  300e44: ad1b8500     	stp	q0, q1, [x8, #0x370]
  300e48: b40047d8     	cbz	x24, 0x301740 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xadc>
  300e4c: b9400708     	ldr	w8, [x24, #0x4]
  300e50: 7100051f     	cmp	w8, #0x1
  300e54: 5400036b     	b.lt	0x300ec0 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x25c>
  300e58: f9400268     	ldr	x8, [x19]
  300e5c: ad4b8700     	ldp	q0, q1, [x24, #0x170]
  300e60: 3dc06702     	ldr	q2, [x24, #0x190]
  300e64: ad1d0901     	stp	q1, q2, [x8, #0x3a0]
  300e68: 3d80e500     	str	q0, [x8, #0x390]
  300e6c: ad4d0700     	ldp	q0, q1, [x24, #0x1a0]
  300e70: 3dc07302     	ldr	q2, [x24, #0x1c0]
  300e74: f940eb09     	ldr	x9, [x24, #0x1d0]
  300e78: f901f909     	str	x9, [x8, #0x3f0]
  300e7c: ad1e8901     	stp	q1, q2, [x8, #0x3d0]
  300e80: 3d80f100     	str	q0, [x8, #0x3c0]
  300e84: f9400268     	ldr	x8, [x19]
  300e88: 910fe108     	add	x8, x8, #0x3f8
  300e8c: 91076309     	add	x9, x24, #0x1d8
  300e90: ad400520     	ldp	q0, q1, [x9]
  300e94: 3dc00922     	ldr	q2, [x9, #0x20]
  300e98: ad008901     	stp	q1, q2, [x8, #0x10]
  300e9c: 3d800100     	str	q0, [x8]
  300ea0: ad418520     	ldp	q0, q1, [x9, #0x30]
  300ea4: 3dc01522     	ldr	q2, [x9, #0x50]
  300ea8: f9403129     	ldr	x9, [x9, #0x60]
  300eac: f9003109     	str	x9, [x8, #0x60]
  300eb0: ad020901     	stp	q1, q2, [x8, #0x40]
  300eb4: 3d800d00     	str	q0, [x8, #0x30]
  300eb8: 52801194     	mov	w20, #0x8c              ; =140
  300ebc: 14000002     	b	0x300ec4 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x260>
  300ec0: 52800e54     	mov	w20, #0x72              ; =114
  300ec4: 52801600     	mov	w0, #0xb0               ; =176
  300ec8: 949a8da2     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  300ecc: aa0003fa     	mov	x26, x0
  300ed0: b9016ff4     	str	w20, [sp, #0x16c]
  300ed4: f9009bfb     	str	x27, [sp, #0x130]
  300ed8: 94178770     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300edc: 91002354     	add	x20, x26, #0x8
  300ee0: aa1403fb     	mov	x27, x20
  300ee4: aa1403e0     	mov	x0, x20
  300ee8: 9417876c     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300eec: 91004355     	add	x21, x26, #0x10
  300ef0: aa1503fb     	mov	x27, x21
  300ef4: aa1503e0     	mov	x0, x21
  300ef8: 94178768     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300efc: 91006356     	add	x22, x26, #0x18
  300f00: aa1603fb     	mov	x27, x22
  300f04: aa1603e0     	mov	x0, x22
  300f08: 94178764     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f0c: 91008359     	add	x25, x26, #0x20
  300f10: aa1903fb     	mov	x27, x25
  300f14: aa1903e0     	mov	x0, x25
  300f18: 94178760     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f1c: 9100a340     	add	x0, x26, #0x28
  300f20: aa0003fb     	mov	x27, x0
  300f24: f90097e0     	str	x0, [sp, #0x128]
  300f28: 9417875c     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f2c: 9100c340     	add	x0, x26, #0x30
  300f30: aa0003fb     	mov	x27, x0
  300f34: f90093e0     	str	x0, [sp, #0x120]
  300f38: 94178758     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f3c: 9100e340     	add	x0, x26, #0x38
  300f40: aa0003fb     	mov	x27, x0
  300f44: f9008fe0     	str	x0, [sp, #0x118]
  300f48: 94178754     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f4c: 91010340     	add	x0, x26, #0x40
  300f50: aa0003fb     	mov	x27, x0
  300f54: f9008be0     	str	x0, [sp, #0x110]
  300f58: 94178750     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f5c: 91012340     	add	x0, x26, #0x48
  300f60: aa0003fb     	mov	x27, x0
  300f64: f90087e0     	str	x0, [sp, #0x108]
  300f68: 9417874c     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f6c: 91014340     	add	x0, x26, #0x50
  300f70: aa0003fb     	mov	x27, x0
  300f74: f90083e0     	str	x0, [sp, #0x100]
  300f78: 94178748     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f7c: 91016340     	add	x0, x26, #0x58
  300f80: aa0003fb     	mov	x27, x0
  300f84: f9007fe0     	str	x0, [sp, #0xf8]
  300f88: 94178744     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f8c: 91018340     	add	x0, x26, #0x60
  300f90: aa0003fb     	mov	x27, x0
  300f94: f9007be0     	str	x0, [sp, #0xf0]
  300f98: 94178740     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f9c: 9101a340     	add	x0, x26, #0x68
  300fa0: aa0003fb     	mov	x27, x0
  300fa4: f90077e0     	str	x0, [sp, #0xe8]
  300fa8: 9417873c     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300fac: 9101c340     	add	x0, x26, #0x70
  300fb0: aa0003fb     	mov	x27, x0
  300fb4: f90073e0     	str	x0, [sp, #0xe0]
  300fb8: 94178738     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300fbc: 9101e340     	add	x0, x26, #0x78
  300fc0: aa0003fb     	mov	x27, x0
  300fc4: f9006fe0     	str	x0, [sp, #0xd8]
  300fc8: 94178734     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300fcc: 91020340     	add	x0, x26, #0x80
  300fd0: aa0003fb     	mov	x27, x0
  300fd4: f9006be0     	str	x0, [sp, #0xd0]
  300fd8: 94178730     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300fdc: 91022340     	add	x0, x26, #0x88
  300fe0: aa0003fb     	mov	x27, x0
  300fe4: f90067e0     	str	x0, [sp, #0xc8]
  300fe8: 9417872c     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300fec: 91024340     	add	x0, x26, #0x90
  300ff0: aa0003fb     	mov	x27, x0
  300ff4: f90063e0     	str	x0, [sp, #0xc0]
  300ff8: 94178728     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300ffc: 91026340     	add	x0, x26, #0x98
  301000: aa0003fb     	mov	x27, x0
  301004: f9005fe0     	str	x0, [sp, #0xb8]
  301008: 94178724     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  30100c: 91028340     	add	x0, x26, #0xa0
  301010: aa0003fb     	mov	x27, x0
  301014: f9005be0     	str	x0, [sp, #0xb0]
  301018: 94178720     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  30101c: 9102a35b     	add	x27, x26, #0xa8
  301020: aa1b03e0     	mov	x0, x27
  301024: 9417871d     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301028: 52801600     	mov	w0, #0xb0               ; =176
  30102c: a90a53f5     	stp	x21, x20, [sp, #0xa0]
  301030: a9095bf9     	stp	x25, x22, [sp, #0x90]
  301034: 949a8d47     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  301038: aa0003fc     	mov	x28, x0
  30103c: 94178717     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301040: 91002380     	add	x0, x28, #0x8
  301044: aa0003f4     	mov	x20, x0
  301048: f90047e0     	str	x0, [sp, #0x88]
  30104c: 94178713     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301050: 91004380     	add	x0, x28, #0x10
  301054: aa0003f4     	mov	x20, x0
  301058: f90043e0     	str	x0, [sp, #0x80]
  30105c: 9417870f     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301060: 91006380     	add	x0, x28, #0x18
  301064: aa0003f4     	mov	x20, x0
  301068: f9003fe0     	str	x0, [sp, #0x78]
  30106c: 9417870b     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301070: 91008380     	add	x0, x28, #0x20
  301074: aa0003f4     	mov	x20, x0
  301078: f9003be0     	str	x0, [sp, #0x70]
  30107c: 94178707     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301080: 9100a380     	add	x0, x28, #0x28
  301084: aa0003f4     	mov	x20, x0
  301088: f90037e0     	str	x0, [sp, #0x68]
  30108c: 94178703     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301090: 9100c380     	add	x0, x28, #0x30
  301094: aa0003f4     	mov	x20, x0
  301098: f90033e0     	str	x0, [sp, #0x60]
  30109c: 941786ff     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3010a0: 9100e380     	add	x0, x28, #0x38
  3010a4: aa0003f4     	mov	x20, x0
  3010a8: f9002fe0     	str	x0, [sp, #0x58]
  3010ac: 941786fb     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3010b0: 91010380     	add	x0, x28, #0x40
  3010b4: aa0003f4     	mov	x20, x0
  3010b8: f9002be0     	str	x0, [sp, #0x50]
  3010bc: 941786f7     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3010c0: 91012380     	add	x0, x28, #0x48
  3010c4: aa0003f4     	mov	x20, x0
  3010c8: f90027e0     	str	x0, [sp, #0x48]
  3010cc: 941786f3     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3010d0: 91014380     	add	x0, x28, #0x50
  3010d4: aa0003f4     	mov	x20, x0
  3010d8: f90023e0     	str	x0, [sp, #0x40]
  3010dc: 941786ef     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3010e0: 91016380     	add	x0, x28, #0x58
  3010e4: aa0003f4     	mov	x20, x0
  3010e8: f9001fe0     	str	x0, [sp, #0x38]
  3010ec: 941786eb     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3010f0: 91018380     	add	x0, x28, #0x60
  3010f4: aa0003f4     	mov	x20, x0
  3010f8: f9001be0     	str	x0, [sp, #0x30]
  3010fc: 941786e7     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301100: 9101a380     	add	x0, x28, #0x68
  301104: aa0003f4     	mov	x20, x0
  301108: f90017e0     	str	x0, [sp, #0x28]
  30110c: 941786e3     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301110: 9101c380     	add	x0, x28, #0x70
  301114: aa0003f4     	mov	x20, x0
  301118: f90013e0     	str	x0, [sp, #0x20]
  30111c: 941786df     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301120: 9101e380     	add	x0, x28, #0x78
  301124: aa0003f4     	mov	x20, x0
  301128: f9000fe0     	str	x0, [sp, #0x18]
  30112c: 941786db     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301130: 91020380     	add	x0, x28, #0x80
  301134: aa0003f4     	mov	x20, x0
  301138: f9000be0     	str	x0, [sp, #0x10]
  30113c: 941786d7     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301140: 91022380     	add	x0, x28, #0x88
  301144: aa0003f4     	mov	x20, x0
  301148: f90007e0     	str	x0, [sp, #0x8]
  30114c: 941786d3     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301150: 91024396     	add	x22, x28, #0x90
  301154: aa1603f4     	mov	x20, x22
  301158: aa1603e0     	mov	x0, x22
  30115c: 941786cf     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301160: 91026399     	add	x25, x28, #0x98
  301164: aa1903f4     	mov	x20, x25
  301168: aa1903e0     	mov	x0, x25
  30116c: 941786cb     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301170: 91028395     	add	x21, x28, #0xa0
  301174: aa1503f4     	mov	x20, x21
  301178: aa1503e0     	mov	x0, x21
  30117c: 941786c7     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301180: 9102a394     	add	x20, x28, #0xa8
  301184: aa1403e0     	mov	x0, x20
  301188: 941786c4     	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  30118c: 90019da8     	adrp	x8, 0x36b5000 <__ZN13AmazingEngine9IFLayer2d36IF_LAYER2D_BLEND_VERTEX_SHADER_METALE+0x10>
  301190: d503201f     	nop
  301194: f9431908     	ldr	x8, [x8, #0x630]
  301198: b940010a     	ldr	w10, [x8]
  30119c: 91004309     	add	x9, x24, #0x10
  3011a0: d37df14b     	lsl	x11, x10, #3
  3011a4: fc6b6920     	ldr	d0, [x9, x11]
  3011a8: fd000340     	str	d0, [x26]
  3011ac: 9103030a     	add	x10, x24, #0xc0
  3011b0: fc6b6940     	ldr	d0, [x10, x11]
  3011b4: fd000380     	str	d0, [x28]
  3011b8: b940050b     	ldr	w11, [x8, #0x4]
  3011bc: d37df16b     	lsl	x11, x11, #3
  3011c0: fc6b6920     	ldr	d0, [x9, x11]
  3011c4: fd000740     	str	d0, [x26, #0x8]
  3011c8: fc6b6940     	ldr	d0, [x10, x11]
  3011cc: fd000780     	str	d0, [x28, #0x8]
  3011d0: b940090b     	ldr	w11, [x8, #0x8]
  3011d4: d37df16b     	lsl	x11, x11, #3
  3011d8: fc6b6920     	ldr	d0, [x9, x11]
  3011dc: fc6b6941     	ldr	d1, [x10, x11]
  3011e0: fd000b40     	str	d0, [x26, #0x10]
  3011e4: fd000b81     	str	d1, [x28, #0x10]
  3011e8: b9400d0b     	ldr	w11, [x8, #0xc]
  3011ec: d37df16b     	lsl	x11, x11, #3
  3011f0: fc6b6920     	ldr	d0, [x9, x11]
  3011f4: fd000f40     	str	d0, [x26, #0x18]
  3011f8: fc6b6940     	ldr	d0, [x10, x11]
  3011fc: fd000f80     	str	d0, [x28, #0x18]
  301200: b940110b     	ldr	w11, [x8, #0x10]
  301204: d37df16b     	lsl	x11, x11, #3
  301208: fc6b6920     	ldr	d0, [x9, x11]
  30120c: fd001340     	str	d0, [x26, #0x20]
  301210: fc6b6940     	ldr	d0, [x10, x11]
  301214: fd001380     	str	d0, [x28, #0x20]
  301218: b940150b     	ldr	w11, [x8, #0x14]
  30121c: d37df16b     	lsl	x11, x11, #3
  301220: fc6b6920     	ldr	d0, [x9, x11]
  301224: fc6b6941     	ldr	d1, [x10, x11]
  301228: fd001740     	str	d0, [x26, #0x28]
  30122c: fd001781     	str	d1, [x28, #0x28]
  301230: b940190b     	ldr	w11, [x8, #0x18]
  301234: d37df16b     	lsl	x11, x11, #3
  301238: fc6b6920     	ldr	d0, [x9, x11]
  30123c: fd001b40     	str	d0, [x26, #0x30]
  301240: fc6b6940     	ldr	d0, [x10, x11]
  301244: fd001b80     	str	d0, [x28, #0x30]
  301248: b9401d0b     	ldr	w11, [x8, #0x1c]
  30124c: d37df16b     	lsl	x11, x11, #3
  301250: fc6b6920     	ldr	d0, [x9, x11]
  301254: fd001f40     	str	d0, [x26, #0x38]
  301258: fc6b6940     	ldr	d0, [x10, x11]
  30125c: fd001f80     	str	d0, [x28, #0x38]
  301260: b940210b     	ldr	w11, [x8, #0x20]
  301264: d37df16b     	lsl	x11, x11, #3
  301268: fc6b6920     	ldr	d0, [x9, x11]
  30126c: fc6b6941     	ldr	d1, [x10, x11]
  301270: fd002340     	str	d0, [x26, #0x40]
  301274: fd002381     	str	d1, [x28, #0x40]
  301278: b940250b     	ldr	w11, [x8, #0x24]
  30127c: d37df16b     	lsl	x11, x11, #3
  301280: fc6b6920     	ldr	d0, [x9, x11]
  301284: fd002740     	str	d0, [x26, #0x48]
  301288: fc6b6940     	ldr	d0, [x10, x11]
  30128c: fd002780     	str	d0, [x28, #0x48]
  301290: b940290b     	ldr	w11, [x8, #0x28]
  301294: d37df16b     	lsl	x11, x11, #3
  301298: fc6b6920     	ldr	d0, [x9, x11]
  30129c: fd002b40     	str	d0, [x26, #0x50]
  3012a0: fc6b6940     	ldr	d0, [x10, x11]
  3012a4: fd002b80     	str	d0, [x28, #0x50]
  3012a8: b9402d0b     	ldr	w11, [x8, #0x2c]
  3012ac: d37df16b     	lsl	x11, x11, #3
  3012b0: fc6b6920     	ldr	d0, [x9, x11]
  3012b4: fc6b6941     	ldr	d1, [x10, x11]
  3012b8: fd002f40     	str	d0, [x26, #0x58]
  3012bc: fd002f81     	str	d1, [x28, #0x58]
  3012c0: b940310b     	ldr	w11, [x8, #0x30]
  3012c4: d37df16b     	lsl	x11, x11, #3
  3012c8: fc6b6920     	ldr	d0, [x9, x11]
  3012cc: fd003340     	str	d0, [x26, #0x60]
  3012d0: fc6b6940     	ldr	d0, [x10, x11]
  3012d4: fd003380     	str	d0, [x28, #0x60]
  3012d8: b940350b     	ldr	w11, [x8, #0x34]
  3012dc: d37df16b     	lsl	x11, x11, #3
  3012e0: fc6b6920     	ldr	d0, [x9, x11]
  3012e4: fd003740     	str	d0, [x26, #0x68]
  3012e8: fc6b6940     	ldr	d0, [x10, x11]
  3012ec: fd003780     	str	d0, [x28, #0x68]
  3012f0: b940390b     	ldr	w11, [x8, #0x38]
  3012f4: d37df16b     	lsl	x11, x11, #3
  3012f8: fc6b6920     	ldr	d0, [x9, x11]
  3012fc: fc6b6941     	ldr	d1, [x10, x11]
  301300: fd003b40     	str	d0, [x26, #0x70]
  301304: fd003b81     	str	d1, [x28, #0x70]
  301308: b9403d0b     	ldr	w11, [x8, #0x3c]
  30130c: d37df16b     	lsl	x11, x11, #3
  301310: fc6b6920     	ldr	d0, [x9, x11]
  301314: fd003f40     	str	d0, [x26, #0x78]
  301318: fc6b6940     	ldr	d0, [x10, x11]
  30131c: fd003f80     	str	d0, [x28, #0x78]
  301320: b940410b     	ldr	w11, [x8, #0x40]
  301324: d37df16b     	lsl	x11, x11, #3
  301328: fc6b6920     	ldr	d0, [x9, x11]
  30132c: fd004340     	str	d0, [x26, #0x80]
  301330: fc6b6940     	ldr	d0, [x10, x11]
  301334: fd004380     	str	d0, [x28, #0x80]
  301338: b940450b     	ldr	w11, [x8, #0x44]
  30133c: d37df16b     	lsl	x11, x11, #3
  301340: fc6b6920     	ldr	d0, [x9, x11]
  301344: fc6b6941     	ldr	d1, [x10, x11]
  301348: fd004740     	str	d0, [x26, #0x88]
  30134c: fd004781     	str	d1, [x28, #0x88]
  301350: b940490b     	ldr	w11, [x8, #0x48]
  301354: d37df16b     	lsl	x11, x11, #3
  301358: fc6b6920     	ldr	d0, [x9, x11]
  30135c: fd004b40     	str	d0, [x26, #0x90]
  301360: fc6b6940     	ldr	d0, [x10, x11]
  301364: fd004b80     	str	d0, [x28, #0x90]
  301368: b9404d0b     	ldr	w11, [x8, #0x4c]
  30136c: d37df16b     	lsl	x11, x11, #3
  301370: fc6b6920     	ldr	d0, [x9, x11]
  301374: fd004f40     	str	d0, [x26, #0x98]
  301378: fc6b6940     	ldr	d0, [x10, x11]
  30137c: fd004f80     	str	d0, [x28, #0x98]
  301380: b940510b     	ldr	w11, [x8, #0x50]
  301384: d37df16b     	lsl	x11, x11, #3
  301388: fc6b6920     	ldr	d0, [x9, x11]
  30138c: fc6b6941     	ldr	d1, [x10, x11]
  301390: fd005340     	str	d0, [x26, #0xa0]
  301394: fd005381     	str	d1, [x28, #0xa0]
  301398: b9405508     	ldr	w8, [x8, #0x54]
  30139c: d37df108     	lsl	x8, x8, #3
  3013a0: fc686920     	ldr	d0, [x9, x8]
  3013a4: fd005740     	str	d0, [x26, #0xa8]
  3013a8: fc686940     	ldr	d0, [x10, x8]
  3013ac: fd005780     	str	d0, [x28, #0xa8]
  3013b0: b9400308     	ldr	w8, [x24]
  3013b4: 7100011f     	cmp	w8, #0x0
  3013b8: 5400042d     	b.le	0x30143c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x7d8>
  3013bc: f9400268     	ldr	x8, [x19]
  3013c0: b9416fea     	ldr	w10, [sp, #0x16c]
  3013c4: 8b2a4d08     	add	x8, x8, w10, uxtw #3
  3013c8: ad400740     	ldp	q0, q1, [x26]
  3013cc: 3dc00b42     	ldr	q2, [x26, #0x20]
  3013d0: ad008901     	stp	q1, q2, [x8, #0x10]
  3013d4: 3d800100     	str	q0, [x8]
  3013d8: ad418740     	ldp	q0, q1, [x26, #0x30]
  3013dc: ad428f42     	ldp	q2, q3, [x26, #0x50]
  3013e0: ad028d02     	stp	q2, q3, [x8, #0x50]
  3013e4: ad018500     	stp	q0, q1, [x8, #0x30]
  3013e8: ad438740     	ldp	q0, q1, [x26, #0x70]
  3013ec: ad448f42     	ldp	q2, q3, [x26, #0x90]
  3013f0: ad048d02     	stp	q2, q3, [x8, #0x90]
  3013f4: ad038500     	stp	q0, q1, [x8, #0x70]
  3013f8: 11005948     	add	w8, w10, #0x16
  3013fc: f9400269     	ldr	x9, [x19]
  301400: 8b284d28     	add	x8, x9, w8, uxtw #3
  301404: ad428780     	ldp	q0, q1, [x28, #0x50]
  301408: ad418b83     	ldp	q3, q2, [x28, #0x30]
  30140c: ad028500     	stp	q0, q1, [x8, #0x50]
  301410: ad018903     	stp	q3, q2, [x8, #0x30]
  301414: ad438780     	ldp	q0, q1, [x28, #0x70]
  301418: ad448f82     	ldp	q2, q3, [x28, #0x90]
  30141c: ad048d02     	stp	q2, q3, [x8, #0x90]
  301420: ad038500     	stp	q0, q1, [x8, #0x70]
  301424: ad400780     	ldp	q0, q1, [x28]
  301428: 3dc00b82     	ldr	q2, [x28, #0x20]
  30142c: ad008901     	stp	q1, q2, [x8, #0x10]
  301430: 3d800100     	str	q0, [x8]
  301434: 1100b14a     	add	w10, w10, #0x2c
  301438: b9016fea     	str	w10, [sp, #0x16c]
  30143c: b9400b08     	ldr	w8, [x24, #0x8]
  301440: 7100051f     	cmp	w8, #0x1
  301444: 5400066b     	b.lt	0x301510 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x8ac>
  301448: a9337fbf     	stp	xzr, xzr, [x29, #-0xd0]
  30144c: f81403bf     	stur	xzr, [x29, #-0xc0]
  301450: d10343a0     	sub	x0, x29, #0xd0
  301454: 52800d41     	mov	w1, #0x6a               ; =106
  301458: 97fe2f8f     	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  30145c: f85303a0     	ldur	x0, [x29, #-0xd0]
  301460: f9409fe1     	ldr	x1, [sp, #0x138]
  301464: 52806a02     	mov	w2, #0x350              ; =848
  301468: 949a90ab     	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
  30146c: d103a3a8     	sub	x8, x29, #0xe8
  301470: d10343a0     	sub	x0, x29, #0xd0
  301474: 94018b5d     	bl	0x3641e8 <__ZN3BEF8MakeupV216cvtMouth106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE>
  301478: a9307fbf     	stp	xzr, xzr, [x29, #-0x100]
  30147c: f81103bf     	stur	xzr, [x29, #-0xf0]
  301480: d10403a8     	sub	x8, x29, #0x100
  301484: 91002118     	add	x24, x8, #0x8
  301488: d10403a0     	sub	x0, x29, #0x100
  30148c: 52800801     	mov	w1, #0x40               ; =64
  301490: 97fe2f81     	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  301494: d2800008     	mov	x8, #0x0                ; =0
  301498: f85003b8     	ldur	x24, [x29, #-0x100]
  30149c: 90019da9     	adrp	x9, 0x36b5000 <__ZN13AmazingEngine9IFLayer2d36IF_LAYER2D_BLEND_VERTEX_SHADER_METALE+0x10>
  3014a0: d503201f     	nop
  3014a4: f9430d29     	ldr	x9, [x9, #0x618]
  3014a8: f85183aa     	ldur	x10, [x29, #-0xe8]
  3014ac: b868792b     	ldr	w11, [x9, x8, lsl #2]
  3014b0: fc6b7940     	ldr	d0, [x10, x11, lsl #3]
  3014b4: fc287b00     	str	d0, [x24, x8, lsl #3]
  3014b8: 91000508     	add	x8, x8, #0x1
  3014bc: f101011f     	cmp	x8, #0x40
  3014c0: 54ffff61     	b.ne	0x3014ac <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x848>
  3014c4: f9400268     	ldr	x8, [x19]
  3014c8: b9416fe9     	ldr	w9, [sp, #0x16c]
  3014cc: 8b294d00     	add	x0, x8, w9, uxtw #3
  3014d0: aa1803e1     	mov	x1, x24
  3014d4: 52804002     	mov	w2, #0x200              ; =512
  3014d8: 949a908f     	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
  3014dc: f85083a0     	ldur	x0, [x29, #-0xf8]
  3014e0: eb18001f     	cmp	x0, x24
  3014e4: 540003a0     	b.eq	0x301558 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x8f4>
  3014e8: d1002000     	sub	x0, x0, #0x8
  3014ec: 94178612     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3014f0: eb18001f     	cmp	x0, x24
  3014f4: 54ffffa1     	b.ne	0x3014e8 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x884>
  3014f8: f85003a0     	ldur	x0, [x29, #-0x100]
  3014fc: f81083b8     	stur	x24, [x29, #-0xf8]
  301500: 949a8c08     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301504: f85183b3     	ldur	x19, [x29, #-0xe8]
  301508: b5000333     	cbnz	x19, 0x30156c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x908>
  30150c: 14000024     	b	0x30159c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x938>
  301510: d10343a8     	sub	x8, x29, #0xd0
  301514: aa1303e0     	mov	x0, x19
  301518: 94018b34     	bl	0x3641e8 <__ZN3BEF8MakeupV216cvtMouth106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE>
  30151c: f9400268     	ldr	x8, [x19]
  301520: b9416fe9     	ldr	w9, [sp, #0x16c]
  301524: 8b294d00     	add	x0, x8, w9, uxtw #3
  301528: f85303b3     	ldur	x19, [x29, #-0xd0]
  30152c: aa1303e1     	mov	x1, x19
  301530: 52804002     	mov	w2, #0x200              ; =512
  301534: 949a9078     	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
  301538: f85383a0     	ldur	x0, [x29, #-0xc8]
  30153c: eb13001f     	cmp	x0, x19
  301540: 54000440     	b.eq	0x3015c8 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x964>
  301544: d1002000     	sub	x0, x0, #0x8
  301548: 941785fb     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30154c: eb13001f     	cmp	x0, x19
  301550: 54ffffa1     	b.ne	0x301544 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x8e0>
  301554: 1400001b     	b	0x3015c0 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x95c>
  301558: aa1803e0     	mov	x0, x24
  30155c: f81083b8     	stur	x24, [x29, #-0xf8]
  301560: 949a8bf0     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301564: f85183b3     	ldur	x19, [x29, #-0xe8]
  301568: b40001b3     	cbz	x19, 0x30159c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x938>
  30156c: f85203a0     	ldur	x0, [x29, #-0xe0]
  301570: eb13001f     	cmp	x0, x19
  301574: 540000e0     	b.eq	0x301590 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x92c>
  301578: d1002000     	sub	x0, x0, #0x8
  30157c: 941785ee     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301580: eb13001f     	cmp	x0, x19
  301584: 54ffffa1     	b.ne	0x301578 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x914>
  301588: f85183a0     	ldur	x0, [x29, #-0xe8]
  30158c: 14000002     	b	0x301594 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x930>
  301590: aa1303e0     	mov	x0, x19
  301594: f81203b3     	stur	x19, [x29, #-0xe0]
  301598: 949a8be2     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  30159c: f85303b3     	ldur	x19, [x29, #-0xd0]
  3015a0: b40001b3     	cbz	x19, 0x3015d4 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x970>
  3015a4: f85383a0     	ldur	x0, [x29, #-0xc8]
  3015a8: eb13001f     	cmp	x0, x19
  3015ac: 540000e0     	b.eq	0x3015c8 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x964>
  3015b0: d1002000     	sub	x0, x0, #0x8
  3015b4: 941785e0     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3015b8: eb13001f     	cmp	x0, x19
  3015bc: 54ffffa1     	b.ne	0x3015b0 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x94c>
  3015c0: f85303a0     	ldur	x0, [x29, #-0xd0]
  3015c4: 14000002     	b	0x3015cc <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x968>
  3015c8: aa1303e0     	mov	x0, x19
  3015cc: f81383b3     	stur	x19, [x29, #-0xc8]
  3015d0: 949a8bd4     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3015d4: aa1403e0     	mov	x0, x20
  3015d8: 941785d7     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3015dc: aa1503e0     	mov	x0, x21
  3015e0: 941785d5     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3015e4: aa1903e0     	mov	x0, x25
  3015e8: 941785d3     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3015ec: aa1603e0     	mov	x0, x22
  3015f0: 941785d1     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3015f4: f94007e0     	ldr	x0, [sp, #0x8]
  3015f8: 941785cf     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3015fc: f9400be0     	ldr	x0, [sp, #0x10]
  301600: 941785cd     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301604: f9400fe0     	ldr	x0, [sp, #0x18]
  301608: 941785cb     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30160c: f94013e0     	ldr	x0, [sp, #0x20]
  301610: 941785c9     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301614: f94017e0     	ldr	x0, [sp, #0x28]
  301618: 941785c7     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30161c: f9401be0     	ldr	x0, [sp, #0x30]
  301620: 941785c5     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301624: f9401fe0     	ldr	x0, [sp, #0x38]
  301628: 941785c3     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30162c: f94023e0     	ldr	x0, [sp, #0x40]
  301630: 941785c1     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301634: f94027e0     	ldr	x0, [sp, #0x48]
  301638: 941785bf     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30163c: f9402be0     	ldr	x0, [sp, #0x50]
  301640: 941785bd     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301644: f9402fe0     	ldr	x0, [sp, #0x58]
  301648: 941785bb     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30164c: f94033e0     	ldr	x0, [sp, #0x60]
  301650: 941785b9     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301654: f94037e0     	ldr	x0, [sp, #0x68]
  301658: 941785b7     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30165c: f9403be0     	ldr	x0, [sp, #0x70]
  301660: 941785b5     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301664: f9403fe0     	ldr	x0, [sp, #0x78]
  301668: 941785b3     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30166c: f94043e0     	ldr	x0, [sp, #0x80]
  301670: 941785b1     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301674: f94047e0     	ldr	x0, [sp, #0x88]
  301678: 941785af     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30167c: aa1c03e0     	mov	x0, x28
  301680: 941785ad     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301684: 949a8ba7     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301688: aa1b03e0     	mov	x0, x27
  30168c: 941785aa     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301690: f9405be0     	ldr	x0, [sp, #0xb0]
  301694: 941785a8     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301698: f9405fe0     	ldr	x0, [sp, #0xb8]
  30169c: 941785a6     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016a0: f94063e0     	ldr	x0, [sp, #0xc0]
  3016a4: 941785a4     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016a8: f94067e0     	ldr	x0, [sp, #0xc8]
  3016ac: 941785a2     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016b0: f9406be0     	ldr	x0, [sp, #0xd0]
  3016b4: 941785a0     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016b8: f9406fe0     	ldr	x0, [sp, #0xd8]
  3016bc: 9417859e     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016c0: f94073e0     	ldr	x0, [sp, #0xe0]
  3016c4: 9417859c     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016c8: f94077e0     	ldr	x0, [sp, #0xe8]
  3016cc: 9417859a     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016d0: f9407be0     	ldr	x0, [sp, #0xf0]
  3016d4: 94178598     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016d8: f9407fe0     	ldr	x0, [sp, #0xf8]
  3016dc: 94178596     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016e0: f94083e0     	ldr	x0, [sp, #0x100]
  3016e4: 94178594     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016e8: f94087e0     	ldr	x0, [sp, #0x108]
  3016ec: 94178592     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016f0: f9408be0     	ldr	x0, [sp, #0x110]
  3016f4: 94178590     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016f8: f9408fe0     	ldr	x0, [sp, #0x118]
  3016fc: 9417858e     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301700: f94093e0     	ldr	x0, [sp, #0x120]
  301704: 9417858c     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301708: f94097e0     	ldr	x0, [sp, #0x128]
  30170c: 9417858a     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301710: f9404be0     	ldr	x0, [sp, #0x90]
  301714: 94178588     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301718: f9404fe0     	ldr	x0, [sp, #0x98]
  30171c: 94178586     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301720: f94053e0     	ldr	x0, [sp, #0xa0]
  301724: 94178584     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301728: f94057e0     	ldr	x0, [sp, #0xa8]
  30172c: 94178582     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301730: aa1a03e0     	mov	x0, x26
  301734: 94178580     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301738: 949a8b7a     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  30173c: f9409bfb     	ldr	x27, [sp, #0x130]
  301740: d102e3a0     	sub	x0, x29, #0xb8
  301744: 9417857c     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301748: aa1703e0     	mov	x0, x23
  30174c: 9417857a     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301750: f940a3e0     	ldr	x0, [sp, #0x140]
  301754: 94178578     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301758: f940a7e0     	ldr	x0, [sp, #0x148]
  30175c: 94178576     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301760: f940abe0     	ldr	x0, [sp, #0x150]
  301764: 94178574     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301768: f940afe0     	ldr	x0, [sp, #0x158]
  30176c: 94178572     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301770: f940b3e0     	ldr	x0, [sp, #0x160]
  301774: 94178570     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301778: aa1b03e0     	mov	x0, x27
  30177c: 9417856e     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301780: d102c3a0     	sub	x0, x29, #0xb0
  301784: 9417856c     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301788: f85903a8     	ldur	x8, [x29, #-0x70]
  30178c: f0018dc9     	adrp	x9, 0x34bc000 <dyld_stub_binder+0x34bc000>
  301790: f9435529     	ldr	x9, [x9, #0x6a8]
  301794: f9400129     	ldr	x9, [x9]
  301798: eb08013f     	cmp	x9, x8
  30179c: 54000141     	b.ne	0x3017c4 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xb60>
  3017a0: 910843ff     	add	sp, sp, #0x210
  3017a4: a9467bfd     	ldp	x29, x30, [sp, #0x60]
  3017a8: a9454ff4     	ldp	x20, x19, [sp, #0x50]
  3017ac: a94457f6     	ldp	x22, x21, [sp, #0x40]
  3017b0: a9435ff8     	ldp	x24, x23, [sp, #0x30]
  3017b4: a94267fa     	ldp	x26, x25, [sp, #0x20]
  3017b8: a9416ffc     	ldp	x28, x27, [sp, #0x10]
  3017bc: 6cc723e9     	ldp	d9, d8, [sp], #0x70
  3017c0: d65f03c0     	ret
  3017c4: 949a8bab     	bl	0x29a4670 <dyld_stub_binder+0x29a4670>
  3017c8: aa0003f3     	mov	x19, x0
  3017cc: 14000026     	b	0x301864 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xc00>
  3017d0: aa0003f3     	mov	x19, x0
  3017d4: f85003a0     	ldur	x0, [x29, #-0x100]
  3017d8: b4000080     	cbz	x0, 0x3017e8 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xb84>
  3017dc: d10403a2     	sub	x2, x29, #0x100
  3017e0: aa1803e1     	mov	x1, x24
  3017e4: 9497e136     	bl	0x28f9cbc <__ZN5smash15CvtInputAsFloatEPhPfif+0x17fc8>
  3017e8: f85183b8     	ldur	x24, [x29, #-0xe8]
  3017ec: b4000218     	cbz	x24, 0x30182c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xbc8>
  3017f0: f85203a0     	ldur	x0, [x29, #-0xe0]
  3017f4: aa1803e8     	mov	x8, x24
  3017f8: eb18001f     	cmp	x0, x24
  3017fc: 540000c0     	b.eq	0x301814 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xbb0>
  301800: d1002000     	sub	x0, x0, #0x8
  301804: 9417854c     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301808: eb18001f     	cmp	x0, x24
  30180c: 54ffffa1     	b.ne	0x301800 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xb9c>
  301810: f85183a8     	ldur	x8, [x29, #-0xe8]
  301814: f81203b8     	stur	x24, [x29, #-0xe0]
  301818: aa0803e0     	mov	x0, x8
  30181c: 949a8b41     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301820: 14000003     	b	0x30182c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xbc8>
  301824: 14000001     	b	0x301828 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xbc4>
  301828: aa0003f3     	mov	x19, x0
  30182c: f85303b8     	ldur	x24, [x29, #-0xd0]
  301830: b40001b8     	cbz	x24, 0x301864 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xc00>
  301834: f85383a0     	ldur	x0, [x29, #-0xc8]
  301838: aa1803e8     	mov	x8, x24
  30183c: eb18001f     	cmp	x0, x24
  301840: 540000c0     	b.eq	0x301858 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xbf4>
  301844: d1002000     	sub	x0, x0, #0x8
  301848: 9417853b     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30184c: eb18001f     	cmp	x0, x24
  301850: 54ffffa1     	b.ne	0x301844 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xbe0>
  301854: f85303a8     	ldur	x8, [x29, #-0xd0]
  301858: f81383b8     	stur	x24, [x29, #-0xc8]
  30185c: aa0803e0     	mov	x0, x8
  301860: 949a8b30     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301864: aa1403e0     	mov	x0, x20
  301868: 94178533     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30186c: aa1503e0     	mov	x0, x21
  301870: 94178531     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301874: aa1903e0     	mov	x0, x25
  301878: 9417852f     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30187c: aa1603e0     	mov	x0, x22
  301880: 9417852d     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301884: f94007e0     	ldr	x0, [sp, #0x8]
  301888: 9417852b     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30188c: f9400be0     	ldr	x0, [sp, #0x10]
  301890: 94178529     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301894: f9400fe0     	ldr	x0, [sp, #0x18]
  301898: 94178527     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30189c: f94013e0     	ldr	x0, [sp, #0x20]
  3018a0: 94178525     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018a4: f94017e0     	ldr	x0, [sp, #0x28]
  3018a8: 94178523     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018ac: f9401be0     	ldr	x0, [sp, #0x30]
  3018b0: 94178521     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018b4: f9401fe0     	ldr	x0, [sp, #0x38]
  3018b8: 9417851f     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018bc: f94023e0     	ldr	x0, [sp, #0x40]
  3018c0: 9417851d     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018c4: f94027e0     	ldr	x0, [sp, #0x48]
  3018c8: 9417851b     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018cc: f9402be0     	ldr	x0, [sp, #0x50]
  3018d0: 94178519     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018d4: f9402fe0     	ldr	x0, [sp, #0x58]
  3018d8: 94178517     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018dc: f94033e0     	ldr	x0, [sp, #0x60]
  3018e0: 94178515     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018e4: f94037e0     	ldr	x0, [sp, #0x68]
  3018e8: 94178513     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018ec: f9403be0     	ldr	x0, [sp, #0x70]
  3018f0: 94178511     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018f4: f9403fe0     	ldr	x0, [sp, #0x78]
  3018f8: 9417850f     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018fc: f94043e0     	ldr	x0, [sp, #0x80]
  301900: 9417850d     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301904: f94047e0     	ldr	x0, [sp, #0x88]
  301908: 9417850b     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30190c: aa1c03e0     	mov	x0, x28
  301910: 94178509     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301914: 1400001a     	b	0x30197c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xd18>
  301918: aa0003f3     	mov	x19, x0
  30191c: 1400005b     	b	0x301a88 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe24>
  301920: aa0003f3     	mov	x19, x0
  301924: 14000015     	b	0x301978 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xd14>
  301928: aa0003f3     	mov	x19, x0
  30192c: 14000015     	b	0x301980 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xd1c>
  301930: aa0003f3     	mov	x19, x0
  301934: 14000046     	b	0x301a4c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xde8>
  301938: 14000051     	b	0x301a7c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe18>
  30193c: aa0003f3     	mov	x19, x0
  301940: 14000052     	b	0x301a88 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe24>
  301944: aa0003f3     	mov	x19, x0
  301948: d10022f7     	sub	x23, x23, #0x8
  30194c: aa1703e0     	mov	x0, x23
  301950: 941784f9     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301954: eb1502ff     	cmp	x23, x21
  301958: 54ffff81     	b.ne	0x301948 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xce4>
  30195c: 1400005b     	b	0x301ac8 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe64>
  301960: aa0003f3     	mov	x19, x0
  301964: d1002294     	sub	x20, x20, #0x8
  301968: aa1403e0     	mov	x0, x20
  30196c: 941784f2     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301970: eb1c029f     	cmp	x20, x28
  301974: 54ffff81     	b.ne	0x301964 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xd00>
  301978: aa1c03e0     	mov	x0, x28
  30197c: 949a8ae9     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301980: aa1b03e0     	mov	x0, x27
  301984: 941784ec     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301988: f9405be0     	ldr	x0, [sp, #0xb0]
  30198c: 941784ea     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301990: f9405fe0     	ldr	x0, [sp, #0xb8]
  301994: 941784e8     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301998: f94063e0     	ldr	x0, [sp, #0xc0]
  30199c: 941784e6     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019a0: f94067e0     	ldr	x0, [sp, #0xc8]
  3019a4: 941784e4     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019a8: f9406be0     	ldr	x0, [sp, #0xd0]
  3019ac: 941784e2     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019b0: f9406fe0     	ldr	x0, [sp, #0xd8]
  3019b4: 941784e0     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019b8: f94073e0     	ldr	x0, [sp, #0xe0]
  3019bc: 941784de     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019c0: f94077e0     	ldr	x0, [sp, #0xe8]
  3019c4: 941784dc     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019c8: f9407be0     	ldr	x0, [sp, #0xf0]
  3019cc: 941784da     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019d0: f9407fe0     	ldr	x0, [sp, #0xf8]
  3019d4: 941784d8     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019d8: f94083e0     	ldr	x0, [sp, #0x100]
  3019dc: 941784d6     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019e0: f94087e0     	ldr	x0, [sp, #0x108]
  3019e4: 941784d4     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019e8: f9408be0     	ldr	x0, [sp, #0x110]
  3019ec: 941784d2     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019f0: f9408fe0     	ldr	x0, [sp, #0x118]
  3019f4: 941784d0     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019f8: f94093e0     	ldr	x0, [sp, #0x120]
  3019fc: 941784ce     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a00: f94097e0     	ldr	x0, [sp, #0x128]
  301a04: 941784cc     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a08: f9404be0     	ldr	x0, [sp, #0x90]
  301a0c: 941784ca     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a10: f9404fe0     	ldr	x0, [sp, #0x98]
  301a14: 941784c8     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a18: f94053e0     	ldr	x0, [sp, #0xa0]
  301a1c: 941784c6     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a20: f94057e0     	ldr	x0, [sp, #0xa8]
  301a24: 941784c4     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a28: aa1a03e0     	mov	x0, x26
  301a2c: 941784c2     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a30: 14000008     	b	0x301a50 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xdec>
  301a34: aa0003f3     	mov	x19, x0
  301a38: d100237b     	sub	x27, x27, #0x8
  301a3c: aa1b03e0     	mov	x0, x27
  301a40: 941784bd     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a44: eb1a037f     	cmp	x27, x26
  301a48: 54ffff81     	b.ne	0x301a38 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xdd4>
  301a4c: aa1a03e0     	mov	x0, x26
  301a50: 949a8ab4     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301a54: f9409bfb     	ldr	x27, [sp, #0x130]
  301a58: 1400000a     	b	0x301a80 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe1c>
  301a5c: aa0003f3     	mov	x19, x0
  301a60: d10403a0     	sub	x0, x29, #0x100
  301a64: 941784b4     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a68: 14000002     	b	0x301a70 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe0c>
  301a6c: aa0003f3     	mov	x19, x0
  301a70: d10343a0     	sub	x0, x29, #0xd0
  301a74: 941784b0     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a78: 14000002     	b	0x301a80 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe1c>
  301a7c: aa0003f3     	mov	x19, x0
  301a80: d102e3a0     	sub	x0, x29, #0xb8
  301a84: 941784ac     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a88: aa1703e0     	mov	x0, x23
  301a8c: 941784aa     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a90: f940a3e0     	ldr	x0, [sp, #0x140]
  301a94: 941784a8     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a98: f940a7e0     	ldr	x0, [sp, #0x148]
  301a9c: 941784a6     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301aa0: f940abe0     	ldr	x0, [sp, #0x150]
  301aa4: 941784a4     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301aa8: f940afe0     	ldr	x0, [sp, #0x158]
  301aac: 941784a2     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301ab0: f940b3e0     	ldr	x0, [sp, #0x160]
  301ab4: 941784a0     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301ab8: aa1b03e0     	mov	x0, x27
  301abc: 9417849e     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301ac0: d102c3a0     	sub	x0, x29, #0xb0
  301ac4: 9417849c     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301ac8: aa1303e0     	mov	x0, x19
  301acc: 949a85a9     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

0000000000301ad0 <__ZN3BEF15MakeupAlgorithm12getFace248UVERNSt3__16vectorIfNS1_9allocatorIfEEEE>:
  301ad0: f9400000     	ldr	x0, [x0]
  301ad4: 90019da8     	adrp	x8, 0x36b5000 <__ZN13AmazingEngine9IFLayer2d36IF_LAYER2D_BLEND_VERTEX_SHADER_METALE+0x10>
  301ad8: d503201f     	nop
  301adc: f9435501     	ldr	x1, [x8, #0x6a8]
  301ae0: 5280f802     	mov	w2, #0x7c0              ; =1984
  301ae4: 149a8f0c     	b	0x29a5714 <dyld_stub_binder+0x29a5714>

0000000000301ae8 <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE>:
  301ae8: d10143ff     	sub	sp, sp, #0x50
  301aec: a90257f6     	stp	x22, x21, [sp, #0x20]
  301af0: a9034ff4     	stp	x20, x19, [sp, #0x30]
  301af4: a9047bfd     	stp	x29, x30, [sp, #0x40]
  301af8: 910103fd     	add	x29, sp, #0x40
  301afc: aa0103f3     	mov	x19, x1
  301b00: f9400014     	ldr	x20, [x0]
  301b04: bd468a80     	ldr	s0, [x20, #0x688]
  301b08: bd468e81     	ldr	s1, [x20, #0x68c]
  301b0c: 910063e0     	add	x0, sp, #0x18
  301b10: 94178464     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  301b14: bd470a80     	ldr	s0, [x20, #0x708]
  301b18: bd470e81     	ldr	s1, [x20, #0x70c]
  301b1c: 910043e0     	add	x0, sp, #0x10
  301b20: 94178460     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  301b24: bd460280     	ldr	s0, [x20, #0x600]
  301b28: bd460681     	ldr	s1, [x20, #0x604]
  301b2c: 910023e0     	add	x0, sp, #0x8
  301b30: 9417845c     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  301b34: bd478280     	ldr	s0, [x20, #0x780]
  301b38: bd478681     	ldr	s1, [x20, #0x784]
  301b3c: 910003e0     	mov	x0, sp
  301b40: 94178458     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  301b44: 2d4307e0     	ldp	s0, s1, [sp, #0x18]
  301b48: 2d420fe2     	ldp	s2, s3, [sp, #0x10]
  301b4c: 1e223804     	fsub	s4, s0, s2
  301b50: 1e240884     	fmul	s4, s4, s4
  301b54: 1e233825     	fsub	s5, s1, s3
  301b58: 1e2508a5     	fmul	s5, s5, s5
  301b5c: 1e252884     	fadd	s4, s4, s5
  301b60: 2d401be5     	ldp	s5, s6, [sp]
  301b64: 1e253845     	fsub	s5, s2, s5
  301b68: 1e21c082     	fsqrt	s2, s4
  301b6c: 1e2508a4     	fmul	s4, s5, s5
  301b70: 1e263863     	fsub	s3, s3, s6
  301b74: 1e230863     	fmul	s3, s3, s3
  301b78: 1e232883     	fadd	s3, s4, s3
  301b7c: 1e21c063     	fsqrt	s3, s3
  301b80: 1e232864     	fadd	s4, s3, s3
  301b84: 1e211003     	fmov	s3, #3.00000000
  301b88: 1e231884     	fdiv	s4, s4, s3
  301b8c: 1e242040     	fcmp	s2, s4
  301b90: 540001ac     	b.gt	0x301bc4 <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE+0xdc>
  301b94: 2d4117e4     	ldp	s4, s5, [sp, #0x8]
  301b98: 1e243800     	fsub	s0, s0, s4
  301b9c: 1e200800     	fmul	s0, s0, s0
  301ba0: 1e253821     	fsub	s1, s1, s5
  301ba4: 1e210821     	fmul	s1, s1, s1
  301ba8: 1e212800     	fadd	s0, s0, s1
  301bac: 1e21c000     	fsqrt	s0, s0
  301bb0: 1e230800     	fmul	s0, s0, s3
  301bb4: 1e2a1001     	fmov	s1, #0.25000000
  301bb8: 1e210800     	fmul	s0, s0, s1
  301bbc: 1e202040     	fcmp	s2, s0
  301bc0: 540001ed     	b.le	0x301bfc <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE+0x114>
  301bc4: 90019db5     	adrp	x21, 0x36b5000 <__ZN13AmazingEngine9IFLayer2d36IF_LAYER2D_BLEND_VERTEX_SHADER_METALE+0x10>
  301bc8: 9119e2b5     	add	x21, x21, #0x678
  301bcc: a94022a1     	ldp	x1, x8, [x21]
  301bd0: cb010114     	sub	x20, x8, x1
  301bd4: 93418289     	sbfx	x9, x20, #1, #32
  301bd8: a9402260     	ldp	x0, x8, [x19]
  301bdc: cb000108     	sub	x8, x8, x0
  301be0: 9341fd08     	asr	x8, x8, #1
  301be4: eb080128     	subs	x8, x9, x8
  301be8: 540002a9     	b.ls	0x301c3c <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE+0x154>
  301bec: aa1303e0     	mov	x0, x19
  301bf0: aa0803e1     	mov	x1, x8
  301bf4: 9477d53d     	bl	0x20f70e8 <__ZNK4Bach10BachObjectcvPNS_10BachVectorEEv+0x15f8>
  301bf8: 1400000e     	b	0x301c30 <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE+0x148>
  301bfc: 90019db5     	adrp	x21, 0x36b5000 <__ZN13AmazingEngine9IFLayer2d36IF_LAYER2D_BLEND_VERTEX_SHADER_METALE+0x10>
  301c00: 911a42b5     	add	x21, x21, #0x690
  301c04: a94022a1     	ldp	x1, x8, [x21]
  301c08: cb010114     	sub	x20, x8, x1
  301c0c: 93418289     	sbfx	x9, x20, #1, #32
  301c10: a9402260     	ldp	x0, x8, [x19]
  301c14: cb000108     	sub	x8, x8, x0
  301c18: 9341fd08     	asr	x8, x8, #1
  301c1c: eb080128     	subs	x8, x9, x8
  301c20: 540000e9     	b.ls	0x301c3c <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE+0x154>
  301c24: aa1303e0     	mov	x0, x19
  301c28: aa0803e1     	mov	x1, x8
  301c2c: 9477d52f     	bl	0x20f70e8 <__ZNK4Bach10BachObjectcvPNS_10BachVectorEEv+0x15f8>
  301c30: f9400260     	ldr	x0, [x19]
  301c34: f94002a1     	ldr	x1, [x21]
  301c38: 14000004     	b	0x301c48 <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE+0x160>
  301c3c: 54000062     	b.hs	0x301c48 <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE+0x160>
  301c40: 8b090408     	add	x8, x0, x9, lsl #1
  301c44: f9000668     	str	x8, [x19, #0x8]
  301c48: d3618288     	lsl	x8, x20, #31
  301c4c: 935ffd02     	asr	x2, x8, #31
  301c50: 949a8eb1     	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
  301c54: 910003e0     	mov	x0, sp
  301c58: 94178437     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301c5c: 910023e0     	add	x0, sp, #0x8
  301c60: 94178435     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301c64: 910043e0     	add	x0, sp, #0x10
  301c68: 94178433     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301c6c: 910063e0     	add	x0, sp, #0x18
  301c70: 94178431     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301c74: a9447bfd     	ldp	x29, x30, [sp, #0x40]
  301c78: a9434ff4     	ldp	x20, x19, [sp, #0x30]
  301c7c: a94257f6     	ldp	x22, x21, [sp, #0x20]
  301c80: 910143ff     	add	sp, sp, #0x50
  301c84: d65f03c0     	ret
  301c88: 14000001     	b	0x301c8c <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE+0x1a4>
  301c8c: aa0003f3     	mov	x19, x0
  301c90: 910003e0     	mov	x0, sp
  301c94: 94178428     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301c98: 14000002     	b	0x301ca0 <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE+0x1b8>
  301c9c: aa0003f3     	mov	x19, x0
  301ca0: 910023e0     	add	x0, sp, #0x8
  301ca4: 94178424     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301ca8: 14000002     	b	0x301cb0 <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE+0x1c8>
  301cac: aa0003f3     	mov	x19, x0
  301cb0: 910043e0     	add	x0, sp, #0x10
  301cb4: 94178420     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301cb8: 14000002     	b	0x301cc0 <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE+0x1d8>
  301cbc: aa0003f3     	mov	x19, x0
  301cc0: 910063e0     	add	x0, sp, #0x18
  301cc4: 9417841c     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301cc8: aa1303e0     	mov	x0, x19
  301ccc: 949a8529     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  301cd0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
  301cd4: 910003fd     	mov	x29, sp
  301cd8: 949a87d5     	bl	0x29a3c2c <dyld_stub_binder+0x29a3c2c>
  301cdc: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
  301ce0: a9017bfd     	stp	x29, x30, [sp, #0x10]
  301ce4: 910043fd     	add	x29, sp, #0x10
  301ce8: 52800200     	mov	w0, #0x10               ; =16
  301cec: 949a8a22     	bl	0x29a4574 <dyld_stub_binder+0x29a4574>
  301cf0: aa0003f3     	mov	x19, x0
  301cf4: 9400000c     	bl	0x301d24 <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE+0x23c>
  301cf8: b0018d61     	adrp	x1, 0x34ae000 <dyld_stub_binder+0x34ae000>
  301cfc: f9433021     	ldr	x1, [x1, #0x660]
  301d00: b0018d62     	adrp	x2, 0x34ae000 <dyld_stub_binder+0x34ae000>
  301d04: f942b042     	ldr	x2, [x2, #0x560]
  301d08: aa1303e0     	mov	x0, x19
  301d0c: 949a8a3e     	bl	0x29a4604 <dyld_stub_binder+0x29a4604>
  301d10: aa0003f4     	mov	x20, x0
  301d14: aa1303e0     	mov	x0, x19
  301d18: 949a8a29     	bl	0x29a45bc <dyld_stub_binder+0x29a45bc>
  301d1c: aa1403e0     	mov	x0, x20
  301d20: 949a8514     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  301d24: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
  301d28: 910003fd     	mov	x29, sp
  301d2c: d0017dc1     	adrp	x1, 0x32bb000 <dyld_stub_binder+0x32bb000>
  301d30: 910aa821     	add	x1, x1, #0x2aa
  301d34: 949a87d6     	bl	0x29a3c8c <dyld_stub_binder+0x29a3c8c>
  301d38: d0018dc8     	adrp	x8, 0x34bb000 <dyld_stub_binder+0x34bb000>
  301d3c: f940d908     	ldr	x8, [x8, #0x1b0]
  301d40: 91004108     	add	x8, x8, #0x10
  301d44: f9000008     	str	x8, [x0]
  301d48: a8c17bfd     	ldp	x29, x30, [sp], #0x10
  301d4c: d65f03c0     	ret
  301d50: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
  301d54: 910003fd     	mov	x29, sp
  301d58: 949a87b5     	bl	0x29a3c2c <dyld_stub_binder+0x29a3c2c>
  301d5c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
  301d60: 910003fd     	mov	x29, sp
  301d64: 949a87b2     	bl	0x29a3c2c <dyld_stub_binder+0x29a3c2c>

0000000000301d68 <__ZN3BEF18BackgroundV2FilterC2Ev>:
  301d68: d10183ff     	sub	sp, sp, #0x60
  301d6c: a9025ff8     	stp	x24, x23, [sp, #0x20]
  301d70: a90357f6     	stp	x22, x21, [sp, #0x30]
  301d74: a9044ff4     	stp	x20, x19, [sp, #0x40]
  301d78: a9057bfd     	stp	x29, x30, [sp, #0x50]
  301d7c: 910143fd     	add	x29, sp, #0x50
  301d80: aa0003f3     	mov	x19, x0
  301d84: 91010014     	add	x20, x0, #0x40
  301d88: 6f00e400     	movi.2d	v0, #0000000000000000
  301d8c: ad010000     	stp	q0, q0, [x0, #0x20]
  301d90: ad000000     	stp	q0, q0, [x0]
  301d94: aa1403e0     	mov	x0, x20
  301d98: 941779d8     	bl	0x8e04f8 <__ZN3BRC4Mat4C1Ev>
  301d9c: aa1303f5     	mov	x21, x19
  301da0: f8088ebf     	str	xzr, [x21, #0x88]!
  301da4: 381f82bf     	sturb	wzr, [x21, #-0x8]
  301da8: a900febf     	stp	xzr, xzr, [x21, #0x8]
  301dac: 390062bf     	strb	wzr, [x21, #0x18]
  301db0: d0017701     	adrp	x1, 0x31e3000 <dyld_stub_binder+0x31e3000>
  301db4: 9114f021     	add	x1, x1, #0x53c
  301db8: aa1503e0     	mov	x0, x21
  301dbc: 949a880b     	bl	0x29a3de8 <dyld_stub_binder+0x29a3de8>
  301dc0: 3902027f     	strb	wzr, [x19, #0x80]
  301dc4: 52801d00     	mov	w0, #0xe8               ; =232
  301dc8: 949a89e2     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  301dcc: aa0003f7     	mov	x23, x0
  301dd0: 39007fff     	strb	wzr, [sp, #0x1f]
  301dd4: 390023ff     	strb	wzr, [sp, #0x8]
  301dd8: 52800038     	mov	w24, #0x1               ; =1
  301ddc: 910023e1     	add	x1, sp, #0x8
  301de0: 9415e886     	bl	0x87bff8 <__ZN3BRC11RenderStateC1ERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE>
  301de4: f9400a76     	ldr	x22, [x19, #0x10]
  301de8: eb1702df     	cmp	x22, x23
  301dec: 540001a0     	b.eq	0x301e20 <__ZN3BEF18BackgroundV2FilterC2Ev+0xb8>
  301df0: f9000a77     	str	x23, [x19, #0x10]
  301df4: f94002e8     	ldr	x8, [x23]
  301df8: f9400108     	ldr	x8, [x8]
  301dfc: 52800018     	mov	w24, #0x0               ; =0
  301e00: aa1703e0     	mov	x0, x23
  301e04: d63f0100     	blr	x8
  301e08: b40000d6     	cbz	x22, 0x301e20 <__ZN3BEF18BackgroundV2FilterC2Ev+0xb8>
  301e0c: f94002c8     	ldr	x8, [x22]
  301e10: f9400508     	ldr	x8, [x8, #0x8]
  301e14: 52800018     	mov	w24, #0x0               ; =0
  301e18: aa1603e0     	mov	x0, x22
  301e1c: d63f0100     	blr	x8
  301e20: 39c07fe8     	ldrsb	w8, [sp, #0x1f]
  301e24: 36f80068     	tbz	w8, #0x1f, 0x301e30 <__ZN3BEF18BackgroundV2FilterC2Ev+0xc8>
  301e28: f94007e0     	ldr	x0, [sp, #0x8]
  301e2c: 949a89bd     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301e30: 52801800     	mov	w0, #0xc0               ; =192
  301e34: 949a89c7     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  301e38: aa0003f7     	mov	x23, x0
  301e3c: 9415d228     	bl	0x8766dc <__ZN3BRC12RenderObjectC1Ev>
  301e40: f9400676     	ldr	x22, [x19, #0x8]
  301e44: eb1702df     	cmp	x22, x23
  301e48: 54000160     	b.eq	0x301e74 <__ZN3BEF18BackgroundV2FilterC2Ev+0x10c>
  301e4c: f9000677     	str	x23, [x19, #0x8]
  301e50: f94002e8     	ldr	x8, [x23]
  301e54: f9400108     	ldr	x8, [x8]
  301e58: aa1703e0     	mov	x0, x23
  301e5c: d63f0100     	blr	x8
  301e60: b40000b6     	cbz	x22, 0x301e74 <__ZN3BEF18BackgroundV2FilterC2Ev+0x10c>
  301e64: f94002c8     	ldr	x8, [x22]
  301e68: f9400508     	ldr	x8, [x8, #0x8]
  301e6c: aa1603e0     	mov	x0, x22
  301e70: d63f0100     	blr	x8
  301e74: aa1303e0     	mov	x0, x19
  301e78: a9457bfd     	ldp	x29, x30, [sp, #0x50]
  301e7c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
  301e80: a94357f6     	ldp	x22, x21, [sp, #0x30]
  301e84: a9425ff8     	ldp	x24, x23, [sp, #0x20]
  301e88: 910183ff     	add	sp, sp, #0x60
  301e8c: d65f03c0     	ret
  301e90: aa0003f6     	mov	x22, x0
  301e94: 1400000b     	b	0x301ec0 <__ZN3BEF18BackgroundV2FilterC2Ev+0x158>
  301e98: aa0003f6     	mov	x22, x0
  301e9c: 14000013     	b	0x301ee8 <__ZN3BEF18BackgroundV2FilterC2Ev+0x180>
  301ea0: aa0003f6     	mov	x22, x0
  301ea4: 39c07fe8     	ldrsb	w8, [sp, #0x1f]
  301ea8: 36f800a8     	tbz	w8, #0x1f, 0x301ebc <__ZN3BEF18BackgroundV2FilterC2Ev+0x154>
  301eac: f94007e0     	ldr	x0, [sp, #0x8]
  301eb0: 949a899c     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301eb4: 37000078     	tbnz	w24, #0x0, 0x301ec0 <__ZN3BEF18BackgroundV2FilterC2Ev+0x158>
  301eb8: 14000006     	b	0x301ed0 <__ZN3BEF18BackgroundV2FilterC2Ev+0x168>
  301ebc: 340000b8     	cbz	w24, 0x301ed0 <__ZN3BEF18BackgroundV2FilterC2Ev+0x168>
  301ec0: aa1703e0     	mov	x0, x23
  301ec4: 949a8997     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301ec8: 14000002     	b	0x301ed0 <__ZN3BEF18BackgroundV2FilterC2Ev+0x168>
  301ecc: aa0003f6     	mov	x22, x0
  301ed0: 39c05ea8     	ldrsb	w8, [x21, #0x17]
  301ed4: 36f80068     	tbz	w8, #0x1f, 0x301ee0 <__ZN3BEF18BackgroundV2FilterC2Ev+0x178>
  301ed8: f94002a0     	ldr	x0, [x21]
  301edc: 949a8991     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301ee0: aa1403e0     	mov	x0, x20
  301ee4: 94177a72     	bl	0x8e08ac <__ZN3BRC4Mat4D1Ev>
  301ee8: f9401e60     	ldr	x0, [x19, #0x38]
  301eec: b4000080     	cbz	x0, 0x301efc <__ZN3BEF18BackgroundV2FilterC2Ev+0x194>
  301ef0: f9400008     	ldr	x8, [x0]
  301ef4: f9400508     	ldr	x8, [x8, #0x8]
  301ef8: d63f0100     	blr	x8
  301efc: f9001e7f     	str	xzr, [x19, #0x38]
  301f00: 39c0de68     	ldrsb	w8, [x19, #0x37]
  301f04: 36f80068     	tbz	w8, #0x1f, 0x301f10 <__ZN3BEF18BackgroundV2FilterC2Ev+0x1a8>
  301f08: f9401260     	ldr	x0, [x19, #0x20]
  301f0c: 949a8985     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301f10: f9400a60     	ldr	x0, [x19, #0x10]
  301f14: b4000080     	cbz	x0, 0x301f24 <__ZN3BEF18BackgroundV2FilterC2Ev+0x1bc>
  301f18: f9400008     	ldr	x8, [x0]
  301f1c: f9400508     	ldr	x8, [x8, #0x8]
  301f20: d63f0100     	blr	x8
  301f24: f9000a7f     	str	xzr, [x19, #0x10]
  301f28: f9400660     	ldr	x0, [x19, #0x8]
  301f2c: b4000080     	cbz	x0, 0x301f3c <__ZN3BEF18BackgroundV2FilterC2Ev+0x1d4>
  301f30: f9400008     	ldr	x8, [x0]
  301f34: f9400508     	ldr	x8, [x8, #0x8]
  301f38: d63f0100     	blr	x8
  301f3c: f900067f     	str	xzr, [x19, #0x8]
  301f40: f9400260     	ldr	x0, [x19]
  301f44: b4000080     	cbz	x0, 0x301f54 <__ZN3BEF18BackgroundV2FilterC2Ev+0x1ec>
  301f48: f9400008     	ldr	x8, [x0]
  301f4c: f9400508     	ldr	x8, [x8, #0x8]
  301f50: d63f0100     	blr	x8
  301f54: f900027f     	str	xzr, [x19]
  301f58: aa1603e0     	mov	x0, x22
  301f5c: 949a8485     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  301f60: 97f42e0b     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  301f64: 97f42e0a     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  301f68: 97f42e09     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  301f6c: 97f42e08     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>

0000000000301f70 <__ZN3BEF18BackgroundV2FilterC1Ev>:
  301f70: 17ffff7e     	b	0x301d68 <__ZN3BEF18BackgroundV2FilterC2Ev>

0000000000301f74 <__ZN3BEF18BackgroundV2FilterC2Eb>:
  301f74: 17ffff7d     	b	0x301d68 <__ZN3BEF18BackgroundV2FilterC2Ev>

0000000000301f78 <__ZN3BEF18BackgroundV2FilterC1Eb>:
  301f78: 17ffff7c     	b	0x301d68 <__ZN3BEF18BackgroundV2FilterC2Ev>

0000000000301f7c <__ZN3BEF18BackgroundV2FilterD2Ev>:
  301f7c: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
  301f80: a9017bfd     	stp	x29, x30, [sp, #0x10]
  301f84: 910043fd     	add	x29, sp, #0x10
  301f88: aa0003f3     	mov	x19, x0
  301f8c: 39c27c08     	ldrsb	w8, [x0, #0x9f]
  301f90: 37f800c8     	tbnz	w8, #0x1f, 0x301fa8 <__ZN3BEF18BackgroundV2FilterD2Ev+0x2c>
  301f94: 91010260     	add	x0, x19, #0x40
  301f98: 94177a45     	bl	0x8e08ac <__ZN3BRC4Mat4D1Ev>
  301f9c: f9401e60     	ldr	x0, [x19, #0x38]
  301fa0: b5000100     	cbnz	x0, 0x301fc0 <__ZN3BEF18BackgroundV2FilterD2Ev+0x44>
  301fa4: 1400000a     	b	0x301fcc <__ZN3BEF18BackgroundV2FilterD2Ev+0x50>
  301fa8: f9404660     	ldr	x0, [x19, #0x88]
  301fac: 949a895d     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301fb0: 91010260     	add	x0, x19, #0x40
  301fb4: 94177a3e     	bl	0x8e08ac <__ZN3BRC4Mat4D1Ev>
  301fb8: f9401e60     	ldr	x0, [x19, #0x38]
  301fbc: b4000080     	cbz	x0, 0x301fcc <__ZN3BEF18BackgroundV2FilterD2Ev+0x50>
  301fc0: f9400008     	ldr	x8, [x0]
  301fc4: f9400508     	ldr	x8, [x8, #0x8]
  301fc8: d63f0100     	blr	x8
  301fcc: f9001e7f     	str	xzr, [x19, #0x38]
  301fd0: 39c0de68     	ldrsb	w8, [x19, #0x37]
  301fd4: 37f80088     	tbnz	w8, #0x1f, 0x301fe4 <__ZN3BEF18BackgroundV2FilterD2Ev+0x68>
  301fd8: f9400a60     	ldr	x0, [x19, #0x10]
  301fdc: b50000c0     	cbnz	x0, 0x301ff4 <__ZN3BEF18BackgroundV2FilterD2Ev+0x78>
  301fe0: 14000008     	b	0x302000 <__ZN3BEF18BackgroundV2FilterD2Ev+0x84>
  301fe4: f9401260     	ldr	x0, [x19, #0x20]
  301fe8: 949a894e     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301fec: f9400a60     	ldr	x0, [x19, #0x10]
  301ff0: b4000080     	cbz	x0, 0x302000 <__ZN3BEF18BackgroundV2FilterD2Ev+0x84>
  301ff4: f9400008     	ldr	x8, [x0]
  301ff8: f9400508     	ldr	x8, [x8, #0x8]
  301ffc: d63f0100     	blr	x8
  302000: f9000a7f     	str	xzr, [x19, #0x10]
  302004: f9400660     	ldr	x0, [x19, #0x8]
  302008: b4000080     	cbz	x0, 0x302018 <__ZN3BEF18BackgroundV2FilterD2Ev+0x9c>
  30200c: f9400008     	ldr	x8, [x0]
  302010: f9400508     	ldr	x8, [x8, #0x8]
  302014: d63f0100     	blr	x8
  302018: f900067f     	str	xzr, [x19, #0x8]
  30201c: f9400260     	ldr	x0, [x19]
  302020: b4000080     	cbz	x0, 0x302030 <__ZN3BEF18BackgroundV2FilterD2Ev+0xb4>
  302024: f9400008     	ldr	x8, [x0]
  302028: f9400508     	ldr	x8, [x8, #0x8]
  30202c: d63f0100     	blr	x8
  302030: f900027f     	str	xzr, [x19]
  302034: aa1303e0     	mov	x0, x19
  302038: a9417bfd     	ldp	x29, x30, [sp, #0x10]
  30203c: a8c24ff4     	ldp	x20, x19, [sp], #0x20
  302040: d65f03c0     	ret
  302044: 97f42dd2     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  302048: 97f42dd1     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  30204c: 97f42dd0     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  302050: 97f42dcf     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>

0000000000302054 <__ZN3BEF18BackgroundV2FilterD1Ev>:
  302054: 17ffffca     	b	0x301f7c <__ZN3BEF18BackgroundV2FilterD2Ev>

0000000000302058 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E>:
  302058: d10303ff     	sub	sp, sp, #0xc0
  30205c: a90767fa     	stp	x26, x25, [sp, #0x70]
  302060: a9085ff8     	stp	x24, x23, [sp, #0x80]
  302064: a90957f6     	stp	x22, x21, [sp, #0x90]
  302068: a90a4ff4     	stp	x20, x19, [sp, #0xa0]
  30206c: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
  302070: 9102c3fd     	add	x29, sp, #0xb0
  302074: aa0403f5     	mov	x21, x4
  302078: aa0303f6     	mov	x22, x3
  30207c: aa0203f7     	mov	x23, x2
  302080: aa0103f3     	mov	x19, x1
  302084: aa0003f4     	mov	x20, x0
  302088: 91022001     	add	x1, x0, #0x88
  30208c: b0017700     	adrp	x0, 0x31e3000 <dyld_stub_binder+0x31e3000>
  302090: 9114f000     	add	x0, x0, #0x53c
  302094: d10143a8     	sub	x8, x29, #0x50
  302098: 97fb07c6     	bl	0x1c3fb0 <__ZN9Telemetry9Singleton14makeScopedZoneEPKcRKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE>
  30209c: 39420288     	ldrb	w8, [x20, #0x80]
  3020a0: 35000068     	cbnz	w8, 0x3020ac <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x54>
  3020a4: aa1403e0     	mov	x0, x20
  3020a8: 940000df     	bl	0x302424 <__ZN3BEF18BackgroundV2Filter10initializeEv>
  3020ac: f9400a80     	ldr	x0, [x20, #0x10]
  3020b0: b00176c1     	adrp	x1, 0x31db000 <dyld_stub_binder+0x31db000>
  3020b4: 91204021     	add	x1, x1, #0x810
  3020b8: 9415ea3a     	bl	0x87c9a0 <__ZNK3BRC11RenderState10getUniformEPKc>
  3020bc: aa0003f8     	mov	x24, x0
  3020c0: b4000160     	cbz	x0, 0x3020ec <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x94>
  3020c4: f9400308     	ldr	x8, [x24]
  3020c8: f9400108     	ldr	x8, [x8]
  3020cc: aa1803e0     	mov	x0, x24
  3020d0: d63f0100     	blr	x8
  3020d4: aa1803f9     	mov	x25, x24
  3020d8: aa1803e0     	mov	x0, x24
  3020dc: aa1303e1     	mov	x1, x19
  3020e0: 9415ee77     	bl	0x87dabc <__ZN3BRC12TextureState10setTextureEPNS_7TextureE>
  3020e4: aa1803f3     	mov	x19, x24
  3020e8: 14000023     	b	0x302174 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x11c>
  3020ec: d2800019     	mov	x25, #0x0               ; =0
  3020f0: b00176c1     	adrp	x1, 0x31db000 <dyld_stub_binder+0x31db000>
  3020f4: 91204021     	add	x1, x1, #0x810
  3020f8: aa1303e0     	mov	x0, x19
  3020fc: 9415ee4a     	bl	0x87da24 <__ZN3BRC12TextureState6createEPNS_7TextureEPKc>
  302100: aa0003f3     	mov	x19, x0
  302104: eb18001f     	cmp	x0, x24
  302108: 540001e0     	b.eq	0x302144 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0xec>
  30210c: b40001d3     	cbz	x19, 0x302144 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0xec>
  302110: f9400268     	ldr	x8, [x19]
  302114: f9400108     	ldr	x8, [x8]
  302118: aa1303f9     	mov	x25, x19
  30211c: aa1303e0     	mov	x0, x19
  302120: d63f0100     	blr	x8
  302124: f9400a98     	ldr	x24, [x20, #0x10]
  302128: f9002ff3     	str	x19, [sp, #0x58]
  30212c: f9400268     	ldr	x8, [x19]
  302130: f9400108     	ldr	x8, [x8]
  302134: aa1303f9     	mov	x25, x19
  302138: aa1303e0     	mov	x0, x19
  30213c: d63f0100     	blr	x8
  302140: 14000004     	b	0x302150 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0xf8>
  302144: d2800013     	mov	x19, #0x0               ; =0
  302148: f9400a98     	ldr	x24, [x20, #0x10]
  30214c: f9002fff     	str	xzr, [sp, #0x58]
  302150: 910163e1     	add	x1, sp, #0x58
  302154: aa1803e0     	mov	x0, x24
  302158: 9415e868     	bl	0x87c2f8 <__ZN3BRC11RenderState10addUniformENS_8SharePtrINS_7UniformEEE>
  30215c: f9402fe0     	ldr	x0, [sp, #0x58]
  302160: b4000080     	cbz	x0, 0x302170 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x118>
  302164: f9400008     	ldr	x8, [x0]
  302168: f9400508     	ldr	x8, [x8, #0x8]
  30216c: d63f0100     	blr	x8
  302170: f9002fff     	str	xzr, [sp, #0x58]
  302174: f9400298     	ldr	x24, [x20]
  302178: f9403700     	ldr	x0, [x24, #0x68]
  30217c: aa1703e1     	mov	x1, x23
  302180: 9416157e     	bl	0x887778 <__ZN3BRC13TextureTarget10setTextureEPNS_7TextureE>
  302184: 910023e0     	add	x0, sp, #0x8
  302188: 9415cf28     	bl	0x875e28 <__ZN3BRC13RenderCommandC1Ev>
  30218c: f94002c0     	ldr	x0, [x22]
  302190: b40001e0     	cbz	x0, 0x3021cc <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x174>
  302194: f94017f6     	ldr	x22, [sp, #0x28]
  302198: eb0002df     	cmp	x22, x0
  30219c: 54000140     	b.eq	0x3021c4 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x16c>
  3021a0: f90017e0     	str	x0, [sp, #0x28]
  3021a4: f9400008     	ldr	x8, [x0]
  3021a8: f9400108     	ldr	x8, [x8]
  3021ac: d63f0100     	blr	x8
  3021b0: b40000b6     	cbz	x22, 0x3021c4 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x16c>
  3021b4: f94002c8     	ldr	x8, [x22]
  3021b8: f9400508     	ldr	x8, [x8, #0x8]
  3021bc: aa1603e0     	mov	x0, x22
  3021c0: d63f0100     	blr	x8
  3021c4: 52800008     	mov	w8, #0x0                ; =0
  3021c8: 14000020     	b	0x302248 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x1f0>
  3021cc: f9400680     	ldr	x0, [x20, #0x8]
  3021d0: 52800088     	mov	w8, #0x4                ; =4
  3021d4: b9006008     	str	w8, [x0, #0x60]
  3021d8: 90017cc1     	adrp	x1, 0x329a000 <dyld_stub_binder+0x329a000>
  3021dc: 912cd021     	add	x1, x1, #0xb34
  3021e0: d0019e22     	adrp	x2, 0x36c8000 <dyld_stub_binder+0x36c8000>
  3021e4: 91354042     	add	x2, x2, #0xd50
  3021e8: 52800023     	mov	w3, #0x1                ; =1
  3021ec: 9415d2eb     	bl	0x876d98 <__ZN3BRC12RenderObject17setAttributeArrayEPKcRKNSt3__16vectorINS_4Vec2ENS3_9allocatorIS5_EEEENS_11BufferUsageE>
  3021f0: f9400680     	ldr	x0, [x20, #0x8]
  3021f4: d0019e21     	adrp	x1, 0x36c8000 <dyld_stub_binder+0x36c8000>
  3021f8: 9135a021     	add	x1, x1, #0xd68
  3021fc: 52800022     	mov	w2, #0x1                ; =1
  302200: 9415d3c4     	bl	0x877110 <__ZN3BRC12RenderObject13setIndexArrayERKNSt3__16vectorItNS1_9allocatorItEEEENS_11BufferUsageE>
  302204: f94017f5     	ldr	x21, [sp, #0x28]
  302208: f9400680     	ldr	x0, [x20, #0x8]
  30220c: eb0002bf     	cmp	x21, x0
  302210: 54000160     	b.eq	0x30223c <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x1e4>
  302214: f90017e0     	str	x0, [sp, #0x28]
  302218: b4000080     	cbz	x0, 0x302228 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x1d0>
  30221c: f9400008     	ldr	x8, [x0]
  302220: f9400108     	ldr	x8, [x8]
  302224: d63f0100     	blr	x8
  302228: b40000b5     	cbz	x21, 0x30223c <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x1e4>
  30222c: f94002a8     	ldr	x8, [x21]
  302230: f9400508     	ldr	x8, [x8, #0x8]
  302234: aa1503e0     	mov	x0, x21
  302238: d63f0100     	blr	x8
  30223c: 52800028     	mov	w8, #0x1                ; =1
  302240: b0019bb5     	adrp	x21, 0x3677000 <__ZZN18LuaFaceFittingInfo12getClassNameEvE12classNamePtr+0xe608>
  302244: 911392b5     	add	x21, x21, #0x4e4
  302248: ad4006a0     	ldp	q0, q1, [x21]
  30224c: ad410ea2     	ldp	q2, q3, [x21, #0x20]
  302250: ad030e82     	stp	q2, q3, [x20, #0x60]
  302254: ad020680     	stp	q0, q1, [x20, #0x40]
  302258: f9403709     	ldr	x9, [x24, #0x68]
  30225c: b9006928     	str	w8, [x9, #0x68]
  302260: f9400a80     	ldr	x0, [x20, #0x10]
  302264: b00176c1     	adrp	x1, 0x31db000 <dyld_stub_binder+0x31db000>
  302268: 91208821     	add	x1, x1, #0x822
  30226c: 9415e9cd     	bl	0x87c9a0 <__ZNK3BRC11RenderState10getUniformEPKc>
  302270: aa0003f5     	mov	x21, x0
  302274: b40000a0     	cbz	x0, 0x302288 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x230>
  302278: f94002a8     	ldr	x8, [x21]
  30227c: f9400108     	ldr	x8, [x8]
  302280: aa1503e0     	mov	x0, x21
  302284: d63f0100     	blr	x8
  302288: 91010281     	add	x1, x20, #0x40
  30228c: aa1503e0     	mov	x0, x21
  302290: 94167c20     	bl	0x8a1310 <__ZN3BRC10DataBuffer7setDataERKNS_4Mat4E>
  302294: f94013f6     	ldr	x22, [sp, #0x20]
  302298: f9400a80     	ldr	x0, [x20, #0x10]
  30229c: eb0002df     	cmp	x22, x0
  3022a0: 54000160     	b.eq	0x3022cc <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x274>
  3022a4: f90013e0     	str	x0, [sp, #0x20]
  3022a8: b4000080     	cbz	x0, 0x3022b8 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x260>
  3022ac: f9400008     	ldr	x8, [x0]
  3022b0: f9400108     	ldr	x8, [x8]
  3022b4: d63f0100     	blr	x8
  3022b8: b40000b6     	cbz	x22, 0x3022cc <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x274>
  3022bc: f94002c8     	ldr	x8, [x22]
  3022c0: f9400508     	ldr	x8, [x8, #0x8]
  3022c4: aa1603e0     	mov	x0, x22
  3022c8: d63f0100     	blr	x8
  3022cc: f9401ff6     	ldr	x22, [sp, #0x38]
  3022d0: f9400280     	ldr	x0, [x20]
  3022d4: eb0002df     	cmp	x22, x0
  3022d8: 54000160     	b.eq	0x302304 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x2ac>
  3022dc: f9001fe0     	str	x0, [sp, #0x38]
  3022e0: b4000080     	cbz	x0, 0x3022f0 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x298>
  3022e4: f9400008     	ldr	x8, [x0]
  3022e8: f9400108     	ldr	x8, [x8]
  3022ec: d63f0100     	blr	x8
  3022f0: b40000b6     	cbz	x22, 0x302304 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x2ac>
  3022f4: f94002c8     	ldr	x8, [x22]
  3022f8: f9400508     	ldr	x8, [x8, #0x8]
  3022fc: aa1603e0     	mov	x0, x22
  302300: d63f0100     	blr	x8
  302304: f9400e80     	ldr	x0, [x20, #0x18]
  302308: 910023e1     	add	x1, sp, #0x8
  30230c: 52800042     	mov	w2, #0x2                ; =2
  302310: 941603fb     	bl	0x8832fc <__ZN3BRC12RenderEngine11pushCommandEPNS_7CommandENS_18RenderCommandQueue10RenderTypeE>
  302314: f9400e80     	ldr	x0, [x20, #0x18]
  302318: 94160416     	bl	0x883370 <__ZN3BRC12RenderEngine6renderEv>
  30231c: b40000b5     	cbz	x21, 0x302330 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x2d8>
  302320: f94002a8     	ldr	x8, [x21]
  302324: f9400508     	ldr	x8, [x8, #0x8]
  302328: aa1503e0     	mov	x0, x21
  30232c: d63f0100     	blr	x8
  302330: 910023e0     	add	x0, sp, #0x8
  302334: 9415cefb     	bl	0x875f20 <__ZN3BRC13RenderCommandD1Ev>
  302338: b40000b3     	cbz	x19, 0x30234c <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x2f4>
  30233c: f9400268     	ldr	x8, [x19]
  302340: f9400508     	ldr	x8, [x8, #0x8]
  302344: aa1303e0     	mov	x0, x19
  302348: d63f0100     	blr	x8
  30234c: d10143a0     	sub	x0, x29, #0x50
  302350: 97fb02d3     	bl	0x1c2e9c <__ZN9Telemetry10ScopedZoneD1Ev>
  302354: 52800020     	mov	w0, #0x1                ; =1
  302358: a94b7bfd     	ldp	x29, x30, [sp, #0xb0]
  30235c: a94a4ff4     	ldp	x20, x19, [sp, #0xa0]
  302360: a94957f6     	ldp	x22, x21, [sp, #0x90]
  302364: a9485ff8     	ldp	x24, x23, [sp, #0x80]
  302368: a94767fa     	ldp	x26, x25, [sp, #0x70]
  30236c: 910303ff     	add	sp, sp, #0xc0
  302370: d65f03c0     	ret
  302374: 97f42d06     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  302378: aa0003f4     	mov	x20, x0
  30237c: f9402fe0     	ldr	x0, [sp, #0x58]
  302380: b4000080     	cbz	x0, 0x302390 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x338>
  302384: f9400008     	ldr	x8, [x0]
  302388: f9400508     	ldr	x8, [x8, #0x8]
  30238c: d63f0100     	blr	x8
  302390: f9002fff     	str	xzr, [sp, #0x58]
  302394: 14000019     	b	0x3023f8 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x3a0>
  302398: 97f42cfd     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  30239c: 1400000b     	b	0x3023c8 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x370>
  3023a0: 97f42cfb     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  3023a4: 97f42cfa     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  3023a8: aa0003f4     	mov	x20, x0
  3023ac: 14000013     	b	0x3023f8 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x3a0>
  3023b0: aa0003f4     	mov	x20, x0
  3023b4: 14000011     	b	0x3023f8 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x3a0>
  3023b8: aa0003f4     	mov	x20, x0
  3023bc: aa1903f3     	mov	x19, x25
  3023c0: 1400000e     	b	0x3023f8 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x3a0>
  3023c4: 14000003     	b	0x3023d0 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x378>
  3023c8: aa0003f4     	mov	x20, x0
  3023cc: 14000010     	b	0x30240c <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x3b4>
  3023d0: aa0003f4     	mov	x20, x0
  3023d4: 14000007     	b	0x3023f0 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x398>
  3023d8: aa0003f4     	mov	x20, x0
  3023dc: b40000b5     	cbz	x21, 0x3023f0 <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x398>
  3023e0: f94002a8     	ldr	x8, [x21]
  3023e4: f9400508     	ldr	x8, [x8, #0x8]
  3023e8: aa1503e0     	mov	x0, x21
  3023ec: d63f0100     	blr	x8
  3023f0: 910023e0     	add	x0, sp, #0x8
  3023f4: 9415cecb     	bl	0x875f20 <__ZN3BRC13RenderCommandD1Ev>
  3023f8: b40000b3     	cbz	x19, 0x30240c <__ZN3BEF18BackgroundV2Filter4drawEPN3BRC7TextureES3_NS1_8SharePtrINS1_12RenderObjectEEENS1_4Mat4E+0x3b4>
  3023fc: f9400268     	ldr	x8, [x19]
  302400: f9400508     	ldr	x8, [x8, #0x8]
  302404: aa1303e0     	mov	x0, x19
  302408: d63f0100     	blr	x8
  30240c: d10143a0     	sub	x0, x29, #0x50
  302410: 97fb02a3     	bl	0x1c2e9c <__ZN9Telemetry10ScopedZoneD1Ev>
  302414: aa1403e0     	mov	x0, x20
  302418: 949a8356     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  30241c: 97f42cdc     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  302420: 97f42cdb     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>

0000000000302424 <__ZN3BEF18BackgroundV2Filter10initializeEv>:
  302424: d10183ff     	sub	sp, sp, #0x60
  302428: a90357f6     	stp	x22, x21, [sp, #0x30]
  30242c: a9044ff4     	stp	x20, x19, [sp, #0x40]
  302430: a9057bfd     	stp	x29, x30, [sp, #0x50]
  302434: 910143fd     	add	x29, sp, #0x50
  302438: 39420008     	ldrb	w8, [x0, #0x80]
  30243c: 340000e8     	cbz	w8, 0x302458 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x34>
  302440: 52800020     	mov	w0, #0x1                ; =1
  302444: a9457bfd     	ldp	x29, x30, [sp, #0x50]
  302448: a9444ff4     	ldp	x20, x19, [sp, #0x40]
  30244c: a94357f6     	ldp	x22, x21, [sp, #0x30]
  302450: 910183ff     	add	sp, sp, #0x60
  302454: d65f03c0     	ret
  302458: aa0003f3     	mov	x19, x0
  30245c: f9400c08     	ldr	x8, [x0, #0x18]
  302460: f9404114     	ldr	x20, [x8, #0x80]
  302464: 52801c00     	mov	w0, #0xe0               ; =224
  302468: 949a883a     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  30246c: f9000fe0     	str	x0, [sp, #0x18]
  302470: 90014a28     	adrp	x8, 0x2c46000 <__ZTSN3BEF22FaceDistortionV6FilterE+0x1966>
  302474: 3dc37500     	ldr	q0, [x8, #0xdd0]
  302478: b0017708     	adrp	x8, 0x31e3000 <dyld_stub_binder+0x31e3000>
  30247c: 91156908     	add	x8, x8, #0x55a
  302480: 3c8203e0     	stur	q0, [sp, #0x20]
  302484: ad450500     	ldp	q0, q1, [x8, #0xa0]
  302488: ad050400     	stp	q0, q1, [x0, #0xa0]
  30248c: 3dc03100     	ldr	q0, [x8, #0xc0]
  302490: 3d803000     	str	q0, [x0, #0xc0]
  302494: 3ccc9100     	ldur	q0, [x8, #0xc9]
  302498: 3c8c9000     	stur	q0, [x0, #0xc9]
  30249c: ad430500     	ldp	q0, q1, [x8, #0x60]
  3024a0: ad030400     	stp	q0, q1, [x0, #0x60]
  3024a4: ad440500     	ldp	q0, q1, [x8, #0x80]
  3024a8: ad040400     	stp	q0, q1, [x0, #0x80]
  3024ac: ad410500     	ldp	q0, q1, [x8, #0x20]
  3024b0: ad010400     	stp	q0, q1, [x0, #0x20]
  3024b4: ad420500     	ldp	q0, q1, [x8, #0x40]
  3024b8: ad020400     	stp	q0, q1, [x0, #0x40]
  3024bc: ad400500     	ldp	q0, q1, [x8]
  3024c0: ad000400     	stp	q0, q1, [x0]
  3024c4: 3903641f     	strb	wzr, [x0, #0xd9]
  3024c8: 52801600     	mov	w0, #0xb0               ; =176
  3024cc: 949a8821     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  3024d0: f90003e0     	str	x0, [sp]
  3024d4: 90014a28     	adrp	x8, 0x2c46000 <__ZTSN3BEF22FaceDistortionV6FilterE+0x1966>
  3024d8: 3dc37900     	ldr	q0, [x8, #0xde0]
  3024dc: 3c8083e0     	stur	q0, [sp, #0x8]
  3024e0: b0017708     	adrp	x8, 0x31e3000 <dyld_stub_binder+0x31e3000>
  3024e4: 9118d108     	add	x8, x8, #0x634
  3024e8: ad440500     	ldp	q0, q1, [x8, #0x80]
  3024ec: ad040400     	stp	q0, q1, [x0, #0x80]
  3024f0: 3cc9d100     	ldur	q0, [x8, #0x9d]
  3024f4: 3c89d000     	stur	q0, [x0, #0x9d]
  3024f8: ad420500     	ldp	q0, q1, [x8, #0x40]
  3024fc: ad020400     	stp	q0, q1, [x0, #0x40]
  302500: ad430101     	ldp	q1, q0, [x8, #0x60]
  302504: ad030001     	stp	q1, q0, [x0, #0x60]
  302508: ad400500     	ldp	q0, q1, [x8]
  30250c: ad000400     	stp	q0, q1, [x0]
  302510: ad410101     	ldp	q1, q0, [x8, #0x20]
  302514: ad010001     	stp	q1, q0, [x0, #0x20]
  302518: 91022261     	add	x1, x19, #0x88
  30251c: 3902b41f     	strb	wzr, [x0, #0xad]
  302520: 910063e2     	add	x2, sp, #0x18
  302524: 910003e3     	mov	x3, sp
  302528: aa1403e0     	mov	x0, x20
  30252c: 9415f3e1     	bl	0x87f4b0 <__ZN3BRC14ProgramManager13createProgramERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_S9_>
  302530: f9401e74     	ldr	x20, [x19, #0x38]
  302534: eb00029f     	cmp	x20, x0
  302538: 54000160     	b.eq	0x302564 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x140>
  30253c: f9001e60     	str	x0, [x19, #0x38]
  302540: b4000080     	cbz	x0, 0x302550 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x12c>
  302544: f9400008     	ldr	x8, [x0]
  302548: f9400108     	ldr	x8, [x8]
  30254c: d63f0100     	blr	x8
  302550: b40000b4     	cbz	x20, 0x302564 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x140>
  302554: f9400288     	ldr	x8, [x20]
  302558: f9400508     	ldr	x8, [x8, #0x8]
  30255c: aa1403e0     	mov	x0, x20
  302560: d63f0100     	blr	x8
  302564: 39c05fe8     	ldrsb	w8, [sp, #0x17]
  302568: 37f80c48     	tbnz	w8, #0x1f, 0x3026f0 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x2cc>
  30256c: 39c0bfe8     	ldrsb	w8, [sp, #0x2f]
  302570: 37f80c88     	tbnz	w8, #0x1f, 0x302700 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x2dc>
  302574: f9400a60     	ldr	x0, [x19, #0x10]
  302578: f9401e61     	ldr	x1, [x19, #0x38]
  30257c: 9415ea00     	bl	0x87cd7c <__ZN3BRC11RenderState10setProgramEPNS_7ProgramE>
  302580: 52800f00     	mov	w0, #0x78               ; =120
  302584: 949a87f3     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  302588: aa0003f4     	mov	x20, x0
  30258c: 3900bfff     	strb	wzr, [sp, #0x2f]
  302590: 390063ff     	strb	wzr, [sp, #0x18]
  302594: 910063e1     	add	x1, sp, #0x18
  302598: 9415e28e     	bl	0x87afd0 <__ZN3BRC14RenderPipelineC2ERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE>
  30259c: f00190c8     	adrp	x8, 0x351d000 <__ZTIN3BRC16AGFXProgramProxyE+0x90>
  3025a0: 91178108     	add	x8, x8, #0x5e0
  3025a4: 91004108     	add	x8, x8, #0x10
  3025a8: f9000288     	str	x8, [x20]
  3025ac: aa1403f6     	mov	x22, x20
  3025b0: f8068edf     	str	xzr, [x22, #0x68]!
  3025b4: f9003a9f     	str	xzr, [x20, #0x70]
  3025b8: 52800048     	mov	w8, #0x2                ; =2
  3025bc: b9006288     	str	w8, [x20, #0x60]
  3025c0: 39c0bfe8     	ldrsb	w8, [sp, #0x2f]
  3025c4: 36f80068     	tbz	w8, #0x1f, 0x3025d0 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x1ac>
  3025c8: f9400fe0     	ldr	x0, [sp, #0x18]
  3025cc: 949a87d5     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3025d0: f9400e60     	ldr	x0, [x19, #0x18]
  3025d4: 52800148     	mov	w8, #0xa                ; =10
  3025d8: 3900bfe8     	strb	w8, [sp, #0x2f]
  3025dc: b0017708     	adrp	x8, 0x31e3000 <dyld_stub_binder+0x31e3000>
  3025e0: 91153d08     	add	x8, x8, #0x54f
  3025e4: f9400108     	ldr	x8, [x8]
  3025e8: f9000fe8     	str	x8, [sp, #0x18]
  3025ec: 528c8dc8     	mov	w8, #0x646e             ; =25710
  3025f0: 790043e8     	strh	w8, [sp, #0x20]
  3025f4: 39008bff     	strb	wzr, [sp, #0x22]
  3025f8: f9400008     	ldr	x8, [x0]
  3025fc: f9400508     	ldr	x8, [x8, #0x8]
  302600: b0014b64     	adrp	x4, 0x2c6f000 <__ZTSN3BRC23AGFXVertexAttribMapWrapE+0x6>
  302604: 910d1084     	add	x4, x4, #0x344
  302608: 910063e1     	add	x1, sp, #0x18
  30260c: d2800002     	mov	x2, #0x0                ; =0
  302610: 52800023     	mov	w3, #0x1                ; =1
  302614: d63f0100     	blr	x8
  302618: f94002d5     	ldr	x21, [x22]
  30261c: eb0002bf     	cmp	x21, x0
  302620: 54000160     	b.eq	0x30264c <__ZN3BEF18BackgroundV2Filter10initializeEv+0x228>
  302624: f90002c0     	str	x0, [x22]
  302628: b4000080     	cbz	x0, 0x302638 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x214>
  30262c: f9400008     	ldr	x8, [x0]
  302630: f9400108     	ldr	x8, [x8]
  302634: d63f0100     	blr	x8
  302638: b40000b5     	cbz	x21, 0x30264c <__ZN3BEF18BackgroundV2Filter10initializeEv+0x228>
  30263c: f94002a8     	ldr	x8, [x21]
  302640: f9400508     	ldr	x8, [x8, #0x8]
  302644: aa1503e0     	mov	x0, x21
  302648: d63f0100     	blr	x8
  30264c: 39c0bfe8     	ldrsb	w8, [sp, #0x2f]
  302650: 36f80068     	tbz	w8, #0x1f, 0x30265c <__ZN3BEF18BackgroundV2Filter10initializeEv+0x238>
  302654: f9400fe0     	ldr	x0, [sp, #0x18]
  302658: 949a87b2     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  30265c: f9400275     	ldr	x21, [x19]
  302660: eb1402bf     	cmp	x21, x20
  302664: 54000160     	b.eq	0x302690 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x26c>
  302668: f9000274     	str	x20, [x19]
  30266c: f9400288     	ldr	x8, [x20]
  302670: f9400108     	ldr	x8, [x8]
  302674: aa1403e0     	mov	x0, x20
  302678: d63f0100     	blr	x8
  30267c: b40000b5     	cbz	x21, 0x302690 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x26c>
  302680: f94002a8     	ldr	x8, [x21]
  302684: f9400508     	ldr	x8, [x8, #0x8]
  302688: aa1503e0     	mov	x0, x21
  30268c: d63f0100     	blr	x8
  302690: 91010261     	add	x1, x19, #0x40
  302694: b0019ba8     	adrp	x8, 0x3677000 <__ZZN18LuaFaceFittingInfo12getClassNameEvE12classNamePtr+0xe608>
  302698: 91139108     	add	x8, x8, #0x4e4
  30269c: ad400500     	ldp	q0, q1, [x8]
  3026a0: ad020660     	stp	q0, q1, [x19, #0x40]
  3026a4: ad410500     	ldp	q0, q1, [x8, #0x20]
  3026a8: ad030660     	stp	q0, q1, [x19, #0x60]
  3026ac: f9400a74     	ldr	x20, [x19, #0x10]
  3026b0: b00176c0     	adrp	x0, 0x31db000 <dyld_stub_binder+0x31db000>
  3026b4: 91208800     	add	x0, x0, #0x822
  3026b8: 94162ced     	bl	0x88da6c <__ZN3BRC13ShaderUniform6createEPKcRKNS_4Mat4E>
  3026bc: aa0003e1     	mov	x1, x0
  3026c0: f9400288     	ldr	x8, [x20]
  3026c4: f9401508     	ldr	x8, [x8, #0x28]
  3026c8: aa1403e0     	mov	x0, x20
  3026cc: d63f0100     	blr	x8
  3026d0: 52800028     	mov	w8, #0x1                ; =1
  3026d4: 39020268     	strb	w8, [x19, #0x80]
  3026d8: 52800020     	mov	w0, #0x1                ; =1
  3026dc: a9457bfd     	ldp	x29, x30, [sp, #0x50]
  3026e0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
  3026e4: a94357f6     	ldp	x22, x21, [sp, #0x30]
  3026e8: 910183ff     	add	sp, sp, #0x60
  3026ec: d65f03c0     	ret
  3026f0: f94003e0     	ldr	x0, [sp]
  3026f4: 949a878b     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3026f8: 39c0bfe8     	ldrsb	w8, [sp, #0x2f]
  3026fc: 36fff3c8     	tbz	w8, #0x1f, 0x302574 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x150>
  302700: f9400fe0     	ldr	x0, [sp, #0x18]
  302704: 949a8787     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  302708: 17ffff9b     	b	0x302574 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x150>
  30270c: aa0003f3     	mov	x19, x0
  302710: 39c0bfe8     	ldrsb	w8, [sp, #0x2f]
  302714: 36f80068     	tbz	w8, #0x1f, 0x302720 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x2fc>
  302718: f9400fe0     	ldr	x0, [sp, #0x18]
  30271c: 949a8781     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  302720: aa1403e0     	mov	x0, x20
  302724: 14000012     	b	0x30276c <__ZN3BEF18BackgroundV2Filter10initializeEv+0x348>
  302728: 14000001     	b	0x30272c <__ZN3BEF18BackgroundV2Filter10initializeEv+0x308>
  30272c: aa0003f3     	mov	x19, x0
  302730: 39c0bfe8     	ldrsb	w8, [sp, #0x2f]
  302734: 36f800e8     	tbz	w8, #0x1f, 0x302750 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x32c>
  302738: 1400000c     	b	0x302768 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x344>
  30273c: aa0003f3     	mov	x19, x0
  302740: 39c05fe8     	ldrsb	w8, [sp, #0x17]
  302744: 37f800a8     	tbnz	w8, #0x1f, 0x302758 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x334>
  302748: 39c0bfe8     	ldrsb	w8, [sp, #0x2f]
  30274c: 37f800e8     	tbnz	w8, #0x1f, 0x302768 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x344>
  302750: aa1303e0     	mov	x0, x19
  302754: 949a8287     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  302758: f94003e0     	ldr	x0, [sp]
  30275c: 949a8771     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  302760: 39c0bfe8     	ldrsb	w8, [sp, #0x2f]
  302764: 36ffff68     	tbz	w8, #0x1f, 0x302750 <__ZN3BEF18BackgroundV2Filter10initializeEv+0x32c>
  302768: f9400fe0     	ldr	x0, [sp, #0x18]
  30276c: 949a876d     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  302770: aa1303e0     	mov	x0, x19
  302774: 949a827f     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

0000000000302778 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E>:
  302778: d10303ff     	sub	sp, sp, #0xc0
  30277c: a9066ffc     	stp	x28, x27, [sp, #0x60]
  302780: a90767fa     	stp	x26, x25, [sp, #0x70]
  302784: a9085ff8     	stp	x24, x23, [sp, #0x80]
  302788: a90957f6     	stp	x22, x21, [sp, #0x90]
  30278c: a90a4ff4     	stp	x20, x19, [sp, #0xa0]
  302790: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
  302794: 9102c3fd     	add	x29, sp, #0xb0
  302798: aa0503f7     	mov	x23, x5
  30279c: aa0403f6     	mov	x22, x4
  3027a0: aa0303f8     	mov	x24, x3
  3027a4: aa0203f9     	mov	x25, x2
  3027a8: aa0103f3     	mov	x19, x1
  3027ac: aa0003f5     	mov	x21, x0
  3027b0: 39420008     	ldrb	w8, [x0, #0x80]
  3027b4: 35000068     	cbnz	w8, 0x3027c0 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x48>
  3027b8: aa1503e0     	mov	x0, x21
  3027bc: 97ffff1a     	bl	0x302424 <__ZN3BEF18BackgroundV2Filter10initializeEv>
  3027c0: f9400ea8     	ldr	x8, [x21, #0x18]
  3027c4: f9403914     	ldr	x20, [x8, #0x70]
  3027c8: b40000b4     	cbz	x20, 0x3027dc <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x64>
  3027cc: 39458688     	ldrb	w8, [x20, #0x161]
  3027d0: 34000068     	cbz	w8, 0x3027dc <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x64>
  3027d4: aa1403e0     	mov	x0, x20
  3027d8: 9415fe02     	bl	0x881fe0 <__ZN3BRC12RenderDevice5flushEv>
  3027dc: f9400aa0     	ldr	x0, [x21, #0x10]
  3027e0: b00176c1     	adrp	x1, 0x31db000 <dyld_stub_binder+0x31db000>
  3027e4: 91204021     	add	x1, x1, #0x810
  3027e8: 9415e86e     	bl	0x87c9a0 <__ZNK3BRC11RenderState10getUniformEPKc>
  3027ec: aa0003fa     	mov	x26, x0
  3027f0: b4000160     	cbz	x0, 0x30281c <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0xa4>
  3027f4: f9400348     	ldr	x8, [x26]
  3027f8: f9400108     	ldr	x8, [x8]
  3027fc: aa1a03e0     	mov	x0, x26
  302800: d63f0100     	blr	x8
  302804: aa1a03fb     	mov	x27, x26
  302808: aa1a03e0     	mov	x0, x26
  30280c: aa1303e1     	mov	x1, x19
  302810: 9415ecab     	bl	0x87dabc <__ZN3BRC12TextureState10setTextureEPNS_7TextureE>
  302814: aa1a03f3     	mov	x19, x26
  302818: 14000023     	b	0x3028a4 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x12c>
  30281c: d280001b     	mov	x27, #0x0               ; =0
  302820: b00176c1     	adrp	x1, 0x31db000 <dyld_stub_binder+0x31db000>
  302824: 91204021     	add	x1, x1, #0x810
  302828: aa1303e0     	mov	x0, x19
  30282c: 9415ec7e     	bl	0x87da24 <__ZN3BRC12TextureState6createEPNS_7TextureEPKc>
  302830: aa0003f3     	mov	x19, x0
  302834: eb1a001f     	cmp	x0, x26
  302838: 540001e0     	b.eq	0x302874 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0xfc>
  30283c: b40001d3     	cbz	x19, 0x302874 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0xfc>
  302840: f9400268     	ldr	x8, [x19]
  302844: f9400108     	ldr	x8, [x8]
  302848: aa1303fb     	mov	x27, x19
  30284c: aa1303e0     	mov	x0, x19
  302850: d63f0100     	blr	x8
  302854: f9400aba     	ldr	x26, [x21, #0x10]
  302858: f9002ff3     	str	x19, [sp, #0x58]
  30285c: f9400268     	ldr	x8, [x19]
  302860: f9400108     	ldr	x8, [x8]
  302864: aa1303fb     	mov	x27, x19
  302868: aa1303e0     	mov	x0, x19
  30286c: d63f0100     	blr	x8
  302870: 14000004     	b	0x302880 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x108>
  302874: d2800013     	mov	x19, #0x0               ; =0
  302878: f9400aba     	ldr	x26, [x21, #0x10]
  30287c: f9002fff     	str	xzr, [sp, #0x58]
  302880: 910163e1     	add	x1, sp, #0x58
  302884: aa1a03e0     	mov	x0, x26
  302888: 9415e69c     	bl	0x87c2f8 <__ZN3BRC11RenderState10addUniformENS_8SharePtrINS_7UniformEEE>
  30288c: f9402fe0     	ldr	x0, [sp, #0x58]
  302890: b4000080     	cbz	x0, 0x3028a0 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x128>
  302894: f9400008     	ldr	x8, [x0]
  302898: f9400508     	ldr	x8, [x8, #0x8]
  30289c: d63f0100     	blr	x8
  3028a0: f9002fff     	str	xzr, [sp, #0x58]
  3028a4: f94002ba     	ldr	x26, [x21]
  3028a8: f9403740     	ldr	x0, [x26, #0x68]
  3028ac: aa1903e1     	mov	x1, x25
  3028b0: 941613b2     	bl	0x887778 <__ZN3BRC13TextureTarget10setTextureEPNS_7TextureE>
  3028b4: f9403748     	ldr	x8, [x26, #0x68]
  3028b8: b900691f     	str	wzr, [x8, #0x68]
  3028bc: f94006a0     	ldr	x0, [x21, #0x8]
  3028c0: 52800088     	mov	w8, #0x4                ; =4
  3028c4: b9006008     	str	w8, [x0, #0x60]
  3028c8: 90017cc1     	adrp	x1, 0x329a000 <dyld_stub_binder+0x329a000>
  3028cc: 912cd021     	add	x1, x1, #0xb34
  3028d0: aa1803e2     	mov	x2, x24
  3028d4: 52800023     	mov	w3, #0x1                ; =1
  3028d8: 9415d130     	bl	0x876d98 <__ZN3BRC12RenderObject17setAttributeArrayEPKcRKNSt3__16vectorINS_4Vec2ENS3_9allocatorIS5_EEEENS_11BufferUsageE>
  3028dc: f94006a0     	ldr	x0, [x21, #0x8]
  3028e0: aa1603e1     	mov	x1, x22
  3028e4: 52800022     	mov	w2, #0x1                ; =1
  3028e8: 9415d20a     	bl	0x877110 <__ZN3BRC12RenderObject13setIndexArrayERKNSt3__16vectorItNS1_9allocatorItEEEENS_11BufferUsageE>
  3028ec: f9400aa0     	ldr	x0, [x21, #0x10]
  3028f0: b00176c1     	adrp	x1, 0x31db000 <dyld_stub_binder+0x31db000>
  3028f4: 91208821     	add	x1, x1, #0x822
  3028f8: 9415e82a     	bl	0x87c9a0 <__ZNK3BRC11RenderState10getUniformEPKc>
  3028fc: aa0003f6     	mov	x22, x0
  302900: b40000a0     	cbz	x0, 0x302914 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x19c>
  302904: f94002c8     	ldr	x8, [x22]
  302908: f9400108     	ldr	x8, [x8]
  30290c: aa1603e0     	mov	x0, x22
  302910: d63f0100     	blr	x8
  302914: aa1603e0     	mov	x0, x22
  302918: aa1703e1     	mov	x1, x23
  30291c: 94167a7d     	bl	0x8a1310 <__ZN3BRC10DataBuffer7setDataERKNS_4Mat4E>
  302920: 910023e0     	add	x0, sp, #0x8
  302924: 9415cd41     	bl	0x875e28 <__ZN3BRC13RenderCommandC1Ev>
  302928: f94017f7     	ldr	x23, [sp, #0x28]
  30292c: f94006a0     	ldr	x0, [x21, #0x8]
  302930: eb0002ff     	cmp	x23, x0
  302934: 54000160     	b.eq	0x302960 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x1e8>
  302938: f90017e0     	str	x0, [sp, #0x28]
  30293c: b4000080     	cbz	x0, 0x30294c <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x1d4>
  302940: f9400008     	ldr	x8, [x0]
  302944: f9400108     	ldr	x8, [x8]
  302948: d63f0100     	blr	x8
  30294c: b40000b7     	cbz	x23, 0x302960 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x1e8>
  302950: f94002e8     	ldr	x8, [x23]
  302954: f9400508     	ldr	x8, [x8, #0x8]
  302958: aa1703e0     	mov	x0, x23
  30295c: d63f0100     	blr	x8
  302960: f94013f7     	ldr	x23, [sp, #0x20]
  302964: f9400aa0     	ldr	x0, [x21, #0x10]
  302968: eb0002ff     	cmp	x23, x0
  30296c: 54000160     	b.eq	0x302998 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x220>
  302970: f90013e0     	str	x0, [sp, #0x20]
  302974: b4000080     	cbz	x0, 0x302984 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x20c>
  302978: f9400008     	ldr	x8, [x0]
  30297c: f9400108     	ldr	x8, [x8]
  302980: d63f0100     	blr	x8
  302984: b40000b7     	cbz	x23, 0x302998 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x220>
  302988: f94002e8     	ldr	x8, [x23]
  30298c: f9400508     	ldr	x8, [x8, #0x8]
  302990: aa1703e0     	mov	x0, x23
  302994: d63f0100     	blr	x8
  302998: f9401ff7     	ldr	x23, [sp, #0x38]
  30299c: f94002a0     	ldr	x0, [x21]
  3029a0: eb0002ff     	cmp	x23, x0
  3029a4: 54000160     	b.eq	0x3029d0 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x258>
  3029a8: f9001fe0     	str	x0, [sp, #0x38]
  3029ac: b4000080     	cbz	x0, 0x3029bc <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x244>
  3029b0: f9400008     	ldr	x8, [x0]
  3029b4: f9400108     	ldr	x8, [x8]
  3029b8: d63f0100     	blr	x8
  3029bc: b40000b7     	cbz	x23, 0x3029d0 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x258>
  3029c0: f94002e8     	ldr	x8, [x23]
  3029c4: f9400508     	ldr	x8, [x8, #0x8]
  3029c8: aa1703e0     	mov	x0, x23
  3029cc: d63f0100     	blr	x8
  3029d0: f9400ea0     	ldr	x0, [x21, #0x18]
  3029d4: 910023e1     	add	x1, sp, #0x8
  3029d8: 52800042     	mov	w2, #0x2                ; =2
  3029dc: 94160248     	bl	0x8832fc <__ZN3BRC12RenderEngine11pushCommandEPNS_7CommandENS_18RenderCommandQueue10RenderTypeE>
  3029e0: f9400ea0     	ldr	x0, [x21, #0x18]
  3029e4: 94160263     	bl	0x883370 <__ZN3BRC12RenderEngine6renderEv>
  3029e8: b40000b4     	cbz	x20, 0x3029fc <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x284>
  3029ec: 39458688     	ldrb	w8, [x20, #0x161]
  3029f0: 34000068     	cbz	w8, 0x3029fc <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x284>
  3029f4: aa1403e0     	mov	x0, x20
  3029f8: 9415fd7a     	bl	0x881fe0 <__ZN3BRC12RenderDevice5flushEv>
  3029fc: 910023e0     	add	x0, sp, #0x8
  302a00: 9415cd48     	bl	0x875f20 <__ZN3BRC13RenderCommandD1Ev>
  302a04: b40000b6     	cbz	x22, 0x302a18 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x2a0>
  302a08: f94002c8     	ldr	x8, [x22]
  302a0c: f9400508     	ldr	x8, [x8, #0x8]
  302a10: aa1603e0     	mov	x0, x22
  302a14: d63f0100     	blr	x8
  302a18: b40000b3     	cbz	x19, 0x302a2c <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x2b4>
  302a1c: f9400268     	ldr	x8, [x19]
  302a20: f9400508     	ldr	x8, [x8, #0x8]
  302a24: aa1303e0     	mov	x0, x19
  302a28: d63f0100     	blr	x8
  302a2c: 52800020     	mov	w0, #0x1                ; =1
  302a30: a94b7bfd     	ldp	x29, x30, [sp, #0xb0]
  302a34: a94a4ff4     	ldp	x20, x19, [sp, #0xa0]
  302a38: a94957f6     	ldp	x22, x21, [sp, #0x90]
  302a3c: a9485ff8     	ldp	x24, x23, [sp, #0x80]
  302a40: a94767fa     	ldp	x26, x25, [sp, #0x70]
  302a44: a9466ffc     	ldp	x28, x27, [sp, #0x60]
  302a48: 910303ff     	add	sp, sp, #0xc0
  302a4c: d65f03c0     	ret
  302a50: 97f42b4f     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  302a54: aa0003f4     	mov	x20, x0
  302a58: f9402fe0     	ldr	x0, [sp, #0x58]
  302a5c: b4000080     	cbz	x0, 0x302a6c <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x2f4>
  302a60: f9400008     	ldr	x8, [x0]
  302a64: f9400508     	ldr	x8, [x8, #0x8]
  302a68: d63f0100     	blr	x8
  302a6c: f9002fff     	str	xzr, [sp, #0x58]
  302a70: 14000016     	b	0x302ac8 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x350>
  302a74: 97f42b46     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  302a78: 97f42b45     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  302a7c: 97f42b44     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  302a80: 14000001     	b	0x302a84 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x30c>
  302a84: aa0003f4     	mov	x20, x0
  302a88: 1400000b     	b	0x302ab4 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x33c>
  302a8c: aa0003f4     	mov	x20, x0
  302a90: aa1b03f3     	mov	x19, x27
  302a94: 1400000d     	b	0x302ac8 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x350>
  302a98: aa0003f4     	mov	x20, x0
  302a9c: 1400000b     	b	0x302ac8 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x350>
  302aa0: aa0003f4     	mov	x20, x0
  302aa4: 14000009     	b	0x302ac8 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x350>
  302aa8: aa0003f4     	mov	x20, x0
  302aac: 910023e0     	add	x0, sp, #0x8
  302ab0: 9415cd1c     	bl	0x875f20 <__ZN3BRC13RenderCommandD1Ev>
  302ab4: b40000b6     	cbz	x22, 0x302ac8 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x350>
  302ab8: f94002c8     	ldr	x8, [x22]
  302abc: f9400508     	ldr	x8, [x8, #0x8]
  302ac0: aa1603e0     	mov	x0, x22
  302ac4: d63f0100     	blr	x8
  302ac8: b40000b3     	cbz	x19, 0x302adc <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x364>
  302acc: f9400268     	ldr	x8, [x19]
  302ad0: f9400508     	ldr	x8, [x8, #0x8]
  302ad4: aa1303e0     	mov	x0, x19
  302ad8: d63f0100     	blr	x8
  302adc: aa1403e0     	mov	x0, x20
  302ae0: 949a81a4     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  302ae4: 97f42b2a     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  302ae8: 97f42b29     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  302aec: d10203ff     	sub	sp, sp, #0x80
  302af0: a90367fa     	stp	x26, x25, [sp, #0x30]
  302af4: a9045ff8     	stp	x24, x23, [sp, #0x40]
  302af8: a90557f6     	stp	x22, x21, [sp, #0x50]
  302afc: a9064ff4     	stp	x20, x19, [sp, #0x60]
  302b00: a9077bfd     	stp	x29, x30, [sp, #0x70]
  302b04: 9101c3fd     	add	x29, sp, #0x70
  302b08: d0018dc8     	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
  302b0c: f9435508     	ldr	x8, [x8, #0x6a8]
  302b10: f9400108     	ldr	x8, [x8]
  302b14: f90017e8     	str	x8, [sp, #0x28]
  302b18: 910023f7     	add	x23, sp, #0x8
  302b1c: 910023e0     	add	x0, sp, #0x8
  302b20: 2f00e400     	movi	d0, #0000000000000000
  302b24: 2f00e401     	movi	d1, #0000000000000000
  302b28: 9417805e     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  302b2c: 910022f3     	add	x19, x23, #0x8
  302b30: 52800038     	mov	w24, #0x1               ; =1
  302b34: 1e2e1000     	fmov	s0, #1.00000000
  302b38: 2f00e401     	movi	d1, #0000000000000000
  302b3c: aa1303e0     	mov	x0, x19
  302b40: 94178058     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  302b44: 910042f4     	add	x20, x23, #0x10
  302b48: 52800058     	mov	w24, #0x2               ; =2
  302b4c: 2f00e400     	movi	d0, #0000000000000000
  302b50: 1e2e1001     	fmov	s1, #1.00000000
  302b54: aa1403e0     	mov	x0, x20
  302b58: 94178052     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  302b5c: 910023e8     	add	x8, sp, #0x8
  302b60: 91006115     	add	x21, x8, #0x18
  302b64: 52800078     	mov	w24, #0x3               ; =3
  302b68: 1e2e1000     	fmov	s0, #1.00000000
  302b6c: 1e2e1001     	fmov	s1, #1.00000000
  302b70: aa1503e0     	mov	x0, x21
  302b74: 9417804b     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  302b78: d0019e38     	adrp	x24, 0x36c8000 <dyld_stub_binder+0x36c8000>
  302b7c: 9134e318     	add	x24, x24, #0xd38
  302b80: a9007f1f     	stp	xzr, xzr, [x24]
  302b84: f9000b1f     	str	xzr, [x24, #0x10]
  302b88: 52800400     	mov	w0, #0x20               ; =32
  302b8c: 949a8671     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  302b90: aa0003f6     	mov	x22, x0
  302b94: a9000300     	stp	x0, x0, [x24]
  302b98: 91008019     	add	x25, x0, #0x20
  302b9c: f9000b19     	str	x25, [x24, #0x10]
  302ba0: 910023e1     	add	x1, sp, #0x8
  302ba4: aa0003f7     	mov	x23, x0
  302ba8: 94178049     	bl	0x8e2ccc <__ZN3BRC4Vec2C1ERKS0_>
  302bac: 910022d7     	add	x23, x22, #0x8
  302bb0: aa1703e0     	mov	x0, x23
  302bb4: aa1303e1     	mov	x1, x19
  302bb8: 94178045     	bl	0x8e2ccc <__ZN3BRC4Vec2C1ERKS0_>
  302bbc: 910042d7     	add	x23, x22, #0x10
  302bc0: aa1703e0     	mov	x0, x23
  302bc4: aa1403e1     	mov	x1, x20
  302bc8: 94178041     	bl	0x8e2ccc <__ZN3BRC4Vec2C1ERKS0_>
  302bcc: 910062d7     	add	x23, x22, #0x18
  302bd0: aa1703e0     	mov	x0, x23
  302bd4: aa1503e1     	mov	x1, x21
  302bd8: 9417803d     	bl	0x8e2ccc <__ZN3BRC4Vec2C1ERKS0_>
  302bdc: d0019e28     	adrp	x8, 0x36c8000 <dyld_stub_binder+0x36c8000>
  302be0: f906a119     	str	x25, [x8, #0xd40]
  302be4: aa1503e0     	mov	x0, x21
  302be8: 94178053     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302bec: aa1403e0     	mov	x0, x20
  302bf0: 94178051     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302bf4: aa1303e0     	mov	x0, x19
  302bf8: 9417804f     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302bfc: 910023f7     	add	x23, sp, #0x8
  302c00: 910023e0     	add	x0, sp, #0x8
  302c04: 9417804c     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302c08: 910023e0     	add	x0, sp, #0x8
  302c0c: 1e3e1000     	fmov	s0, #-1.00000000
  302c10: 1e3e1001     	fmov	s1, #-1.00000000
  302c14: 94178023     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  302c18: 52800038     	mov	w24, #0x1               ; =1
  302c1c: 1e2e1000     	fmov	s0, #1.00000000
  302c20: 1e3e1001     	fmov	s1, #-1.00000000
  302c24: aa1303e0     	mov	x0, x19
  302c28: 9417801e     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  302c2c: 52800058     	mov	w24, #0x2               ; =2
  302c30: 1e3e1000     	fmov	s0, #-1.00000000
  302c34: 1e2e1001     	fmov	s1, #1.00000000
  302c38: aa1403e0     	mov	x0, x20
  302c3c: 94178019     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  302c40: 52800078     	mov	w24, #0x3               ; =3
  302c44: 1e2e1000     	fmov	s0, #1.00000000
  302c48: 1e2e1001     	fmov	s1, #1.00000000
  302c4c: aa1503e0     	mov	x0, x21
  302c50: 94178014     	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  302c54: d0019e38     	adrp	x24, 0x36c8000 <dyld_stub_binder+0x36c8000>
  302c58: 91354318     	add	x24, x24, #0xd50
  302c5c: a9007f1f     	stp	xzr, xzr, [x24]
  302c60: f9000b1f     	str	xzr, [x24, #0x10]
  302c64: 52800400     	mov	w0, #0x20               ; =32
  302c68: 949a863a     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  302c6c: aa0003f6     	mov	x22, x0
  302c70: a9000300     	stp	x0, x0, [x24]
  302c74: 91008019     	add	x25, x0, #0x20
  302c78: f9000b19     	str	x25, [x24, #0x10]
  302c7c: 910023e1     	add	x1, sp, #0x8
  302c80: aa0003f7     	mov	x23, x0
  302c84: 94178012     	bl	0x8e2ccc <__ZN3BRC4Vec2C1ERKS0_>
  302c88: 910022d7     	add	x23, x22, #0x8
  302c8c: aa1703e0     	mov	x0, x23
  302c90: aa1303e1     	mov	x1, x19
  302c94: 9417800e     	bl	0x8e2ccc <__ZN3BRC4Vec2C1ERKS0_>
  302c98: 910042d7     	add	x23, x22, #0x10
  302c9c: aa1703e0     	mov	x0, x23
  302ca0: aa1403e1     	mov	x1, x20
  302ca4: 9417800a     	bl	0x8e2ccc <__ZN3BRC4Vec2C1ERKS0_>
  302ca8: 910062d7     	add	x23, x22, #0x18
  302cac: aa1703e0     	mov	x0, x23
  302cb0: aa1503e1     	mov	x1, x21
  302cb4: 94178006     	bl	0x8e2ccc <__ZN3BRC4Vec2C1ERKS0_>
  302cb8: d0019e36     	adrp	x22, 0x36c8000 <dyld_stub_binder+0x36c8000>
  302cbc: 913562d6     	add	x22, x22, #0xd58
  302cc0: f90002d9     	str	x25, [x22]
  302cc4: aa1503e0     	mov	x0, x21
  302cc8: 9417801b     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302ccc: aa1403e0     	mov	x0, x20
  302cd0: 94178019     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302cd4: aa1303e0     	mov	x0, x19
  302cd8: 94178017     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302cdc: 910023e0     	add	x0, sp, #0x8
  302ce0: 94178015     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302ce4: a901fedf     	stp	xzr, xzr, [x22, #0x18]
  302ce8: f9000adf     	str	xzr, [x22, #0x10]
  302cec: 52800180     	mov	w0, #0xc                ; =12
  302cf0: 949a8618     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  302cf4: 91003008     	add	x8, x0, #0xc
  302cf8: a901a2c8     	stp	x8, x8, [x22, #0x18]
  302cfc: f0014989     	adrp	x9, 0x2c35000 <__ZTSN13AmazingEngine13ARBachBackendE+0x1183>
  302d00: fd467920     	ldr	d0, [x9, #0xcf0]
  302d04: fd000000     	str	d0, [x0]
  302d08: 52800049     	mov	w9, #0x2                ; =2
  302d0c: 72a00069     	movk	w9, #0x3, lsl #16
  302d10: b9000809     	str	w9, [x0, #0x8]
  302d14: f9000ac0     	str	x0, [x22, #0x10]
  302d18: f94017e8     	ldr	x8, [sp, #0x28]
  302d1c: d0018dc9     	adrp	x9, 0x34bc000 <dyld_stub_binder+0x34bc000>
  302d20: f9435529     	ldr	x9, [x9, #0x6a8]
  302d24: f9400129     	ldr	x9, [x9]
  302d28: eb08013f     	cmp	x9, x8
  302d2c: 54000101     	b.ne	0x302d4c <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x5d4>
  302d30: a9477bfd     	ldp	x29, x30, [sp, #0x70]
  302d34: a9464ff4     	ldp	x20, x19, [sp, #0x60]
  302d38: a94557f6     	ldp	x22, x21, [sp, #0x50]
  302d3c: a9445ff8     	ldp	x24, x23, [sp, #0x40]
  302d40: a94367fa     	ldp	x26, x25, [sp, #0x30]
  302d44: 910203ff     	add	sp, sp, #0x80
  302d48: d65f03c0     	ret
  302d4c: 949a8649     	bl	0x29a4670 <dyld_stub_binder+0x29a4670>
  302d50: 14000001     	b	0x302d54 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x5dc>
  302d54: aa0003f6     	mov	x22, x0
  302d58: 14000022     	b	0x302de0 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x668>
  302d5c: aa0003f6     	mov	x22, x0
  302d60: 8b180ef3     	add	x19, x23, x24, lsl #3
  302d64: d1002260     	sub	x0, x19, #0x8
  302d68: 94177ff3     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302d6c: eb17001f     	cmp	x0, x23
  302d70: 54000101     	b.ne	0x302d90 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x618>
  302d74: 14000024     	b	0x302e04 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x68c>
  302d78: aa0003f6     	mov	x22, x0
  302d7c: 8b180ef3     	add	x19, x23, x24, lsl #3
  302d80: d1002260     	sub	x0, x19, #0x8
  302d84: 94177fec     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302d88: eb17001f     	cmp	x0, x23
  302d8c: 540003c0     	b.eq	0x302e04 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x68c>
  302d90: d1004260     	sub	x0, x19, #0x10
  302d94: 94177fe8     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302d98: 910023e8     	add	x8, sp, #0x8
  302d9c: eb08001f     	cmp	x0, x8
  302da0: 54000320     	b.eq	0x302e04 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x68c>
  302da4: d1006277     	sub	x23, x19, #0x18
  302da8: 14000015     	b	0x302dfc <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x684>
  302dac: aa0003f6     	mov	x22, x0
  302db0: f9000717     	str	x23, [x24, #0x8]
  302db4: f9400300     	ldr	x0, [x24]
  302db8: b4000140     	cbz	x0, 0x302de0 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x668>
  302dbc: aa1703e1     	mov	x1, x23
  302dc0: 9497dbd6     	bl	0x28f9d18 <__ZN5smash15CvtInputAsFloatEPhPfif+0x18024>
  302dc4: 14000007     	b	0x302de0 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x668>
  302dc8: aa0003f6     	mov	x22, x0
  302dcc: f9000717     	str	x23, [x24, #0x8]
  302dd0: f9400300     	ldr	x0, [x24]
  302dd4: b4000060     	cbz	x0, 0x302de0 <__ZN3BEF18BackgroundV2Filter8drawRectEPN3BRC7TextureES3_RKNSt3__16vectorINS1_4Vec2ENS4_9allocatorIS6_EEEERKNS5_ItNS7_ItEEEENS1_4Mat4E+0x668>
  302dd8: aa1703e1     	mov	x1, x23
  302ddc: 9497dbe5     	bl	0x28f9d70 <__ZN5smash15CvtInputAsFloatEPhPfif+0x1807c>
  302de0: 910023f7     	add	x23, sp, #0x8
  302de4: aa1503e0     	mov	x0, x21
  302de8: 94177fd3     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302dec: aa1403e0     	mov	x0, x20
  302df0: 94177fd1     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302df4: aa1303e0     	mov	x0, x19
  302df8: 94177fcf     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302dfc: aa1703e0     	mov	x0, x23
  302e00: 94177fcd     	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  302e04: aa1603e0     	mov	x0, x22
  302e08: 949a80da     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

0000000000302e0c <__ZN3BEF19FaceBrowFaceUFilterC2Ev>:
  302e0c: a9bd57f6     	stp	x22, x21, [sp, #-0x30]!
  302e10: a9014ff4     	stp	x20, x19, [sp, #0x10]
  302e14: a9027bfd     	stp	x29, x30, [sp, #0x20]
  302e18: 910083fd     	add	x29, sp, #0x20
  302e1c: aa0003f3     	mov	x19, x0
  302e20: 940149e2     	bl	0x3555a8 <__ZN3BEF18MakeupBaseV2FilterC2Ev>
  302e24: 90018f48     	adrp	x8, 0x34ea000 <__ZTIN3BEF15FaceInsetParserE+0x90>
  302e28: 911fa108     	add	x8, x8, #0x7e8
  302e2c: f9000008     	str	x8, [x0]
  302e30: 9105f014     	add	x20, x0, #0x17c
  302e34: aa1403e0     	mov	x0, x20
  302e38: 941775b0     	bl	0x8e04f8 <__ZN3BRC4Mat4C1Ev>
  302e3c: 9106f275     	add	x21, x19, #0x1bc
  302e40: aa1503e0     	mov	x0, x21
  302e44: 941775ad     	bl	0x8e04f8 <__ZN3BRC4Mat4C1Ev>
  302e48: 91024260     	add	x0, x19, #0x90
  302e4c: b0017701     	adrp	x1, 0x31e3000 <dyld_stub_binder+0x31e3000>
  302e50: 912ea421     	add	x1, x1, #0xba9
  302e54: 949a83e5     	bl	0x29a3de8 <dyld_stub_binder+0x29a3de8>
  302e58: 3902227f     	strb	wzr, [x19, #0x88]
  302e5c: aa1303e0     	mov	x0, x19
  302e60: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  302e64: a9414ff4     	ldp	x20, x19, [sp, #0x10]
  302e68: a8c357f6     	ldp	x22, x21, [sp], #0x30
  302e6c: d65f03c0     	ret
  302e70: aa1503e8     	mov	x8, x21
  302e74: aa0003f5     	mov	x21, x0
  302e78: aa0803e0     	mov	x0, x8
  302e7c: 9417768c     	bl	0x8e08ac <__ZN3BRC4Mat4D1Ev>
  302e80: 14000002     	b	0x302e88 <__ZN3BEF19FaceBrowFaceUFilterC2Ev+0x7c>
  302e84: aa0003f5     	mov	x21, x0
  302e88: aa1403e0     	mov	x0, x20
  302e8c: 94177688     	bl	0x8e08ac <__ZN3BRC4Mat4D1Ev>
  302e90: 14000002     	b	0x302e98 <__ZN3BEF19FaceBrowFaceUFilterC2Ev+0x8c>
  302e94: aa0003f5     	mov	x21, x0
  302e98: aa1303e0     	mov	x0, x19
  302e9c: 94000003     	bl	0x302ea8 <__ZN3BEF19FaceBrowFaceUFilterC2Ev+0x9c>
  302ea0: aa1503e0     	mov	x0, x21
  302ea4: 949a80b3     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  302ea8: a9bd57f6     	stp	x22, x21, [sp, #-0x30]!
  302eac: a9014ff4     	stp	x20, x19, [sp, #0x10]
  302eb0: a9027bfd     	stp	x29, x30, [sp, #0x20]
  302eb4: 910083fd     	add	x29, sp, #0x20
  302eb8: aa0003f3     	mov	x19, x0
  302ebc: d0018f48     	adrp	x8, 0x34ec000 <__ZTVN3BEF18FaceMakeupV2FilterE+0x6a8>
  302ec0: 91220108     	add	x8, x8, #0x880
  302ec4: 91004108     	add	x8, x8, #0x10
  302ec8: f9000008     	str	x8, [x0]
  302ecc: 91054014     	add	x20, x0, #0x150
  302ed0: 91056015     	add	x21, x0, #0x158
  302ed4: f940ac01     	ldr	x1, [x0, #0x158]
  302ed8: aa1403e0     	mov	x0, x20
  302edc: 94000a8c     	bl	0x30590c <__ZN3BEF19FaceBrowFaceUFilter18checkExclusiveFlagEi+0x1a8>
  302ee0: a915fe7f     	stp	xzr, xzr, [x19, #0x158]
  302ee4: f900aa75     	str	x21, [x19, #0x150]
  302ee8: aa1403e0     	mov	x0, x20
  302eec: d2800001     	mov	x1, #0x0                ; =0
  302ef0: 94000a87     	bl	0x30590c <__ZN3BEF19FaceBrowFaceUFilter18checkExclusiveFlagEi+0x1a8>
  302ef4: 9104e260     	add	x0, x19, #0x138
  302ef8: f940a261     	ldr	x1, [x19, #0x140]
  302efc: 9493c3c5     	bl	0x27f3e10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x117090>
  302f00: 91048260     	add	x0, x19, #0x120
  302f04: f9409661     	ldr	x1, [x19, #0x128]
  302f08: 94000a99     	bl	0x30596c <__ZN3BEF19FaceBrowFaceUFilter18checkExclusiveFlagEi+0x208>
  302f0c: 91038260     	add	x0, x19, #0xe0
  302f10: 949a84d0     	bl	0x29a4250 <dyld_stub_binder+0x29a4250>
  302f14: 91032260     	add	x0, x19, #0xc8
  302f18: f9406a61     	ldr	x1, [x19, #0xd0]
  302f1c: 94946b45     	bl	0x281dc30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x140eb0>
  302f20: 9102c260     	add	x0, x19, #0xb0
  302f24: f9405e61     	ldr	x1, [x19, #0xb8]
  302f28: 94946b42     	bl	0x281dc30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x140eb0>
  302f2c: 39c29e68     	ldrsb	w8, [x19, #0xa7]
  302f30: 37f800c8     	tbnz	w8, #0x1f, 0x302f48 <__ZN3BEF19FaceBrowFaceUFilterC2Ev+0x13c>
  302f34: 39c1fe68     	ldrsb	w8, [x19, #0x7f]
  302f38: 37f80108     	tbnz	w8, #0x1f, 0x302f58 <__ZN3BEF19FaceBrowFaceUFilterC2Ev+0x14c>
  302f3c: f9403260     	ldr	x0, [x19, #0x60]
  302f40: b5000140     	cbnz	x0, 0x302f68 <__ZN3BEF19FaceBrowFaceUFilterC2Ev+0x15c>
  302f44: 1400000c     	b	0x302f74 <__ZN3BEF19FaceBrowFaceUFilterC2Ev+0x168>
  302f48: f9404a60     	ldr	x0, [x19, #0x90]
  302f4c: 949a8575     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  302f50: 39c1fe68     	ldrsb	w8, [x19, #0x7f]
  302f54: 36ffff48     	tbz	w8, #0x1f, 0x302f3c <__ZN3BEF19FaceBrowFaceUFilterC2Ev+0x130>
  302f58: f9403660     	ldr	x0, [x19, #0x68]
  302f5c: 949a8571     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  302f60: f9403260     	ldr	x0, [x19, #0x60]
  302f64: b4000080     	cbz	x0, 0x302f74 <__ZN3BEF19FaceBrowFaceUFilterC2Ev+0x168>
  302f68: f9400008     	ldr	x8, [x0]
  302f6c: f9400508     	ldr	x8, [x8, #0x8]
  302f70: d63f0100     	blr	x8
  302f74: f900327f     	str	xzr, [x19, #0x60]
  302f78: f9402660     	ldr	x0, [x19, #0x48]
  302f7c: b4000080     	cbz	x0, 0x302f8c <__ZN3BEF19FaceBrowFaceUFilterC2Ev+0x180>
  302f80: f9400008     	ldr	x8, [x0]
  302f84: f9400508     	ldr	x8, [x8, #0x8]
  302f88: d63f0100     	blr	x8
  302f8c: f900267f     	str	xzr, [x19, #0x48]
  302f90: f9402260     	ldr	x0, [x19, #0x40]
  302f94: b4000080     	cbz	x0, 0x302fa4 <__ZN3BEF19FaceBrowFaceUFilterC2Ev+0x198>
  302f98: f9400008     	ldr	x8, [x0]
  302f9c: f9400508     	ldr	x8, [x8, #0x8]
  302fa0: d63f0100     	blr	x8
  302fa4: f900227f     	str	xzr, [x19, #0x40]
  302fa8: f9401e60     	ldr	x0, [x19, #0x38]
  302fac: b4000080     	cbz	x0, 0x302fbc <__ZN3BEF19FaceBrowFaceUFilterC2Ev+0x1b0>
  302fb0: f9400008     	ldr	x8, [x0]
  302fb4: f9400508     	ldr	x8, [x8, #0x8]
  302fb8: d63f0100     	blr	x8
  302fbc: f9001e7f     	str	xzr, [x19, #0x38]
  302fc0: 39c07e68     	ldrsb	w8, [x19, #0x1f]
  302fc4: 37f800c8     	tbnz	w8, #0x1f, 0x302fdc <__ZN3BEF19FaceBrowFaceUFilterC2Ev+0x1d0>
  302fc8: aa1303e0     	mov	x0, x19
  302fcc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  302fd0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
  302fd4: a8c357f6     	ldp	x22, x21, [sp], #0x30
  302fd8: d65f03c0     	ret
  302fdc: f9400660     	ldr	x0, [x19, #0x8]
  302fe0: 949a8550     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  302fe4: aa1303e0     	mov	x0, x19
  302fe8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  302fec: a9414ff4     	ldp	x20, x19, [sp, #0x10]
  302ff0: a8c357f6     	ldp	x22, x21, [sp], #0x30
  302ff4: d65f03c0     	ret
  302ff8: 97f429e5     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
  302ffc: 97f429e4     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
