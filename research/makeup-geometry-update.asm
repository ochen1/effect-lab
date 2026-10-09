
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

000000000036fa08 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE>:
  36fa08:      	sub	sp, sp, #0x140
  36fa0c:      	stp	d9, d8, [sp, #0xd0]
  36fa10:      	stp	x28, x27, [sp, #0xe0]
  36fa14:      	stp	x26, x25, [sp, #0xf0]
  36fa18:      	stp	x24, x23, [sp, #0x100]
  36fa1c:      	stp	x22, x21, [sp, #0x110]
  36fa20:      	stp	x20, x19, [sp, #0x120]
  36fa24:      	stp	x29, x30, [sp, #0x130]
  36fa28:      	add	x29, sp, #0x130
  36fa2c:      	mov	x19, x6
  36fa30:      	mov	x22, x1
  36fa34:      	mov	x20, x0
  36fa38:      	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
  36fa3c:      	ldr	x8, [x8, #0x6a8]
  36fa40:      	ldr	x8, [x8]
  36fa44:      	stur	x8, [x29, #-0x70]
  36fa48:      	stp	w2, w3, [x0, #0x8]
  36fa4c:      	str	x6, [x0, #0x20]
  36fa50:      	ldr	w8, [x1, #0x51c]
  36fa54:      	str	w8, [x0, #0x28]
  36fa58:      	stp	w4, w5, [x0, #0x10]
  36fa5c:      	add	x21, sp, #0x80
  36fa60:      	add	x0, sp, #0x80
  36fa64:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  36fa68:      	add	x24, x21, #0x8
  36fa6c:      	mov	x25, x24
  36fa70:      	mov	x0, x24
  36fa74:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  36fa78:      	add	x0, x21, #0x10
  36fa7c:      	mov	x25, x0
  36fa80:      	str	x0, [sp, #0x28]
  36fa84:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  36fa88:      	add	x23, sp, #0x80
  36fa8c:      	add	x0, x23, #0x18
  36fa90:      	mov	x25, x0
  36fa94:      	str	x0, [sp, #0x20]
  36fa98:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  36fa9c:      	add	x0, x23, #0x20
  36faa0:      	mov	x25, x0
  36faa4:      	str	x0, [sp, #0x18]
  36faa8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  36faac:      	add	x23, sp, #0x80
  36fab0:      	add	x26, x23, #0x28
  36fab4:      	mov	x25, x26
  36fab8:      	mov	x0, x26
  36fabc:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  36fac0:      	add	x27, x23, #0x30
  36fac4:      	mov	x25, x27
  36fac8:      	mov	x0, x27
  36facc:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  36fad0:      	add	x8, sp, #0x80
  36fad4:      	add	x25, x8, #0x38
  36fad8:      	mov	x0, x25
  36fadc:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  36fae0:      	add	x28, x20, #0x150
  36fae4:      	ldp	x8, x0, [x20, #0x150]
  36fae8:      	sub	x10, x0, x8
  36faec:      	asr	x9, x10, #3
  36faf0:      	cmp	x9, #0xf8
  36faf4:      	stp	x26, x24, [sp, #0x8]
  36faf8:      	b.hs	0x36fb10 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x108>
  36fafc:      	mov	w8, #0xf8               ; =248
  36fb00:      	sub	x1, x8, x9
  36fb04:      	mov	x0, x28
  36fb08:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  36fb0c:      	b	0x36fb38 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x130>
  36fb10:      	cmp	x10, #0x7c0
  36fb14:      	b.eq	0x36fb38 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x130>
  36fb18:      	add	x21, x8, #0x7c0
  36fb1c:      	cmp	x0, x21
  36fb20:      	b.eq	0x36fb34 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x12c>
  36fb24:      	sub	x0, x0, #0x8
  36fb28:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  36fb2c:      	cmp	x0, x21
  36fb30:      	b.ne	0x36fb24 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x11c>
  36fb34:      	str	x21, [x20, #0x158]
  36fb38:      	add	x21, x22, #0x14
  36fb3c:      	ldr	x0, [x28]
  36fb40:      	mov	x1, x21
  36fb44:      	mov	w2, #0x350              ; =848
  36fb48:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
  36fb4c:      	ldr	s0, [x22, #0x184]
  36fb50:      	ldr	s1, [x22, #0x188]
  36fb54:      	add	x0, sp, #0x78
  36fb58:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  36fb5c:      	mov	x23, #0x0               ; =0
  36fb60:      	adrp	x24, 0x36b5000 <__ZN13AmazingEngine9IFLayer2d36IF_LAYER2D_BLEND_VERTEX_SHADER_METALE+0x10>
  36fb64:      	add	x24, x24, #0x648
  36fb68:      	fmov	s8, #2.00000000
  36fb6c:      	fmov	s9, #3.00000000
  36fb70:      	add	x26, sp, #0x80
  36fb74:      	ldr	x8, [x24]
  36fb78:      	ldrsw	x8, [x8, x23, lsl #2]
  36fb7c:      	add	x8, x22, x8, lsl #3
  36fb80:      	ldp	s0, s1, [x8, #0x14]
  36fb84:      	add	x0, sp, #0x60
  36fb88:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  36fb8c:      	ldp	s0, s1, [sp, #0x60]
  36fb90:      	ldp	s2, s3, [sp, #0x78]
  36fb94:      	fsub	s0, s0, s2
  36fb98:      	fsub	s1, s1, s3
  36fb9c:      	add	x0, sp, #0x30
  36fba0:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  36fba4:      	cmp	x23, #0x7
  36fba8:      	fcsel	s1, s9, s8, eq
  36fbac:      	ldp	s0, s2, [sp, #0x30]
  36fbb0:      	fmul	s0, s1, s0
  36fbb4:      	fmul	s1, s1, s2
  36fbb8:      	add	x0, sp, #0x48
  36fbbc:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  36fbc0:      	add	x0, sp, #0x30
  36fbc4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  36fbc8:      	ldr	d0, [sp, #0x78]
  36fbcc:      	ldr	d1, [sp, #0x48]
  36fbd0:      	fadd.2s	v0, v0, v1
  36fbd4:      	str	d0, [x26, x23, lsl #3]
  36fbd8:      	add	x0, sp, #0x48
  36fbdc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  36fbe0:      	add	x0, sp, #0x60
  36fbe4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  36fbe8:      	add	x23, x23, #0x1
  36fbec:      	cmp	x23, #0x8
  36fbf0:      	b.ne	0x36fb74 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x16c>
  36fbf4:      	ldr	x8, [x28]
  36fbf8:      	ldp	q0, q1, [sp, #0x80]
  36fbfc:      	stp	q0, q1, [x8, #0x350]
  36fc00:      	ldp	q0, q1, [sp, #0xa0]
  36fc04:      	stp	q0, q1, [x8, #0x370]
  36fc08:      	ldr	w8, [x19, #0x14]
  36fc0c:      	cmp	w8, #0x0
  36fc10:      	b.le	0x36fe18 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x410>
  36fc14:      	ldr	x8, [x28]
  36fc18:      	ldp	q0, q1, [x19, #0x180]
  36fc1c:      	ldr	q2, [x19, #0x1a0]
  36fc20:      	stp	q1, q2, [x8, #0x3a0]
  36fc24:      	str	q0, [x8, #0x390]
  36fc28:      	ldp	q0, q1, [x19, #0x1b0]
  36fc2c:      	ldr	q2, [x19, #0x1d0]
  36fc30:      	ldr	x9, [x19, #0x1e0]
  36fc34:      	str	x9, [x8, #0x3f0]
  36fc38:      	stp	q1, q2, [x8, #0x3d0]
  36fc3c:      	str	q0, [x8, #0x3c0]
  36fc40:      	ldr	x8, [x28]
  36fc44:      	add	x8, x8, #0x3f8
  36fc48:      	add	x9, x19, #0x1e8
  36fc4c:      	ldp	q0, q1, [x9]
  36fc50:      	ldr	q2, [x9, #0x20]
  36fc54:      	stp	q1, q2, [x8, #0x10]
  36fc58:      	str	q0, [x8]
  36fc5c:      	ldp	q0, q1, [x9, #0x30]
  36fc60:      	ldr	q2, [x9, #0x50]
  36fc64:      	ldr	x9, [x9, #0x60]
  36fc68:      	str	x9, [x8, #0x60]
  36fc6c:      	stp	q1, q2, [x8, #0x40]
  36fc70:      	str	q0, [x8, #0x30]
  36fc74:      	ldr	x23, [sp, #0x10]
  36fc78:      	ldr	w8, [x19, #0x10]
  36fc7c:      	cmp	w8, #0x1
  36fc80:      	b.lt	0x36ff58 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x550>
  36fc84:      	ldr	x8, [x28]
  36fc88:      	ldp	q0, q1, [x19, #0x20]
  36fc8c:      	ldr	q2, [x19, #0x40]
  36fc90:      	str	q2, [x8, #0x480]
  36fc94:      	str	q1, [x8, #0x470]
  36fc98:      	str	q0, [x8, #0x460]
  36fc9c:      	ldp	q0, q1, [x19, #0x50]
  36fca0:      	ldp	q2, q3, [x19, #0x70]
  36fca4:      	str	q3, [x8, #0x4c0]
  36fca8:      	str	q2, [x8, #0x4b0]
  36fcac:      	str	q1, [x8, #0x4a0]
  36fcb0:      	str	q0, [x8, #0x490]
  36fcb4:      	ldp	q0, q1, [x19, #0x90]
  36fcb8:      	ldp	q2, q3, [x19, #0xb0]
  36fcbc:      	str	q3, [x8, #0x500]
  36fcc0:      	str	q2, [x8, #0x4f0]
  36fcc4:      	str	q1, [x8, #0x4e0]
  36fcc8:      	str	q0, [x8, #0x4d0]
  36fccc:      	ldr	x8, [x28]
  36fcd0:      	ldp	q0, q1, [x19, #0x120]
  36fcd4:      	ldp	q3, q2, [x19, #0x100]
  36fcd8:      	str	q3, [x8, #0x540]
  36fcdc:      	str	q1, [x8, #0x570]
  36fce0:      	str	q0, [x8, #0x560]
  36fce4:      	str	q2, [x8, #0x550]
  36fce8:      	ldp	q0, q1, [x19, #0x140]
  36fcec:      	ldp	q2, q3, [x19, #0x160]
  36fcf0:      	str	q3, [x8, #0x5b0]
  36fcf4:      	str	q2, [x8, #0x5a0]
  36fcf8:      	str	q1, [x8, #0x590]
  36fcfc:      	str	q0, [x8, #0x580]
  36fd00:      	ldp	q0, q1, [x19, #0xd0]
  36fd04:      	ldr	q2, [x19, #0xf0]
  36fd08:      	str	q2, [x8, #0x530]
  36fd0c:      	str	q1, [x8, #0x520]
  36fd10:      	str	q0, [x8, #0x510]
  36fd14:      	ldr	w8, [x19, #0x18]
  36fd18:      	cmp	w8, #0x1
  36fd1c:      	b.lt	0x370044 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x63c>
  36fd20:      	stp	xzr, xzr, [sp, #0x60]
  36fd24:      	str	xzr, [sp, #0x70]
  36fd28:      	add	x0, sp, #0x60
  36fd2c:      	mov	w1, #0x6a               ; =106
  36fd30:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  36fd34:      	ldr	x0, [sp, #0x60]
  36fd38:      	mov	x1, x21
  36fd3c:      	mov	w2, #0x350              ; =848
  36fd40:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
  36fd44:      	add	x8, sp, #0x48
  36fd48:      	add	x0, sp, #0x60
  36fd4c:      	bl	0x3641e8 <__ZN3BEF8MakeupV216cvtMouth106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE>
  36fd50:      	stp	xzr, xzr, [sp, #0x30]
  36fd54:      	str	xzr, [sp, #0x40]
  36fd58:      	add	x8, sp, #0x30
  36fd5c:      	add	x21, x8, #0x8
  36fd60:      	add	x0, sp, #0x30
  36fd64:      	mov	w1, #0x40               ; =64
  36fd68:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  36fd6c:      	mov	x8, #0x0                ; =0
  36fd70:      	ldr	x21, [sp, #0x30]
  36fd74:      	adrp	x9, 0x2c47000 <__ZTSN3BEF16FaceBrowV2FilterE+0x40>
  36fd78:      	add	x9, x9, #0xc0c
  36fd7c:      	ldr	x10, [sp, #0x48]
  36fd80:      	mov	x11, #0x872b            ; =34603
  36fd84:      	movk	x11, #0xd916, lsl #16
  36fd88:      	movk	x11, #0xf7ce, lsl #32
  36fd8c:      	movk	x11, #0x3fef, lsl #48
  36fd90:      	ldrsw	x12, [x9], #0x4
  36fd94:      	add	x12, x10, x12, lsl #3
  36fd98:      	ldr	s0, [x12]
  36fd9c:      	add	x13, x21, x8
  36fda0:      	str	s0, [x13]
  36fda4:      	ldr	s0, [x12, #0x4]
  36fda8:      	fcvt	d0, s0
  36fdac:      	fmov	d1, x11
  36fdb0:      	fmul	d0, d0, d1
  36fdb4:      	fcvt	s0, d0
  36fdb8:      	str	s0, [x13, #0x4]
  36fdbc:      	add	x8, x8, #0x8
  36fdc0:      	cmp	x8, #0x200
  36fdc4:      	b.ne	0x36fd90 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x388>
  36fdc8:      	ldr	x8, [x28]
  36fdcc:      	add	x0, x8, #0x5c0
  36fdd0:      	mov	x1, x21
  36fdd4:      	mov	w2, #0x200              ; =512
  36fdd8:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
  36fddc:      	ldr	x0, [sp, #0x38]
  36fde0:      	cmp	x0, x21
  36fde4:      	b.eq	0x36fec4 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x4bc>
  36fde8:      	ldp	x24, x22, [sp, #0x20]
  36fdec:      	ldr	x26, [sp, #0x18]
  36fdf0:      	sub	x0, x0, #0x8
  36fdf4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  36fdf8:      	cmp	x0, x21
  36fdfc:      	b.ne	0x36fdf0 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x3e8>
  36fe00:      	ldr	x0, [sp, #0x30]
  36fe04:      	str	x21, [sp, #0x38]
  36fe08:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  36fe0c:      	ldr	x21, [sp, #0x48]
  36fe10:      	cbnz	x21, 0x36fee0 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x4d8>
  36fe14:      	b	0x36ff10 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x508>
  36fe18:      	add	x8, sp, #0x60
  36fe1c:      	mov	x0, x28
  36fe20:      	ldr	x23, [sp, #0x10]
  36fe24:      	bl	0x3637fc <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE>
  36fe28:      	ldr	x8, [x28]
  36fe2c:      	ldp	x22, x0, [sp, #0x60]
  36fe30:      	ldp	q1, q0, [x22, #0x10]
  36fe34:      	ldr	q2, [x22]
  36fe38:      	stp	q2, q1, [x8, #0x390]
  36fe3c:      	str	q0, [x8, #0x3b0]
  36fe40:      	ldp	q1, q0, [x22, #0x40]
  36fe44:      	ldr	x9, [x22, #0x60]
  36fe48:      	ldr	q2, [x22, #0x30]
  36fe4c:      	str	x9, [x8, #0x3f0]
  36fe50:      	stp	q1, q0, [x8, #0x3d0]
  36fe54:      	str	q2, [x8, #0x3c0]
  36fe58:      	ldr	x8, [x28]
  36fe5c:      	add	x8, x8, #0x3f8
  36fe60:      	ldur	q0, [x22, #0x98]
  36fe64:      	ldur	q1, [x22, #0xa8]
  36fe68:      	ldur	q2, [x22, #0xb8]
  36fe6c:      	ldr	x9, [x22, #0xc8]
  36fe70:      	str	x9, [x8, #0x60]
  36fe74:      	stp	q1, q2, [x8, #0x40]
  36fe78:      	str	q0, [x8, #0x30]
  36fe7c:      	ldur	q0, [x22, #0x88]
  36fe80:      	ldur	q1, [x22, #0x78]
  36fe84:      	ldur	q2, [x22, #0x68]
  36fe88:      	stp	q2, q1, [x8]
  36fe8c:      	str	q0, [x8, #0x20]
  36fe90:      	cmp	x0, x22
  36fe94:      	b.eq	0x36ff40 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x538>
  36fe98:      	sub	x0, x0, #0x8
  36fe9c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  36fea0:      	cmp	x0, x22
  36fea4:      	b.ne	0x36fe98 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x490>
  36fea8:      	ldr	x0, [sp, #0x60]
  36feac:      	str	x22, [sp, #0x68]
  36feb0:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  36feb4:      	ldr	w8, [x19, #0x10]
  36feb8:      	cmp	w8, #0x1
  36febc:      	b.ge	0x36fc84 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x27c>
  36fec0:      	b	0x36ff58 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x550>
  36fec4:      	mov	x0, x21
  36fec8:      	ldp	x24, x22, [sp, #0x20]
  36fecc:      	ldr	x26, [sp, #0x18]
  36fed0:      	str	x21, [sp, #0x38]
  36fed4:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  36fed8:      	ldr	x21, [sp, #0x48]
  36fedc:      	cbz	x21, 0x36ff10 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x508>
  36fee0:      	ldr	x0, [sp, #0x50]
  36fee4:      	cmp	x0, x21
  36fee8:      	b.eq	0x36ff04 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x4fc>
  36feec:      	sub	x0, x0, #0x8
  36fef0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  36fef4:      	cmp	x0, x21
  36fef8:      	b.ne	0x36feec <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x4e4>
  36fefc:      	ldr	x0, [sp, #0x48]
  36ff00:      	b	0x36ff08 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x500>
  36ff04:      	mov	x0, x21
  36ff08:      	str	x21, [sp, #0x50]
  36ff0c:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  36ff10:      	ldr	x21, [sp, #0x60]
  36ff14:      	cbz	x21, 0x3700a8 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x6a0>
  36ff18:      	ldr	x0, [sp, #0x68]
  36ff1c:      	cmp	x0, x21
  36ff20:      	b.eq	0x36ff38 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x530>
  36ff24:      	sub	x0, x0, #0x8
  36ff28:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  36ff2c:      	cmp	x0, x21
  36ff30:      	b.ne	0x36ff24 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x51c>
  36ff34:      	b	0x37008c <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x684>
  36ff38:      	mov	x0, x21
  36ff3c:      	b	0x3700a0 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x698>
  36ff40:      	mov	x0, x22
  36ff44:      	str	x22, [sp, #0x68]
  36ff48:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  36ff4c:      	ldr	w8, [x19, #0x10]
  36ff50:      	cmp	w8, #0x1
  36ff54:      	b.ge	0x36fc84 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x27c>
  36ff58:      	add	x8, sp, #0x60
  36ff5c:      	mov	x0, x28
  36ff60:      	bl	0x362fcc <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE>
  36ff64:      	ldr	x8, [x28]
  36ff68:      	ldp	x22, x0, [sp, #0x60]
  36ff6c:      	ldp	q1, q0, [x22, #0x10]
  36ff70:      	ldr	q2, [x22]
  36ff74:      	str	q2, [x8, #0x460]
  36ff78:      	str	q1, [x8, #0x470]
  36ff7c:      	str	q0, [x8, #0x480]
  36ff80:      	ldp	q0, q1, [x22, #0x50]
  36ff84:      	ldp	q3, q2, [x22, #0x30]
  36ff88:      	str	q3, [x8, #0x490]
  36ff8c:      	str	q1, [x8, #0x4c0]
  36ff90:      	str	q0, [x8, #0x4b0]
  36ff94:      	str	q2, [x8, #0x4a0]
  36ff98:      	ldp	q0, q1, [x22, #0x90]
  36ff9c:      	ldp	q3, q2, [x22, #0x70]
  36ffa0:      	str	q3, [x8, #0x4d0]
  36ffa4:      	str	q1, [x8, #0x500]
  36ffa8:      	str	q0, [x8, #0x4f0]
  36ffac:      	str	q2, [x8, #0x4e0]
  36ffb0:      	ldr	x8, [x28]
  36ffb4:      	ldp	q1, q0, [x22, #0x120]
  36ffb8:      	ldp	q2, q3, [x22, #0x140]
  36ffbc:      	str	q3, [x8, #0x5b0]
  36ffc0:      	str	q1, [x8, #0x580]
  36ffc4:      	str	q0, [x8, #0x590]
  36ffc8:      	str	q2, [x8, #0x5a0]
  36ffcc:      	ldp	q0, q1, [x22, #0x100]
  36ffd0:      	ldp	q3, q2, [x22, #0xe0]
  36ffd4:      	str	q3, [x8, #0x540]
  36ffd8:      	str	q1, [x8, #0x570]
  36ffdc:      	str	q0, [x8, #0x560]
  36ffe0:      	str	q2, [x8, #0x550]
  36ffe4:      	ldp	q0, q1, [x22, #0xb0]
  36ffe8:      	ldr	q2, [x22, #0xd0]
  36ffec:      	str	q2, [x8, #0x530]
  36fff0:      	str	q1, [x8, #0x520]
  36fff4:      	str	q0, [x8, #0x510]
  36fff8:      	cmp	x0, x22
  36fffc:      	b.eq	0x37002c <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x624>
  370000:      	sub	x0, x0, #0x8
  370004:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  370008:      	cmp	x0, x22
  37000c:      	b.ne	0x370000 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x5f8>
  370010:      	ldr	x0, [sp, #0x60]
  370014:      	str	x22, [sp, #0x68]
  370018:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  37001c:      	ldr	w8, [x19, #0x18]
  370020:      	cmp	w8, #0x1
  370024:      	b.ge	0x36fd20 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x318>
  370028:      	b	0x370044 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x63c>
  37002c:      	mov	x0, x22
  370030:      	str	x22, [sp, #0x68]
  370034:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  370038:      	ldr	w8, [x19, #0x18]
  37003c:      	cmp	w8, #0x1
  370040:      	b.ge	0x36fd20 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x318>
  370044:      	add	x8, sp, #0x60
  370048:      	mov	x0, x28
  37004c:      	bl	0x3641e8 <__ZN3BEF8MakeupV216cvtMouth106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE>
  370050:      	ldr	x8, [x28]
  370054:      	add	x0, x8, #0x5c0
  370058:      	ldr	x21, [sp, #0x60]
  37005c:      	mov	x1, x21
  370060:      	mov	w2, #0x200              ; =512
  370064:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
  370068:      	ldr	x0, [sp, #0x68]
  37006c:      	cmp	x0, x21
  370070:      	b.eq	0x370094 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x68c>
  370074:      	ldp	x24, x22, [sp, #0x20]
  370078:      	ldr	x26, [sp, #0x18]
  37007c:      	sub	x0, x0, #0x8
  370080:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  370084:      	cmp	x0, x21
  370088:      	b.ne	0x37007c <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x674>
  37008c:      	ldr	x0, [sp, #0x60]
  370090:      	b	0x3700a0 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x698>
  370094:      	mov	x0, x21
  370098:      	ldp	x24, x22, [sp, #0x20]
  37009c:      	ldr	x26, [sp, #0x18]
  3700a0:      	str	x21, [sp, #0x68]
  3700a4:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3700a8:      	add	x0, sp, #0x78
  3700ac:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3700b0:      	mov	x0, x25
  3700b4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3700b8:      	mov	x0, x27
  3700bc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3700c0:      	ldr	x0, [sp, #0x8]
  3700c4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3700c8:      	mov	x0, x26
  3700cc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3700d0:      	mov	x0, x24
  3700d4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3700d8:      	mov	x0, x22
  3700dc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3700e0:      	mov	x0, x23
  3700e4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3700e8:      	add	x0, sp, #0x80
  3700ec:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3700f0:      	ldr	w8, [x19, #0x10]
  3700f4:      	cmp	w8, #0x1
  3700f8:      	b.lt	0x370118 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x710>
  3700fc:      	cbz	x19, 0x370118 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x710>
  370100:      	add	x3, x20, #0x1b0
  370104:      	add	x2, x20, #0x168
  370108:      	add	x0, x19, #0x20
  37010c:      	add	x1, x19, #0xd0
  370110:      	mov	w4, #0x1                ; =1
  370114:      	bl	0x3715c4 <__ZN3BEF19FaceParamFaceUCV2486updateEPfiiiib+0xd34>
  370118:      	mov	w0, #0x160              ; =352
  37011c:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  370120:      	mov	x21, x0
  370124:      	add	x23, x0, #0x160
  370128:      	str	x0, [sp, #0x80]
  37012c:      	str	x23, [sp, #0x90]
  370130:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370134:      	add	x22, x21, #0x8
  370138:      	mov	x0, x22
  37013c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370140:      	add	x22, x21, #0x10
  370144:      	mov	x0, x22
  370148:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  37014c:      	add	x22, x21, #0x18
  370150:      	mov	x0, x22
  370154:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370158:      	add	x22, x21, #0x20
  37015c:      	mov	x0, x22
  370160:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370164:      	add	x22, x21, #0x28
  370168:      	mov	x0, x22
  37016c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370170:      	add	x22, x21, #0x30
  370174:      	mov	x0, x22
  370178:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  37017c:      	add	x22, x21, #0x38
  370180:      	mov	x0, x22
  370184:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370188:      	add	x22, x21, #0x40
  37018c:      	mov	x0, x22
  370190:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370194:      	add	x22, x21, #0x48
  370198:      	mov	x0, x22
  37019c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3701a0:      	add	x22, x21, #0x50
  3701a4:      	mov	x0, x22
  3701a8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3701ac:      	add	x22, x21, #0x58
  3701b0:      	mov	x0, x22
  3701b4:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3701b8:      	add	x22, x21, #0x60
  3701bc:      	mov	x0, x22
  3701c0:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3701c4:      	add	x22, x21, #0x68
  3701c8:      	mov	x0, x22
  3701cc:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3701d0:      	add	x22, x21, #0x70
  3701d4:      	mov	x0, x22
  3701d8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3701dc:      	add	x22, x21, #0x78
  3701e0:      	mov	x0, x22
  3701e4:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3701e8:      	add	x22, x21, #0x80
  3701ec:      	mov	x0, x22
  3701f0:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3701f4:      	add	x22, x21, #0x88
  3701f8:      	mov	x0, x22
  3701fc:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370200:      	add	x22, x21, #0x90
  370204:      	mov	x0, x22
  370208:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  37020c:      	add	x22, x21, #0x98
  370210:      	mov	x0, x22
  370214:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370218:      	add	x22, x21, #0xa0
  37021c:      	mov	x0, x22
  370220:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370224:      	add	x22, x21, #0xa8
  370228:      	mov	x0, x22
  37022c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370230:      	add	x22, x21, #0xb0
  370234:      	mov	x0, x22
  370238:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  37023c:      	add	x22, x21, #0xb8
  370240:      	mov	x0, x22
  370244:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370248:      	add	x22, x21, #0xc0
  37024c:      	mov	x0, x22
  370250:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370254:      	add	x22, x21, #0xc8
  370258:      	mov	x0, x22
  37025c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370260:      	add	x22, x21, #0xd0
  370264:      	mov	x0, x22
  370268:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  37026c:      	add	x22, x21, #0xd8
  370270:      	mov	x0, x22
  370274:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370278:      	add	x22, x21, #0xe0
  37027c:      	mov	x0, x22
  370280:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370284:      	add	x22, x21, #0xe8
  370288:      	mov	x0, x22
  37028c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370290:      	add	x22, x21, #0xf0
  370294:      	mov	x0, x22
  370298:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  37029c:      	add	x22, x21, #0xf8
  3702a0:      	mov	x0, x22
  3702a4:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3702a8:      	add	x22, x21, #0x100
  3702ac:      	mov	x0, x22
  3702b0:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3702b4:      	add	x22, x21, #0x108
  3702b8:      	mov	x0, x22
  3702bc:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3702c0:      	add	x22, x21, #0x110
  3702c4:      	mov	x0, x22
  3702c8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3702cc:      	add	x22, x21, #0x118
  3702d0:      	mov	x0, x22
  3702d4:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3702d8:      	add	x22, x21, #0x120
  3702dc:      	mov	x0, x22
  3702e0:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3702e4:      	add	x22, x21, #0x128
  3702e8:      	mov	x0, x22
  3702ec:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3702f0:      	add	x22, x21, #0x130
  3702f4:      	mov	x0, x22
  3702f8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3702fc:      	add	x22, x21, #0x138
  370300:      	mov	x0, x22
  370304:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370308:      	add	x22, x21, #0x140
  37030c:      	mov	x0, x22
  370310:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370314:      	add	x22, x21, #0x148
  370318:      	mov	x0, x22
  37031c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370320:      	add	x22, x21, #0x150
  370324:      	mov	x0, x22
  370328:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  37032c:      	add	x22, x21, #0x158
  370330:      	mov	x0, x22
  370334:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  370338:      	mov	x8, #0x0                ; =0
  37033c:      	str	x23, [sp, #0x88]
  370340:      	add	x9, x21, #0x4
  370344:      	adrp	x10, 0x2c47000 <__ZTSN3BEF16FaceBrowV2FilterE+0x40>
  370348:      	add	x10, x10, #0xd0c
  37034c:      	fmov	s0, #1.00000000
  370350:      	ldrsw	x11, [x10, x8]
  370354:      	add	x11, x19, x11, lsl #3
  370358:      	ldp	s1, s2, [x11, #0x20]
  37035c:      	stur	s1, [x9, #-0x4]
  370360:      	fsub	s1, s0, s2
  370364:      	str	s1, [x9]
  370368:      	ldp	s1, s2, [x11, #0xd0]
  37036c:      	str	s1, [x9, #0xac]
  370370:      	fsub	s1, s0, s2
  370374:      	str	s1, [x9, #0xb0]
  370378:      	add	x8, x8, #0x4
  37037c:      	add	x9, x9, #0x8
  370380:      	cmp	x8, #0x58
  370384:      	b.ne	0x370350 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0x948>
  370388:      	add	x0, sp, #0x80
  37038c:      	mov	w1, #0x0                ; =0
  370390:      	bl	0x36b720 <__ZN3BEF8MakeupV221getEyeOpenDegreeFaceUERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEEi>
  370394:      	fmov	s8, s0
  370398:      	add	x0, sp, #0x80
  37039c:      	mov	w1, #0x1                ; =1
  3703a0:      	bl	0x36b720 <__ZN3BEF8MakeupV221getEyeOpenDegreeFaceUERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEEi>
  3703a4:      	ldr	x8, [x20, #0x1c8]
  3703a8:      	fadd	s1, s8, s8
  3703ac:      	dup.4s	v3, v1[0]
  3703b0:      	add	x9, x19, #0x450
  3703b4:      	mov	x11, x9
  3703b8:      	ld2.4s	{ v1, v2 }, [x11], #32
  3703bc:      	mov	x12, x8
  3703c0:      	st3.4s	{ v1, v2, v3 }, [x12], #48
  3703c4:      	fadd	s0, s0, s0
  3703c8:      	dup.4s	v6, v0[0]
  3703cc:      	add	x10, x19, #0x4f0
  3703d0:      	mov	x13, x10
  3703d4:      	ld2.4s	{ v4, v5 }, [x13], #32
  3703d8:      	add	x14, x8, #0x1d4
  3703dc:      	st3.4s	{ v4, v5, v6 }, [x14]
  3703e0:      	ld2.4s	{ v1, v2 }, [x11]
  3703e4:      	st3.4s	{ v1, v2, v3 }, [x12]
  3703e8:      	ld2.4s	{ v4, v5 }, [x13]
  3703ec:      	add	x11, x8, #0x204
  3703f0:      	st3.4s	{ v4, v5, v6 }, [x11]
  3703f4:      	add	x11, x9, #0x40
  3703f8:      	ld2.4s	{ v1, v2 }, [x11]
  3703fc:      	add	x11, x8, #0x60
  370400:      	st3.4s	{ v1, v2, v3 }, [x11]
  370404:      	add	x11, x10, #0x40
  370408:      	ld2.4s	{ v4, v5 }, [x11]
  37040c:      	add	x11, x8, #0x234
  370410:      	st3.4s	{ v4, v5, v6 }, [x11]
  370414:      	add	x11, x9, #0x60
  370418:      	ld2.4s	{ v1, v2 }, [x11]
  37041c:      	add	x11, x8, #0x90
  370420:      	st3.4s	{ v1, v2, v3 }, [x11]
  370424:      	add	x11, x10, #0x60
  370428:      	ld2.4s	{ v4, v5 }, [x11]
  37042c:      	add	x11, x8, #0x264
  370430:      	st3.4s	{ v4, v5, v6 }, [x11]
  370434:      	add	x11, x9, #0x80
  370438:      	ld2.4s	{ v1, v2 }, [x11]
  37043c:      	add	x11, x8, #0xc0
  370440:      	st3.4s	{ v1, v2, v3 }, [x11]
  370444:      	add	x11, x10, #0x80
  370448:      	ld2.4s	{ v4, v5 }, [x11]
  37044c:      	add	x11, x8, #0x294
  370450:      	st3.4s	{ v4, v5, v6 }, [x11]
  370454:      	ldr	d1, [x19, #0x450]
  370458:      	ldr	d0, [x19, #0x4f0]
  37045c:      	dup.4s	v17, v1[0]
  370460:      	dup.4s	v16, v1[1]
  370464:      	dup.4s	v3, v0[0]
  370468:      	dup.4s	v2, v0[1]
  37046c:      	add	x11, x9, #0x8
  370470:      	ld2.4s	{ v18, v19 }, [x11]
  370474:      	fsub.4s	v4, v17, v18
  370478:      	mov	w11, #0xcccd            ; =52429
  37047c:      	movk	w11, #0x3dcc, lsl #16
  370480:      	dup.4s	v7, w11
  370484:      	fmul.4s	v4, v4, v7
  370488:      	fsub.4s	v4, v18, v4
  37048c:      	fsub.4s	v20, v16, v19
  370490:      	fmul.4s	v20, v20, v7
  370494:      	fsub.4s	v5, v19, v20
  370498:      	movi.2d	v6, #0000000000000000
  37049c:      	add	x12, x8, #0xf0
  3704a0:      	st3.4s	{ v4, v5, v6 }, [x12]
  3704a4:      	add	x12, x10, #0x8
  3704a8:      	ld2.4s	{ v18, v19 }, [x12]
  3704ac:      	fsub.4s	v20, v3, v18
  3704b0:      	fmul.4s	v20, v20, v7
  3704b4:      	fsub.4s	v4, v18, v20
  3704b8:      	fsub.4s	v20, v2, v19
  3704bc:      	fmul.4s	v20, v20, v7
  3704c0:      	fsub.4s	v5, v19, v20
  3704c4:      	add	x12, x8, #0x2c4
  3704c8:      	st3.4s	{ v4, v5, v6 }, [x12]
  3704cc:      	add	x12, x9, #0x28
  3704d0:      	ld2.4s	{ v18, v19 }, [x12]
  3704d4:      	fsub.4s	v20, v17, v18
  3704d8:      	fmul.4s	v20, v20, v7
  3704dc:      	fsub.4s	v4, v18, v20
  3704e0:      	fsub.4s	v20, v16, v19
  3704e4:      	fmul.4s	v20, v20, v7
  3704e8:      	fsub.4s	v5, v19, v20
  3704ec:      	add	x12, x8, #0x120
  3704f0:      	st3.4s	{ v4, v5, v6 }, [x12]
  3704f4:      	add	x12, x10, #0x28
  3704f8:      	ld2.4s	{ v18, v19 }, [x12]
  3704fc:      	fsub.4s	v20, v3, v18
  370500:      	fmul.4s	v20, v20, v7
  370504:      	fsub.4s	v4, v18, v20
  370508:      	fsub.4s	v20, v2, v19
  37050c:      	fmul.4s	v20, v20, v7
  370510:      	fsub.4s	v5, v19, v20
  370514:      	add	x12, x8, #0x2f4
  370518:      	st3.4s	{ v4, v5, v6 }, [x12]
  37051c:      	add	x12, x9, #0x48
  370520:      	ld2.4s	{ v18, v19 }, [x12]
  370524:      	fsub.4s	v20, v17, v18
  370528:      	fmul.4s	v20, v20, v7
  37052c:      	fsub.4s	v4, v18, v20
  370530:      	fsub.4s	v20, v16, v19
  370534:      	fmul.4s	v20, v20, v7
  370538:      	fsub.4s	v5, v19, v20
  37053c:      	add	x12, x8, #0x150
  370540:      	st3.4s	{ v4, v5, v6 }, [x12]
  370544:      	add	x12, x10, #0x48
  370548:      	ld2.4s	{ v18, v19 }, [x12]
  37054c:      	fsub.4s	v20, v3, v18
  370550:      	fmul.4s	v20, v20, v7
  370554:      	fsub.4s	v4, v18, v20
  370558:      	fsub.4s	v20, v2, v19
  37055c:      	fmul.4s	v20, v20, v7
  370560:      	fsub.4s	v5, v19, v20
  370564:      	add	x12, x8, #0x324
  370568:      	st3.4s	{ v4, v5, v6 }, [x12]
  37056c:      	add	x12, x9, #0x68
  370570:      	ld2.4s	{ v18, v19 }, [x12]
  370574:      	fsub.4s	v17, v17, v18
  370578:      	fmul.4s	v17, v17, v7
  37057c:      	fsub.4s	v4, v18, v17
  370580:      	fsub.4s	v16, v16, v19
  370584:      	fmul.4s	v16, v16, v7
  370588:      	fsub.4s	v5, v19, v16
  37058c:      	add	x12, x8, #0x180
  370590:      	st3.4s	{ v4, v5, v6 }, [x12]
  370594:      	add	x12, x10, #0x68
  370598:      	ld2.4s	{ v16, v17 }, [x12]
  37059c:      	fsub.4s	v3, v3, v16
  3705a0:      	fmul.4s	v3, v3, v7
  3705a4:      	fsub.4s	v4, v16, v3
  3705a8:      	fsub.4s	v2, v2, v17
  3705ac:      	fmul.4s	v2, v2, v7
  3705b0:      	fsub.4s	v5, v17, v2
  3705b4:      	add	x12, x8, #0x354
  3705b8:      	st3.4s	{ v4, v5, v6 }, [x12]
  3705bc:      	add	x12, x8, #0x1bc
  3705c0:      	ldr	d2, [x9, #0x88]
  3705c4:      	dup.2s	v3, w11
  3705c8:      	fsub.2s	v4, v1, v2
  3705cc:      	fmul.2s	v4, v4, v3
  3705d0:      	fsub.2s	v2, v2, v4
  3705d4:      	str	d2, [x8, #0x1b0]
  3705d8:      	str	wzr, [x8, #0x1b8]
  3705dc:      	ldr	d2, [x10, #0x88]
  3705e0:      	fsub.2s	v4, v0, v2
  3705e4:      	fmul.2s	v4, v4, v3
  3705e8:      	fsub.2s	v2, v2, v4
  3705ec:      	str	d2, [x12, #0x1c8]
  3705f0:      	str	wzr, [x8, #0x38c]
  3705f4:      	ldr	d2, [x19, #0x4e0]
  3705f8:      	fsub.2s	v4, v1, v2
  3705fc:      	fmul.2s	v4, v4, v3
  370600:      	fsub.2s	v2, v2, v4
  370604:      	str	d2, [x12]
  370608:      	str	wzr, [x12, #0x8]
  37060c:      	ldr	d2, [x19, #0x580]
  370610:      	fsub.2s	v4, v0, v2
  370614:      	fmul.2s	v4, v4, v3
  370618:      	fsub.2s	v2, v2, v4
  37061c:      	str	d2, [x8, #0x390]
  370620:      	str	wzr, [x8, #0x398]
  370624:      	ldr	d2, [x9, #0x98]
  370628:      	fsub.2s	v1, v1, v2
  37062c:      	fmul.2s	v1, v1, v3
  370630:      	fsub.2s	v1, v2, v1
  370634:      	str	d1, [x8, #0x1c8]
  370638:      	str	wzr, [x8, #0x1d0]
  37063c:      	ldr	d1, [x10, #0x98]
  370640:      	fsub.2s	v0, v0, v1
  370644:      	fmul.2s	v0, v0, v3
  370648:      	fsub.2s	v0, v1, v0
  37064c:      	str	d0, [x12, #0x1e0]
  370650:      	str	wzr, [x8, #0x3a4]
  370654:      	ldr	x19, [sp, #0x80]
  370658:      	cbz	x19, 0x37068c <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xc84>
  37065c:      	ldr	x0, [sp, #0x88]
  370660:      	cmp	x0, x19
  370664:      	b.eq	0x370680 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xc78>
  370668:      	sub	x0, x0, #0x8
  37066c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  370670:      	cmp	x0, x19
  370674:      	b.ne	0x370668 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xc60>
  370678:      	ldr	x0, [sp, #0x80]
  37067c:      	b	0x370684 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xc7c>
  370680:      	mov	x0, x19
  370684:      	str	x19, [sp, #0x88]
  370688:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  37068c:      	ldur	x8, [x29, #-0x70]
  370690:      	adrp	x9, 0x34bc000 <dyld_stub_binder+0x34bc000>
  370694:      	ldr	x9, [x9, #0x6a8]
  370698:      	ldr	x9, [x9]
  37069c:      	cmp	x9, x8
  3706a0:      	b.ne	0x3706cc <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xcc4>
  3706a4:      	mov	w0, #0x1                ; =1
  3706a8:      	ldp	x29, x30, [sp, #0x130]
  3706ac:      	ldp	x20, x19, [sp, #0x120]
  3706b0:      	ldp	x22, x21, [sp, #0x110]
  3706b4:      	ldp	x24, x23, [sp, #0x100]
  3706b8:      	ldp	x26, x25, [sp, #0xf0]
  3706bc:      	ldp	x28, x27, [sp, #0xe0]
  3706c0:      	ldp	d9, d8, [sp, #0xd0]
  3706c4:      	add	sp, sp, #0x140
  3706c8:      	ret
  3706cc:      	bl	0x29a4670 <dyld_stub_binder+0x29a4670>
  3706d0:      	b	0x370810 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xe08>
  3706d4:      	b	0x370810 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xe08>
  3706d8:      	b	0x370810 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xe08>
  3706dc:      	mov	x19, x0
  3706e0:      	b	0x37081c <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xe14>
  3706e4:      	mov	x19, x0
  3706e8:      	ldr	x0, [sp, #0x30]
  3706ec:      	cbz	x0, 0x3706fc <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xcf4>
  3706f0:      	add	x2, sp, #0x30
  3706f4:      	mov	x1, x21
  3706f8:      	bl	0x28fb228 <__ZN5smash15CvtInputAsFloatEPhPfif+0x19534>
  3706fc:      	ldr	x20, [sp, #0x48]
  370700:      	cbz	x20, 0x370740 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xd38>
  370704:      	ldr	x0, [sp, #0x50]
  370708:      	mov	x8, x20
  37070c:      	cmp	x0, x20
  370710:      	b.eq	0x370728 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xd20>
  370714:      	sub	x0, x0, #0x8
  370718:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  37071c:      	cmp	x0, x20
  370720:      	b.ne	0x370714 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xd0c>
  370724:      	ldr	x8, [sp, #0x48]
  370728:      	str	x20, [sp, #0x50]
  37072c:      	mov	x0, x8
  370730:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  370734:      	b	0x370740 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xd38>
  370738:      	b	0x37073c <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xd34>
  37073c:      	mov	x19, x0
  370740:      	ldr	x20, [sp, #0x60]
  370744:      	cbz	x20, 0x370814 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xe0c>
  370748:      	ldr	x0, [sp, #0x68]
  37074c:      	mov	x8, x20
  370750:      	cmp	x0, x20
  370754:      	b.eq	0x37076c <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xd64>
  370758:      	sub	x0, x0, #0x8
  37075c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  370760:      	cmp	x0, x20
  370764:      	b.ne	0x370758 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xd50>
  370768:      	ldr	x8, [sp, #0x60]
  37076c:      	str	x20, [sp, #0x68]
  370770:      	mov	x0, x8
  370774:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  370778:      	b	0x370814 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xe0c>
  37077c:      	b	0x370780 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xd78>
  370780:      	mov	x19, x0
  370784:      	ldr	x20, [sp, #0x80]
  370788:      	cbz	x20, 0x37085c <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xe54>
  37078c:      	ldr	x0, [sp, #0x88]
  370790:      	mov	x8, x20
  370794:      	cmp	x0, x20
  370798:      	b.eq	0x3707b0 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xda8>
  37079c:      	sub	x0, x0, #0x8
  3707a0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3707a4:      	cmp	x0, x20
  3707a8:      	b.ne	0x37079c <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xd94>
  3707ac:      	ldr	x8, [sp, #0x80]
  3707b0:      	str	x20, [sp, #0x88]
  3707b4:      	mov	x0, x8
  3707b8:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3707bc:      	mov	x0, x19
  3707c0:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  3707c4:      	mov	x19, x0
  3707c8:      	b	0x37087c <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xe74>
  3707cc:      	mov	x19, x0
  3707d0:      	b	0x37081c <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xe14>
  3707d4:      	mov	x19, x0
  3707d8:      	sub	x25, x25, #0x8
  3707dc:      	mov	x0, x25
  3707e0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3707e4:      	cmp	x25, x21
  3707e8:      	b.ne	0x3707d8 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xdd0>
  3707ec:      	b	0x37085c <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xe54>
  3707f0:      	mov	x19, x0
  3707f4:      	add	x0, sp, #0x30
  3707f8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3707fc:      	b	0x370804 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xdfc>
  370800:      	mov	x19, x0
  370804:      	add	x0, sp, #0x60
  370808:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  37080c:      	b	0x370814 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xe0c>
  370810:      	mov	x19, x0
  370814:      	add	x0, sp, #0x78
  370818:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  37081c:      	mov	x0, x25
  370820:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  370824:      	mov	x0, x27
  370828:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  37082c:      	ldr	x0, [sp, #0x8]
  370830:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  370834:      	ldr	x0, [sp, #0x18]
  370838:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  37083c:      	ldr	x0, [sp, #0x20]
  370840:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  370844:      	ldr	x0, [sp, #0x28]
  370848:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  37084c:      	ldr	x0, [sp, #0x10]
  370850:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  370854:      	add	x0, sp, #0x80
  370858:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  37085c:      	mov	x0, x19
  370860:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  370864:      	mov	x19, x0
  370868:      	sub	x22, x22, #0x8
  37086c:      	mov	x0, x22
  370870:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  370874:      	cmp	x22, x21
  370878:      	b.ne	0x370868 <__ZN3BEF19FaceParamFaceUCV2486updateEP15bef_face_106_stiiiiPNS_8MakeupV215face_extra_infoE+0xe60>
  37087c:      	str	x21, [sp, #0x88]
  370880:      	mov	x0, x21
  370884:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  370888:      	mov	x0, x19
  37088c:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
