
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000300c64 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE>:
  300c64:      	stp	d9, d8, [sp, #-0x70]!
  300c68:      	stp	x28, x27, [sp, #0x10]
  300c6c:      	stp	x26, x25, [sp, #0x20]
  300c70:      	stp	x24, x23, [sp, #0x30]
  300c74:      	stp	x22, x21, [sp, #0x40]
  300c78:      	stp	x20, x19, [sp, #0x50]
  300c7c:      	stp	x29, x30, [sp, #0x60]
  300c80:      	add	x29, sp, #0x60
  300c84:      	sub	sp, sp, #0x210
  300c88:      	mov	x19, x2
  300c8c:      	mov	x24, x1
  300c90:      	mov	x20, x0
  300c94:      	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
  300c98:      	ldr	x8, [x8, #0x6a8]
  300c9c:      	ldr	x8, [x8]
  300ca0:      	stur	x8, [x29, #-0x70]
  300ca4:      	sub	x21, x29, #0xb0
  300ca8:      	sub	x0, x29, #0xb0
  300cac:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300cb0:      	add	x27, x21, #0x8
  300cb4:      	mov	x23, x27
  300cb8:      	mov	x0, x27
  300cbc:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300cc0:      	add	x0, x21, #0x10
  300cc4:      	mov	x23, x0
  300cc8:      	str	x0, [sp, #0x160]
  300ccc:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300cd0:      	sub	x22, x29, #0xb0
  300cd4:      	add	x0, x22, #0x18
  300cd8:      	mov	x23, x0
  300cdc:      	str	x0, [sp, #0x158]
  300ce0:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300ce4:      	add	x0, x22, #0x20
  300ce8:      	mov	x23, x0
  300cec:      	str	x0, [sp, #0x150]
  300cf0:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300cf4:      	sub	x22, x29, #0xb0
  300cf8:      	add	x0, x22, #0x28
  300cfc:      	mov	x23, x0
  300d00:      	str	x0, [sp, #0x148]
  300d04:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300d08:      	add	x0, x22, #0x30
  300d0c:      	mov	x23, x0
  300d10:      	str	x0, [sp, #0x140]
  300d14:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300d18:      	sub	x8, x29, #0xb0
  300d1c:      	add	x23, x8, #0x38
  300d20:      	mov	x0, x23
  300d24:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300d28:      	ldp	x8, x0, [x19]
  300d2c:      	sub	x10, x0, x8
  300d30:      	asr	x9, x10, #3
  300d34:      	cmp	x9, #0xf8
  300d38:      	b.hs	0x300d50 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xec>
  300d3c:      	mov	w8, #0xf8               ; =248
  300d40:      	sub	x1, x8, x9
  300d44:      	mov	x0, x19
  300d48:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  300d4c:      	b	0x300d78 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x114>
  300d50:      	cmp	x10, #0x7c0
  300d54:      	b.eq	0x300d78 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x114>
  300d58:      	add	x21, x8, #0x7c0
  300d5c:      	cmp	x0, x21
  300d60:      	b.eq	0x300d74 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x110>
  300d64:      	sub	x0, x0, #0x8
  300d68:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  300d6c:      	cmp	x0, x21
  300d70:      	b.ne	0x300d64 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x100>
  300d74:      	str	x21, [x19, #0x8]
  300d78:      	add	x1, x20, #0x14
  300d7c:      	ldr	x0, [x19]
  300d80:      	str	x1, [sp, #0x138]
  300d84:      	mov	w2, #0x350              ; =848
  300d88:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
  300d8c:      	ldr	s0, [x20, #0x184]
  300d90:      	ldr	s1, [x20, #0x188]
  300d94:      	sub	x0, x29, #0xb8
  300d98:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  300d9c:      	mov	x21, #0x0               ; =0
  300da0:      	adrp	x22, 0x36b5000 <__ZN13AmazingEngine9IFLayer2d36IF_LAYER2D_BLEND_VERTEX_SHADER_METALE+0x10>
  300da4:      	add	x22, x22, #0x648
  300da8:      	fmov	s8, #2.00000000
  300dac:      	fmov	s9, #3.00000000
  300db0:      	sub	x25, x29, #0xb0
  300db4:      	ldr	x8, [x22]
  300db8:      	ldrsw	x8, [x8, x21, lsl #2]
  300dbc:      	add	x8, x20, x8, lsl #3
  300dc0:      	ldp	s0, s1, [x8, #0x14]
  300dc4:      	sub	x0, x29, #0xd0
  300dc8:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  300dcc:      	ldp	s0, s1, [x29, #-0xd0]
  300dd0:      	ldp	s2, s3, [x29, #-0xb8]
  300dd4:      	fsub	s0, s0, s2
  300dd8:      	fsub	s1, s1, s3
  300ddc:      	sub	x0, x29, #0x100
  300de0:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  300de4:      	cmp	x21, #0x7
  300de8:      	fcsel	s1, s9, s8, eq
  300dec:      	ldp	s0, s2, [x29, #-0x100]
  300df0:      	fmul	s0, s1, s0
  300df4:      	fmul	s1, s1, s2
  300df8:      	sub	x0, x29, #0xe8
  300dfc:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  300e00:      	sub	x0, x29, #0x100
  300e04:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  300e08:      	ldur	d0, [x29, #-0xb8]
  300e0c:      	ldur	d1, [x29, #-0xe8]
  300e10:      	fadd.2s	v0, v0, v1
  300e14:      	str	d0, [x25, x21, lsl #3]
  300e18:      	sub	x0, x29, #0xe8
  300e1c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  300e20:      	sub	x0, x29, #0xd0
  300e24:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  300e28:      	add	x21, x21, #0x1
  300e2c:      	cmp	x21, #0x8
  300e30:      	b.ne	0x300db4 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x150>
  300e34:      	ldr	x8, [x19]
  300e38:      	ldp	q0, q1, [x29, #-0xb0]
  300e3c:      	stp	q0, q1, [x8, #0x350]
  300e40:      	ldp	q0, q1, [x29, #-0x90]
  300e44:      	stp	q0, q1, [x8, #0x370]
  300e48:      	cbz	x24, 0x301740 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xadc>
  300e4c:      	ldr	w8, [x24, #0x4]
  300e50:      	cmp	w8, #0x1
  300e54:      	b.lt	0x300ec0 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x25c>
  300e58:      	ldr	x8, [x19]
  300e5c:      	ldp	q0, q1, [x24, #0x170]
  300e60:      	ldr	q2, [x24, #0x190]
  300e64:      	stp	q1, q2, [x8, #0x3a0]
  300e68:      	str	q0, [x8, #0x390]
  300e6c:      	ldp	q0, q1, [x24, #0x1a0]
  300e70:      	ldr	q2, [x24, #0x1c0]
  300e74:      	ldr	x9, [x24, #0x1d0]
  300e78:      	str	x9, [x8, #0x3f0]
  300e7c:      	stp	q1, q2, [x8, #0x3d0]
  300e80:      	str	q0, [x8, #0x3c0]
  300e84:      	ldr	x8, [x19]
  300e88:      	add	x8, x8, #0x3f8
  300e8c:      	add	x9, x24, #0x1d8
  300e90:      	ldp	q0, q1, [x9]
  300e94:      	ldr	q2, [x9, #0x20]
  300e98:      	stp	q1, q2, [x8, #0x10]
  300e9c:      	str	q0, [x8]
  300ea0:      	ldp	q0, q1, [x9, #0x30]
  300ea4:      	ldr	q2, [x9, #0x50]
  300ea8:      	ldr	x9, [x9, #0x60]
  300eac:      	str	x9, [x8, #0x60]
  300eb0:      	stp	q1, q2, [x8, #0x40]
  300eb4:      	str	q0, [x8, #0x30]
  300eb8:      	mov	w20, #0x8c              ; =140
  300ebc:      	b	0x300ec4 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x260>
  300ec0:      	mov	w20, #0x72              ; =114
  300ec4:      	mov	w0, #0xb0               ; =176
  300ec8:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  300ecc:      	mov	x26, x0
  300ed0:      	str	w20, [sp, #0x16c]
  300ed4:      	str	x27, [sp, #0x130]
  300ed8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300edc:      	add	x20, x26, #0x8
  300ee0:      	mov	x27, x20
  300ee4:      	mov	x0, x20
  300ee8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300eec:      	add	x21, x26, #0x10
  300ef0:      	mov	x27, x21
  300ef4:      	mov	x0, x21
  300ef8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300efc:      	add	x22, x26, #0x18
  300f00:      	mov	x27, x22
  300f04:      	mov	x0, x22
  300f08:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f0c:      	add	x25, x26, #0x20
  300f10:      	mov	x27, x25
  300f14:      	mov	x0, x25
  300f18:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f1c:      	add	x0, x26, #0x28
  300f20:      	mov	x27, x0
  300f24:      	str	x0, [sp, #0x128]
  300f28:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f2c:      	add	x0, x26, #0x30
  300f30:      	mov	x27, x0
  300f34:      	str	x0, [sp, #0x120]
  300f38:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f3c:      	add	x0, x26, #0x38
  300f40:      	mov	x27, x0
  300f44:      	str	x0, [sp, #0x118]
  300f48:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f4c:      	add	x0, x26, #0x40
  300f50:      	mov	x27, x0
  300f54:      	str	x0, [sp, #0x110]
  300f58:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f5c:      	add	x0, x26, #0x48
  300f60:      	mov	x27, x0
  300f64:      	str	x0, [sp, #0x108]
  300f68:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f6c:      	add	x0, x26, #0x50
  300f70:      	mov	x27, x0
  300f74:      	str	x0, [sp, #0x100]
  300f78:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f7c:      	add	x0, x26, #0x58
  300f80:      	mov	x27, x0
  300f84:      	str	x0, [sp, #0xf8]
  300f88:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f8c:      	add	x0, x26, #0x60
  300f90:      	mov	x27, x0
  300f94:      	str	x0, [sp, #0xf0]
  300f98:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300f9c:      	add	x0, x26, #0x68
  300fa0:      	mov	x27, x0
  300fa4:      	str	x0, [sp, #0xe8]
  300fa8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300fac:      	add	x0, x26, #0x70
  300fb0:      	mov	x27, x0
  300fb4:      	str	x0, [sp, #0xe0]
  300fb8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300fbc:      	add	x0, x26, #0x78
  300fc0:      	mov	x27, x0
  300fc4:      	str	x0, [sp, #0xd8]
  300fc8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300fcc:      	add	x0, x26, #0x80
  300fd0:      	mov	x27, x0
  300fd4:      	str	x0, [sp, #0xd0]
  300fd8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300fdc:      	add	x0, x26, #0x88
  300fe0:      	mov	x27, x0
  300fe4:      	str	x0, [sp, #0xc8]
  300fe8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300fec:      	add	x0, x26, #0x90
  300ff0:      	mov	x27, x0
  300ff4:      	str	x0, [sp, #0xc0]
  300ff8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  300ffc:      	add	x0, x26, #0x98
  301000:      	mov	x27, x0
  301004:      	str	x0, [sp, #0xb8]
  301008:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  30100c:      	add	x0, x26, #0xa0
  301010:      	mov	x27, x0
  301014:      	str	x0, [sp, #0xb0]
  301018:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  30101c:      	add	x27, x26, #0xa8
  301020:      	mov	x0, x27
  301024:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301028:      	mov	w0, #0xb0               ; =176
  30102c:      	stp	x21, x20, [sp, #0xa0]
  301030:      	stp	x25, x22, [sp, #0x90]
  301034:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  301038:      	mov	x28, x0
  30103c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301040:      	add	x0, x28, #0x8
  301044:      	mov	x20, x0
  301048:      	str	x0, [sp, #0x88]
  30104c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301050:      	add	x0, x28, #0x10
  301054:      	mov	x20, x0
  301058:      	str	x0, [sp, #0x80]
  30105c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301060:      	add	x0, x28, #0x18
  301064:      	mov	x20, x0
  301068:      	str	x0, [sp, #0x78]
  30106c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301070:      	add	x0, x28, #0x20
  301074:      	mov	x20, x0
  301078:      	str	x0, [sp, #0x70]
  30107c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301080:      	add	x0, x28, #0x28
  301084:      	mov	x20, x0
  301088:      	str	x0, [sp, #0x68]
  30108c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301090:      	add	x0, x28, #0x30
  301094:      	mov	x20, x0
  301098:      	str	x0, [sp, #0x60]
  30109c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3010a0:      	add	x0, x28, #0x38
  3010a4:      	mov	x20, x0
  3010a8:      	str	x0, [sp, #0x58]
  3010ac:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3010b0:      	add	x0, x28, #0x40
  3010b4:      	mov	x20, x0
  3010b8:      	str	x0, [sp, #0x50]
  3010bc:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3010c0:      	add	x0, x28, #0x48
  3010c4:      	mov	x20, x0
  3010c8:      	str	x0, [sp, #0x48]
  3010cc:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3010d0:      	add	x0, x28, #0x50
  3010d4:      	mov	x20, x0
  3010d8:      	str	x0, [sp, #0x40]
  3010dc:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3010e0:      	add	x0, x28, #0x58
  3010e4:      	mov	x20, x0
  3010e8:      	str	x0, [sp, #0x38]
  3010ec:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3010f0:      	add	x0, x28, #0x60
  3010f4:      	mov	x20, x0
  3010f8:      	str	x0, [sp, #0x30]
  3010fc:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301100:      	add	x0, x28, #0x68
  301104:      	mov	x20, x0
  301108:      	str	x0, [sp, #0x28]
  30110c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301110:      	add	x0, x28, #0x70
  301114:      	mov	x20, x0
  301118:      	str	x0, [sp, #0x20]
  30111c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301120:      	add	x0, x28, #0x78
  301124:      	mov	x20, x0
  301128:      	str	x0, [sp, #0x18]
  30112c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301130:      	add	x0, x28, #0x80
  301134:      	mov	x20, x0
  301138:      	str	x0, [sp, #0x10]
  30113c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301140:      	add	x0, x28, #0x88
  301144:      	mov	x20, x0
  301148:      	str	x0, [sp, #0x8]
  30114c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301150:      	add	x22, x28, #0x90
  301154:      	mov	x20, x22
  301158:      	mov	x0, x22
  30115c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301160:      	add	x25, x28, #0x98
  301164:      	mov	x20, x25
  301168:      	mov	x0, x25
  30116c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301170:      	add	x21, x28, #0xa0
  301174:      	mov	x20, x21
  301178:      	mov	x0, x21
  30117c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  301180:      	add	x20, x28, #0xa8
  301184:      	mov	x0, x20
  301188:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  30118c:      	adrp	x8, 0x36b5000 <__ZN13AmazingEngine9IFLayer2d36IF_LAYER2D_BLEND_VERTEX_SHADER_METALE+0x10>
  301190:      	nop
  301194:      	ldr	x8, [x8, #0x630]
  301198:      	ldr	w10, [x8]
  30119c:      	add	x9, x24, #0x10
  3011a0:      	lsl	x11, x10, #3
  3011a4:      	ldr	d0, [x9, x11]
  3011a8:      	str	d0, [x26]
  3011ac:      	add	x10, x24, #0xc0
  3011b0:      	ldr	d0, [x10, x11]
  3011b4:      	str	d0, [x28]
  3011b8:      	ldr	w11, [x8, #0x4]
  3011bc:      	lsl	x11, x11, #3
  3011c0:      	ldr	d0, [x9, x11]
  3011c4:      	str	d0, [x26, #0x8]
  3011c8:      	ldr	d0, [x10, x11]
  3011cc:      	str	d0, [x28, #0x8]
  3011d0:      	ldr	w11, [x8, #0x8]
  3011d4:      	lsl	x11, x11, #3
  3011d8:      	ldr	d0, [x9, x11]
  3011dc:      	ldr	d1, [x10, x11]
  3011e0:      	str	d0, [x26, #0x10]
  3011e4:      	str	d1, [x28, #0x10]
  3011e8:      	ldr	w11, [x8, #0xc]
  3011ec:      	lsl	x11, x11, #3
  3011f0:      	ldr	d0, [x9, x11]
  3011f4:      	str	d0, [x26, #0x18]
  3011f8:      	ldr	d0, [x10, x11]
  3011fc:      	str	d0, [x28, #0x18]
  301200:      	ldr	w11, [x8, #0x10]
  301204:      	lsl	x11, x11, #3
  301208:      	ldr	d0, [x9, x11]
  30120c:      	str	d0, [x26, #0x20]
  301210:      	ldr	d0, [x10, x11]
  301214:      	str	d0, [x28, #0x20]
  301218:      	ldr	w11, [x8, #0x14]
  30121c:      	lsl	x11, x11, #3
  301220:      	ldr	d0, [x9, x11]
  301224:      	ldr	d1, [x10, x11]
  301228:      	str	d0, [x26, #0x28]
  30122c:      	str	d1, [x28, #0x28]
  301230:      	ldr	w11, [x8, #0x18]
  301234:      	lsl	x11, x11, #3
  301238:      	ldr	d0, [x9, x11]
  30123c:      	str	d0, [x26, #0x30]
  301240:      	ldr	d0, [x10, x11]
  301244:      	str	d0, [x28, #0x30]
  301248:      	ldr	w11, [x8, #0x1c]
  30124c:      	lsl	x11, x11, #3
  301250:      	ldr	d0, [x9, x11]
  301254:      	str	d0, [x26, #0x38]
  301258:      	ldr	d0, [x10, x11]
  30125c:      	str	d0, [x28, #0x38]
  301260:      	ldr	w11, [x8, #0x20]
  301264:      	lsl	x11, x11, #3
  301268:      	ldr	d0, [x9, x11]
  30126c:      	ldr	d1, [x10, x11]
  301270:      	str	d0, [x26, #0x40]
  301274:      	str	d1, [x28, #0x40]
  301278:      	ldr	w11, [x8, #0x24]
  30127c:      	lsl	x11, x11, #3
  301280:      	ldr	d0, [x9, x11]
  301284:      	str	d0, [x26, #0x48]
  301288:      	ldr	d0, [x10, x11]
  30128c:      	str	d0, [x28, #0x48]
  301290:      	ldr	w11, [x8, #0x28]
  301294:      	lsl	x11, x11, #3
  301298:      	ldr	d0, [x9, x11]
  30129c:      	str	d0, [x26, #0x50]
  3012a0:      	ldr	d0, [x10, x11]
  3012a4:      	str	d0, [x28, #0x50]
  3012a8:      	ldr	w11, [x8, #0x2c]
  3012ac:      	lsl	x11, x11, #3
  3012b0:      	ldr	d0, [x9, x11]
  3012b4:      	ldr	d1, [x10, x11]
  3012b8:      	str	d0, [x26, #0x58]
  3012bc:      	str	d1, [x28, #0x58]
  3012c0:      	ldr	w11, [x8, #0x30]
  3012c4:      	lsl	x11, x11, #3
  3012c8:      	ldr	d0, [x9, x11]
  3012cc:      	str	d0, [x26, #0x60]
  3012d0:      	ldr	d0, [x10, x11]
  3012d4:      	str	d0, [x28, #0x60]
  3012d8:      	ldr	w11, [x8, #0x34]
  3012dc:      	lsl	x11, x11, #3
  3012e0:      	ldr	d0, [x9, x11]
  3012e4:      	str	d0, [x26, #0x68]
  3012e8:      	ldr	d0, [x10, x11]
  3012ec:      	str	d0, [x28, #0x68]
  3012f0:      	ldr	w11, [x8, #0x38]
  3012f4:      	lsl	x11, x11, #3
  3012f8:      	ldr	d0, [x9, x11]
  3012fc:      	ldr	d1, [x10, x11]
  301300:      	str	d0, [x26, #0x70]
  301304:      	str	d1, [x28, #0x70]
  301308:      	ldr	w11, [x8, #0x3c]
  30130c:      	lsl	x11, x11, #3
  301310:      	ldr	d0, [x9, x11]
  301314:      	str	d0, [x26, #0x78]
  301318:      	ldr	d0, [x10, x11]
  30131c:      	str	d0, [x28, #0x78]
  301320:      	ldr	w11, [x8, #0x40]
  301324:      	lsl	x11, x11, #3
  301328:      	ldr	d0, [x9, x11]
  30132c:      	str	d0, [x26, #0x80]
  301330:      	ldr	d0, [x10, x11]
  301334:      	str	d0, [x28, #0x80]
  301338:      	ldr	w11, [x8, #0x44]
  30133c:      	lsl	x11, x11, #3
  301340:      	ldr	d0, [x9, x11]
  301344:      	ldr	d1, [x10, x11]
  301348:      	str	d0, [x26, #0x88]
  30134c:      	str	d1, [x28, #0x88]
  301350:      	ldr	w11, [x8, #0x48]
  301354:      	lsl	x11, x11, #3
  301358:      	ldr	d0, [x9, x11]
  30135c:      	str	d0, [x26, #0x90]
  301360:      	ldr	d0, [x10, x11]
  301364:      	str	d0, [x28, #0x90]
  301368:      	ldr	w11, [x8, #0x4c]
  30136c:      	lsl	x11, x11, #3
  301370:      	ldr	d0, [x9, x11]
  301374:      	str	d0, [x26, #0x98]
  301378:      	ldr	d0, [x10, x11]
  30137c:      	str	d0, [x28, #0x98]
  301380:      	ldr	w11, [x8, #0x50]
  301384:      	lsl	x11, x11, #3
  301388:      	ldr	d0, [x9, x11]
  30138c:      	ldr	d1, [x10, x11]
  301390:      	str	d0, [x26, #0xa0]
  301394:      	str	d1, [x28, #0xa0]
  301398:      	ldr	w8, [x8, #0x54]
  30139c:      	lsl	x8, x8, #3
  3013a0:      	ldr	d0, [x9, x8]
  3013a4:      	str	d0, [x26, #0xa8]
  3013a8:      	ldr	d0, [x10, x8]
  3013ac:      	str	d0, [x28, #0xa8]
  3013b0:      	ldr	w8, [x24]
  3013b4:      	cmp	w8, #0x0
  3013b8:      	b.le	0x30143c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x7d8>
  3013bc:      	ldr	x8, [x19]
  3013c0:      	ldr	w10, [sp, #0x16c]
  3013c4:      	add	x8, x8, w10, uxtw #3
  3013c8:      	ldp	q0, q1, [x26]
  3013cc:      	ldr	q2, [x26, #0x20]
  3013d0:      	stp	q1, q2, [x8, #0x10]
  3013d4:      	str	q0, [x8]
  3013d8:      	ldp	q0, q1, [x26, #0x30]
  3013dc:      	ldp	q2, q3, [x26, #0x50]
  3013e0:      	stp	q2, q3, [x8, #0x50]
  3013e4:      	stp	q0, q1, [x8, #0x30]
  3013e8:      	ldp	q0, q1, [x26, #0x70]
  3013ec:      	ldp	q2, q3, [x26, #0x90]
  3013f0:      	stp	q2, q3, [x8, #0x90]
  3013f4:      	stp	q0, q1, [x8, #0x70]
  3013f8:      	add	w8, w10, #0x16
  3013fc:      	ldr	x9, [x19]
  301400:      	add	x8, x9, w8, uxtw #3
  301404:      	ldp	q0, q1, [x28, #0x50]
  301408:      	ldp	q3, q2, [x28, #0x30]
  30140c:      	stp	q0, q1, [x8, #0x50]
  301410:      	stp	q3, q2, [x8, #0x30]
  301414:      	ldp	q0, q1, [x28, #0x70]
  301418:      	ldp	q2, q3, [x28, #0x90]
  30141c:      	stp	q2, q3, [x8, #0x90]
  301420:      	stp	q0, q1, [x8, #0x70]
  301424:      	ldp	q0, q1, [x28]
  301428:      	ldr	q2, [x28, #0x20]
  30142c:      	stp	q1, q2, [x8, #0x10]
  301430:      	str	q0, [x8]
  301434:      	add	w10, w10, #0x2c
  301438:      	str	w10, [sp, #0x16c]
  30143c:      	ldr	w8, [x24, #0x8]
  301440:      	cmp	w8, #0x1
  301444:      	b.lt	0x301510 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x8ac>
  301448:      	stp	xzr, xzr, [x29, #-0xd0]
  30144c:      	stur	xzr, [x29, #-0xc0]
  301450:      	sub	x0, x29, #0xd0
  301454:      	mov	w1, #0x6a               ; =106
  301458:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  30145c:      	ldur	x0, [x29, #-0xd0]
  301460:      	ldr	x1, [sp, #0x138]
  301464:      	mov	w2, #0x350              ; =848
  301468:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
  30146c:      	sub	x8, x29, #0xe8
  301470:      	sub	x0, x29, #0xd0
  301474:      	bl	0x3641e8 <__ZN3BEF8MakeupV216cvtMouth106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE>
  301478:      	stp	xzr, xzr, [x29, #-0x100]
  30147c:      	stur	xzr, [x29, #-0xf0]
  301480:      	sub	x8, x29, #0x100
  301484:      	add	x24, x8, #0x8
  301488:      	sub	x0, x29, #0x100
  30148c:      	mov	w1, #0x40               ; =64
  301490:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  301494:      	mov	x8, #0x0                ; =0
  301498:      	ldur	x24, [x29, #-0x100]
  30149c:      	adrp	x9, 0x36b5000 <__ZN13AmazingEngine9IFLayer2d36IF_LAYER2D_BLEND_VERTEX_SHADER_METALE+0x10>
  3014a0:      	nop
  3014a4:      	ldr	x9, [x9, #0x618]
  3014a8:      	ldur	x10, [x29, #-0xe8]
  3014ac:      	ldr	w11, [x9, x8, lsl #2]
  3014b0:      	ldr	d0, [x10, x11, lsl #3]
  3014b4:      	str	d0, [x24, x8, lsl #3]
  3014b8:      	add	x8, x8, #0x1
  3014bc:      	cmp	x8, #0x40
  3014c0:      	b.ne	0x3014ac <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x848>
  3014c4:      	ldr	x8, [x19]
  3014c8:      	ldr	w9, [sp, #0x16c]
  3014cc:      	add	x0, x8, w9, uxtw #3
  3014d0:      	mov	x1, x24
  3014d4:      	mov	w2, #0x200              ; =512
  3014d8:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
  3014dc:      	ldur	x0, [x29, #-0xf8]
  3014e0:      	cmp	x0, x24
  3014e4:      	b.eq	0x301558 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x8f4>
  3014e8:      	sub	x0, x0, #0x8
  3014ec:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3014f0:      	cmp	x0, x24
  3014f4:      	b.ne	0x3014e8 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x884>
  3014f8:      	ldur	x0, [x29, #-0x100]
  3014fc:      	stur	x24, [x29, #-0xf8]
  301500:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301504:      	ldur	x19, [x29, #-0xe8]
  301508:      	cbnz	x19, 0x30156c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x908>
  30150c:      	b	0x30159c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x938>
  301510:      	sub	x8, x29, #0xd0
  301514:      	mov	x0, x19
  301518:      	bl	0x3641e8 <__ZN3BEF8MakeupV216cvtMouth106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE>
  30151c:      	ldr	x8, [x19]
  301520:      	ldr	w9, [sp, #0x16c]
  301524:      	add	x0, x8, w9, uxtw #3
  301528:      	ldur	x19, [x29, #-0xd0]
  30152c:      	mov	x1, x19
  301530:      	mov	w2, #0x200              ; =512
  301534:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
  301538:      	ldur	x0, [x29, #-0xc8]
  30153c:      	cmp	x0, x19
  301540:      	b.eq	0x3015c8 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x964>
  301544:      	sub	x0, x0, #0x8
  301548:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30154c:      	cmp	x0, x19
  301550:      	b.ne	0x301544 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x8e0>
  301554:      	b	0x3015c0 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x95c>
  301558:      	mov	x0, x24
  30155c:      	stur	x24, [x29, #-0xf8]
  301560:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301564:      	ldur	x19, [x29, #-0xe8]
  301568:      	cbz	x19, 0x30159c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x938>
  30156c:      	ldur	x0, [x29, #-0xe0]
  301570:      	cmp	x0, x19
  301574:      	b.eq	0x301590 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x92c>
  301578:      	sub	x0, x0, #0x8
  30157c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301580:      	cmp	x0, x19
  301584:      	b.ne	0x301578 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x914>
  301588:      	ldur	x0, [x29, #-0xe8]
  30158c:      	b	0x301594 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x930>
  301590:      	mov	x0, x19
  301594:      	stur	x19, [x29, #-0xe0]
  301598:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  30159c:      	ldur	x19, [x29, #-0xd0]
  3015a0:      	cbz	x19, 0x3015d4 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x970>
  3015a4:      	ldur	x0, [x29, #-0xc8]
  3015a8:      	cmp	x0, x19
  3015ac:      	b.eq	0x3015c8 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x964>
  3015b0:      	sub	x0, x0, #0x8
  3015b4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3015b8:      	cmp	x0, x19
  3015bc:      	b.ne	0x3015b0 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x94c>
  3015c0:      	ldur	x0, [x29, #-0xd0]
  3015c4:      	b	0x3015cc <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0x968>
  3015c8:      	mov	x0, x19
  3015cc:      	stur	x19, [x29, #-0xc8]
  3015d0:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3015d4:      	mov	x0, x20
  3015d8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3015dc:      	mov	x0, x21
  3015e0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3015e4:      	mov	x0, x25
  3015e8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3015ec:      	mov	x0, x22
  3015f0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3015f4:      	ldr	x0, [sp, #0x8]
  3015f8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3015fc:      	ldr	x0, [sp, #0x10]
  301600:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301604:      	ldr	x0, [sp, #0x18]
  301608:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30160c:      	ldr	x0, [sp, #0x20]
  301610:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301614:      	ldr	x0, [sp, #0x28]
  301618:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30161c:      	ldr	x0, [sp, #0x30]
  301620:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301624:      	ldr	x0, [sp, #0x38]
  301628:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30162c:      	ldr	x0, [sp, #0x40]
  301630:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301634:      	ldr	x0, [sp, #0x48]
  301638:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30163c:      	ldr	x0, [sp, #0x50]
  301640:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301644:      	ldr	x0, [sp, #0x58]
  301648:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30164c:      	ldr	x0, [sp, #0x60]
  301650:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301654:      	ldr	x0, [sp, #0x68]
  301658:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30165c:      	ldr	x0, [sp, #0x70]
  301660:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301664:      	ldr	x0, [sp, #0x78]
  301668:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30166c:      	ldr	x0, [sp, #0x80]
  301670:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301674:      	ldr	x0, [sp, #0x88]
  301678:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30167c:      	mov	x0, x28
  301680:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301684:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301688:      	mov	x0, x27
  30168c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301690:      	ldr	x0, [sp, #0xb0]
  301694:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301698:      	ldr	x0, [sp, #0xb8]
  30169c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016a0:      	ldr	x0, [sp, #0xc0]
  3016a4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016a8:      	ldr	x0, [sp, #0xc8]
  3016ac:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016b0:      	ldr	x0, [sp, #0xd0]
  3016b4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016b8:      	ldr	x0, [sp, #0xd8]
  3016bc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016c0:      	ldr	x0, [sp, #0xe0]
  3016c4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016c8:      	ldr	x0, [sp, #0xe8]
  3016cc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016d0:      	ldr	x0, [sp, #0xf0]
  3016d4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016d8:      	ldr	x0, [sp, #0xf8]
  3016dc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016e0:      	ldr	x0, [sp, #0x100]
  3016e4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016e8:      	ldr	x0, [sp, #0x108]
  3016ec:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016f0:      	ldr	x0, [sp, #0x110]
  3016f4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3016f8:      	ldr	x0, [sp, #0x118]
  3016fc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301700:      	ldr	x0, [sp, #0x120]
  301704:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301708:      	ldr	x0, [sp, #0x128]
  30170c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301710:      	ldr	x0, [sp, #0x90]
  301714:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301718:      	ldr	x0, [sp, #0x98]
  30171c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301720:      	ldr	x0, [sp, #0xa0]
  301724:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301728:      	ldr	x0, [sp, #0xa8]
  30172c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301730:      	mov	x0, x26
  301734:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301738:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  30173c:      	ldr	x27, [sp, #0x130]
  301740:      	sub	x0, x29, #0xb8
  301744:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301748:      	mov	x0, x23
  30174c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301750:      	ldr	x0, [sp, #0x140]
  301754:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301758:      	ldr	x0, [sp, #0x148]
  30175c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301760:      	ldr	x0, [sp, #0x150]
  301764:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301768:      	ldr	x0, [sp, #0x158]
  30176c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301770:      	ldr	x0, [sp, #0x160]
  301774:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301778:      	mov	x0, x27
  30177c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301780:      	sub	x0, x29, #0xb0
  301784:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301788:      	ldur	x8, [x29, #-0x70]
  30178c:      	adrp	x9, 0x34bc000 <dyld_stub_binder+0x34bc000>
  301790:      	ldr	x9, [x9, #0x6a8]
  301794:      	ldr	x9, [x9]
  301798:      	cmp	x9, x8
  30179c:      	b.ne	0x3017c4 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xb60>
  3017a0:      	add	sp, sp, #0x210
  3017a4:      	ldp	x29, x30, [sp, #0x60]
  3017a8:      	ldp	x20, x19, [sp, #0x50]
  3017ac:      	ldp	x22, x21, [sp, #0x40]
  3017b0:      	ldp	x24, x23, [sp, #0x30]
  3017b4:      	ldp	x26, x25, [sp, #0x20]
  3017b8:      	ldp	x28, x27, [sp, #0x10]
  3017bc:      	ldp	d9, d8, [sp], #0x70
  3017c0:      	ret
  3017c4:      	bl	0x29a4670 <dyld_stub_binder+0x29a4670>
  3017c8:      	mov	x19, x0
  3017cc:      	b	0x301864 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xc00>
  3017d0:      	mov	x19, x0
  3017d4:      	ldur	x0, [x29, #-0x100]
  3017d8:      	cbz	x0, 0x3017e8 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xb84>
  3017dc:      	sub	x2, x29, #0x100
  3017e0:      	mov	x1, x24
  3017e4:      	bl	0x28f9cbc <__ZN5smash15CvtInputAsFloatEPhPfif+0x17fc8>
  3017e8:      	ldur	x24, [x29, #-0xe8]
  3017ec:      	cbz	x24, 0x30182c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xbc8>
  3017f0:      	ldur	x0, [x29, #-0xe0]
  3017f4:      	mov	x8, x24
  3017f8:      	cmp	x0, x24
  3017fc:      	b.eq	0x301814 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xbb0>
  301800:      	sub	x0, x0, #0x8
  301804:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301808:      	cmp	x0, x24
  30180c:      	b.ne	0x301800 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xb9c>
  301810:      	ldur	x8, [x29, #-0xe8]
  301814:      	stur	x24, [x29, #-0xe0]
  301818:      	mov	x0, x8
  30181c:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301820:      	b	0x30182c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xbc8>
  301824:      	b	0x301828 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xbc4>
  301828:      	mov	x19, x0
  30182c:      	ldur	x24, [x29, #-0xd0]
  301830:      	cbz	x24, 0x301864 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xc00>
  301834:      	ldur	x0, [x29, #-0xc8]
  301838:      	mov	x8, x24
  30183c:      	cmp	x0, x24
  301840:      	b.eq	0x301858 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xbf4>
  301844:      	sub	x0, x0, #0x8
  301848:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30184c:      	cmp	x0, x24
  301850:      	b.ne	0x301844 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xbe0>
  301854:      	ldur	x8, [x29, #-0xd0]
  301858:      	stur	x24, [x29, #-0xc8]
  30185c:      	mov	x0, x8
  301860:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301864:      	mov	x0, x20
  301868:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30186c:      	mov	x0, x21
  301870:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301874:      	mov	x0, x25
  301878:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30187c:      	mov	x0, x22
  301880:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301884:      	ldr	x0, [sp, #0x8]
  301888:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30188c:      	ldr	x0, [sp, #0x10]
  301890:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301894:      	ldr	x0, [sp, #0x18]
  301898:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30189c:      	ldr	x0, [sp, #0x20]
  3018a0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018a4:      	ldr	x0, [sp, #0x28]
  3018a8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018ac:      	ldr	x0, [sp, #0x30]
  3018b0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018b4:      	ldr	x0, [sp, #0x38]
  3018b8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018bc:      	ldr	x0, [sp, #0x40]
  3018c0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018c4:      	ldr	x0, [sp, #0x48]
  3018c8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018cc:      	ldr	x0, [sp, #0x50]
  3018d0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018d4:      	ldr	x0, [sp, #0x58]
  3018d8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018dc:      	ldr	x0, [sp, #0x60]
  3018e0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018e4:      	ldr	x0, [sp, #0x68]
  3018e8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018ec:      	ldr	x0, [sp, #0x70]
  3018f0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018f4:      	ldr	x0, [sp, #0x78]
  3018f8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3018fc:      	ldr	x0, [sp, #0x80]
  301900:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301904:      	ldr	x0, [sp, #0x88]
  301908:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  30190c:      	mov	x0, x28
  301910:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301914:      	b	0x30197c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xd18>
  301918:      	mov	x19, x0
  30191c:      	b	0x301a88 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe24>
  301920:      	mov	x19, x0
  301924:      	b	0x301978 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xd14>
  301928:      	mov	x19, x0
  30192c:      	b	0x301980 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xd1c>
  301930:      	mov	x19, x0
  301934:      	b	0x301a4c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xde8>
  301938:      	b	0x301a7c <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe18>
  30193c:      	mov	x19, x0
  301940:      	b	0x301a88 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe24>
  301944:      	mov	x19, x0
  301948:      	sub	x23, x23, #0x8
  30194c:      	mov	x0, x23
  301950:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301954:      	cmp	x23, x21
  301958:      	b.ne	0x301948 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xce4>
  30195c:      	b	0x301ac8 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe64>
  301960:      	mov	x19, x0
  301964:      	sub	x20, x20, #0x8
  301968:      	mov	x0, x20
  30196c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301970:      	cmp	x20, x28
  301974:      	b.ne	0x301964 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xd00>
  301978:      	mov	x0, x28
  30197c:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301980:      	mov	x0, x27
  301984:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301988:      	ldr	x0, [sp, #0xb0]
  30198c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301990:      	ldr	x0, [sp, #0xb8]
  301994:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301998:      	ldr	x0, [sp, #0xc0]
  30199c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019a0:      	ldr	x0, [sp, #0xc8]
  3019a4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019a8:      	ldr	x0, [sp, #0xd0]
  3019ac:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019b0:      	ldr	x0, [sp, #0xd8]
  3019b4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019b8:      	ldr	x0, [sp, #0xe0]
  3019bc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019c0:      	ldr	x0, [sp, #0xe8]
  3019c4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019c8:      	ldr	x0, [sp, #0xf0]
  3019cc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019d0:      	ldr	x0, [sp, #0xf8]
  3019d4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019d8:      	ldr	x0, [sp, #0x100]
  3019dc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019e0:      	ldr	x0, [sp, #0x108]
  3019e4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019e8:      	ldr	x0, [sp, #0x110]
  3019ec:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019f0:      	ldr	x0, [sp, #0x118]
  3019f4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3019f8:      	ldr	x0, [sp, #0x120]
  3019fc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a00:      	ldr	x0, [sp, #0x128]
  301a04:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a08:      	ldr	x0, [sp, #0x90]
  301a0c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a10:      	ldr	x0, [sp, #0x98]
  301a14:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a18:      	ldr	x0, [sp, #0xa0]
  301a1c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a20:      	ldr	x0, [sp, #0xa8]
  301a24:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a28:      	mov	x0, x26
  301a2c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a30:      	b	0x301a50 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xdec>
  301a34:      	mov	x19, x0
  301a38:      	sub	x27, x27, #0x8
  301a3c:      	mov	x0, x27
  301a40:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a44:      	cmp	x27, x26
  301a48:      	b.ne	0x301a38 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xdd4>
  301a4c:      	mov	x0, x26
  301a50:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  301a54:      	ldr	x27, [sp, #0x130]
  301a58:      	b	0x301a80 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe1c>
  301a5c:      	mov	x19, x0
  301a60:      	sub	x0, x29, #0x100
  301a64:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a68:      	b	0x301a70 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe0c>
  301a6c:      	mov	x19, x0
  301a70:      	sub	x0, x29, #0xd0
  301a74:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a78:      	b	0x301a80 <__ZN3BEF15MakeupAlgorithm17buildFacePoint248EP15bef_face_106_stP19bef_face_ext_info_tRNSt3__16vectorIN3BRC4Vec2ENS5_9allocatorIS8_EEEE+0xe1c>
  301a7c:      	mov	x19, x0
  301a80:      	sub	x0, x29, #0xb8
  301a84:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a88:      	mov	x0, x23
  301a8c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a90:      	ldr	x0, [sp, #0x140]
  301a94:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301a98:      	ldr	x0, [sp, #0x148]
  301a9c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301aa0:      	ldr	x0, [sp, #0x150]
  301aa4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301aa8:      	ldr	x0, [sp, #0x158]
  301aac:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301ab0:      	ldr	x0, [sp, #0x160]
  301ab4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301ab8:      	mov	x0, x27
  301abc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301ac0:      	sub	x0, x29, #0xb0
  301ac4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  301ac8:      	mov	x0, x19
  301acc:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

0000000000301ad0 <__ZN3BEF15MakeupAlgorithm12getFace248UVERNSt3__16vectorIfNS1_9allocatorIfEEEE>:
  301ad0:      	ldr	x0, [x0]
  301ad4:      	adrp	x8, 0x36b5000 <__ZN13AmazingEngine9IFLayer2d36IF_LAYER2D_BLEND_VERTEX_SHADER_METALE+0x10>
  301ad8:      	nop
  301adc:      	ldr	x1, [x8, #0x6a8]
  301ae0:      	mov	w2, #0x7c0              ; =1984
  301ae4:      	b	0x29a5714 <dyld_stub_binder+0x29a5714>

0000000000301ae8 <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE>:
  301ae8:      	sub	sp, sp, #0x50
  301aec:      	stp	x22, x21, [sp, #0x20]
  301af0:      	stp	x20, x19, [sp, #0x30]
  301af4:      	stp	x29, x30, [sp, #0x40]
  301af8:      	add	x29, sp, #0x40
  301afc:      	mov	x19, x1
  301b00:      	ldr	x20, [x0]
  301b04:      	ldr	s0, [x20, #0x688]
  301b08:      	ldr	s1, [x20, #0x68c]
  301b0c:      	add	x0, sp, #0x18
  301b10:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  301b14:      	ldr	s0, [x20, #0x708]
  301b18:      	ldr	s1, [x20, #0x70c]
  301b1c:      	add	x0, sp, #0x10
  301b20:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  301b24:      	ldr	s0, [x20, #0x600]
  301b28:      	ldr	s1, [x20, #0x604]
  301b2c:      	add	x0, sp, #0x8
  301b30:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  301b34:      	ldr	s0, [x20, #0x780]
  301b38:      	ldr	s1, [x20, #0x784]
  301b3c:      	mov	x0, sp
  301b40:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  301b44:      	ldp	s0, s1, [sp, #0x18]
  301b48:      	ldp	s2, s3, [sp, #0x10]
  301b4c:      	fsub	s4, s0, s2
  301b50:      	fmul	s4, s4, s4
  301b54:      	fsub	s5, s1, s3
  301b58:      	fmul	s5, s5, s5
  301b5c:      	fadd	s4, s4, s5
  301b60:      	ldp	s5, s6, [sp]
  301b64:      	fsub	s5, s2, s5
  301b68:      	fsqrt	s2, s4
  301b6c:      	fmul	s4, s5, s5
  301b70:      	fsub	s3, s3, s6
  301b74:      	fmul	s3, s3, s3
  301b78:      	fadd	s3, s4, s3
  301b7c:      	fsqrt	s3, s3
  301b80:      	fadd	s4, s3, s3
  301b84:      	fmov	s3, #3.00000000
  301b88:      	fdiv	s4, s4, s3
  301b8c:      	fcmp	s2, s4
  301b90:      	b.gt	0x301bc4 <__ZN3BEF15MakeupAlgorithm12getFaceIndexERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERNS2_ItNS5_ItEEEE+0xdc>
  301b94:      	ldp	s4, s5, [sp, #0x8]
  301b98:      	fsub	s0, s0, s4
  301b9c:      	fmul	s0, s0, s0
  301ba0:      	fsub	s1, s1, s5
  301ba4:      	fmul	s1, s1, s1
  301ba8:      	fadd	s0, s0, s1
  301bac:      	fsqrt	s0, s0
  301bb0:      	fmul	s0, s0, s3
  301bb4:      	fmov	s1, #0.25000000
  301bb8:      	fmul	s0, s0, s1
  301bbc:      	fcmp	s2, s0
