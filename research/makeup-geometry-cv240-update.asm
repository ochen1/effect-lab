
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000373c6c <__ZN3BEF16FaceParamV2CV2406updateEPfiiiib>:
  373c6c:      	sub	sp, sp, #0x90
  373c70:      	stp	x26, x25, [sp, #0x40]
  373c74:      	stp	x24, x23, [sp, #0x50]
  373c78:      	stp	x22, x21, [sp, #0x60]
  373c7c:      	stp	x20, x19, [sp, #0x70]
  373c80:      	stp	x29, x30, [sp, #0x80]
  373c84:      	add	x29, sp, #0x80
  373c88:      	mov	x20, x3
  373c8c:      	cmp	w2, #0x2
  373c90:      	cset	w8, ne
  373c94:      	cmp	w3, #0x1e0
  373c98:      	cset	w9, lt
  373c9c:      	orr	w22, w8, w9
  373ca0:      	cmp	w22, #0x1
  373ca4:      	b.ne	0x373cec <__ZN3BEF16FaceParamV2CV2406updateEPfiiiib+0x80>
  373ca8:      	mov	x21, x2
  373cac:      	bl	0x8dda9c <__ZN8BEFBasic6BEFLog12GetSingletonEv>
  373cb0:      	stp	x20, x21, [sp, #0x20]
  373cb4:      	adrp	x8, 0x31f0000 <dyld_stub_binder+0x31f0000>
  373cb8:      	add	x8, x8, #0x34d
  373cbc:      	mov	w9, #0x221              ; =545
  373cc0:      	stp	x9, x8, [sp, #0x10]
  373cc4:      	adrp	x8, 0x31f0000 <dyld_stub_binder+0x31f0000>
  373cc8:      	add	x8, x8, #0x338
  373ccc:      	adrp	x9, 0x319c000 <dyld_stub_binder+0x319c000>
  373cd0:      	add	x9, x9, #0x451
  373cd4:      	stp	x9, x8, [sp]
  373cd8:      	adrp	x2, 0x31f0000 <dyld_stub_binder+0x31f0000>
  373cdc:      	add	x2, x2, #0x2f8
  373ce0:      	mov	w1, #0x6                ; =6
  373ce4:      	bl	0x8ddd50 <__ZN8BEFBasic6BEFLog8outPrintEiPKcz>
  373ce8:      	b	0x373f90 <__ZN3BEF16FaceParamV2CV2406updateEPfiiiib+0x324>
  373cec:      	mov	x19, x0
  373cf0:      	lsr	w8, w20, #1
  373cf4:      	scvtf	s0, w4
  373cf8:      	stp	w4, w5, [x0, #0x8]
  373cfc:      	scvtf	s1, w5
  373d00:      	and	x9, x8, #0x7ffffff8
  373d04:      	add	x10, x1, #0x20
  373d08:      	mov	x11, x9
  373d0c:      	sub	x12, x10, #0x20
  373d10:      	ld2.4s	{ v2, v3 }, [x12]
  373d14:      	ld2.4s	{ v4, v5 }, [x10]
  373d18:      	fmul.4s	v6, v2, v0[0]
  373d1c:      	fmul.4s	v7, v3, v1[0]
  373d20:      	fmul.4s	v2, v4, v0[0]
  373d24:      	fmul.4s	v3, v5, v1[0]
  373d28:      	st2.4s	{ v6, v7 }, [x12]
  373d2c:      	st2.4s	{ v2, v3 }, [x10]
  373d30:      	add	x10, x10, #0x40
  373d34:      	subs	x11, x11, #0x8
  373d38:      	b.ne	0x373d0c <__ZN3BEF16FaceParamV2CV2406updateEPfiiiib+0xa0>
  373d3c:      	cmp	x9, x8
  373d40:      	b.eq	0x373d78 <__ZN3BEF16FaceParamV2CV2406updateEPfiiiib+0x10c>
  373d44:      	lsl	x10, x20, #2
  373d48:      	and	x10, x10, #0x3ffffffc0
  373d4c:      	add	x10, x10, x1
  373d50:      	add	x10, x10, #0x4
  373d54:      	sub	x8, x8, x9
  373d58:      	ldur	s2, [x10, #-0x4]
  373d5c:      	fmul	s2, s2, s0
  373d60:      	stur	s2, [x10, #-0x4]
  373d64:      	ldr	s2, [x10]
  373d68:      	fmul	s2, s2, s1
  373d6c:      	str	s2, [x10], #0x8
  373d70:      	subs	x8, x8, #0x1
  373d74:      	b.ne	0x373d58 <__ZN3BEF16FaceParamV2CV2406updateEPfiiiib+0xec>
  373d78:      	add	x20, x19, #0x180
  373d7c:      	add	x2, x1, #0x780
  373d80:      	mov	x0, x20
  373d84:      	bl	0x1ef8b0 <__ZN3BEF17Sticker2DV3Filter18animationGoToFrameEPKcS2_i+0x3fd8>
  373d88:      	add	x21, x19, #0x168
  373d8c:      	mov	x0, x20
  373d90:      	mov	x1, x21
  373d94:      	mov	w2, #0x1                ; =1
  373d98:      	mov	w3, #0x1                ; =1
  373d9c:      	mov	w4, #0x1                ; =1
  373da0:      	bl	0x36524c <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb>
  373da4:      	add	x20, x19, #0x198
  373da8:      	mov	x0, x21
  373dac:      	mov	x1, x20
  373db0:      	bl	0x369ed0 <__ZN3BEF8MakeupV216interpolateBE180ERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEES8_>
  373db4:      	add	x1, x19, #0x1b0
  373db8:      	mov	x0, x21
  373dbc:      	bl	0x369c00 <__ZN3BEF8MakeupV229calcEyeInterpolationFromBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_>
  373dc0:      	ldr	x8, [x19, #0x1b0]
  373dc4:      	ldr	x9, [x19, #0x1e0]
  373dc8:      	ldr	d0, [x8, #0x280]
  373dcc:      	str	d0, [x9]
  373dd0:      	ldr	d0, [x8, #0x268]
  373dd4:      	str	d0, [x9, #0x8]
  373dd8:      	ldr	d0, [x8, #0x278]
  373ddc:      	str	d0, [x9, #0x10]
  373de0:      	ldr	d0, [x8, #0x270]
  373de4:      	str	d0, [x9, #0x18]
  373de8:      	ldr	d0, [x8, #0x500]
  373dec:      	str	d0, [x9, #0x20]
  373df0:      	ldr	d0, [x8, #0x508]
  373df4:      	str	d0, [x9, #0x28]
  373df8:      	ldr	d0, [x8, #0x4f8]
  373dfc:      	str	d0, [x9, #0x30]
  373e00:      	ldr	d0, [x8, #0x510]
  373e04:      	str	d0, [x9, #0x38]
  373e08:      	add	x1, x19, #0x1f8
  373e0c:      	mov	x0, x20
  373e10:      	bl	0x36b588 <__ZN3BEF8MakeupV234calcBrowInterpolationFromWholeFaceERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_>
  373e14:      	ldr	w8, [x19, #0x308]
  373e18:      	lsl	w8, w8, #1
  373e1c:      	ldr	x9, [x19, #0x260]
  373e20:      	ldr	x0, [x19, #0x268]
  373e24:      	sub	x10, x0, x9
  373e28:      	asr	x10, x10, #2
  373e2c:      	mov	x11, #-0x5555555555555556 ; =-6148914691236517206
  373e30:      	movk	x11, #0xaaab
  373e34:      	mul	x10, x10, x11
  373e38:      	cmp	x10, x8
  373e3c:      	b.hs	0x373e50 <__ZN3BEF16FaceParamV2CV2406updateEPfiiiib+0x1e4>
  373e40:      	add	x0, x19, #0x260
  373e44:      	sub	x1, x8, x10
  373e48:      	bl	0x28d07c <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x2d4>
  373e4c:      	b	0x373e78 <__ZN3BEF16FaceParamV2CV2406updateEPfiiiib+0x20c>
  373e50:      	b.ls	0x373e78 <__ZN3BEF16FaceParamV2CV2406updateEPfiiiib+0x20c>
  373e54:      	mov	w10, #0xc               ; =12
  373e58:      	madd	x20, x8, x10, x9
  373e5c:      	cmp	x0, x20
  373e60:      	b.eq	0x373e74 <__ZN3BEF16FaceParamV2CV2406updateEPfiiiib+0x208>
  373e64:      	sub	x0, x0, #0xc
  373e68:      	bl	0x8e2e04 <__ZN3BRC4Vec3D1Ev>
  373e6c:      	cmp	x0, x20
  373e70:      	b.ne	0x373e64 <__ZN3BEF16FaceParamV2CV2406updateEPfiiiib+0x1f8>
  373e74:      	str	x20, [x19, #0x268]
  373e78:      	mov	x20, #0x0               ; =0
  373e7c:      	mov	x21, #0x0               ; =0
  373e80:      	mov	x23, #0x0               ; =0
  373e84:      	adrp	x24, 0x36b5000 <__ZN13AmazingEngine9IFLayer2d36IF_LAYER2D_BLEND_VERTEX_SHADER_METALE+0x10>
  373e88:      	add	x24, x24, #0x4b0
  373e8c:      	mov	w25, #0xc               ; =12
  373e90:      	ldr	x8, [x24]
  373e94:      	add	x8, x8, x21
  373e98:      	ldp	s0, s1, [x8]
  373e9c:      	add	x0, sp, #0x30
  373ea0:      	fmov	s2, #1.00000000
  373ea4:      	bl	0x8e2d44 <__ZN3BRC4Vec3C1Efff>
  373ea8:      	ldr	x8, [x19, #0x260]
  373eac:      	ldr	d0, [sp, #0x30]
  373eb0:      	add	x8, x8, x20
  373eb4:      	str	d0, [x8]
  373eb8:      	ldr	s0, [sp, #0x38]
  373ebc:      	str	s0, [x8, #0x8]
  373ec0:      	add	x0, sp, #0x30
  373ec4:      	bl	0x8e2e04 <__ZN3BRC4Vec3D1Ev>
  373ec8:      	ldr	x8, [x24]
  373ecc:      	add	x8, x8, x21
  373ed0:      	ldp	s0, s1, [x8]
  373ed4:      	add	x0, sp, #0x30
  373ed8:      	fmov	s2, #1.00000000
  373edc:      	bl	0x8e2d44 <__ZN3BRC4Vec3C1Efff>
  373ee0:      	ldr	w8, [x19, #0x308]
  373ee4:      	add	w8, w23, w8
  373ee8:      	ldr	x9, [x19, #0x260]
  373eec:      	umaddl	x8, w8, w25, x9
  373ef0:      	ldr	d0, [sp, #0x30]
  373ef4:      	str	d0, [x8]
  373ef8:      	ldr	s0, [sp, #0x38]
  373efc:      	str	s0, [x8, #0x8]
  373f00:      	add	x0, sp, #0x30
  373f04:      	bl	0x8e2e04 <__ZN3BRC4Vec3D1Ev>
  373f08:      	add	x23, x23, #0x1
  373f0c:      	add	x21, x21, #0x8
  373f10:      	add	x20, x20, #0xc
  373f14:      	cmp	x23, #0x14
  373f18:      	b.ne	0x373e90 <__ZN3BEF16FaceParamV2CV2406updateEPfiiiib+0x224>
  373f1c:      	ldr	x8, [x19, #0x260]
  373f20:      	add	x12, x19, #0x258
  373f24:      	ldr	w9, [x19, #0x308]
  373f28:      	mov	w10, #0xc               ; =12
  373f2c:      	madd	x11, x9, x10, x8
  373f30:      	ld1r.2s	{ v0 }, [x12]
  373f34:      	add	x12, x8, #0xf8
  373f38:      	mov	x13, #-0x13             ; =-19
  373f3c:      	ldur	d1, [x12, #-0xec]
  373f40:      	ldr	d2, [x8]
  373f44:      	fsub.2s	v2, v2, v1
  373f48:      	fmul.2s	v2, v2, v0
  373f4c:      	fadd.2s	v1, v1, v2
  373f50:      	stur	d1, [x12, #-0x8]
  373f54:      	str	wzr, [x12], #0xc
  373f58:      	add	w14, w9, w13
  373f5c:      	add	w15, w14, #0x27
  373f60:      	add	w14, w14, #0x14
  373f64:      	smull	x14, w14, w10
  373f68:      	smaddl	x15, w15, w10, x8
  373f6c:      	ldr	d1, [x8, x14]
  373f70:      	ldr	d2, [x11]
  373f74:      	fsub.2s	v2, v2, v1
  373f78:      	fmul.2s	v2, v0, v2
  373f7c:      	fadd.2s	v1, v1, v2
  373f80:      	str	d1, [x15]
  373f84:      	str	wzr, [x15, #0x8]
  373f88:      	adds	x13, x13, #0x1
  373f8c:      	b.lo	0x373f3c <__ZN3BEF16FaceParamV2CV2406updateEPfiiiib+0x2d0>
  373f90:      	eor	w0, w22, #0x1
  373f94:      	ldp	x29, x30, [sp, #0x80]
  373f98:      	ldp	x20, x19, [sp, #0x70]
  373f9c:      	ldp	x22, x21, [sp, #0x60]
  373fa0:      	ldp	x24, x23, [sp, #0x50]
  373fa4:      	ldp	x26, x25, [sp, #0x40]
  373fa8:      	add	sp, sp, #0x90
  373fac:      	ret

0000000000373fb0 <__ZN3BEF16FaceParamV2CV24013getFaceVertexERiS1_i>:
  373fb0:      	ldp	x8, x9, [x0, #0x198]
  373fb4:      	sub	x9, x9, x8
  373fb8:      	lsr	x9, x9, #3
  373fbc:      	str	w9, [x1]
  373fc0:      	mov	w9, #0x2                ; =2
  373fc4:      	str	w9, [x2]
  373fc8:      	mov	x0, x8
  373fcc:      	ret

0000000000373fd0 <__ZN3BEF16FaceParamV2CV24013getFaceVertexEi>:
  373fd0:      	stp	x20, x19, [sp, #-0x20]!
  373fd4:      	stp	x29, x30, [sp, #0x10]
  373fd8:      	add	x29, sp, #0x10
  373fdc:      	cmp	w1, #0xef
  373fe0:      	b.gt	0x374008 <__ZN3BEF16FaceParamV2CV24013getFaceVertexEi+0x38>
  373fe4:      	cmp	w1, #0x6a
  373fe8:      	b.eq	0x3740d0 <__ZN3BEF16FaceParamV2CV24013getFaceVertexEi+0x100>
  373fec:      	cmp	w1, #0xb4
  373ff0:      	b.ne	0x3740f0 <__ZN3BEF16FaceParamV2CV24013getFaceVertexEi+0x120>
  373ff4:      	add	x19, x0, #0x168
  373ff8:      	mov	x0, x19
  373ffc:      	ldp	x29, x30, [sp, #0x10]
  374000:      	ldp	x20, x19, [sp], #0x20
  374004:      	ret
  374008:      	cmp	w1, #0xf0
  37400c:      	b.eq	0x3740dc <__ZN3BEF16FaceParamV2CV24013getFaceVertexEi+0x10c>
  374010:      	cmp	w1, #0x127
  374014:      	b.ne	0x3740f0 <__ZN3BEF16FaceParamV2CV24013getFaceVertexEi+0x120>
  374018:      	add	x19, x0, #0x240
  37401c:      	ldr	x8, [x0, #0x240]
  374020:      	ldr	x9, [x0, #0x248]
  374024:      	cmp	x9, x8
  374028:      	b.ne	0x373ff8 <__ZN3BEF16FaceParamV2CV24013getFaceVertexEi+0x28>
  37402c:      	mov	x0, x19
  374030:      	mov	w1, #0x127              ; =295
  374034:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  374038:      	mov	x9, #0x0                ; =0
  37403c:      	ldr	x8, [x19]
  374040:      	adrp	x10, 0x2c47000 <__ZTSN3BEF16FaceBrowV2FilterE+0x40>
  374044:      	add	x10, x10, #0xe80
  374048:      	add	x11, x10, x9
  37404c:      	ldp	q0, q1, [x11]
  374050:      	ldp	q2, q3, [x11, #0x20]
  374054:      	add	x11, x8, x9
  374058:      	stp	q0, q1, [x11]
  37405c:      	stp	q2, q3, [x11, #0x20]
  374060:      	add	x9, x9, #0x40
  374064:      	cmp	x9, #0x900
  374068:      	b.ne	0x374048 <__ZN3BEF16FaceParamV2CV24013getFaceVertexEi+0x78>
  37406c:      	adrp	x9, 0x2c47000 <__ZTSN3BEF16FaceBrowV2FilterE+0x40>
  374070:      	ldr	d0, [x9, #0xe30]
  374074:      	str	d0, [x8, #0x900]
  374078:      	nop
  37407c:      	ldr	d0, [x9, #0xe38]
  374080:      	str	d0, [x8, #0x908]
  374084:      	nop
  374088:      	ldr	d0, [x9, #0xe40]
  37408c:      	str	d0, [x8, #0x910]
  374090:      	nop
  374094:      	ldr	d0, [x9, #0xe48]
  374098:      	str	d0, [x8, #0x918]
  37409c:      	nop
  3740a0:      	ldr	d0, [x9, #0xe50]
  3740a4:      	str	d0, [x8, #0x920]
  3740a8:      	nop
  3740ac:      	ldr	d0, [x9, #0xe58]
  3740b0:      	str	d0, [x8, #0x928]
  3740b4:      	nop
  3740b8:      	ldr	d0, [x9, #0xe60]
  3740bc:      	str	d0, [x8, #0x930]
  3740c0:      	mov	x0, x19
  3740c4:      	ldp	x29, x30, [sp, #0x10]
  3740c8:      	ldp	x20, x19, [sp], #0x20
  3740cc:      	ret
  3740d0:      	ldp	x29, x30, [sp, #0x10]
  3740d4:      	ldp	x20, x19, [sp], #0x20
  3740d8:      	b	0x374104 <__ZN3BEF16FaceParamV2CV24021getRefinedLandmark106Ev>
  3740dc:      	add	x19, x0, #0x180
  3740e0:      	mov	x0, x19
  3740e4:      	ldp	x29, x30, [sp, #0x10]
  3740e8:      	ldp	x20, x19, [sp], #0x20
  3740ec:      	ret
  3740f0:      	add	x19, x0, #0x198
  3740f4:      	mov	x0, x19
  3740f8:      	ldp	x29, x30, [sp, #0x10]
  3740fc:      	ldp	x20, x19, [sp], #0x20
  374100:      	ret

0000000000374104 <__ZN3BEF16FaceParamV2CV24021getRefinedLandmark106Ev>:
  374104:      	stp	d9, d8, [sp, #-0x70]!
  374108:      	stp	x28, x27, [sp, #0x10]
  37410c:      	stp	x26, x25, [sp, #0x20]
  374110:      	stp	x24, x23, [sp, #0x30]
  374114:      	stp	x22, x21, [sp, #0x40]
  374118:      	stp	x20, x19, [sp, #0x50]
  37411c:      	stp	x29, x30, [sp, #0x60]
  374120:      	add	x29, sp, #0x60
  374124:      	sub	sp, sp, #0x3d0
  374128:      	mov	x21, x0
  37412c:      	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
  374130:      	ldr	x8, [x8, #0x6a8]
  374134:      	ldr	x8, [x8]
  374138:      	stur	x8, [x29, #-0x70]
  37413c:      	ldr	x8, [x0, #0x20]
  374140:      	ldr	w9, [x8, #0x14]
  374144:      	cmp	w9, #0x1
  374148:      	b.lt	0x3742f4 <__ZN3BEF16FaceParamV2CV24021getRefinedLandmark106Ev+0x1f0>
  37414c:      	ldr	x9, [x21, #0x150]
  374150:      	add	x10, x8, #0x180
  374154:      	ldr	d0, [x8, #0x180]
  374158:      	str	d0, [x9, #0x108]
  37415c:      	ldr	s0, [x8, #0x188]
  374160:      	ldr	s1, [x8, #0x190]
  374164:      	fadd	s0, s0, s1
  374168:      	ldr	s1, [x10, #0xc]
  37416c:      	ldr	s2, [x10, #0x14]
  374170:      	fadd	s1, s1, s2
  374174:      	add	x0, sp, #0x1b8
  374178:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  37417c:      	fmov	s8, #0.50000000
