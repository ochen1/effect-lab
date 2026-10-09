
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000001c6ec0c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii>:
 1c6ec0c:      	sub	sp, sp, #0x90
 1c6ec10:      	stp	d9, d8, [sp, #0x20]
 1c6ec14:      	stp	x28, x27, [sp, #0x30]
 1c6ec18:      	stp	x26, x25, [sp, #0x40]
 1c6ec1c:      	stp	x24, x23, [sp, #0x50]
 1c6ec20:      	stp	x22, x21, [sp, #0x60]
 1c6ec24:      	stp	x20, x19, [sp, #0x70]
 1c6ec28:      	stp	x29, x30, [sp, #0x80]
 1c6ec2c:      	add	x29, sp, #0x80
 1c6ec30:      	mov	x21, x4
 1c6ec34:      	mov	x22, x3
 1c6ec38:      	mov	x23, x2
 1c6ec3c:      	mov	x20, x1
 1c6ec40:      	mov	x24, x0
 1c6ec44:      	mov	x19, x8
 1c6ec48:      	str	xzr, [x8]
 1c6ec4c:      	mov	w0, #0x28               ; =40
 1c6ec50:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c6ec54:      	str	wzr, [x0, #0x8]
 1c6ec58:      	adrp	x28, 0x361a000 <__ZTIN4Bach21BachAlgorithmSystemGEE+0x470>
 1c6ec5c:      	add	x28, x28, #0xf00
 1c6ec60:      	add	x8, x28, #0x10
 1c6ec64:      	str	x8, [x0]
 1c6ec68:      	stp	xzr, xzr, [x0, #0x18]
 1c6ec6c:      	str	xzr, [x0, #0x10]
 1c6ec70:      	str	x0, [x19]
 1c6ec74:      	bl	0x22751c4 <__ZNK13AmazingEngine7RefBase6retainEv>
 1c6ec78:      	ldr	x25, [x19]
 1c6ec7c:      	mov	x0, x25
 1c6ec80:      	ldr	x9, [x0, #0x10]!
 1c6ec84:      	ldr	x8, [x25, #0x18]
 1c6ec88:      	sub	x10, x8, x9
 1c6ec8c:      	asr	x11, x10, #3
 1c6ec90:      	cmp	x11, #0x126
 1c6ec94:      	b.hi	0x1c6ecb0 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xa4>
 1c6ec98:      	mov	w8, #0x127              ; =295
 1c6ec9c:      	sub	x1, x8, x11
 1c6eca0:      	bl	0x20f7ca0 <__ZNK4Bach10BachObjectcvPNS_10BachVectorEEv+0x21b0>
 1c6eca4:      	ldr	x25, [x19]
 1c6eca8:      	ldr	x8, [x25, #0x18]
 1c6ecac:      	b	0x1c6ecc0 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xb4>
 1c6ecb0:      	cmp	x10, #0x938
 1c6ecb4:      	b.eq	0x1c6ecc0 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xb4>
 1c6ecb8:      	add	x8, x9, #0x938
 1c6ecbc:      	str	x8, [x25, #0x18]
 1c6ecc0:      	ldr	x9, [x25, #0x10]
 1c6ecc4:      	cmp	x8, x9
 1c6ecc8:      	csel	x0, xzr, x9, eq
 1c6eccc:      	ldr	x8, [x24]
 1c6ecd0:      	ldp	x9, x8, [x8, #0x10]
 1c6ecd4:      	cmp	x8, x9
 1c6ecd8:      	csel	x1, xzr, x9, eq
 1c6ecdc:      	mov	w2, #0x108              ; =264
 1c6ece0:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c6ece4:      	ldp	x8, x9, [x25, #0x10]
 1c6ece8:      	cmp	x9, x8
 1c6ecec:      	csel	x8, xzr, x8, eq
 1c6ecf0:      	ldr	x9, [x24]
 1c6ecf4:      	ldp	x10, x9, [x9, #0x10]
 1c6ecf8:      	cmp	x9, x10
 1c6ecfc:      	csel	x9, xzr, x10, eq
 1c6ed00:      	add	x8, x8, #0x108
 1c6ed04:      	add	x9, x9, #0x158
 1c6ed08:      	ldr	q0, [x9]
 1c6ed0c:      	str	q0, [x8]
 1c6ed10:      	ldp	q1, q0, [x9, #0x20]
 1c6ed14:      	ldr	x10, [x9, #0x40]
 1c6ed18:      	ldr	q2, [x9, #0x10]
 1c6ed1c:      	str	x10, [x8, #0x40]
 1c6ed20:      	stp	q1, q0, [x8, #0x20]
 1c6ed24:      	str	q2, [x8, #0x10]
 1c6ed28:      	ldp	x8, x9, [x25, #0x10]
 1c6ed2c:      	cmp	x9, x8
 1c6ed30:      	csel	x8, xzr, x8, eq
 1c6ed34:      	ldr	x9, [x24]
 1c6ed38:      	ldp	x10, x9, [x9, #0x10]
 1c6ed3c:      	cmp	x9, x10
 1c6ed40:      	csel	x9, xzr, x10, eq
 1c6ed44:      	ldp	q0, q1, [x9, #0x280]
 1c6ed48:      	stp	q0, q1, [x8, #0x150]
 1c6ed4c:      	cmp	w23, #0x1
 1c6ed50:      	b.lt	0x1c6edec <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1e0>
 1c6ed54:      	ldp	x8, x9, [x25, #0x10]
 1c6ed58:      	cmp	x9, x8
 1c6ed5c:      	csel	x8, xzr, x8, eq
 1c6ed60:      	ldr	x9, [x20]
 1c6ed64:      	ldp	x10, x9, [x9, #0x10]
 1c6ed68:      	cmp	x9, x10
 1c6ed6c:      	csel	x9, xzr, x10, eq
 1c6ed70:      	ldp	q0, q1, [x9, #0x50]
 1c6ed74:      	ldp	q3, q2, [x9, #0x30]
 1c6ed78:      	stp	q0, q1, [x8, #0x1c0]
 1c6ed7c:      	stp	q3, q2, [x8, #0x1a0]
 1c6ed80:      	ldp	q0, q1, [x9, #0x90]
 1c6ed84:      	ldp	q3, q2, [x9, #0x70]
 1c6ed88:      	stp	q0, q1, [x8, #0x200]
 1c6ed8c:      	stp	q3, q2, [x8, #0x1e0]
 1c6ed90:      	ldp	q0, q1, [x9]
 1c6ed94:      	ldr	q2, [x9, #0x20]
 1c6ed98:      	stp	q1, q2, [x8, #0x180]
 1c6ed9c:      	str	q0, [x8, #0x170]
 1c6eda0:      	ldp	x8, x9, [x25, #0x10]
 1c6eda4:      	cmp	x9, x8
 1c6eda8:      	csel	x8, xzr, x8, eq
 1c6edac:      	ldr	x9, [x20]
 1c6edb0:      	ldp	x10, x9, [x9, #0x10]
 1c6edb4:      	cmp	x9, x10
 1c6edb8:      	csel	x9, xzr, x10, eq
 1c6edbc:      	ldp	q0, q1, [x9, #0x100]
 1c6edc0:      	ldp	q3, q2, [x9, #0xe0]
 1c6edc4:      	stp	q0, q1, [x8, #0x270]
 1c6edc8:      	stp	q3, q2, [x8, #0x250]
 1c6edcc:      	ldp	q0, q1, [x9, #0x120]
 1c6edd0:      	ldp	q2, q3, [x9, #0x140]
 1c6edd4:      	stp	q2, q3, [x8, #0x2b0]
 1c6edd8:      	stp	q0, q1, [x8, #0x290]
 1c6eddc:      	ldp	q0, q1, [x9, #0xb0]
 1c6ede0:      	ldr	q2, [x9, #0xd0]
 1c6ede4:      	stp	q1, q2, [x8, #0x230]
 1c6ede8:      	str	q0, [x8, #0x220]
 1c6edec:      	cmp	w22, #0x1
 1c6edf0:      	b.lt	0x1c6ee84 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x278>
 1c6edf4:      	ldp	x8, x9, [x25, #0x10]
 1c6edf8:      	cmp	x9, x8
 1c6edfc:      	csel	x8, xzr, x8, eq
 1c6ee00:      	ldr	x9, [x20]
 1c6ee04:      	ldp	x10, x9, [x9, #0x10]
 1c6ee08:      	cmp	x9, x10
 1c6ee0c:      	csel	x9, xzr, x10, eq
 1c6ee10:      	ldp	q1, q0, [x9, #0x1a0]
 1c6ee14:      	ldr	x10, [x9, #0x1c0]
 1c6ee18:      	ldr	q2, [x9, #0x190]
 1c6ee1c:      	str	x10, [x8, #0x330]
 1c6ee20:      	stp	q1, q0, [x8, #0x310]
 1c6ee24:      	str	q2, [x8, #0x300]
 1c6ee28:      	ldp	q0, q1, [x9, #0x160]
 1c6ee2c:      	ldr	q2, [x9, #0x180]
 1c6ee30:      	stp	q1, q2, [x8, #0x2e0]
 1c6ee34:      	str	q0, [x8, #0x2d0]
 1c6ee38:      	ldp	x8, x9, [x25, #0x10]
 1c6ee3c:      	cmp	x9, x8
 1c6ee40:      	csel	x8, xzr, x8, eq
 1c6ee44:      	ldr	x9, [x20]
 1c6ee48:      	ldp	x10, x9, [x9, #0x10]
 1c6ee4c:      	cmp	x9, x10
 1c6ee50:      	csel	x9, xzr, x10, eq
 1c6ee54:      	add	x8, x8, #0x338
 1c6ee58:      	add	x9, x9, #0x1c8
 1c6ee5c:      	ldp	q1, q0, [x9, #0x40]
 1c6ee60:      	ldr	x10, [x9, #0x60]
 1c6ee64:      	ldr	q2, [x9, #0x30]
 1c6ee68:      	str	x10, [x8, #0x60]
 1c6ee6c:      	stp	q1, q0, [x8, #0x40]
 1c6ee70:      	str	q2, [x8, #0x30]
 1c6ee74:      	ldp	q0, q1, [x9]
 1c6ee78:      	ldr	q2, [x9, #0x20]
 1c6ee7c:      	stp	q1, q2, [x8, #0x10]
 1c6ee80:      	str	q0, [x8]
 1c6ee84:      	cmp	w21, #0x1
 1c6ee88:      	b.lt	0x1c6eeb8 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2ac>
 1c6ee8c:      	ldp	x8, x9, [x25, #0x10]
 1c6ee90:      	cmp	x9, x8
 1c6ee94:      	csel	x8, xzr, x8, eq
 1c6ee98:      	ldr	x9, [x20]
 1c6ee9c:      	ldp	x10, x9, [x9, #0x10]
 1c6eea0:      	cmp	x9, x10
 1c6eea4:      	csel	x9, xzr, x10, eq
 1c6eea8:      	add	x0, x8, #0x3a0
 1c6eeac:      	add	x1, x9, #0x230
 1c6eeb0:      	mov	w2, #0x200              ; =512
 1c6eeb4:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c6eeb8:      	ldr	x8, [x25, #0x10]
 1c6eebc:      	ldr	d0, [x8, #0x928]
 1c6eec0:      	ldp	d1, d2, [x8, #0x170]
 1c6eec4:      	fadd.2s	v0, v1, v0
 1c6eec8:      	fadd.2s	v0, v2, v0
 1c6eecc:      	ldp	d1, d2, [x8, #0x180]
 1c6eed0:      	fadd.2s	v0, v1, v0
 1c6eed4:      	fadd.2s	v0, v2, v0
 1c6eed8:      	ldp	d1, d2, [x8, #0x190]
 1c6eedc:      	fadd.2s	v0, v1, v0
 1c6eee0:      	fadd.2s	v0, v2, v0
 1c6eee4:      	ldp	d1, d2, [x8, #0x1a0]
 1c6eee8:      	fadd.2s	v0, v1, v0
 1c6eeec:      	fadd.2s	v0, v2, v0
 1c6eef0:      	ldp	d1, d2, [x8, #0x1b0]
 1c6eef4:      	fadd.2s	v0, v1, v0
 1c6eef8:      	fadd.2s	v0, v2, v0
 1c6eefc:      	ldp	d1, d2, [x8, #0x1c0]
 1c6ef00:      	fadd.2s	v0, v1, v0
 1c6ef04:      	fadd.2s	v0, v2, v0
 1c6ef08:      	ldp	d1, d2, [x8, #0x1d0]
 1c6ef0c:      	fadd.2s	v0, v1, v0
 1c6ef10:      	fadd.2s	v0, v2, v0
 1c6ef14:      	ldp	d1, d2, [x8, #0x1e0]
 1c6ef18:      	fadd.2s	v0, v1, v0
 1c6ef1c:      	fadd.2s	v0, v2, v0
 1c6ef20:      	ldp	d1, d2, [x8, #0x1f0]
 1c6ef24:      	fadd.2s	v0, v1, v0
 1c6ef28:      	fadd.2s	v0, v2, v0
 1c6ef2c:      	ldr	d1, [x8, #0x200]
 1c6ef30:      	fadd.2s	v0, v1, v0
 1c6ef34:      	ldr	d1, [x8, #0x208]
 1c6ef38:      	fadd.2s	v0, v1, v0
 1c6ef3c:      	ldr	d1, [x8, #0x210]
 1c6ef40:      	fadd.2s	v0, v1, v0
 1c6ef44:      	ldr	d1, [x8, #0x218]
 1c6ef48:      	fadd.2s	v0, v1, v0
 1c6ef4c:      	str	d0, [x8, #0x928]
 1c6ef50:      	ldr	x8, [x25, #0x10]
 1c6ef54:      	ldr	d0, [x8, #0x928]
 1c6ef58:      	fmov.2s	v1, #22.00000000
 1c6ef5c:      	fdiv.2s	v0, v0, v1
 1c6ef60:      	str	d0, [x8, #0x928]
 1c6ef64:      	ldr	d0, [x8, #0x220]
 1c6ef68:      	ldr	d2, [x8, #0x930]
 1c6ef6c:      	fadd.2s	v0, v0, v2
 1c6ef70:      	ldr	d2, [x8, #0x228]
 1c6ef74:      	fadd.2s	v0, v2, v0
 1c6ef78:      	ldr	d2, [x8, #0x230]
 1c6ef7c:      	fadd.2s	v0, v2, v0
 1c6ef80:      	ldr	d2, [x8, #0x238]
 1c6ef84:      	fadd.2s	v0, v2, v0
 1c6ef88:      	ldr	d2, [x8, #0x240]
 1c6ef8c:      	fadd.2s	v0, v2, v0
 1c6ef90:      	ldr	d2, [x8, #0x248]
 1c6ef94:      	fadd.2s	v0, v2, v0
 1c6ef98:      	ldr	d2, [x8, #0x250]
 1c6ef9c:      	fadd.2s	v0, v2, v0
 1c6efa0:      	ldr	d2, [x8, #0x258]
 1c6efa4:      	fadd.2s	v0, v2, v0
 1c6efa8:      	ldr	d2, [x8, #0x260]
 1c6efac:      	fadd.2s	v0, v2, v0
 1c6efb0:      	ldr	d2, [x8, #0x268]
 1c6efb4:      	fadd.2s	v0, v2, v0
 1c6efb8:      	ldr	d2, [x8, #0x270]
 1c6efbc:      	fadd.2s	v0, v2, v0
 1c6efc0:      	ldr	d2, [x8, #0x278]
 1c6efc4:      	fadd.2s	v0, v2, v0
 1c6efc8:      	ldr	d2, [x8, #0x280]
 1c6efcc:      	fadd.2s	v0, v2, v0
 1c6efd0:      	ldr	d2, [x8, #0x288]
 1c6efd4:      	fadd.2s	v0, v2, v0
 1c6efd8:      	ldr	d2, [x8, #0x290]
 1c6efdc:      	fadd.2s	v0, v2, v0
 1c6efe0:      	ldr	d2, [x8, #0x298]
 1c6efe4:      	fadd.2s	v0, v2, v0
 1c6efe8:      	ldr	d2, [x8, #0x2a0]
 1c6efec:      	fadd.2s	v0, v2, v0
 1c6eff0:      	ldr	d2, [x8, #0x2a8]
 1c6eff4:      	fadd.2s	v0, v2, v0
 1c6eff8:      	ldr	d2, [x8, #0x2b0]
 1c6effc:      	fadd.2s	v0, v2, v0
 1c6f000:      	ldr	d2, [x8, #0x2b8]
 1c6f004:      	fadd.2s	v0, v2, v0
 1c6f008:      	ldr	d2, [x8, #0x2c0]
 1c6f00c:      	fadd.2s	v0, v2, v0
 1c6f010:      	ldr	d2, [x8, #0x2c8]
 1c6f014:      	fadd.2s	v0, v2, v0
 1c6f018:      	fdiv.2s	v2, v0, v1
 1c6f01c:      	str	d2, [x8, #0x930]
 1c6f020:      	ldr	d1, [x8, #0x928]
 1c6f024:      	movi.2s	v0, #0x3f, lsl #24
 1c6f028:      	fmul.2s	v1, v1, v0
 1c6f02c:      	ldr	d3, [x8]
 1c6f030:      	fmul.2s	v3, v3, v0
 1c6f034:      	fadd.2s	v1, v1, v3
 1c6f038:      	fmul.2s	v2, v2, v0
 1c6f03c:      	ldr	d3, [x8, #0x100]
 1c6f040:      	fmul.2s	v3, v3, v0
 1c6f044:      	fadd.2s	v2, v2, v3
 1c6f048:      	fsub.2s	v2, v2, v1
 1c6f04c:      	mov	w8, #0x7ae1             ; =31457
 1c6f050:      	movk	w8, #0x3f94, lsl #16
 1c6f054:      	dup.2s	v3, w8
 1c6f058:      	fmul.2s	v4, v2, v3
 1c6f05c:      	mov	w8, #0xd70a             ; =55050
 1c6f060:      	movk	w8, #0xbec3, lsl #16
 1c6f064:      	dup.2s	v3, w8
 1c6f068:      	fmul.2s	v3, v2, v3
 1c6f06c:      	rev64.2s	v3, v3
 1c6f070:      	fsub.2s	v5, v4, v3
 1c6f074:      	fadd.2s	v4, v4, v3
 1c6f078:      	mov.s	v5[1], v4[1]
 1c6f07c:      	fadd.2s	v4, v1, v5
 1c6f080:      	ldr	x8, [x19]
 1c6f084:      	ldr	x8, [x8, #0x10]
 1c6f088:      	mov	w9, #0x3d71             ; =15729
 1c6f08c:      	movk	w9, #0x3f8a, lsl #16
 1c6f090:      	dup.2s	v5, w9
 1c6f094:      	str	d4, [x8, #0x5a0]
 1c6f098:      	fmul.2s	v5, v2, v5
 1c6f09c:      	mov	w8, #0xe979             ; =59769
 1c6f0a0:      	movk	w8, #0xbf06, lsl #16
 1c6f0a4:      	dup.2s	v4, w8
 1c6f0a8:      	fmul.2s	v4, v2, v4
 1c6f0ac:      	rev64.2s	v4, v4
 1c6f0b0:      	fsub.2s	v6, v5, v4
 1c6f0b4:      	fadd.2s	v5, v5, v4
 1c6f0b8:      	mov.s	v6[1], v5[1]
 1c6f0bc:      	fadd.2s	v5, v1, v6
 1c6f0c0:      	ldr	x8, [x19]
 1c6f0c4:      	ldr	x8, [x8, #0x10]
 1c6f0c8:      	str	d5, [x8, #0x5a8]
 1c6f0cc:      	mov	w8, #0x51ec             ; =20972
 1c6f0d0:      	movk	w8, #0x3f78, lsl #16
 1c6f0d4:      	dup.2s	v5, w8
 1c6f0d8:      	fmul.2s	v6, v2, v5
 1c6f0dc:      	mov	w8, #0xba5e             ; =47710
 1c6f0e0:      	movk	w8, #0xbf29, lsl #16
 1c6f0e4:      	dup.2s	v5, w8
 1c6f0e8:      	fmul.2s	v5, v2, v5
 1c6f0ec:      	rev64.2s	v5, v5
 1c6f0f0:      	fsub.2s	v7, v6, v5
 1c6f0f4:      	fadd.2s	v6, v6, v5
 1c6f0f8:      	mov.s	v7[1], v6[1]
 1c6f0fc:      	fadd.2s	v6, v1, v7
 1c6f100:      	ldr	x8, [x19]
 1c6f104:      	ldr	x8, [x8, #0x10]
 1c6f108:      	str	d6, [x8, #0x5b0]
 1c6f10c:      	mov	w8, #0x7ae1             ; =31457
 1c6f110:      	movk	w8, #0x3f54, lsl #16
 1c6f114:      	dup.2s	v6, w8
 1c6f118:      	fmul.2s	v7, v2, v6
 1c6f11c:      	mov	w8, #0xd70a             ; =55050
 1c6f120:      	movk	w8, #0xbf43, lsl #16
 1c6f124:      	dup.2s	v6, w8
 1c6f128:      	fmul.2s	v6, v2, v6
 1c6f12c:      	rev64.2s	v6, v6
 1c6f130:      	fsub.2s	v16, v7, v6
 1c6f134:      	fadd.2s	v7, v7, v6
 1c6f138:      	mov.s	v16[1], v7[1]
 1c6f13c:      	fadd.2s	v7, v1, v16
 1c6f140:      	ldr	x8, [x19]
 1c6f144:      	ldr	x8, [x8, #0x10]
 1c6f148:      	str	d7, [x8, #0x5b8]
 1c6f14c:      	mov	w8, #0x851f             ; =34079
 1c6f150:      	movk	w8, #0x3f2b, lsl #16
 1c6f154:      	dup.2s	v7, w8
 1c6f158:      	fmul.2s	v7, v2, v7
 1c6f15c:      	mov	w8, #0x126f             ; =4719
 1c6f160:      	movk	w8, #0xbf53, lsl #16
 1c6f164:      	dup.2s	v16, w8
 1c6f168:      	fmul.2s	v16, v2, v16
 1c6f16c:      	rev64.2s	v16, v16
 1c6f170:      	fsub.2s	v17, v7, v16
 1c6f174:      	fadd.2s	v7, v7, v16
 1c6f178:      	mov.s	v17[1], v7[1]
 1c6f17c:      	fadd.2s	v7, v1, v17
 1c6f180:      	ldr	x8, [x19]
 1c6f184:      	ldr	x8, [x8, #0x10]
 1c6f188:      	str	d7, [x8, #0x5c0]
 1c6f18c:      	fmul.2s	v7, v2, v0
 1c6f190:      	mov	w8, #0x999a             ; =39322
 1c6f194:      	movk	w8, #0xbf59, lsl #16
 1c6f198:      	dup.2s	v17, w8
 1c6f19c:      	fmul.2s	v17, v2, v17
 1c6f1a0:      	rev64.2s	v17, v17
 1c6f1a4:      	fsub.2s	v18, v7, v17
 1c6f1a8:      	fadd.2s	v7, v7, v17
 1c6f1ac:      	mov.s	v18[1], v7[1]
 1c6f1b0:      	fadd.2s	v7, v1, v18
 1c6f1b4:      	ldr	x8, [x19]
 1c6f1b8:      	ldr	x8, [x8, #0x10]
 1c6f1bc:      	str	d7, [x8, #0x5c8]
 1c6f1c0:      	mov	w8, #0xf5c3             ; =62915
 1c6f1c4:      	movk	w8, #0x3ea8, lsl #16
 1c6f1c8:      	dup.2s	v7, w8
 1c6f1cc:      	fmul.2s	v7, v2, v7
 1c6f1d0:      	fsub.2s	v17, v7, v16
 1c6f1d4:      	fadd.2s	v7, v7, v16
 1c6f1d8:      	mov.s	v17[1], v7[1]
 1c6f1dc:      	fadd.2s	v7, v1, v17
 1c6f1e0:      	ldr	x8, [x19]
 1c6f1e4:      	ldr	x8, [x8, #0x10]
 1c6f1e8:      	str	d7, [x8, #0x5d0]
 1c6f1ec:      	mov	w8, #0x147b             ; =5243
 1c6f1f0:      	movk	w8, #0x3e2e, lsl #16
 1c6f1f4:      	dup.2s	v7, w8
 1c6f1f8:      	fmul.2s	v7, v2, v7
 1c6f1fc:      	fsub.2s	v16, v7, v6
 1c6f200:      	fadd.2s	v6, v7, v6
 1c6f204:      	mov.s	v16[1], v6[1]
 1c6f208:      	fadd.2s	v6, v1, v16
 1c6f20c:      	ldr	x8, [x19]
 1c6f210:      	ldr	x8, [x8, #0x10]
 1c6f214:      	str	d6, [x8, #0x5d8]
 1c6f218:      	mov	w8, #0xc28f             ; =49807
 1c6f21c:      	movk	w8, #0x3cf5, lsl #16
 1c6f220:      	dup.2s	v6, w8
 1c6f224:      	fmul.2s	v6, v2, v6
 1c6f228:      	fsub.2s	v7, v6, v5
 1c6f22c:      	fadd.2s	v5, v6, v5
 1c6f230:      	mov.s	v7[1], v5[1]
 1c6f234:      	fadd.2s	v5, v1, v7
 1c6f238:      	ldr	x8, [x19]
 1c6f23c:      	ldr	x8, [x8, #0x10]
 1c6f240:      	str	d5, [x8, #0x5e0]
 1c6f244:      	mov	w8, #0xd70a             ; =55050
 1c6f248:      	movk	w8, #0xbda3, lsl #16
 1c6f24c:      	dup.2s	v5, w8
 1c6f250:      	fmul.2s	v5, v2, v5
 1c6f254:      	fsub.2s	v6, v5, v4
 1c6f258:      	fadd.2s	v4, v5, v4
 1c6f25c:      	mov.s	v6[1], v4[1]
 1c6f260:      	fadd.2s	v4, v1, v6
 1c6f264:      	ldr	x8, [x19]
 1c6f268:      	ldr	x8, [x8, #0x10]
 1c6f26c:      	str	d4, [x8, #0x5e8]
 1c6f270:      	mov	w8, #0xd70a             ; =55050
 1c6f274:      	movk	w8, #0xbe23, lsl #16
 1c6f278:      	dup.2s	v4, w8
 1c6f27c:      	fmul.2s	v2, v2, v4
 1c6f280:      	fsub.2s	v4, v2, v3
 1c6f284:      	fadd.2s	v2, v2, v3
 1c6f288:      	mov.s	v4[1], v2[1]
 1c6f28c:      	fadd.2s	v1, v1, v4
 1c6f290:      	ldr	x8, [x19]
 1c6f294:      	ldr	x8, [x8, #0x10]
 1c6f298:      	str	d1, [x8, #0x5f0]
 1c6f29c:      	ldr	x8, [x19]
 1c6f2a0:      	ldr	x8, [x8, #0x10]
 1c6f2a4:      	ldr	d1, [x8, #0x108]
 1c6f2a8:      	fmul.2s	v1, v1, v0
 1c6f2ac:      	ldr	d2, [x8, #0x1c8]
 1c6f2b0:      	fmul.2s	v2, v2, v0
 1c6f2b4:      	fadd.2s	v1, v1, v2
 1c6f2b8:      	str	d1, [x8, #0x5f8]
 1c6f2bc:      	ldr	x8, [x19]
 1c6f2c0:      	ldr	x8, [x8, #0x10]
 1c6f2c4:      	ldr	d1, [x8, #0x108]
 1c6f2c8:      	fmul.2s	v1, v1, v0
 1c6f2cc:      	ldr	d2, [x8, #0x278]
 1c6f2d0:      	fmul.2s	v2, v2, v0
 1c6f2d4:      	fadd.2s	v1, v1, v2
 1c6f2d8:      	str	d1, [x8, #0x600]
 1c6f2dc:      	ldr	x8, [x19]
 1c6f2e0:      	ldr	x8, [x8, #0x10]
 1c6f2e4:      	ldr	d1, [x8, #0x170]
 1c6f2e8:      	fmul.2s	v1, v1, v0
 1c6f2ec:      	ldr	d2, [x8]
 1c6f2f0:      	fmul.2s	v2, v2, v0
 1c6f2f4:      	fadd.2s	v1, v1, v2
 1c6f2f8:      	str	d1, [x8, #0x608]
 1c6f2fc:      	ldr	x8, [x19]
 1c6f300:      	ldr	x8, [x8, #0x10]
 1c6f304:      	ldr	d1, [x8, #0x220]
 1c6f308:      	fmul.2s	v1, v1, v0
 1c6f30c:      	ldr	d2, [x8, #0x100]
 1c6f310:      	fmul.2s	v2, v2, v0
 1c6f314:      	fadd.2s	v1, v1, v2
 1c6f318:      	str	d1, [x8, #0x610]
 1c6f31c:      	ldr	x8, [x19]
 1c6f320:      	ldr	x8, [x8, #0x10]
 1c6f324:      	ldr	d1, [x8, #0x368]
 1c6f328:      	fmul.2s	v1, v1, v0
 1c6f32c:      	ldr	d2, [x8, #0x300]
 1c6f330:      	fmul.2s	v2, v2, v0
 1c6f334:      	fadd.2s	v1, v1, v2
 1c6f338:      	str	d1, [x8, #0x618]
 1c6f33c:      	ldr	x8, [x19]
 1c6f340:      	ldr	x8, [x8, #0x10]
 1c6f344:      	ldr	d1, [x8, #0x618]
 1c6f348:      	fmul.2s	v1, v1, v0
 1c6f34c:      	ldr	d2, [x8, #0x108]
 1c6f350:      	fmul.2s	v2, v2, v0
 1c6f354:      	fadd.2s	v1, v1, v2
 1c6f358:      	str	d1, [x8, #0x620]
 1c6f35c:      	ldr	x8, [x19]
 1c6f360:      	ldr	x8, [x8, #0x10]
 1c6f364:      	ldr	d1, [x8, #0x618]
 1c6f368:      	fmul.2s	v1, v1, v0
 1c6f36c:      	ldr	d2, [x8, #0x5c8]
 1c6f370:      	fmul.2s	v2, v2, v0
 1c6f374:      	fadd.2s	v1, v1, v2
 1c6f378:      	str	d1, [x8, #0x628]
 1c6f37c:      	ldr	x8, [x19]
 1c6f380:      	ldr	x8, [x8, #0x10]
 1c6f384:      	ldr	d1, [x8, #0x5c8]
 1c6f388:      	fmul.2s	v1, v1, v0
 1c6f38c:      	ldr	d2, [x8, #0x628]
 1c6f390:      	fmul.2s	v2, v2, v0
 1c6f394:      	fadd.2s	v1, v1, v2
 1c6f398:      	str	d1, [x8, #0x630]
 1c6f39c:      	ldr	x8, [x19]
 1c6f3a0:      	ldr	x8, [x8, #0x10]
 1c6f3a4:      	ldr	d1, [x8, #0x618]
 1c6f3a8:      	fmul.2s	v1, v1, v0
 1c6f3ac:      	ldr	d2, [x8, #0x628]
 1c6f3b0:      	fmul.2s	v2, v2, v0
 1c6f3b4:      	fadd.2s	v1, v1, v2
 1c6f3b8:      	str	d1, [x8, #0x638]
 1c6f3bc:      	ldr	x8, [x19]
 1c6f3c0:      	ldr	x8, [x8, #0x10]
 1c6f3c4:      	ldr	d1, [x8, #0x5e0]
 1c6f3c8:      	fmul.2s	v1, v1, v0
 1c6f3cc:      	ldr	d2, [x8, #0x628]
 1c6f3d0:      	fmul.2s	v2, v2, v0
 1c6f3d4:      	fadd.2s	v1, v1, v2
 1c6f3d8:      	str	d1, [x8, #0x640]
 1c6f3dc:      	ldr	x8, [x19]
 1c6f3e0:      	ldr	x8, [x8, #0x10]
 1c6f3e4:      	ldr	d1, [x8, #0x640]
 1c6f3e8:      	fmul.2s	v1, v1, v0
 1c6f3ec:      	ldr	d2, [x8, #0x2e8]
 1c6f3f0:      	fmul.2s	v2, v2, v0
 1c6f3f4:      	fadd.2s	v1, v1, v2
 1c6f3f8:      	str	d1, [x8, #0x648]
 1c6f3fc:      	ldr	x8, [x19]
 1c6f400:      	ldr	x8, [x8, #0x10]
 1c6f404:      	ldr	d1, [x8, #0x5b0]
 1c6f408:      	fmul.2s	v1, v1, v0
 1c6f40c:      	ldr	d2, [x8, #0x628]
 1c6f410:      	fmul.2s	v2, v2, v0
 1c6f414:      	fadd.2s	v1, v1, v2
 1c6f418:      	str	d1, [x8, #0x650]
 1c6f41c:      	ldr	x8, [x19]
 1c6f420:      	ldr	x8, [x8, #0x10]
 1c6f424:      	ldr	d1, [x8, #0x650]
 1c6f428:      	fmul.2s	v1, v1, v0
 1c6f42c:      	ldr	d2, [x8, #0x350]
 1c6f430:      	fmul.2s	v2, v2, v0
 1c6f434:      	fadd.2s	v1, v1, v2
 1c6f438:      	str	d1, [x8, #0x658]
 1c6f43c:      	ldr	x8, [x19]
 1c6f440:      	ldr	x8, [x8, #0x10]
 1c6f444:      	ldr	d1, [x8, #0x120]
 1c6f448:      	fmul.2s	v1, v1, v0
 1c6f44c:      	ldr	d2, [x8, #0x108]
 1c6f450:      	fmul.2s	v2, v2, v0
 1c6f454:      	fadd.2s	v1, v1, v2
 1c6f458:      	mov	w9, #0xcccd             ; =52429
 1c6f45c:      	movk	w9, #0x3ecc, lsl #16
 1c6f460:      	dup.2s	v2, w9
 1c6f464:      	fmul.2s	v3, v1, v2
 1c6f468:      	mov	w9, #0x3333             ; =13107
 1c6f46c:      	movk	w9, #0x3fb3, lsl #16
 1c6f470:      	dup.2s	v1, w9
 1c6f474:      	ldr	d4, [x8]
 1c6f478:      	fmul.2s	v4, v4, v1
 1c6f47c:      	fsub.2s	v4, v4, v3
 1c6f480:      	str	d4, [x8, #0x660]
 1c6f484:      	ldr	x8, [x19]
 1c6f488:      	ldr	x8, [x8, #0x10]
 1c6f48c:      	ldr	d4, [x8, #0x10]
 1c6f490:      	fmul.2s	v4, v4, v1
 1c6f494:      	fsub.2s	v4, v4, v3
 1c6f498:      	str	d4, [x8, #0x668]
 1c6f49c:      	ldr	x8, [x19]
 1c6f4a0:      	ldr	x8, [x8, #0x10]
 1c6f4a4:      	ldr	d4, [x8, #0x20]
 1c6f4a8:      	fmul.2s	v4, v4, v1
 1c6f4ac:      	fsub.2s	v4, v4, v3
 1c6f4b0:      	str	d4, [x8, #0x670]
 1c6f4b4:      	ldr	x8, [x19]
 1c6f4b8:      	ldr	x8, [x8, #0x10]
 1c6f4bc:      	ldr	d4, [x8, #0x30]
 1c6f4c0:      	fmul.2s	v4, v4, v1
 1c6f4c4:      	fsub.2s	v4, v4, v3
 1c6f4c8:      	str	d4, [x8, #0x678]
 1c6f4cc:      	ldr	x8, [x19]
 1c6f4d0:      	ldr	x8, [x8, #0x10]
 1c6f4d4:      	ldr	d4, [x8, #0x40]
 1c6f4d8:      	fmul.2s	v4, v4, v1
 1c6f4dc:      	fsub.2s	v4, v4, v3
 1c6f4e0:      	str	d4, [x8, #0x680]
 1c6f4e4:      	ldr	x8, [x19]
 1c6f4e8:      	ldr	x8, [x8, #0x10]
 1c6f4ec:      	ldr	d4, [x8, #0x50]
 1c6f4f0:      	fmul.2s	v4, v4, v1
 1c6f4f4:      	fsub.2s	v4, v4, v3
 1c6f4f8:      	str	d4, [x8, #0x688]
 1c6f4fc:      	ldr	x8, [x19]
 1c6f500:      	ldr	x8, [x8, #0x10]
 1c6f504:      	ldr	d4, [x8, #0x60]
 1c6f508:      	fmul.2s	v4, v4, v1
 1c6f50c:      	fsub.2s	v4, v4, v3
 1c6f510:      	str	d4, [x8, #0x690]
 1c6f514:      	ldr	x8, [x19]
 1c6f518:      	ldr	x8, [x8, #0x10]
 1c6f51c:      	ldr	d4, [x8, #0x70]
 1c6f520:      	fmul.2s	v4, v4, v1
 1c6f524:      	fsub.2s	v4, v4, v3
 1c6f528:      	str	d4, [x8, #0x698]
 1c6f52c:      	ldr	x8, [x19]
 1c6f530:      	ldr	x8, [x8, #0x10]
 1c6f534:      	ldr	d4, [x8, #0x80]
 1c6f538:      	fmul.2s	v4, v4, v1
 1c6f53c:      	fsub.2s	v4, v4, v3
 1c6f540:      	str	d4, [x8, #0x6a0]
 1c6f544:      	ldr	x8, [x19]
 1c6f548:      	ldr	x8, [x8, #0x10]
 1c6f54c:      	ldr	d4, [x8, #0x90]
 1c6f550:      	fmul.2s	v4, v4, v1
 1c6f554:      	fsub.2s	v4, v4, v3
 1c6f558:      	str	d4, [x8, #0x6a8]
 1c6f55c:      	ldr	x8, [x19]
 1c6f560:      	ldr	x8, [x8, #0x10]
 1c6f564:      	ldr	d4, [x8, #0xa0]
 1c6f568:      	fmul.2s	v4, v4, v1
 1c6f56c:      	fsub.2s	v4, v4, v3
 1c6f570:      	str	d4, [x8, #0x6b0]
 1c6f574:      	ldr	x8, [x19]
 1c6f578:      	ldr	x8, [x8, #0x10]
 1c6f57c:      	ldr	d4, [x8, #0xb0]
 1c6f580:      	fmul.2s	v4, v4, v1
 1c6f584:      	fsub.2s	v4, v4, v3
 1c6f588:      	str	d4, [x8, #0x6b8]
 1c6f58c:      	ldr	x8, [x19]
 1c6f590:      	ldr	x8, [x8, #0x10]
 1c6f594:      	ldr	d4, [x8, #0xc0]
 1c6f598:      	fmul.2s	v4, v4, v1
 1c6f59c:      	fsub.2s	v4, v4, v3
 1c6f5a0:      	str	d4, [x8, #0x6c0]
 1c6f5a4:      	ldr	x8, [x19]
 1c6f5a8:      	ldr	x8, [x8, #0x10]
 1c6f5ac:      	ldr	d4, [x8, #0xd0]
 1c6f5b0:      	fmul.2s	v4, v4, v1
 1c6f5b4:      	fsub.2s	v4, v4, v3
 1c6f5b8:      	str	d4, [x8, #0x6c8]
 1c6f5bc:      	ldr	x8, [x19]
 1c6f5c0:      	ldr	x8, [x8, #0x10]
 1c6f5c4:      	ldr	d4, [x8, #0xe0]
 1c6f5c8:      	fmul.2s	v4, v4, v1
 1c6f5cc:      	fsub.2s	v4, v4, v3
 1c6f5d0:      	str	d4, [x8, #0x6d0]
 1c6f5d4:      	ldr	x8, [x19]
 1c6f5d8:      	ldr	x8, [x8, #0x10]
 1c6f5dc:      	ldr	d4, [x8, #0xf0]
 1c6f5e0:      	fmul.2s	v4, v4, v1
 1c6f5e4:      	fsub.2s	v4, v4, v3
 1c6f5e8:      	str	d4, [x8, #0x6d8]
 1c6f5ec:      	ldr	x8, [x19]
 1c6f5f0:      	ldr	x8, [x8, #0x10]
 1c6f5f4:      	ldr	d4, [x8, #0x100]
 1c6f5f8:      	fmul.2s	v4, v4, v1
 1c6f5fc:      	fsub.2s	v3, v4, v3
 1c6f600:      	str	d3, [x8, #0x6e0]
 1c6f604:      	ldr	x8, [x19]
 1c6f608:      	ldr	x8, [x8, #0x10]
 1c6f60c:      	ldr	d3, [x8, #0x108]
 1c6f610:      	fmul.2s	v2, v3, v2
 1c6f614:      	ldr	d3, [x8, #0x5a0]
 1c6f618:      	fmul.2s	v3, v3, v1
 1c6f61c:      	fsub.2s	v3, v3, v2
 1c6f620:      	str	d3, [x8, #0x6e8]
 1c6f624:      	ldr	x8, [x19]
 1c6f628:      	ldr	x8, [x8, #0x10]
 1c6f62c:      	ldr	d3, [x8, #0x5a8]
 1c6f630:      	fmul.2s	v3, v3, v1
 1c6f634:      	fsub.2s	v3, v3, v2
 1c6f638:      	str	d3, [x8, #0x6f0]
 1c6f63c:      	ldr	x8, [x19]
 1c6f640:      	ldr	x8, [x8, #0x10]
 1c6f644:      	ldr	d3, [x8, #0x5b0]
 1c6f648:      	fmul.2s	v3, v3, v1
 1c6f64c:      	fsub.2s	v3, v3, v2
 1c6f650:      	str	d3, [x8, #0x6f8]
 1c6f654:      	ldr	x8, [x19]
 1c6f658:      	ldr	x8, [x8, #0x10]
 1c6f65c:      	ldr	d3, [x8, #0x5b8]
 1c6f660:      	fmul.2s	v3, v3, v1
 1c6f664:      	fsub.2s	v3, v3, v2
 1c6f668:      	str	d3, [x8, #0x700]
 1c6f66c:      	ldr	x8, [x19]
 1c6f670:      	ldr	x8, [x8, #0x10]
 1c6f674:      	ldr	d3, [x8, #0x5c0]
 1c6f678:      	fmul.2s	v3, v3, v1
 1c6f67c:      	fsub.2s	v3, v3, v2
 1c6f680:      	str	d3, [x8, #0x708]
 1c6f684:      	ldr	x8, [x19]
 1c6f688:      	ldr	x8, [x8, #0x10]
 1c6f68c:      	ldr	d3, [x8, #0x5c8]
 1c6f690:      	fmul.2s	v3, v3, v1
 1c6f694:      	fsub.2s	v3, v3, v2
 1c6f698:      	str	d3, [x8, #0x710]
 1c6f69c:      	ldr	x8, [x19]
 1c6f6a0:      	ldr	x8, [x8, #0x10]
 1c6f6a4:      	ldr	d3, [x8, #0x5d0]
 1c6f6a8:      	fmul.2s	v3, v3, v1
 1c6f6ac:      	fsub.2s	v3, v3, v2
 1c6f6b0:      	str	d3, [x8, #0x718]
 1c6f6b4:      	ldr	x8, [x19]
 1c6f6b8:      	ldr	x8, [x8, #0x10]
 1c6f6bc:      	ldr	d3, [x8, #0x5d8]
 1c6f6c0:      	fmul.2s	v3, v3, v1
 1c6f6c4:      	fsub.2s	v3, v3, v2
 1c6f6c8:      	str	d3, [x8, #0x720]
 1c6f6cc:      	ldr	x8, [x19]
 1c6f6d0:      	ldr	x8, [x8, #0x10]
 1c6f6d4:      	ldr	d3, [x8, #0x5e0]
 1c6f6d8:      	fmul.2s	v3, v3, v1
 1c6f6dc:      	fsub.2s	v3, v3, v2
 1c6f6e0:      	str	d3, [x8, #0x728]
 1c6f6e4:      	ldr	x8, [x19]
 1c6f6e8:      	ldr	x8, [x8, #0x10]
 1c6f6ec:      	ldr	d3, [x8, #0x5e8]
 1c6f6f0:      	fmul.2s	v3, v3, v1
 1c6f6f4:      	fsub.2s	v3, v3, v2
 1c6f6f8:      	str	d3, [x8, #0x730]
 1c6f6fc:      	ldr	x8, [x19]
 1c6f700:      	ldr	x8, [x8, #0x10]
 1c6f704:      	ldr	d3, [x8, #0x5f0]
 1c6f708:      	fmul.2s	v1, v3, v1
 1c6f70c:      	fsub.2s	v1, v1, v2
 1c6f710:      	str	d1, [x8, #0x738]
 1c6f714:      	ldr	x8, [x19]
 1c6f718:      	ldr	x8, [x8, #0x10]
 1c6f71c:      	ldr	d1, [x8, #0x108]
 1c6f720:      	fmul.2s	v1, v1, v0
 1c6f724:      	ldr	d2, [x8, #0x150]
 1c6f728:      	fmul.2s	v2, v2, v0
 1c6f72c:      	fadd.2s	v1, v1, v2
 1c6f730:      	str	d1, [x8, #0x778]
 1c6f734:      	ldr	x8, [x19]
 1c6f738:      	ldr	x8, [x8, #0x10]
 1c6f73c:      	ldr	d1, [x8, #0x18]
 1c6f740:      	fmul.2s	v1, v1, v0
 1c6f744:      	ldr	d2, [x8, #0x150]
 1c6f748:      	fmul.2s	v2, v2, v0
 1c6f74c:      	fadd.2s	v1, v1, v2
 1c6f750:      	str	d1, [x8, #0x788]
 1c6f754:      	ldr	x8, [x19]
 1c6f758:      	ldr	x8, [x8, #0x10]
 1c6f75c:      	ldr	d1, [x8, #0x788]
 1c6f760:      	fmul.2s	v1, v1, v0
 1c6f764:      	ldr	d2, [x8, #0x1f0]
 1c6f768:      	fmul.2s	v0, v2, v0
 1c6f76c:      	fadd.2s	v0, v1, v0
 1c6f770:      	str	d0, [x8, #0x758]
 1c6f774:      	mov	w0, #0x28               ; =40
 1c6f778:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c6f77c:      	mov	x20, x0
 1c6f780:      	str	wzr, [x0, #0x8]
 1c6f784:      	add	x8, x28, #0x10
 1c6f788:      	str	x8, [x0]
 1c6f78c:      	stp	xzr, xzr, [x0, #0x18]
 1c6f790:      	str	xzr, [x0, #0x10]
 1c6f794:      	str	x0, [sp, #0x18]
 1c6f798:      	bl	0x22751c4 <__ZNK13AmazingEngine7RefBase6retainEv>
 1c6f79c:      	ldr	x8, [x19]
 1c6f7a0:      	ldr	x8, [x8, #0x10]
 1c6f7a4:      	add	x1, x8, #0x8
 1c6f7a8:      	mov	x0, x20
 1c6f7ac:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c6f7b0:      	ldr	x8, [x19]
 1c6f7b4:      	ldr	x8, [x8, #0x10]
 1c6f7b8:      	add	x1, x8, #0x758
 1c6f7bc:      	mov	x0, x20
 1c6f7c0:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c6f7c4:      	ldr	x8, [x19]
 1c6f7c8:      	ldr	x8, [x8, #0x10]
 1c6f7cc:      	add	x1, x8, #0x778
 1c6f7d0:      	mov	x0, x20
 1c6f7d4:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c6f7d8:      	mov	w0, #0x28               ; =40
 1c6f7dc:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c6f7e0:      	mov	x22, x0
 1c6f7e4:      	str	wzr, [x0, #0x8]
 1c6f7e8:      	adrp	x8, 0x361a000 <__ZTIN4Bach21BachAlgorithmSystemGEE+0x470>
 1c6f7ec:      	add	x8, x8, #0xcc0
 1c6f7f0:      	add	x8, x8, #0x10
 1c6f7f4:      	str	x8, [x0]
 1c6f7f8:      	mov	x21, x0
 1c6f7fc:      	str	xzr, [x21, #0x10]!
 1c6f800:      	stp	xzr, xzr, [x0, #0x18]
 1c6f804:      	str	x0, [sp, #0x10]
 1c6f808:      	bl	0x22751c4 <__ZNK13AmazingEngine7RefBase6retainEv>
 1c6f80c:      	ldp	x27, x8, [x22, #0x18]
 1c6f810:      	cmp	x27, x8
 1c6f814:      	b.eq	0x1c6f828 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xc1c>
 1c6f818:      	mov	w8, #0x4                ; =4
 1c6f81c:      	strb	w8, [x27], #0x1
 1c6f820:      	str	x27, [x22, #0x18]
 1c6f824:      	b	0x1c6f8a4 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xc98>
 1c6f828:      	ldr	x23, [x21]
 1c6f82c:      	sub	x24, x27, x23
 1c6f830:      	adds	x8, x24, #0x1
 1c6f834:      	b.mi	0x1c70b80 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1f74>
 1c6f838:      	lsl	x9, x24, #1
 1c6f83c:      	cmp	x9, x8
 1c6f840:      	csel	x8, x8, x9, lo
 1c6f844:      	mov	x9, #0x3fffffffffffffff ; =4611686018427387903
 1c6f848:      	mov	x10, #0x7fffffffffffffff ; =9223372036854775807
 1c6f84c:      	cmp	x24, x9
 1c6f850:      	csel	x26, x8, x10, lo
 1c6f854:      	cbz	x26, 0x1c70a00 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1df4>
 1c6f858:      	mov	x0, x26
 1c6f85c:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c6f860:      	mov	x25, x0
 1c6f864:      	add	x27, x25, x24
 1c6f868:      	add	x26, x25, x26
 1c6f86c:      	mov	w8, #0x4                ; =4
 1c6f870:      	strb	w8, [x27], #0x1
 1c6f874:      	cmp	x24, #0x1
 1c6f878:      	b.lt	0x1c6f88c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xc80>
 1c6f87c:      	mov	x0, x25
 1c6f880:      	mov	x1, x23
 1c6f884:      	mov	x2, x24
 1c6f888:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c6f88c:      	stp	x25, x27, [x22, #0x10]
 1c6f890:      	str	x26, [x22, #0x20]
 1c6f894:      	cbz	x23, 0x1c6f8a4 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xc98>
 1c6f898:      	mov	x0, x23
 1c6f89c:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c6f8a0:      	ldr	x27, [x22, #0x18]
 1c6f8a4:      	ldr	x8, [x22, #0x20]
 1c6f8a8:      	cmp	x27, x8
 1c6f8ac:      	b.eq	0x1c6f8c4 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xcb8>
 1c6f8b0:      	mov	w8, #0x4                ; =4
 1c6f8b4:      	strb	w8, [x27], #0x1
 1c6f8b8:      	str	x27, [x22, #0x18]
 1c6f8bc:      	mov	x27, x28
 1c6f8c0:      	b	0x1c6f940 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xd34>
 1c6f8c4:      	ldr	x23, [x21]
 1c6f8c8:      	sub	x24, x27, x23
 1c6f8cc:      	adds	x8, x24, #0x1
 1c6f8d0:      	b.mi	0x1c70b8c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1f80>
 1c6f8d4:      	lsl	x9, x24, #1
 1c6f8d8:      	cmp	x9, x8
 1c6f8dc:      	csel	x8, x8, x9, lo
 1c6f8e0:      	mov	x9, #0x3fffffffffffffff ; =4611686018427387903
 1c6f8e4:      	mov	x10, #0x7fffffffffffffff ; =9223372036854775807
 1c6f8e8:      	cmp	x24, x9
 1c6f8ec:      	csel	x25, x8, x10, lo
 1c6f8f0:      	mov	x27, x28
 1c6f8f4:      	cbz	x25, 0x1c70a20 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1e14>
 1c6f8f8:      	mov	x0, x25
 1c6f8fc:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c6f900:      	mov	x21, x0
 1c6f904:      	add	x26, x21, x24
 1c6f908:      	add	x25, x21, x25
 1c6f90c:      	mov	w8, #0x4                ; =4
 1c6f910:      	strb	w8, [x26], #0x1
 1c6f914:      	cmp	x24, #0x1
 1c6f918:      	b.lt	0x1c6f92c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xd20>
 1c6f91c:      	mov	x0, x21
 1c6f920:      	mov	x1, x23
 1c6f924:      	mov	x2, x24
 1c6f928:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c6f92c:      	stp	x21, x26, [x22, #0x10]
 1c6f930:      	str	x25, [x22, #0x20]
 1c6f934:      	cbz	x23, 0x1c6f940 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xd34>
 1c6f938:      	mov	x0, x23
 1c6f93c:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c6f940:      	add	x8, sp, #0x8
 1c6f944:      	add	x0, sp, #0x18
 1c6f948:      	add	x1, sp, #0x10
 1c6f94c:      	mov	w2, #0x0                ; =0
 1c6f950:      	mov	w3, #0x0                ; =0
 1c6f954:      	bl	0x1c6c824 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib>
 1c6f958:      	ldr	x8, [x19]
 1c6f95c:      	ldp	x9, x8, [x8, #0x10]
 1c6f960:      	cmp	x8, x9
 1c6f964:      	csel	x8, xzr, x9, eq
 1c6f968:      	ldr	x0, [sp, #0x8]
 1c6f96c:      	ldp	x9, x10, [x0, #0x10]
 1c6f970:      	cmp	x10, x9
 1c6f974:      	csel	x9, xzr, x9, eq
 1c6f978:      	ldur	q0, [x9, #0x18]
 1c6f97c:      	ldur	q1, [x9, #0x28]
 1c6f980:      	ldur	q2, [x9, #0x38]
 1c6f984:      	ldur	q3, [x9, #0x8]
 1c6f988:      	str	q3, [x8, #0x740]
 1c6f98c:      	str	q2, [x8, #0x770]
 1c6f990:      	str	q1, [x8, #0x760]
 1c6f994:      	str	q0, [x8, #0x750]
 1c6f998:      	ldr	x8, [x0]
 1c6f99c:      	ldr	x8, [x8, #0x8]
 1c6f9a0:      	blr	x8
 1c6f9a4:      	ldr	x8, [x22]
 1c6f9a8:      	ldr	x8, [x8, #0x8]
 1c6f9ac:      	mov	x0, x22
 1c6f9b0:      	blr	x8
 1c6f9b4:      	ldr	x8, [x20]
 1c6f9b8:      	ldr	x8, [x8, #0x8]
 1c6f9bc:      	mov	x0, x20
 1c6f9c0:      	blr	x8
 1c6f9c4:      	ldr	x8, [x19]
 1c6f9c8:      	ldr	x8, [x8, #0x10]
 1c6f9cc:      	mov	w9, #0xcccd             ; =52429
 1c6f9d0:      	movk	w9, #0x3e4c, lsl #16
 1c6f9d4:      	dup.2s	v0, w9
 1c6f9d8:      	ldr	d1, [x8, #0x18]
 1c6f9dc:      	fmul.2s	v0, v1, v0
 1c6f9e0:      	ldr	d1, [x8, #0x150]
 1c6f9e4:      	mov	w9, #0xcccd             ; =52429
 1c6f9e8:      	movk	w9, #0x3f4c, lsl #16
 1c6f9ec:      	dup.2s	v2, w9
 1c6f9f0:      	fmul.2s	v1, v1, v2
 1c6f9f4:      	fadd.2s	v0, v0, v1
 1c6f9f8:      	str	d0, [x8, #0x780]
 1c6f9fc:      	ldr	x8, [x19]
 1c6fa00:      	ldr	x8, [x8, #0x10]
 1c6fa04:      	ldr	d0, [x8, #0x18]
 1c6fa08:      	mov	w9, #0xcccd             ; =52429
 1c6fa0c:      	movk	w9, #0x3ecc, lsl #16
 1c6fa10:      	dup.2s	v1, w9
 1c6fa14:      	fmul.2s	v0, v0, v1
 1c6fa18:      	ldr	d1, [x8, #0x150]
 1c6fa1c:      	mov	w9, #0x999a             ; =39322
 1c6fa20:      	movk	w9, #0x3f19, lsl #16
 1c6fa24:      	dup.2s	v3, w9
 1c6fa28:      	fmul.2s	v1, v1, v3
 1c6fa2c:      	fadd.2s	v0, v0, v1
 1c6fa30:      	str	d0, [x8, #0x788]
 1c6fa34:      	ldr	x8, [x19]
 1c6fa38:      	ldr	x8, [x8, #0x10]
 1c6fa3c:      	ldr	d0, [x8, #0x18]
 1c6fa40:      	fmul.2s	v0, v0, v3
 1c6fa44:      	mov	w9, #0xcccc             ; =52428
 1c6fa48:      	movk	w9, #0x3ecc, lsl #16
 1c6fa4c:      	dup.2s	v1, w9
 1c6fa50:      	ldr	d4, [x8, #0x150]
 1c6fa54:      	fmul.2s	v4, v4, v1
 1c6fa58:      	fadd.2s	v0, v0, v4
 1c6fa5c:      	str	d0, [x8, #0x790]
 1c6fa60:      	ldr	x8, [x19]
 1c6fa64:      	ldr	x8, [x8, #0x10]
 1c6fa68:      	ldr	d0, [x8, #0x18]
 1c6fa6c:      	fmul.2s	v0, v0, v2
 1c6fa70:      	ldr	d2, [x8, #0x150]
 1c6fa74:      	mov	w9, #0xcccc             ; =52428
 1c6fa78:      	movk	w9, #0x3e4c, lsl #16
 1c6fa7c:      	dup.2s	v4, w9
 1c6fa80:      	fmul.2s	v2, v2, v4
 1c6fa84:      	fadd.2s	v0, v0, v2
 1c6fa88:      	str	d0, [x8, #0x798]
 1c6fa8c:      	ldr	x8, [x19]
 1c6fa90:      	ldr	x8, [x8, #0x10]
 1c6fa94:      	ldr	d0, [x8, #0x20]
 1c6fa98:      	fmov.2s	v8, #0.25000000
 1c6fa9c:      	fmul.2s	v0, v0, v8
 1c6faa0:      	ldr	d2, [x8, #0x160]
 1c6faa4:      	fmov.2s	v9, #0.75000000
 1c6faa8:      	fmul.2s	v2, v2, v9
 1c6faac:      	fadd.2s	v0, v0, v2
 1c6fab0:      	str	d0, [x8, #0x7a0]
 1c6fab4:      	ldr	x8, [x19]
 1c6fab8:      	ldr	x8, [x8, #0x10]
 1c6fabc:      	ldr	d2, [x8, #0x20]
 1c6fac0:      	movi.2s	v0, #0x3f, lsl #24
 1c6fac4:      	fmul.2s	v2, v2, v0
 1c6fac8:      	ldr	d4, [x8, #0x160]
 1c6facc:      	fmul.2s	v4, v4, v0
 1c6fad0:      	fadd.2s	v2, v2, v4
 1c6fad4:      	str	d2, [x8, #0x7a8]
 1c6fad8:      	ldr	x8, [x19]
 1c6fadc:      	ldr	x8, [x8, #0x10]
 1c6fae0:      	ldr	d2, [x8, #0x20]
 1c6fae4:      	fmul.2s	v2, v2, v9
 1c6fae8:      	ldr	d4, [x8, #0x160]
 1c6faec:      	fmul.2s	v4, v4, v8
 1c6faf0:      	fadd.2s	v2, v2, v4
 1c6faf4:      	str	d2, [x8, #0x7b0]
 1c6faf8:      	ldr	x8, [x19]
 1c6fafc:      	ldr	x8, [x8, #0x10]
 1c6fb00:      	ldr	d2, [x8, #0x580]
 1c6fb04:      	fmul.2s	v2, v2, v3
 1c6fb08:      	ldr	d3, [x8, #0x160]
 1c6fb0c:      	fmul.2s	v1, v3, v1
 1c6fb10:      	fadd.2s	v1, v2, v1
 1c6fb14:      	str	d1, [x8, #0x7b8]
 1c6fb18:      	ldr	x8, [x19]
 1c6fb1c:      	ldr	x8, [x8, #0x10]
 1c6fb20:      	ldr	x9, [x8, #0x580]
 1c6fb24:      	str	x9, [x8, #0x7c0]
 1c6fb28:      	ldr	x8, [x19]
 1c6fb2c:      	ldr	x8, [x8, #0x10]
 1c6fb30:      	ldr	d1, [x8, #0x28]
 1c6fb34:      	mov	w9, #0xaa3b             ; =43579
 1c6fb38:      	movk	w9, #0x3eaa, lsl #16
 1c6fb3c:      	dup.2s	v2, w9
 1c6fb40:      	fmul.2s	v1, v1, v2
 1c6fb44:      	ldr	d2, [x8, #0x7b8]
 1c6fb48:      	mov	w9, #0xaae2             ; =43746
 1c6fb4c:      	movk	w9, #0x3f2a, lsl #16
 1c6fb50:      	dup.2s	v3, w9
 1c6fb54:      	fmul.2s	v2, v2, v3
 1c6fb58:      	fadd.2s	v1, v1, v2
 1c6fb5c:      	str	d1, [x8, #0x7c8]
 1c6fb60:      	ldr	x8, [x19]
 1c6fb64:      	ldr	x8, [x8, #0x10]
 1c6fb68:      	ldr	d1, [x8, #0x28]
 1c6fb6c:      	mov	w9, #0xaa3b             ; =43579
 1c6fb70:      	movk	w9, #0x3f2a, lsl #16
 1c6fb74:      	dup.2s	v2, w9
 1c6fb78:      	fmul.2s	v1, v1, v2
 1c6fb7c:      	mov	w9, #0xab8a             ; =43914
 1c6fb80:      	movk	w9, #0x3eaa, lsl #16
 1c6fb84:      	dup.2s	v2, w9
 1c6fb88:      	ldr	d3, [x8, #0x7b8]
 1c6fb8c:      	fmul.2s	v2, v3, v2
 1c6fb90:      	fadd.2s	v1, v1, v2
 1c6fb94:      	str	d1, [x8, #0x7d0]
 1c6fb98:      	ldr	x8, [x19]
 1c6fb9c:      	ldr	x8, [x8, #0x10]
 1c6fba0:      	ldr	d1, [x8, #0x30]
 1c6fba4:      	fmul.2s	v1, v1, v0
 1c6fba8:      	ldr	d2, [x8, #0x580]
 1c6fbac:      	fmul.2s	v2, v2, v0
 1c6fbb0:      	fadd.2s	v1, v1, v2
 1c6fbb4:      	str	d1, [x8, #0x7d8]
 1c6fbb8:      	ldr	x8, [x19]
 1c6fbbc:      	ldr	x8, [x8, #0x10]
 1c6fbc0:      	ldr	d1, [x8, #0x108]
 1c6fbc4:      	fmul.2s	v1, v1, v0
 1c6fbc8:      	ldr	d2, [x8, #0x158]
 1c6fbcc:      	fmul.2s	v2, v2, v0
 1c6fbd0:      	fadd.2s	v1, v1, v2
 1c6fbd4:      	str	d1, [x8, #0x818]
 1c6fbd8:      	ldr	x8, [x19]
 1c6fbdc:      	ldr	x8, [x8, #0x10]
 1c6fbe0:      	ldr	d1, [x8, #0xe8]
 1c6fbe4:      	fmul.2s	v1, v1, v0
 1c6fbe8:      	ldr	d2, [x8, #0x158]
 1c6fbec:      	fmul.2s	v2, v2, v0
 1c6fbf0:      	fadd.2s	v1, v1, v2
 1c6fbf4:      	str	d1, [x8, #0x828]
 1c6fbf8:      	ldr	x8, [x19]
 1c6fbfc:      	ldr	x8, [x8, #0x10]
 1c6fc00:      	ldr	d1, [x8, #0x828]
 1c6fc04:      	fmul.2s	v1, v1, v0
 1c6fc08:      	ldr	d2, [x8, #0x2a0]
 1c6fc0c:      	fmul.2s	v0, v2, v0
 1c6fc10:      	fadd.2s	v0, v1, v0
 1c6fc14:      	str	d0, [x8, #0x7f8]
 1c6fc18:      	mov	w0, #0x28               ; =40
 1c6fc1c:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c6fc20:      	mov	x20, x0
 1c6fc24:      	str	wzr, [x0, #0x8]
 1c6fc28:      	add	x8, x27, #0x10
 1c6fc2c:      	str	x8, [x0]
 1c6fc30:      	stp	xzr, xzr, [x0, #0x18]
 1c6fc34:      	str	xzr, [x0, #0x10]
 1c6fc38:      	str	x0, [sp, #0x18]
 1c6fc3c:      	bl	0x22751c4 <__ZNK13AmazingEngine7RefBase6retainEv>
 1c6fc40:      	ldr	x8, [x19]
 1c6fc44:      	ldr	x8, [x8, #0x10]
 1c6fc48:      	add	x1, x8, #0xf8
 1c6fc4c:      	mov	x0, x20
 1c6fc50:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c6fc54:      	ldr	x8, [x19]
 1c6fc58:      	ldr	x8, [x8, #0x10]
 1c6fc5c:      	add	x1, x8, #0x7f8
 1c6fc60:      	mov	x0, x20
 1c6fc64:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c6fc68:      	ldr	x8, [x19]
 1c6fc6c:      	ldr	x8, [x8, #0x10]
 1c6fc70:      	add	x1, x8, #0x818
 1c6fc74:      	mov	x0, x20
 1c6fc78:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c6fc7c:      	mov	w0, #0x28               ; =40
 1c6fc80:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c6fc84:      	mov	x22, x0
 1c6fc88:      	str	wzr, [x0, #0x8]
 1c6fc8c:      	adrp	x8, 0x361a000 <__ZTIN4Bach21BachAlgorithmSystemGEE+0x470>
 1c6fc90:      	add	x8, x8, #0xcc0
 1c6fc94:      	add	x8, x8, #0x10
 1c6fc98:      	str	x8, [x0]
 1c6fc9c:      	mov	x21, x0
 1c6fca0:      	str	xzr, [x21, #0x10]!
 1c6fca4:      	stp	xzr, xzr, [x0, #0x18]
 1c6fca8:      	str	x0, [sp, #0x10]
 1c6fcac:      	bl	0x22751c4 <__ZNK13AmazingEngine7RefBase6retainEv>
 1c6fcb0:      	ldp	x27, x8, [x22, #0x18]
 1c6fcb4:      	cmp	x27, x8
 1c6fcb8:      	b.eq	0x1c6fccc <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x10c0>
 1c6fcbc:      	mov	w8, #0x4                ; =4
 1c6fcc0:      	strb	w8, [x27], #0x1
 1c6fcc4:      	str	x27, [x22, #0x18]
 1c6fcc8:      	b	0x1c6fd48 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x113c>
 1c6fccc:      	ldr	x23, [x21]
 1c6fcd0:      	sub	x24, x27, x23
 1c6fcd4:      	adds	x8, x24, #0x1
 1c6fcd8:      	b.mi	0x1c70b98 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1f8c>
 1c6fcdc:      	lsl	x9, x24, #1
 1c6fce0:      	cmp	x9, x8
 1c6fce4:      	csel	x8, x8, x9, lo
 1c6fce8:      	mov	x9, #0x3fffffffffffffff ; =4611686018427387903
 1c6fcec:      	mov	x10, #0x7fffffffffffffff ; =9223372036854775807
 1c6fcf0:      	cmp	x24, x9
 1c6fcf4:      	csel	x26, x8, x10, lo
 1c6fcf8:      	cbz	x26, 0x1c70a40 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1e34>
 1c6fcfc:      	mov	x0, x26
 1c6fd00:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c6fd04:      	mov	x25, x0
 1c6fd08:      	add	x27, x25, x24
 1c6fd0c:      	add	x26, x25, x26
 1c6fd10:      	mov	w8, #0x4                ; =4
 1c6fd14:      	strb	w8, [x27], #0x1
 1c6fd18:      	cmp	x24, #0x1
 1c6fd1c:      	b.lt	0x1c6fd30 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1124>
 1c6fd20:      	mov	x0, x25
 1c6fd24:      	mov	x1, x23
 1c6fd28:      	mov	x2, x24
 1c6fd2c:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c6fd30:      	stp	x25, x27, [x22, #0x10]
 1c6fd34:      	str	x26, [x22, #0x20]
 1c6fd38:      	cbz	x23, 0x1c6fd48 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x113c>
 1c6fd3c:      	mov	x0, x23
 1c6fd40:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c6fd44:      	ldr	x27, [x22, #0x18]
 1c6fd48:      	ldr	x8, [x22, #0x20]
 1c6fd4c:      	cmp	x27, x8
 1c6fd50:      	b.eq	0x1c6fd64 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1158>
 1c6fd54:      	mov	w8, #0x4                ; =4
 1c6fd58:      	strb	w8, [x27], #0x1
 1c6fd5c:      	str	x27, [x22, #0x18]
 1c6fd60:      	b	0x1c6fddc <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x11d0>
 1c6fd64:      	ldr	x23, [x21]
 1c6fd68:      	sub	x24, x27, x23
 1c6fd6c:      	adds	x8, x24, #0x1
 1c6fd70:      	b.mi	0x1c70ba4 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1f98>
 1c6fd74:      	lsl	x9, x24, #1
 1c6fd78:      	cmp	x9, x8
 1c6fd7c:      	csel	x8, x8, x9, lo
 1c6fd80:      	mov	x9, #0x3fffffffffffffff ; =4611686018427387903
 1c6fd84:      	mov	x10, #0x7fffffffffffffff ; =9223372036854775807
 1c6fd88:      	cmp	x24, x9
 1c6fd8c:      	csel	x25, x8, x10, lo
 1c6fd90:      	cbz	x25, 0x1c70a60 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1e54>
 1c6fd94:      	mov	x0, x25
 1c6fd98:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c6fd9c:      	mov	x21, x0
 1c6fda0:      	add	x26, x21, x24
 1c6fda4:      	add	x25, x21, x25
 1c6fda8:      	mov	w8, #0x4                ; =4
 1c6fdac:      	strb	w8, [x26], #0x1
 1c6fdb0:      	cmp	x24, #0x1
 1c6fdb4:      	b.lt	0x1c6fdc8 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x11bc>
 1c6fdb8:      	mov	x0, x21
 1c6fdbc:      	mov	x1, x23
 1c6fdc0:      	mov	x2, x24
 1c6fdc4:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c6fdc8:      	stp	x21, x26, [x22, #0x10]
 1c6fdcc:      	str	x25, [x22, #0x20]
 1c6fdd0:      	cbz	x23, 0x1c6fddc <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x11d0>
 1c6fdd4:      	mov	x0, x23
 1c6fdd8:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c6fddc:      	add	x8, sp, #0x8
 1c6fde0:      	add	x0, sp, #0x18
 1c6fde4:      	add	x1, sp, #0x10
 1c6fde8:      	mov	w2, #0x0                ; =0
 1c6fdec:      	mov	w3, #0x0                ; =0
 1c6fdf0:      	bl	0x1c6c824 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib>
 1c6fdf4:      	ldr	x8, [x19]
 1c6fdf8:      	ldp	x9, x8, [x8, #0x10]
 1c6fdfc:      	cmp	x8, x9
 1c6fe00:      	csel	x8, xzr, x9, eq
 1c6fe04:      	ldr	x0, [sp, #0x8]
 1c6fe08:      	ldp	x9, x10, [x0, #0x10]
 1c6fe0c:      	cmp	x10, x9
 1c6fe10:      	csel	x9, xzr, x9, eq
 1c6fe14:      	ldur	q0, [x9, #0x18]
 1c6fe18:      	ldur	q1, [x9, #0x28]
 1c6fe1c:      	ldur	q2, [x9, #0x38]
 1c6fe20:      	ldur	q3, [x9, #0x8]
 1c6fe24:      	str	q3, [x8, #0x7e0]
 1c6fe28:      	str	q2, [x8, #0x810]
 1c6fe2c:      	str	q1, [x8, #0x800]
 1c6fe30:      	str	q0, [x8, #0x7f0]
 1c6fe34:      	ldr	x8, [x0]
 1c6fe38:      	ldr	x8, [x8, #0x8]
 1c6fe3c:      	blr	x8
 1c6fe40:      	ldr	x8, [x22]
 1c6fe44:      	ldr	x8, [x8, #0x8]
 1c6fe48:      	mov	x0, x22
 1c6fe4c:      	blr	x8
 1c6fe50:      	ldr	x8, [x20]
 1c6fe54:      	ldr	x8, [x8, #0x8]
 1c6fe58:      	mov	x0, x20
 1c6fe5c:      	blr	x8
 1c6fe60:      	ldr	x8, [x19]
 1c6fe64:      	ldr	x8, [x8, #0x10]
 1c6fe68:      	ldr	d0, [x8, #0xe8]
 1c6fe6c:      	mov	w9, #0xcccd             ; =52429
 1c6fe70:      	movk	w9, #0x3e4c, lsl #16
 1c6fe74:      	dup.2s	v1, w9
 1c6fe78:      	fmul.2s	v0, v0, v1
 1c6fe7c:      	ldr	d1, [x8, #0x158]
 1c6fe80:      	mov	w9, #0xcccd             ; =52429
 1c6fe84:      	movk	w9, #0x3f4c, lsl #16
 1c6fe88:      	dup.2s	v2, w9
 1c6fe8c:      	fmul.2s	v1, v1, v2
 1c6fe90:      	fadd.2s	v0, v0, v1
 1c6fe94:      	str	d0, [x8, #0x820]
 1c6fe98:      	ldr	x8, [x19]
 1c6fe9c:      	ldr	x8, [x8, #0x10]
 1c6fea0:      	ldr	d0, [x8, #0xe8]
 1c6fea4:      	mov	w9, #0xcccd             ; =52429
 1c6fea8:      	movk	w9, #0x3ecc, lsl #16
 1c6feac:      	dup.2s	v1, w9
 1c6feb0:      	fmul.2s	v0, v0, v1
 1c6feb4:      	ldr	d1, [x8, #0x158]
 1c6feb8:      	mov	w9, #0x999a             ; =39322
 1c6febc:      	movk	w9, #0x3f19, lsl #16
 1c6fec0:      	dup.2s	v3, w9
 1c6fec4:      	fmul.2s	v1, v1, v3
 1c6fec8:      	fadd.2s	v0, v0, v1
 1c6fecc:      	str	d0, [x8, #0x828]
 1c6fed0:      	ldr	x8, [x19]
 1c6fed4:      	ldr	x8, [x8, #0x10]
 1c6fed8:      	ldr	d0, [x8, #0xe8]
 1c6fedc:      	fmul.2s	v0, v0, v3
 1c6fee0:      	ldr	d1, [x8, #0x158]
 1c6fee4:      	mov	w9, #0xcccc             ; =52428
 1c6fee8:      	movk	w9, #0x3ecc, lsl #16
 1c6feec:      	dup.2s	v4, w9
 1c6fef0:      	fmul.2s	v1, v1, v4
 1c6fef4:      	fadd.2s	v0, v0, v1
 1c6fef8:      	str	d0, [x8, #0x830]
 1c6fefc:      	ldr	x8, [x19]
 1c6ff00:      	ldr	x8, [x8, #0x10]
 1c6ff04:      	ldr	d0, [x8, #0xe8]
 1c6ff08:      	fmul.2s	v0, v0, v2
 1c6ff0c:      	ldr	d1, [x8, #0x158]
 1c6ff10:      	mov	w9, #0xcccc             ; =52428
 1c6ff14:      	movk	w9, #0x3e4c, lsl #16
 1c6ff18:      	dup.2s	v2, w9
 1c6ff1c:      	fmul.2s	v1, v1, v2
 1c6ff20:      	fadd.2s	v0, v0, v1
 1c6ff24:      	str	d0, [x8, #0x838]
 1c6ff28:      	ldr	x8, [x19]
 1c6ff2c:      	ldr	x8, [x8, #0x10]
 1c6ff30:      	ldr	d0, [x8, #0xe0]
 1c6ff34:      	fmul.2s	v0, v0, v8
 1c6ff38:      	ldr	d1, [x8, #0x168]
 1c6ff3c:      	fmul.2s	v1, v1, v9
 1c6ff40:      	fadd.2s	v0, v0, v1
 1c6ff44:      	str	d0, [x8, #0x840]
 1c6ff48:      	ldr	x8, [x19]
 1c6ff4c:      	ldr	x8, [x8, #0x10]
 1c6ff50:      	ldr	d1, [x8, #0xe0]
 1c6ff54:      	movi.2s	v0, #0x3f, lsl #24
 1c6ff58:      	fmul.2s	v1, v1, v0
 1c6ff5c:      	ldr	d2, [x8, #0x168]
 1c6ff60:      	fmul.2s	v2, v2, v0
 1c6ff64:      	fadd.2s	v1, v1, v2
 1c6ff68:      	str	d1, [x8, #0x848]
 1c6ff6c:      	ldr	x8, [x19]
 1c6ff70:      	ldr	x8, [x8, #0x10]
 1c6ff74:      	ldr	d1, [x8, #0xe0]
 1c6ff78:      	fmul.2s	v1, v1, v9
 1c6ff7c:      	ldr	d2, [x8, #0x168]
 1c6ff80:      	fmul.2s	v2, v2, v8
 1c6ff84:      	fadd.2s	v1, v1, v2
 1c6ff88:      	str	d1, [x8, #0x850]
 1c6ff8c:      	ldr	x8, [x19]
 1c6ff90:      	ldr	x8, [x8, #0x10]
 1c6ff94:      	ldr	d1, [x8, #0x588]
 1c6ff98:      	fmul.2s	v1, v1, v3
 1c6ff9c:      	ldr	d2, [x8, #0x168]
 1c6ffa0:      	fmul.2s	v2, v2, v4
 1c6ffa4:      	fadd.2s	v1, v1, v2
 1c6ffa8:      	str	d1, [x8, #0x858]
 1c6ffac:      	ldr	x8, [x19]
 1c6ffb0:      	ldr	x8, [x8, #0x10]
 1c6ffb4:      	ldr	x9, [x8, #0x588]
 1c6ffb8:      	str	x9, [x8, #0x860]
 1c6ffbc:      	ldr	x8, [x19]
 1c6ffc0:      	ldr	x8, [x8, #0x10]
 1c6ffc4:      	ldr	d1, [x8, #0xd8]
 1c6ffc8:      	mov	w9, #0xaa3b             ; =43579
 1c6ffcc:      	movk	w9, #0x3eaa, lsl #16
 1c6ffd0:      	dup.2s	v2, w9
 1c6ffd4:      	fmul.2s	v1, v1, v2
 1c6ffd8:      	ldr	d3, [x8, #0x858]
 1c6ffdc:      	mov	w9, #0xaae2             ; =43746
 1c6ffe0:      	movk	w9, #0x3f2a, lsl #16
 1c6ffe4:      	dup.2s	v4, w9
 1c6ffe8:      	fmul.2s	v3, v3, v4
 1c6ffec:      	fadd.2s	v1, v1, v3
 1c6fff0:      	str	d1, [x8, #0x868]
 1c6fff4:      	ldr	x8, [x19]
 1c6fff8:      	ldr	x8, [x8, #0x10]
 1c6fffc:      	ldr	d1, [x8, #0xd8]
 1c70000:      	mov	w9, #0xaa3b             ; =43579
 1c70004:      	movk	w9, #0x3f2a, lsl #16
 1c70008:      	dup.2s	v3, w9
 1c7000c:      	fmul.2s	v1, v1, v3
 1c70010:      	mov	w9, #0xab8a             ; =43914
 1c70014:      	movk	w9, #0x3eaa, lsl #16
 1c70018:      	dup.2s	v5, w9
 1c7001c:      	ldr	d6, [x8, #0x858]
 1c70020:      	fmul.2s	v6, v6, v5
 1c70024:      	fadd.2s	v1, v1, v6
 1c70028:      	str	d1, [x8, #0x870]
 1c7002c:      	ldr	x8, [x19]
 1c70030:      	ldr	x8, [x8, #0x10]
 1c70034:      	ldr	d1, [x8, #0xd0]
 1c70038:      	fmul.2s	v1, v1, v0
 1c7003c:      	ldr	d6, [x8, #0x588]
 1c70040:      	fmul.2s	v6, v6, v0
 1c70044:      	fadd.2s	v1, v1, v6
 1c70048:      	str	d1, [x8, #0x878]
 1c7004c:      	ldr	x8, [x19]
 1c70050:      	ldr	x8, [x8, #0x10]
 1c70054:      	ldr	d1, [x8, #0x3d8]
 1c70058:      	fmul.2s	v1, v1, v0
 1c7005c:      	ldr	d6, [x8, #0x138]
 1c70060:      	fmul.2s	v6, v6, v0
 1c70064:      	fadd.2s	v1, v1, v6
 1c70068:      	str	d1, [x8, #0x880]
 1c7006c:      	ldr	x8, [x19]
 1c70070:      	ldr	x8, [x8, #0x10]
 1c70074:      	ldr	d1, [x8, #0x880]
 1c70078:      	fmul.2s	v1, v1, v2
 1c7007c:      	ldr	d6, [x8, #0x7b8]
 1c70080:      	fmul.2s	v6, v6, v4
 1c70084:      	fadd.2s	v1, v1, v6
 1c70088:      	str	d1, [x8, #0x888]
 1c7008c:      	ldr	x8, [x19]
 1c70090:      	ldr	x8, [x8, #0x10]
 1c70094:      	ldr	d1, [x8, #0x880]
 1c70098:      	fmul.2s	v1, v1, v2
 1c7009c:      	ldr	d2, [x8, #0x858]
 1c700a0:      	fmul.2s	v2, v2, v4
 1c700a4:      	fadd.2s	v1, v1, v2
 1c700a8:      	str	d1, [x8, #0x898]
 1c700ac:      	ldr	x8, [x19]
 1c700b0:      	ldr	x8, [x8, #0x10]
 1c700b4:      	ldr	d1, [x8, #0x880]
 1c700b8:      	fmul.2s	v1, v1, v3
 1c700bc:      	ldr	d2, [x8, #0x7b8]
 1c700c0:      	fmul.2s	v2, v2, v5
 1c700c4:      	fadd.2s	v1, v1, v2
 1c700c8:      	str	d1, [x8, #0x890]
 1c700cc:      	ldr	x8, [x19]
 1c700d0:      	ldr	x8, [x8, #0x10]
 1c700d4:      	ldr	d1, [x8, #0x880]
 1c700d8:      	fmul.2s	v1, v1, v3
 1c700dc:      	ldr	d2, [x8, #0x858]
 1c700e0:      	fmul.2s	v2, v2, v5
 1c700e4:      	fadd.2s	v1, v1, v2
 1c700e8:      	str	d1, [x8, #0x8a0]
 1c700ec:      	ldr	x8, [x19]
 1c700f0:      	ldr	x8, [x8, #0x10]
 1c700f4:      	ldr	d1, [x8, #0x580]
 1c700f8:      	mov	w9, #0xaae3             ; =43747
 1c700fc:      	movk	w9, #0x3f2a, lsl #16
 1c70100:      	dup.2s	v2, w9
 1c70104:      	fmul.2s	v1, v1, v2
 1c70108:      	ldr	d3, [x8, #0x48]
 1c7010c:      	mov	w9, #0xaa3a             ; =43578
 1c70110:      	movk	w9, #0x3eaa, lsl #16
 1c70114:      	dup.2s	v4, w9
 1c70118:      	fmul.2s	v3, v3, v4
 1c7011c:      	fadd.2s	v1, v1, v3
 1c70120:      	str	d1, [x8, #0x8b8]
 1c70124:      	ldr	x8, [x19]
 1c70128:      	ldr	x8, [x8, #0x10]
 1c7012c:      	ldr	d1, [x8, #0x518]
 1c70130:      	fmul.2s	v1, v1, v2
 1c70134:      	ldr	d3, [x8, #0x60]
 1c70138:      	fmul.2s	v3, v3, v4
 1c7013c:      	fadd.2s	v1, v1, v3
 1c70140:      	str	d1, [x8, #0x8c0]
 1c70144:      	ldr	x8, [x19]
 1c70148:      	ldr	x8, [x8, #0x10]
 1c7014c:      	ldr	d1, [x8, #0x540]
 1c70150:      	fmul.2s	v1, v1, v2
 1c70154:      	ldr	d3, [x8, #0x80]
 1c70158:      	fmul.2s	v3, v3, v4
 1c7015c:      	fadd.2s	v1, v1, v3
 1c70160:      	str	d1, [x8, #0x8d0]
 1c70164:      	ldr	x8, [x19]
 1c70168:      	ldr	x8, [x8, #0x10]
 1c7016c:      	ldr	d1, [x8, #0x568]
 1c70170:      	fmul.2s	v1, v1, v2
 1c70174:      	ldr	d3, [x8, #0xa0]
 1c70178:      	fmul.2s	v3, v3, v4
 1c7017c:      	fadd.2s	v1, v1, v3
 1c70180:      	str	d1, [x8, #0x8e0]
 1c70184:      	ldr	x8, [x19]
 1c70188:      	ldr	x8, [x8, #0x10]
 1c7018c:      	ldr	d1, [x8, #0x588]
 1c70190:      	fmul.2s	v1, v1, v2
 1c70194:      	ldr	d2, [x8, #0xb8]
 1c70198:      	fmul.2s	v2, v2, v4
 1c7019c:      	fadd.2s	v1, v1, v2
 1c701a0:      	str	d1, [x8, #0x8e8]
 1c701a4:      	ldr	x8, [x19]
 1c701a8:      	ldr	x8, [x8, #0x10]
 1c701ac:      	ldr	d1, [x8, #0x40]
 1c701b0:      	fmul.2s	v1, v1, v0
 1c701b4:      	ldr	d2, [x8, #0x8b8]
 1c701b8:      	fmul.2s	v2, v2, v0
 1c701bc:      	fadd.2s	v1, v1, v2
 1c701c0:      	str	d1, [x8, #0x8a8]
 1c701c4:      	ldr	x8, [x19]
 1c701c8:      	ldr	x8, [x8, #0x10]
 1c701cc:      	ldr	d1, [x8, #0x8e8]
 1c701d0:      	fmul.2s	v1, v1, v0
 1c701d4:      	ldr	d2, [x8, #0xc0]
 1c701d8:      	fmul.2s	v0, v2, v0
 1c701dc:      	fadd.2s	v0, v1, v0
 1c701e0:      	str	d0, [x8, #0x8b0]
 1c701e4:      	mov	w0, #0x28               ; =40
 1c701e8:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c701ec:      	mov	x22, x0
 1c701f0:      	str	wzr, [x0, #0x8]
 1c701f4:      	add	x8, x28, #0x10
 1c701f8:      	str	x8, [x0]
 1c701fc:      	stp	xzr, xzr, [x0, #0x18]
 1c70200:      	str	xzr, [x0, #0x10]
 1c70204:      	str	x0, [sp, #0x18]
 1c70208:      	bl	0x22751c4 <__ZNK13AmazingEngine7RefBase6retainEv>
 1c7020c:      	ldr	x8, [x19]
 1c70210:      	ldr	x8, [x8, #0x10]
 1c70214:      	add	x1, x8, #0x8b8
 1c70218:      	mov	x0, x22
 1c7021c:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c70220:      	ldr	x8, [x19]
 1c70224:      	ldr	x8, [x8, #0x10]
 1c70228:      	add	x1, x8, #0x8c0
 1c7022c:      	mov	x0, x22
 1c70230:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c70234:      	ldr	x8, [x19]
 1c70238:      	ldr	x8, [x8, #0x10]
 1c7023c:      	add	x1, x8, #0x8d0
 1c70240:      	mov	x0, x22
 1c70244:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c70248:      	ldr	x8, [x19]
 1c7024c:      	ldr	x8, [x8, #0x10]
 1c70250:      	add	x1, x8, #0x8e0
 1c70254:      	mov	x0, x22
 1c70258:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c7025c:      	ldr	x8, [x19]
 1c70260:      	ldr	x8, [x8, #0x10]
 1c70264:      	add	x1, x8, #0x8e8
 1c70268:      	mov	x0, x22
 1c7026c:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c70270:      	mov	w0, #0x28               ; =40
 1c70274:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c70278:      	mov	x20, x0
 1c7027c:      	str	wzr, [x0, #0x8]
 1c70280:      	adrp	x8, 0x361a000 <__ZTIN4Bach21BachAlgorithmSystemGEE+0x470>
 1c70284:      	add	x8, x8, #0xcc0
 1c70288:      	add	x8, x8, #0x10
 1c7028c:      	str	x8, [x0]
 1c70290:      	mov	x21, x0
 1c70294:      	str	xzr, [x21, #0x10]!
 1c70298:      	stp	xzr, xzr, [x0, #0x18]
 1c7029c:      	str	x0, [sp, #0x10]
 1c702a0:      	bl	0x22751c4 <__ZNK13AmazingEngine7RefBase6retainEv>
 1c702a4:      	ldp	x26, x8, [x20, #0x18]
 1c702a8:      	cmp	x26, x8
 1c702ac:      	b.eq	0x1c702c0 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x16b4>
 1c702b0:      	mov	w8, #0x1                ; =1
 1c702b4:      	strb	w8, [x26], #0x1
 1c702b8:      	str	x26, [x20, #0x18]
 1c702bc:      	b	0x1c7033c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1730>
 1c702c0:      	ldr	x22, [x21]
 1c702c4:      	sub	x23, x26, x22
 1c702c8:      	adds	x8, x23, #0x1
 1c702cc:      	b.mi	0x1c70bb0 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1fa4>
 1c702d0:      	lsl	x9, x23, #1
 1c702d4:      	cmp	x9, x8
 1c702d8:      	csel	x8, x8, x9, lo
 1c702dc:      	mov	x9, #0x3fffffffffffffff ; =4611686018427387903
 1c702e0:      	mov	x10, #0x7fffffffffffffff ; =9223372036854775807
 1c702e4:      	cmp	x23, x9
 1c702e8:      	csel	x25, x8, x10, lo
 1c702ec:      	cbz	x25, 0x1c70a80 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1e74>
 1c702f0:      	mov	x0, x25
 1c702f4:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c702f8:      	mov	x24, x0
 1c702fc:      	add	x26, x24, x23
 1c70300:      	add	x25, x24, x25
 1c70304:      	mov	w8, #0x1                ; =1
 1c70308:      	strb	w8, [x26], #0x1
 1c7030c:      	cmp	x23, #0x1
 1c70310:      	b.lt	0x1c70324 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1718>
 1c70314:      	mov	x0, x24
 1c70318:      	mov	x1, x22
 1c7031c:      	mov	x2, x23
 1c70320:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c70324:      	stp	x24, x26, [x20, #0x10]
 1c70328:      	str	x25, [x20, #0x20]
 1c7032c:      	cbz	x22, 0x1c7033c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1730>
 1c70330:      	mov	x0, x22
 1c70334:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c70338:      	ldr	x26, [x20, #0x18]
 1c7033c:      	ldr	x8, [x20, #0x20]
 1c70340:      	cmp	x26, x8
 1c70344:      	b.eq	0x1c70358 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x174c>
 1c70348:      	mov	w8, #0x2                ; =2
 1c7034c:      	strb	w8, [x26], #0x1
 1c70350:      	str	x26, [x20, #0x18]
 1c70354:      	b	0x1c703d4 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x17c8>
 1c70358:      	ldr	x22, [x21]
 1c7035c:      	sub	x23, x26, x22
 1c70360:      	adds	x8, x23, #0x1
 1c70364:      	b.mi	0x1c70bbc <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1fb0>
 1c70368:      	lsl	x9, x23, #1
 1c7036c:      	cmp	x9, x8
 1c70370:      	csel	x8, x8, x9, lo
 1c70374:      	mov	x9, #0x3fffffffffffffff ; =4611686018427387903
 1c70378:      	mov	x10, #0x7fffffffffffffff ; =9223372036854775807
 1c7037c:      	cmp	x23, x9
 1c70380:      	csel	x25, x8, x10, lo
 1c70384:      	cbz	x25, 0x1c70aa0 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1e94>
 1c70388:      	mov	x0, x25
 1c7038c:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c70390:      	mov	x24, x0
 1c70394:      	add	x26, x24, x23
 1c70398:      	add	x25, x24, x25
 1c7039c:      	mov	w8, #0x2                ; =2
 1c703a0:      	strb	w8, [x26], #0x1
 1c703a4:      	cmp	x23, #0x1
 1c703a8:      	b.lt	0x1c703bc <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x17b0>
 1c703ac:      	mov	x0, x24
 1c703b0:      	mov	x1, x22
 1c703b4:      	mov	x2, x23
 1c703b8:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c703bc:      	stp	x24, x26, [x20, #0x10]
 1c703c0:      	str	x25, [x20, #0x20]
 1c703c4:      	cbz	x22, 0x1c703d4 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x17c8>
 1c703c8:      	mov	x0, x22
 1c703cc:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c703d0:      	ldr	x26, [x20, #0x18]
 1c703d4:      	ldr	x8, [x20, #0x20]
 1c703d8:      	cmp	x26, x8
 1c703dc:      	b.eq	0x1c703f0 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x17e4>
 1c703e0:      	mov	w8, #0x2                ; =2
 1c703e4:      	strb	w8, [x26], #0x1
 1c703e8:      	str	x26, [x20, #0x18]
 1c703ec:      	b	0x1c7046c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1860>
 1c703f0:      	ldr	x22, [x21]
 1c703f4:      	sub	x23, x26, x22
 1c703f8:      	adds	x8, x23, #0x1
 1c703fc:      	b.mi	0x1c70bc8 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1fbc>
 1c70400:      	lsl	x9, x23, #1
 1c70404:      	cmp	x9, x8
 1c70408:      	csel	x8, x8, x9, lo
 1c7040c:      	mov	x9, #0x3fffffffffffffff ; =4611686018427387903
 1c70410:      	mov	x10, #0x7fffffffffffffff ; =9223372036854775807
 1c70414:      	cmp	x23, x9
 1c70418:      	csel	x25, x8, x10, lo
 1c7041c:      	cbz	x25, 0x1c70ac0 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1eb4>
 1c70420:      	mov	x0, x25
 1c70424:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c70428:      	mov	x24, x0
 1c7042c:      	add	x26, x24, x23
 1c70430:      	add	x25, x24, x25
 1c70434:      	mov	w8, #0x2                ; =2
 1c70438:      	strb	w8, [x26], #0x1
 1c7043c:      	cmp	x23, #0x1
 1c70440:      	b.lt	0x1c70454 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1848>
 1c70444:      	mov	x0, x24
 1c70448:      	mov	x1, x22
 1c7044c:      	mov	x2, x23
 1c70450:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c70454:      	stp	x24, x26, [x20, #0x10]
 1c70458:      	str	x25, [x20, #0x20]
 1c7045c:      	cbz	x22, 0x1c7046c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1860>
 1c70460:      	mov	x0, x22
 1c70464:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c70468:      	ldr	x26, [x20, #0x18]
 1c7046c:      	ldr	x8, [x20, #0x20]
 1c70470:      	cmp	x26, x8
 1c70474:      	b.eq	0x1c70488 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x187c>
 1c70478:      	mov	w8, #0x1                ; =1
 1c7047c:      	strb	w8, [x26], #0x1
 1c70480:      	str	x26, [x20, #0x18]
 1c70484:      	b	0x1c70500 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x18f4>
 1c70488:      	ldr	x22, [x21]
 1c7048c:      	sub	x23, x26, x22
 1c70490:      	adds	x8, x23, #0x1
 1c70494:      	b.mi	0x1c70bd4 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1fc8>
 1c70498:      	lsl	x9, x23, #1
 1c7049c:      	cmp	x9, x8
 1c704a0:      	csel	x8, x8, x9, lo
 1c704a4:      	mov	x9, #0x3fffffffffffffff ; =4611686018427387903
 1c704a8:      	mov	x10, #0x7fffffffffffffff ; =9223372036854775807
 1c704ac:      	cmp	x23, x9
 1c704b0:      	csel	x24, x8, x10, lo
 1c704b4:      	cbz	x24, 0x1c70ae0 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1ed4>
 1c704b8:      	mov	x0, x24
 1c704bc:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c704c0:      	mov	x21, x0
 1c704c4:      	add	x25, x21, x23
 1c704c8:      	add	x24, x21, x24
 1c704cc:      	mov	w8, #0x1                ; =1
 1c704d0:      	strb	w8, [x25], #0x1
 1c704d4:      	cmp	x23, #0x1
 1c704d8:      	b.lt	0x1c704ec <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x18e0>
 1c704dc:      	mov	x0, x21
 1c704e0:      	mov	x1, x22
 1c704e4:      	mov	x2, x23
 1c704e8:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c704ec:      	stp	x21, x25, [x20, #0x10]
 1c704f0:      	str	x24, [x20, #0x20]
 1c704f4:      	cbz	x22, 0x1c70500 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x18f4>
 1c704f8:      	mov	x0, x22
 1c704fc:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c70500:      	add	x8, sp, #0x8
 1c70504:      	add	x0, sp, #0x18
 1c70508:      	add	x1, sp, #0x10
 1c7050c:      	mov	w2, #0x0                ; =0
 1c70510:      	mov	w3, #0x0                ; =0
 1c70514:      	bl	0x1c6c824 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib>
 1c70518:      	ldr	x8, [x19]
 1c7051c:      	ldp	x9, x8, [x8, #0x10]
 1c70520:      	cmp	x8, x9
 1c70524:      	csel	x8, xzr, x9, eq
 1c70528:      	ldr	x0, [sp, #0x8]
 1c7052c:      	ldp	x9, x10, [x0, #0x10]
 1c70530:      	cmp	x10, x9
 1c70534:      	csel	x9, xzr, x9, eq
 1c70538:      	add	x8, x8, #0x8b8
 1c7053c:      	ldp	q1, q0, [x9, #0x10]
 1c70540:      	ldr	x10, [x9, #0x30]
 1c70544:      	ldr	q2, [x9]
 1c70548:      	str	x10, [x8, #0x30]
 1c7054c:      	stp	q1, q0, [x8, #0x10]
 1c70550:      	str	q2, [x8]
 1c70554:      	ldr	x8, [x0]
 1c70558:      	ldr	x8, [x8, #0x8]
 1c7055c:      	blr	x8
 1c70560:      	ldr	x8, [x20]
 1c70564:      	ldr	x8, [x8, #0x8]
 1c70568:      	mov	x0, x20
 1c7056c:      	blr	x8
 1c70570:      	ldr	x0, [sp, #0x18]
 1c70574:      	cbz	x0, 0x1c70584 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1978>
 1c70578:      	ldr	x8, [x0]
 1c7057c:      	ldr	x8, [x8, #0x8]
 1c70580:      	blr	x8
 1c70584:      	ldr	x8, [x19]
 1c70588:      	ldr	x8, [x8, #0x10]
 1c7058c:      	ldr	d0, [x8, #0x580]
 1c70590:      	mov	w9, #0xaa3b             ; =43579
 1c70594:      	movk	w9, #0x3eaa, lsl #16
 1c70598:      	dup.2s	v1, w9
 1c7059c:      	fmul.2s	v0, v0, v1
 1c705a0:      	mov	w9, #0xaae2             ; =43746
 1c705a4:      	movk	w9, #0x3f2a, lsl #16
 1c705a8:      	dup.2s	v2, w9
 1c705ac:      	ldr	d3, [x8, #0x50]
 1c705b0:      	fmul.2s	v3, v3, v2
 1c705b4:      	fadd.2s	v0, v0, v3
 1c705b8:      	str	d0, [x8, #0x8f0]
 1c705bc:      	ldr	x8, [x19]
 1c705c0:      	ldr	x8, [x8, #0x10]
 1c705c4:      	ldr	d0, [x8, #0x518]
 1c705c8:      	fmul.2s	v0, v0, v1
 1c705cc:      	ldr	d3, [x8, #0x60]
 1c705d0:      	fmul.2s	v3, v3, v2
 1c705d4:      	fadd.2s	v0, v0, v3
 1c705d8:      	str	d0, [x8, #0x8f8]
 1c705dc:      	ldr	x8, [x19]
 1c705e0:      	ldr	x8, [x8, #0x10]
 1c705e4:      	ldr	d0, [x8, #0x540]
 1c705e8:      	fmul.2s	v0, v0, v1
 1c705ec:      	ldr	d3, [x8, #0x80]
 1c705f0:      	fmul.2s	v3, v3, v2
 1c705f4:      	fadd.2s	v0, v0, v3
 1c705f8:      	str	d0, [x8, #0x908]
 1c705fc:      	ldr	x8, [x19]
 1c70600:      	ldr	x8, [x8, #0x10]
 1c70604:      	ldr	d0, [x8, #0x568]
 1c70608:      	fmul.2s	v0, v0, v1
 1c7060c:      	ldr	d3, [x8, #0xa0]
 1c70610:      	fmul.2s	v3, v3, v2
 1c70614:      	fadd.2s	v0, v0, v3
 1c70618:      	str	d0, [x8, #0x918]
 1c7061c:      	ldr	x8, [x19]
 1c70620:      	ldr	x8, [x8, #0x10]
 1c70624:      	ldr	d0, [x8, #0x588]
 1c70628:      	fmul.2s	v0, v0, v1
 1c7062c:      	ldr	d1, [x8, #0xb0]
 1c70630:      	fmul.2s	v1, v1, v2
 1c70634:      	fadd.2s	v0, v0, v1
 1c70638:      	str	d0, [x8, #0x920]
 1c7063c:      	mov	w0, #0x28               ; =40
 1c70640:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c70644:      	mov	x22, x0
 1c70648:      	str	wzr, [x0, #0x8]
 1c7064c:      	add	x8, x28, #0x10
 1c70650:      	str	x8, [x0]
 1c70654:      	stp	xzr, xzr, [x0, #0x18]
 1c70658:      	str	xzr, [x0, #0x10]
 1c7065c:      	str	x0, [sp, #0x18]
 1c70660:      	bl	0x22751c4 <__ZNK13AmazingEngine7RefBase6retainEv>
 1c70664:      	ldr	x8, [x19]
 1c70668:      	ldr	x8, [x8, #0x10]
 1c7066c:      	add	x1, x8, #0x8f0
 1c70670:      	mov	x0, x22
 1c70674:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c70678:      	ldr	x8, [x19]
 1c7067c:      	ldr	x8, [x8, #0x10]
 1c70680:      	add	x1, x8, #0x8f8
 1c70684:      	mov	x0, x22
 1c70688:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c7068c:      	ldr	x8, [x19]
 1c70690:      	ldr	x8, [x8, #0x10]
 1c70694:      	add	x1, x8, #0x908
 1c70698:      	mov	x0, x22
 1c7069c:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c706a0:      	ldr	x8, [x19]
 1c706a4:      	ldr	x8, [x8, #0x10]
 1c706a8:      	add	x1, x8, #0x918
 1c706ac:      	mov	x0, x22
 1c706b0:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c706b4:      	ldr	x8, [x19]
 1c706b8:      	ldr	x8, [x8, #0x10]
 1c706bc:      	add	x1, x8, #0x920
 1c706c0:      	mov	x0, x22
 1c706c4:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c706c8:      	mov	w0, #0x28               ; =40
 1c706cc:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c706d0:      	mov	x20, x0
 1c706d4:      	str	wzr, [x0, #0x8]
 1c706d8:      	adrp	x8, 0x361a000 <__ZTIN4Bach21BachAlgorithmSystemGEE+0x470>
 1c706dc:      	add	x8, x8, #0xcc0
 1c706e0:      	add	x8, x8, #0x10
 1c706e4:      	str	x8, [x0]
 1c706e8:      	mov	x21, x0
 1c706ec:      	str	xzr, [x21, #0x10]!
 1c706f0:      	stp	xzr, xzr, [x0, #0x18]
 1c706f4:      	str	x0, [sp, #0x10]
 1c706f8:      	bl	0x22751c4 <__ZNK13AmazingEngine7RefBase6retainEv>
 1c706fc:      	ldp	x26, x8, [x20, #0x18]
 1c70700:      	cmp	x26, x8
 1c70704:      	b.eq	0x1c70718 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1b0c>
 1c70708:      	mov	w8, #0x1                ; =1
 1c7070c:      	strb	w8, [x26], #0x1
 1c70710:      	str	x26, [x20, #0x18]
 1c70714:      	b	0x1c70794 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1b88>
 1c70718:      	ldr	x22, [x21]
 1c7071c:      	sub	x23, x26, x22
 1c70720:      	adds	x8, x23, #0x1
 1c70724:      	b.mi	0x1c70be0 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1fd4>
 1c70728:      	lsl	x9, x23, #1
 1c7072c:      	cmp	x9, x8
 1c70730:      	csel	x8, x8, x9, lo
 1c70734:      	mov	x9, #0x3fffffffffffffff ; =4611686018427387903
 1c70738:      	mov	x10, #0x7fffffffffffffff ; =9223372036854775807
 1c7073c:      	cmp	x23, x9
 1c70740:      	csel	x25, x8, x10, lo
 1c70744:      	cbz	x25, 0x1c70b00 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1ef4>
 1c70748:      	mov	x0, x25
 1c7074c:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c70750:      	mov	x24, x0
 1c70754:      	add	x26, x24, x23
 1c70758:      	add	x25, x24, x25
 1c7075c:      	mov	w8, #0x1                ; =1
 1c70760:      	strb	w8, [x26], #0x1
 1c70764:      	cmp	x23, #0x1
 1c70768:      	b.lt	0x1c7077c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1b70>
 1c7076c:      	mov	x0, x24
 1c70770:      	mov	x1, x22
 1c70774:      	mov	x2, x23
 1c70778:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c7077c:      	stp	x24, x26, [x20, #0x10]
 1c70780:      	str	x25, [x20, #0x20]
 1c70784:      	cbz	x22, 0x1c70794 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1b88>
 1c70788:      	mov	x0, x22
 1c7078c:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c70790:      	ldr	x26, [x20, #0x18]
 1c70794:      	ldr	x8, [x20, #0x20]
 1c70798:      	cmp	x26, x8
 1c7079c:      	b.eq	0x1c707b0 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1ba4>
 1c707a0:      	mov	w8, #0x2                ; =2
 1c707a4:      	strb	w8, [x26], #0x1
 1c707a8:      	str	x26, [x20, #0x18]
 1c707ac:      	b	0x1c7082c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1c20>
 1c707b0:      	ldr	x22, [x21]
 1c707b4:      	sub	x23, x26, x22
 1c707b8:      	adds	x8, x23, #0x1
 1c707bc:      	b.mi	0x1c70bec <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1fe0>
 1c707c0:      	lsl	x9, x23, #1
 1c707c4:      	cmp	x9, x8
 1c707c8:      	csel	x8, x8, x9, lo
 1c707cc:      	mov	x9, #0x3fffffffffffffff ; =4611686018427387903
 1c707d0:      	mov	x10, #0x7fffffffffffffff ; =9223372036854775807
 1c707d4:      	cmp	x23, x9
 1c707d8:      	csel	x25, x8, x10, lo
 1c707dc:      	cbz	x25, 0x1c70b20 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1f14>
 1c707e0:      	mov	x0, x25
 1c707e4:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c707e8:      	mov	x24, x0
 1c707ec:      	add	x26, x24, x23
 1c707f0:      	add	x25, x24, x25
 1c707f4:      	mov	w8, #0x2                ; =2
 1c707f8:      	strb	w8, [x26], #0x1
 1c707fc:      	cmp	x23, #0x1
 1c70800:      	b.lt	0x1c70814 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1c08>
 1c70804:      	mov	x0, x24
 1c70808:      	mov	x1, x22
 1c7080c:      	mov	x2, x23
 1c70810:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c70814:      	stp	x24, x26, [x20, #0x10]
 1c70818:      	str	x25, [x20, #0x20]
 1c7081c:      	cbz	x22, 0x1c7082c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1c20>
 1c70820:      	mov	x0, x22
 1c70824:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c70828:      	ldr	x26, [x20, #0x18]
 1c7082c:      	ldr	x8, [x20, #0x20]
 1c70830:      	cmp	x26, x8
 1c70834:      	b.eq	0x1c70848 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1c3c>
 1c70838:      	mov	w8, #0x2                ; =2
 1c7083c:      	strb	w8, [x26], #0x1
 1c70840:      	str	x26, [x20, #0x18]
 1c70844:      	b	0x1c708c4 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1cb8>
 1c70848:      	ldr	x22, [x21]
 1c7084c:      	sub	x23, x26, x22
 1c70850:      	adds	x8, x23, #0x1
 1c70854:      	b.mi	0x1c70bf8 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1fec>
 1c70858:      	lsl	x9, x23, #1
 1c7085c:      	cmp	x9, x8
 1c70860:      	csel	x8, x8, x9, lo
 1c70864:      	mov	x9, #0x3fffffffffffffff ; =4611686018427387903
 1c70868:      	mov	x10, #0x7fffffffffffffff ; =9223372036854775807
 1c7086c:      	cmp	x23, x9
 1c70870:      	csel	x25, x8, x10, lo
 1c70874:      	cbz	x25, 0x1c70b40 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1f34>
 1c70878:      	mov	x0, x25
 1c7087c:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c70880:      	mov	x24, x0
 1c70884:      	add	x26, x24, x23
 1c70888:      	add	x25, x24, x25
 1c7088c:      	mov	w8, #0x2                ; =2
 1c70890:      	strb	w8, [x26], #0x1
 1c70894:      	cmp	x23, #0x1
 1c70898:      	b.lt	0x1c708ac <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1ca0>
 1c7089c:      	mov	x0, x24
 1c708a0:      	mov	x1, x22
 1c708a4:      	mov	x2, x23
 1c708a8:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c708ac:      	stp	x24, x26, [x20, #0x10]
 1c708b0:      	str	x25, [x20, #0x20]
 1c708b4:      	cbz	x22, 0x1c708c4 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1cb8>
 1c708b8:      	mov	x0, x22
 1c708bc:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c708c0:      	ldr	x26, [x20, #0x18]
 1c708c4:      	ldr	x8, [x20, #0x20]
 1c708c8:      	cmp	x26, x8
 1c708cc:      	b.eq	0x1c708e0 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1cd4>
 1c708d0:      	mov	w8, #0x1                ; =1
 1c708d4:      	strb	w8, [x26], #0x1
 1c708d8:      	str	x26, [x20, #0x18]
 1c708dc:      	b	0x1c70958 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1d4c>
 1c708e0:      	ldr	x22, [x21]
 1c708e4:      	sub	x23, x26, x22
 1c708e8:      	adds	x8, x23, #0x1
 1c708ec:      	b.mi	0x1c70c04 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1ff8>
 1c708f0:      	lsl	x9, x23, #1
 1c708f4:      	cmp	x9, x8
 1c708f8:      	csel	x8, x8, x9, lo
 1c708fc:      	mov	x9, #0x3fffffffffffffff ; =4611686018427387903
 1c70900:      	mov	x10, #0x7fffffffffffffff ; =9223372036854775807
 1c70904:      	cmp	x23, x9
 1c70908:      	csel	x24, x8, x10, lo
 1c7090c:      	cbz	x24, 0x1c70b60 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1f54>
 1c70910:      	mov	x0, x24
 1c70914:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c70918:      	mov	x21, x0
 1c7091c:      	add	x25, x21, x23
 1c70920:      	add	x24, x21, x24
 1c70924:      	mov	w8, #0x1                ; =1
 1c70928:      	strb	w8, [x25], #0x1
 1c7092c:      	cmp	x23, #0x1
 1c70930:      	b.lt	0x1c70944 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1d38>
 1c70934:      	mov	x0, x21
 1c70938:      	mov	x1, x22
 1c7093c:      	mov	x2, x23
 1c70940:      	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1c70944:      	stp	x21, x25, [x20, #0x10]
 1c70948:      	str	x24, [x20, #0x20]
 1c7094c:      	cbz	x22, 0x1c70958 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1d4c>
 1c70950:      	mov	x0, x22
 1c70954:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1c70958:      	add	x8, sp, #0x8
 1c7095c:      	add	x0, sp, #0x18
 1c70960:      	add	x1, sp, #0x10
 1c70964:      	mov	w2, #0x0                ; =0
 1c70968:      	mov	w3, #0x0                ; =0
 1c7096c:      	bl	0x1c6c824 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib>
 1c70970:      	ldr	x8, [x19]
 1c70974:      	ldp	x9, x8, [x8, #0x10]
 1c70978:      	cmp	x8, x9
 1c7097c:      	csel	x8, xzr, x9, eq
 1c70980:      	ldr	x0, [sp, #0x8]
 1c70984:      	ldp	x9, x10, [x0, #0x10]
 1c70988:      	cmp	x10, x9
 1c7098c:      	csel	x9, xzr, x9, eq
 1c70990:      	ldp	q1, q0, [x9, #0x10]
 1c70994:      	ldr	x10, [x9, #0x30]
 1c70998:      	ldr	q2, [x9]
 1c7099c:      	str	q2, [x8, #0x8f0]
 1c709a0:      	str	x10, [x8, #0x920]
 1c709a4:      	str	q0, [x8, #0x910]
 1c709a8:      	str	q1, [x8, #0x900]
 1c709ac:      	ldr	x8, [x0]
 1c709b0:      	ldr	x8, [x8, #0x8]
 1c709b4:      	blr	x8
 1c709b8:      	ldr	x8, [x20]
 1c709bc:      	ldr	x8, [x8, #0x8]
 1c709c0:      	mov	x0, x20
 1c709c4:      	blr	x8
 1c709c8:      	ldr	x0, [sp, #0x18]
 1c709cc:      	cbz	x0, 0x1c709dc <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1dd0>
 1c709d0:      	ldr	x8, [x0]
 1c709d4:      	ldr	x8, [x8, #0x8]
 1c709d8:      	blr	x8
 1c709dc:      	ldp	x29, x30, [sp, #0x80]
 1c709e0:      	ldp	x20, x19, [sp, #0x70]
 1c709e4:      	ldp	x22, x21, [sp, #0x60]
 1c709e8:      	ldp	x24, x23, [sp, #0x50]
 1c709ec:      	ldp	x26, x25, [sp, #0x40]
 1c709f0:      	ldp	x28, x27, [sp, #0x30]
 1c709f4:      	ldp	d9, d8, [sp, #0x20]
 1c709f8:      	add	sp, sp, #0x90
 1c709fc:      	ret
 1c70a00:      	mov	x25, #0x0               ; =0
 1c70a04:      	add	x27, x25, x24
 1c70a08:      	add	x26, x25, x26
 1c70a0c:      	mov	w8, #0x4                ; =4
 1c70a10:      	strb	w8, [x27], #0x1
 1c70a14:      	cmp	x24, #0x1
 1c70a18:      	b.ge	0x1c6f87c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xc70>
 1c70a1c:      	b	0x1c6f88c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xc80>
 1c70a20:      	mov	x21, #0x0               ; =0
 1c70a24:      	add	x26, x21, x24
 1c70a28:      	add	x25, x21, x25
 1c70a2c:      	mov	w8, #0x4                ; =4
 1c70a30:      	strb	w8, [x26], #0x1
 1c70a34:      	cmp	x24, #0x1
 1c70a38:      	b.ge	0x1c6f91c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xd10>
 1c70a3c:      	b	0x1c6f92c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0xd20>
 1c70a40:      	mov	x25, #0x0               ; =0
 1c70a44:      	add	x27, x25, x24
 1c70a48:      	add	x26, x25, x26
 1c70a4c:      	mov	w8, #0x4                ; =4
 1c70a50:      	strb	w8, [x27], #0x1
 1c70a54:      	cmp	x24, #0x1
 1c70a58:      	b.ge	0x1c6fd20 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1114>
 1c70a5c:      	b	0x1c6fd30 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1124>
 1c70a60:      	mov	x21, #0x0               ; =0
 1c70a64:      	add	x26, x21, x24
 1c70a68:      	add	x25, x21, x25
 1c70a6c:      	mov	w8, #0x4                ; =4
 1c70a70:      	strb	w8, [x26], #0x1
 1c70a74:      	cmp	x24, #0x1
 1c70a78:      	b.ge	0x1c6fdb8 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x11ac>
 1c70a7c:      	b	0x1c6fdc8 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x11bc>
 1c70a80:      	mov	x24, #0x0               ; =0
 1c70a84:      	add	x26, x24, x23
 1c70a88:      	add	x25, x24, x25
 1c70a8c:      	mov	w8, #0x1                ; =1
 1c70a90:      	strb	w8, [x26], #0x1
 1c70a94:      	cmp	x23, #0x1
 1c70a98:      	b.ge	0x1c70314 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1708>
 1c70a9c:      	b	0x1c70324 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1718>
 1c70aa0:      	mov	x24, #0x0               ; =0
 1c70aa4:      	add	x26, x24, x23
 1c70aa8:      	add	x25, x24, x25
 1c70aac:      	mov	w8, #0x2                ; =2
 1c70ab0:      	strb	w8, [x26], #0x1
 1c70ab4:      	cmp	x23, #0x1
 1c70ab8:      	b.ge	0x1c703ac <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x17a0>
 1c70abc:      	b	0x1c703bc <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x17b0>
 1c70ac0:      	mov	x24, #0x0               ; =0
 1c70ac4:      	add	x26, x24, x23
 1c70ac8:      	add	x25, x24, x25
 1c70acc:      	mov	w8, #0x2                ; =2
 1c70ad0:      	strb	w8, [x26], #0x1
 1c70ad4:      	cmp	x23, #0x1
 1c70ad8:      	b.ge	0x1c70444 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1838>
 1c70adc:      	b	0x1c70454 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1848>
 1c70ae0:      	mov	x21, #0x0               ; =0
 1c70ae4:      	add	x25, x21, x23
 1c70ae8:      	add	x24, x21, x24
 1c70aec:      	mov	w8, #0x1                ; =1
 1c70af0:      	strb	w8, [x25], #0x1
 1c70af4:      	cmp	x23, #0x1
 1c70af8:      	b.ge	0x1c704dc <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x18d0>
 1c70afc:      	b	0x1c704ec <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x18e0>
 1c70b00:      	mov	x24, #0x0               ; =0
 1c70b04:      	add	x26, x24, x23
 1c70b08:      	add	x25, x24, x25
 1c70b0c:      	mov	w8, #0x1                ; =1
 1c70b10:      	strb	w8, [x26], #0x1
 1c70b14:      	cmp	x23, #0x1
 1c70b18:      	b.ge	0x1c7076c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1b60>
 1c70b1c:      	b	0x1c7077c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1b70>
 1c70b20:      	mov	x24, #0x0               ; =0
 1c70b24:      	add	x26, x24, x23
 1c70b28:      	add	x25, x24, x25
 1c70b2c:      	mov	w8, #0x2                ; =2
 1c70b30:      	strb	w8, [x26], #0x1
 1c70b34:      	cmp	x23, #0x1
 1c70b38:      	b.ge	0x1c70804 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1bf8>
 1c70b3c:      	b	0x1c70814 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1c08>
 1c70b40:      	mov	x24, #0x0               ; =0
 1c70b44:      	add	x26, x24, x23
 1c70b48:      	add	x25, x24, x25
 1c70b4c:      	mov	w8, #0x2                ; =2
 1c70b50:      	strb	w8, [x26], #0x1
 1c70b54:      	cmp	x23, #0x1
 1c70b58:      	b.ge	0x1c7089c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1c90>
 1c70b5c:      	b	0x1c708ac <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1ca0>
 1c70b60:      	mov	x21, #0x0               ; =0
 1c70b64:      	add	x25, x21, x23
 1c70b68:      	add	x24, x21, x24
 1c70b6c:      	mov	w8, #0x1                ; =1
 1c70b70:      	strb	w8, [x25], #0x1
 1c70b74:      	cmp	x23, #0x1
 1c70b78:      	b.ge	0x1c70934 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1d28>
 1c70b7c:      	b	0x1c70944 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x1d38>
 1c70b80:      	mov	x0, x21
 1c70b84:      	bl	0x1c75724 <__ZN13AmazingEngine15FaceMakeupUtils18calcFace3DLandmarkEi+0xb20>
 1c70b88:      	b	0x1c70c0c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2000>
 1c70b8c:      	mov	x0, x21
 1c70b90:      	bl	0x1c75724 <__ZN13AmazingEngine15FaceMakeupUtils18calcFace3DLandmarkEi+0xb20>
 1c70b94:      	b	0x1c70c0c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2000>
 1c70b98:      	mov	x0, x21
 1c70b9c:      	bl	0x1c75724 <__ZN13AmazingEngine15FaceMakeupUtils18calcFace3DLandmarkEi+0xb20>
 1c70ba0:      	b	0x1c70c0c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2000>
 1c70ba4:      	mov	x0, x21
 1c70ba8:      	bl	0x1c75724 <__ZN13AmazingEngine15FaceMakeupUtils18calcFace3DLandmarkEi+0xb20>
 1c70bac:      	b	0x1c70c0c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2000>
 1c70bb0:      	mov	x0, x21
 1c70bb4:      	bl	0x1c75724 <__ZN13AmazingEngine15FaceMakeupUtils18calcFace3DLandmarkEi+0xb20>
 1c70bb8:      	b	0x1c70c0c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2000>
 1c70bbc:      	mov	x0, x21
 1c70bc0:      	bl	0x1c75724 <__ZN13AmazingEngine15FaceMakeupUtils18calcFace3DLandmarkEi+0xb20>
 1c70bc4:      	b	0x1c70c0c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2000>
 1c70bc8:      	mov	x0, x21
 1c70bcc:      	bl	0x1c75724 <__ZN13AmazingEngine15FaceMakeupUtils18calcFace3DLandmarkEi+0xb20>
 1c70bd0:      	b	0x1c70c0c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2000>
 1c70bd4:      	mov	x0, x21
 1c70bd8:      	bl	0x1c75724 <__ZN13AmazingEngine15FaceMakeupUtils18calcFace3DLandmarkEi+0xb20>
 1c70bdc:      	b	0x1c70c0c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2000>
 1c70be0:      	mov	x0, x21
 1c70be4:      	bl	0x1c75724 <__ZN13AmazingEngine15FaceMakeupUtils18calcFace3DLandmarkEi+0xb20>
 1c70be8:      	b	0x1c70c0c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2000>
 1c70bec:      	mov	x0, x21
 1c70bf0:      	bl	0x1c75724 <__ZN13AmazingEngine15FaceMakeupUtils18calcFace3DLandmarkEi+0xb20>
 1c70bf4:      	b	0x1c70c0c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2000>
 1c70bf8:      	mov	x0, x21
 1c70bfc:      	bl	0x1c75724 <__ZN13AmazingEngine15FaceMakeupUtils18calcFace3DLandmarkEi+0xb20>
 1c70c00:      	b	0x1c70c0c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2000>
 1c70c04:      	mov	x0, x21
 1c70c08:      	bl	0x1c75724 <__ZN13AmazingEngine15FaceMakeupUtils18calcFace3DLandmarkEi+0xb20>
 1c70c0c:      	brk	#0x1
 1c70c10:      	b	0x1c70d10 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2104>
 1c70c14:      	b	0x1c70c54 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2048>
 1c70c18:      	b	0x1c70c54 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2048>
 1c70c1c:      	b	0x1c70c54 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2048>
 1c70c20:      	b	0x1c70c54 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2048>
 1c70c24:      	b	0x1c70c7c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2070>
 1c70c28:      	b	0x1c70c7c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2070>
 1c70c2c:      	b	0x1c70c7c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2070>
 1c70c30:      	b	0x1c70c7c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2070>
 1c70c34:      	b	0x1c70ca8 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x209c>
 1c70c38:      	b	0x1c70ca8 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x209c>
 1c70c3c:      	b	0x1c70ccc <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x20c0>
 1c70c40:      	b	0x1c70ccc <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x20c0>
 1c70c44:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70c48:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70c4c:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70c50:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70c54:      	mov	x21, x0
 1c70c58:      	ldr	x8, [x20]
 1c70c5c:      	ldr	x8, [x8, #0x8]
 1c70c60:      	mov	x0, x20
 1c70c64:      	blr	x8
 1c70c68:      	ldr	x22, [sp, #0x18]
 1c70c6c:      	cbnz	x22, 0x1c70d54 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2148>
 1c70c70:      	b	0x1c70d80 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2174>
 1c70c74:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70c78:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70c7c:      	mov	x21, x0
 1c70c80:      	ldr	x8, [x20]
 1c70c84:      	ldr	x8, [x8, #0x8]
 1c70c88:      	mov	x0, x20
 1c70c8c:      	blr	x8
 1c70c90:      	ldr	x22, [sp, #0x18]
 1c70c94:      	cbnz	x22, 0x1c70d70 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2164>
 1c70c98:      	b	0x1c70d80 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2174>
 1c70c9c:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70ca0:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70ca4:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70ca8:      	mov	x21, x0
 1c70cac:      	ldr	x8, [x22]
 1c70cb0:      	ldr	x8, [x8, #0x8]
 1c70cb4:      	mov	x0, x22
 1c70cb8:      	blr	x8
 1c70cbc:      	b	0x1c70d1c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2110>
 1c70cc0:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70cc4:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70cc8:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70ccc:      	mov	x21, x0
 1c70cd0:      	ldr	x8, [x22]
 1c70cd4:      	ldr	x8, [x8, #0x8]
 1c70cd8:      	mov	x0, x22
 1c70cdc:      	blr	x8
 1c70ce0:      	b	0x1c70d34 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2128>
 1c70ce4:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70ce8:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70cec:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70cf0:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70cf4:      	b	0x1c70d50 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2144>
 1c70cf8:      	b	0x1c70d10 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2104>
 1c70cfc:      	b	0x1c70d6c <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2160>
 1c70d00:      	b	0x1c70d10 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2104>
 1c70d04:      	b	0x1c70d18 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x210c>
 1c70d08:      	b	0x1c70d10 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2104>
 1c70d0c:      	b	0x1c70d30 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2124>
 1c70d10:      	mov	x21, x0
 1c70d14:      	b	0x1c70d80 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2174>
 1c70d18:      	mov	x21, x0
 1c70d1c:      	ldr	x8, [x20]
 1c70d20:      	ldr	x8, [x8, #0x8]
 1c70d24:      	mov	x0, x20
 1c70d28:      	blr	x8
 1c70d2c:      	b	0x1c70d80 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2174>
 1c70d30:      	mov	x21, x0
 1c70d34:      	ldr	x8, [x20]
 1c70d38:      	ldr	x8, [x8, #0x8]
 1c70d3c:      	mov	x0, x20
 1c70d40:      	blr	x8
 1c70d44:      	b	0x1c70d80 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2174>
 1c70d48:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70d4c:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70d50:      	mov	x21, x0
 1c70d54:      	ldr	x8, [x22]
 1c70d58:      	ldr	x8, [x8, #0x8]
 1c70d5c:      	mov	x0, x22
 1c70d60:      	blr	x8
 1c70d64:      	b	0x1c70d80 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x2174>
 1c70d68:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70d6c:      	mov	x21, x0
 1c70d70:      	ldr	x8, [x22]
 1c70d74:      	ldr	x8, [x8, #0x8]
 1c70d78:      	mov	x0, x22
 1c70d7c:      	blr	x8
 1c70d80:      	ldr	x0, [x19]
 1c70d84:      	cbz	x0, 0x1c70d98 <__ZN13AmazingEngine15FaceMakeupUtils12calcTT295PtsERKNS_15PrimitiveVectorINS_8Vector2fEEES5_iii+0x218c>
 1c70d88:      	ldr	x8, [x0]
 1c70d8c:      	ldr	x8, [x8, #0x8]
 1c70d90:      	blr	x8
 1c70d94:      	str	xzr, [x19]
 1c70d98:      	mov	x0, x21
 1c70d9c:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 1c70da0:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c70da4:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
