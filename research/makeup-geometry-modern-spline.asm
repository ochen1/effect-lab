
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000001c6c824 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib>:
 1c6c824:      	sub	sp, sp, #0x100
 1c6c828:      	stp	d15, d14, [sp, #0x60]
 1c6c82c:      	stp	d13, d12, [sp, #0x70]
 1c6c830:      	stp	d11, d10, [sp, #0x80]
 1c6c834:      	stp	d9, d8, [sp, #0x90]
 1c6c838:      	stp	x28, x27, [sp, #0xa0]
 1c6c83c:      	stp	x26, x25, [sp, #0xb0]
 1c6c840:      	stp	x24, x23, [sp, #0xc0]
 1c6c844:      	stp	x22, x21, [sp, #0xd0]
 1c6c848:      	stp	x20, x19, [sp, #0xe0]
 1c6c84c:      	stp	x29, x30, [sp, #0xf0]
 1c6c850:      	add	x29, sp, #0xf0
 1c6c854:      	mov	x21, x3
 1c6c858:      	mov	x22, x2
 1c6c85c:      	mov	x23, x1
 1c6c860:      	mov	x24, x0
 1c6c864:      	mov	x20, x8
 1c6c868:      	mov	w0, #0x28               ; =40
 1c6c86c:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1c6c870:      	mov	x19, x0
 1c6c874:      	adrp	x8, 0x361a000 <__ZTIN4Bach21BachAlgorithmSystemGEE+0x470>
 1c6c878:      	add	x8, x8, #0xf00
 1c6c87c:      	str	wzr, [x0, #0x8]
 1c6c880:      	add	x8, x8, #0x10
 1c6c884:      	str	x8, [x0]
 1c6c888:      	stp	xzr, xzr, [x0, #0x18]
 1c6c88c:      	str	xzr, [x0, #0x10]
 1c6c890:      	bl	0x22751c4 <__ZNK13AmazingEngine7RefBase6retainEv>
 1c6c894:      	ldr	x0, [x24]
 1c6c898:      	ldp	x8, x9, [x0, #0x10]
 1c6c89c:      	sub	x10, x9, x8
 1c6c8a0:      	lsr	x10, x10, #3
 1c6c8a4:      	cmp	w10, #0x3
 1c6c8a8:      	b.ge	0x1c6c8c0 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x9c>
 1c6c8ac:      	str	x0, [x20]
 1c6c8b0:      	ldr	x8, [x0]
 1c6c8b4:      	ldr	x8, [x8]
 1c6c8b8:      	blr	x8
 1c6c8bc:      	b	0x1c6ccbc <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x498>
 1c6c8c0:      	ldr	x12, [x23]
 1c6c8c4:      	ldp	x11, x12, [x12, #0x10]
 1c6c8c8:      	sub	x12, x12, x11
 1c6c8cc:      	cmp	w12, #0x0
 1c6c8d0:      	b.le	0x1c6c91c <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0xf8>
 1c6c8d4:      	and	x12, x12, #0xffffffff
 1c6c8d8:      	ldrb	w13, [x11]
 1c6c8dc:      	cbz	w13, 0x1c6ccac <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x488>
 1c6c8e0:      	add	x11, x11, #0x1
 1c6c8e4:      	subs	x12, x12, #0x1
 1c6c8e8:      	b.ne	0x1c6c8d8 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0xb4>
 1c6c8ec:      	sub	w25, w10, #0x1
 1c6c8f0:      	cmp	w10, #0x2
 1c6c8f4:      	b.ge	0x1c6c920 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0xfc>
 1c6c8f8:      	add	x1, x8, w25, sxtw #3
 1c6c8fc:      	mov	x0, x19
 1c6c900:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c6c904:      	str	x19, [x20]
 1c6c908:      	ldr	x8, [x19]
 1c6c90c:      	ldr	x8, [x8]
 1c6c910:      	mov	x0, x19
 1c6c914:      	blr	x8
 1c6c918:      	b	0x1c6ccbc <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x498>
 1c6c91c:      	sub	w25, w10, #0x1
 1c6c920:      	mov	x26, #0x0               ; =0
 1c6c924:      	mov	w27, w25
 1c6c928:      	sub	x10, x9, x8
 1c6c92c:      	lsr	x9, x10, #3
 1c6c930:      	cbz	w21, 0x1c6c988 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x164>
 1c6c934:      	add	w10, w26, w9
 1c6c938:      	sub	w11, w10, #0x1
 1c6c93c:      	sdiv	w12, w11, w9
 1c6c940:      	msub	w11, w12, w9, w11
 1c6c944:      	ldr	d1, [x8, w11, sxtw #3]
 1c6c948:      	sdiv	w11, w10, w9
 1c6c94c:      	msub	w11, w11, w9, w10
 1c6c950:      	ldr	d2, [x8, w11, sxtw #3]
 1c6c954:      	add	w11, w10, #0x1
 1c6c958:      	sdiv	w12, w11, w9
 1c6c95c:      	msub	w11, w12, w9, w11
 1c6c960:      	ldr	d0, [x8, w11, sxtw #3]
 1c6c964:      	stp	q1, q0, [sp, #0x20]
 1c6c968:      	add	w10, w10, #0x2
 1c6c96c:      	sdiv	w11, w10, w9
 1c6c970:      	msub	w9, w11, w9, w10
 1c6c974:      	ldr	d0, [x8, w9, sxtw #3]
 1c6c978:      	str	q0, [sp, #0x10]
 1c6c97c:      	str	q2, [sp, #0x40]
 1c6c980:      	cbnz	w22, 0x1c6c9ec <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x1c8>
 1c6c984:      	b	0x1c6cac0 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x29c>
 1c6c988:      	cbz	x26, 0x1c6c9d0 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x1ac>
 1c6c98c:      	sub	w9, w9, #0x2
 1c6c990:      	add	x11, x8, x26, lsl #3
 1c6c994:      	ldp	d1, d2, [x11, #-0x8]
 1c6c998:      	ldr	d0, [x11, #0x8]
 1c6c99c:      	stp	q1, q0, [sp, #0x20]
 1c6c9a0:      	cmp	x9, x26
 1c6c9a4:      	b.ne	0x1c6caa4 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x280>
 1c6c9a8:      	mov	x9, #-0x100000000       ; =-4294967296
 1c6c9ac:      	add	x9, x9, x10, lsl #29
 1c6c9b0:      	asr	x9, x9, #32
 1c6c9b4:      	ldr	d0, [x8, x9, lsl #3]
 1c6c9b8:      	fsub.2s	v1, v2, v0
 1c6c9bc:      	fsub.2s	v0, v0, v1
 1c6c9c0:      	str	q0, [sp, #0x10]
 1c6c9c4:      	str	q2, [sp, #0x40]
 1c6c9c8:      	cbnz	w22, 0x1c6c9ec <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x1c8>
 1c6c9cc:      	b	0x1c6cac0 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x29c>
 1c6c9d0:      	ldp	d2, d0, [x8]
 1c6c9d4:      	stp	q0, q2, [sp, #0x30]
 1c6c9d8:      	fsub.2s	v0, v0, v2
 1c6c9dc:      	fsub.2s	v1, v2, v0
 1c6c9e0:      	ldr	d0, [x8, #0x10]
 1c6c9e4:      	stp	q0, q1, [sp, #0x10]
 1c6c9e8:      	cbz	w22, 0x1c6cac0 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x29c>
 1c6c9ec:      	cmp	w22, #0x1
 1c6c9f0:      	b.ne	0x1c6ca54 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x230>
 1c6c9f4:      	ldr	q0, [sp, #0x20]
 1c6c9f8:      	fsub.2s	v0, v2, v0
 1c6c9fc:      	fmul.2s	v0, v0, v0
 1c6ca00:      	faddp.2s	s0, v0
 1c6ca04:      	fmov	s1, #0.25000000
 1c6ca08:      	bl	0x29a58ac <dyld_stub_binder+0x29a58ac>
 1c6ca0c:      	movi	d1, #0000000000000000
 1c6ca10:      	fadd	s9, s0, s1
 1c6ca14:      	ldp	q1, q0, [sp, #0x30]
 1c6ca18:      	fsub.2s	v0, v1, v0
 1c6ca1c:      	fmul.2s	v0, v0, v0
 1c6ca20:      	faddp.2s	s0, v0
 1c6ca24:      	fmov	s1, #0.25000000
 1c6ca28:      	bl	0x29a58ac <dyld_stub_binder+0x29a58ac>
 1c6ca2c:      	fadd	s10, s9, s0
 1c6ca30:      	ldr	q0, [sp, #0x10]
 1c6ca34:      	ldr	q1, [sp, #0x30]
 1c6ca38:      	fsub.2s	v0, v0, v1
 1c6ca3c:      	fmul.2s	v0, v0, v0
 1c6ca40:      	faddp.2s	s0, v0
 1c6ca44:      	fmov	s1, #0.25000000
 1c6ca48:      	bl	0x29a58ac <dyld_stub_binder+0x29a58ac>
 1c6ca4c:      	ldr	q2, [sp, #0x40]
 1c6ca50:      	b	0x1c6ca9c <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x278>
 1c6ca54:      	ldp	q0, q1, [sp, #0x20]
 1c6ca58:      	fsub.2s	v0, v2, v0
 1c6ca5c:      	fmul.2s	v0, v0, v0
 1c6ca60:      	faddp.2s	s0, v0
 1c6ca64:      	fsqrt	s0, s0
 1c6ca68:      	fabs	s9, s0
 1c6ca6c:      	fsub.2s	v0, v1, v2
 1c6ca70:      	fmul.2s	v0, v0, v0
 1c6ca74:      	faddp.2s	s0, v0
 1c6ca78:      	fsqrt	s0, s0
 1c6ca7c:      	fabs	s0, s0
 1c6ca80:      	fadd	s10, s9, s0
 1c6ca84:      	ldr	q0, [sp, #0x10]
 1c6ca88:      	fsub.2s	v0, v0, v1
 1c6ca8c:      	fmul.2s	v0, v0, v0
 1c6ca90:      	faddp.2s	s0, v0
 1c6ca94:      	fsqrt	s0, s0
 1c6ca98:      	fabs	s0, s0
 1c6ca9c:      	fadd	s0, s10, s0
 1c6caa0:      	b	0x1c6cacc <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x2a8>
 1c6caa4:      	mov	x9, #0x200000000        ; =8589934592
 1c6caa8:      	add	x9, x9, x26, lsl #32
 1c6caac:      	asr	x9, x9, #29
 1c6cab0:      	ldr	d0, [x8, x9]
 1c6cab4:      	str	q0, [sp, #0x10]
 1c6cab8:      	str	q2, [sp, #0x40]
 1c6cabc:      	cbnz	w22, 0x1c6c9ec <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x1c8>
 1c6cac0:      	fmov	s9, #1.00000000
 1c6cac4:      	fmov	s10, #2.00000000
 1c6cac8:      	fmov	s0, #3.00000000
 1c6cacc:      	str	s0, [sp, #0xc]
 1c6cad0:      	str	d2, [sp, #0x50]
 1c6cad4:      	add	x1, sp, #0x50
 1c6cad8:      	mov	x0, x19
 1c6cadc:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c6cae0:      	ldr	x8, [x23]
 1c6cae4:      	ldr	x8, [x8, #0x10]
 1c6cae8:      	ldrb	w8, [x8, x26]
 1c6caec:      	cmp	w8, #0x2
 1c6caf0:      	ldr	q4, [sp, #0x40]
 1c6caf4:      	b.lo	0x1c6cc84 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x460>
 1c6caf8:      	mov	s12, v4[1]
 1c6cafc:      	fsub	s13, s10, s9
 1c6cb00:      	ldr	s0, [sp, #0xc]
 1c6cb04:      	fsub	s14, s0, s10
 1c6cb08:      	fsub	s15, s0, s9
 1c6cb0c:      	ldr	q0, [sp, #0x20]
 1c6cb10:      	mov	s0, v0[1]
 1c6cb14:      	str	s0, [sp, #0x8]
 1c6cb18:      	ldr	q0, [sp, #0x30]
 1c6cb1c:      	mov	s11, v0[1]
 1c6cb20:      	mov	w28, #0x1               ; =1
 1c6cb24:      	ldr	q0, [sp, #0x10]
 1c6cb28:      	mov	s8, v0[1]
 1c6cb2c:      	scvtf	s0, w28
 1c6cb30:      	fmul	s0, s13, s0
 1c6cb34:      	and	w8, w8, #0xff
 1c6cb38:      	ucvtf	s1, w8
 1c6cb3c:      	fdiv	s0, s0, s1
 1c6cb40:      	fadd	s0, s9, s0
 1c6cb44:      	fsub	s1, s9, s0
 1c6cb48:      	ldp	q2, q7, [sp, #0x20]
 1c6cb4c:      	fmul	s2, s2, s1
 1c6cb50:      	fdiv	s2, s2, s9
 1c6cb54:      	fmul	s3, s4, s0
 1c6cb58:      	fdiv	s3, s3, s9
 1c6cb5c:      	fadd	s2, s2, s3
 1c6cb60:      	fsub	s3, s10, s0
 1c6cb64:      	fmul	s4, s4, s3
 1c6cb68:      	fdiv	s4, s4, s13
 1c6cb6c:      	fsub	s5, s0, s9
 1c6cb70:      	fmul	s6, s5, s7
 1c6cb74:      	fdiv	s6, s6, s13
 1c6cb78:      	fadd	s4, s4, s6
 1c6cb7c:      	ldr	s6, [sp, #0xc]
 1c6cb80:      	fsub	s6, s6, s0
 1c6cb84:      	fmul	s7, s7, s6
 1c6cb88:      	fdiv	s7, s7, s14
 1c6cb8c:      	fsub	s16, s0, s10
 1c6cb90:      	ldr	q17, [sp, #0x10]
 1c6cb94:      	fmul	s17, s16, s17
 1c6cb98:      	fdiv	s17, s17, s14
 1c6cb9c:      	fadd	s7, s7, s17
 1c6cba0:      	fmul	s2, s3, s2
 1c6cba4:      	fdiv	s2, s2, s10
 1c6cba8:      	fmul	s17, s0, s4
 1c6cbac:      	fdiv	s17, s17, s10
 1c6cbb0:      	fadd	s2, s2, s17
 1c6cbb4:      	fmul	s4, s6, s4
 1c6cbb8:      	fdiv	s4, s4, s15
 1c6cbbc:      	fmul	s7, s5, s7
 1c6cbc0:      	fdiv	s7, s7, s15
 1c6cbc4:      	fadd	s4, s4, s7
 1c6cbc8:      	fmul	s2, s3, s2
 1c6cbcc:      	fdiv	s2, s2, s13
 1c6cbd0:      	fmul	s4, s5, s4
 1c6cbd4:      	fdiv	s4, s4, s13
 1c6cbd8:      	fadd	s2, s2, s4
 1c6cbdc:      	ldr	s4, [sp, #0x8]
 1c6cbe0:      	fmul	s1, s1, s4
 1c6cbe4:      	fdiv	s1, s1, s9
 1c6cbe8:      	fmul	s4, s0, s12
 1c6cbec:      	fdiv	s4, s4, s9
 1c6cbf0:      	fadd	s1, s1, s4
 1c6cbf4:      	fmul	s4, s3, s12
 1c6cbf8:      	fdiv	s4, s4, s13
 1c6cbfc:      	fmul	s7, s5, s11
 1c6cc00:      	fdiv	s7, s7, s13
 1c6cc04:      	fadd	s4, s4, s7
 1c6cc08:      	fmul	s7, s6, s11
 1c6cc0c:      	fdiv	s7, s7, s14
 1c6cc10:      	fmul	s16, s8, s16
 1c6cc14:      	fdiv	s16, s16, s14
 1c6cc18:      	fadd	s7, s16, s7
 1c6cc1c:      	fmul	s1, s3, s1
 1c6cc20:      	fdiv	s1, s1, s10
 1c6cc24:      	fmul	s0, s0, s4
 1c6cc28:      	fdiv	s0, s0, s10
 1c6cc2c:      	fadd	s0, s1, s0
 1c6cc30:      	fmul	s1, s6, s4
 1c6cc34:      	fdiv	s1, s1, s15
 1c6cc38:      	fmul	s4, s5, s7
 1c6cc3c:      	fdiv	s4, s4, s15
 1c6cc40:      	fadd	s1, s1, s4
 1c6cc44:      	fmul	s0, s3, s0
 1c6cc48:      	fdiv	s0, s0, s13
 1c6cc4c:      	fmul	s1, s5, s1
 1c6cc50:      	fdiv	s1, s1, s13
 1c6cc54:      	fadd	s0, s0, s1
 1c6cc58:      	stp	s2, s0, [sp, #0x50]
 1c6cc5c:      	add	x1, sp, #0x50
 1c6cc60:      	mov	x0, x19
 1c6cc64:      	bl	0x22ff28 <__ZN3BEF15AmazingLuaScene20unBindEntityToFaceIdEy+0x1dc>
 1c6cc68:      	add	w28, w28, #0x1
 1c6cc6c:      	ldr	x8, [x23]
 1c6cc70:      	ldr	x8, [x8, #0x10]
 1c6cc74:      	ldrb	w8, [x8, x26]
 1c6cc78:      	cmp	w28, w8
 1c6cc7c:      	ldr	q4, [sp, #0x40]
 1c6cc80:      	b.lo	0x1c6cb2c <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x308>
 1c6cc84:      	add	x26, x26, #0x1
 1c6cc88:      	ldr	x9, [x24]
 1c6cc8c:      	ldr	x8, [x9, #0x10]
 1c6cc90:      	cmp	x26, x27
 1c6cc94:      	b.eq	0x1c6c8f8 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0xd4>
 1c6cc98:      	ldr	x9, [x9, #0x18]
 1c6cc9c:      	sub	x10, x9, x8
 1c6cca0:      	lsr	x9, x10, #3
 1c6cca4:      	cbz	w21, 0x1c6c988 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x164>
 1c6cca8:      	b	0x1c6c934 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x110>
 1c6ccac:      	str	x0, [x20]
 1c6ccb0:      	ldr	x8, [x0]
 1c6ccb4:      	ldr	x8, [x8]
 1c6ccb8:      	blr	x8
 1c6ccbc:      	ldr	x8, [x19]
 1c6ccc0:      	ldr	x8, [x8, #0x8]
 1c6ccc4:      	mov	x0, x19
 1c6ccc8:      	blr	x8
 1c6cccc:      	ldp	x29, x30, [sp, #0xf0]
 1c6ccd0:      	ldp	x20, x19, [sp, #0xe0]
 1c6ccd4:      	ldp	x22, x21, [sp, #0xd0]
 1c6ccd8:      	ldp	x24, x23, [sp, #0xc0]
 1c6ccdc:      	ldp	x26, x25, [sp, #0xb0]
 1c6cce0:      	ldp	x28, x27, [sp, #0xa0]
 1c6cce4:      	ldp	d9, d8, [sp, #0x90]
 1c6cce8:      	ldp	d11, d10, [sp, #0x80]
 1c6ccec:      	ldp	d13, d12, [sp, #0x70]
 1c6ccf0:      	ldp	d15, d14, [sp, #0x60]
 1c6ccf4:      	add	sp, sp, #0x100
 1c6ccf8:      	ret
 1c6ccfc:      	b	0x1c6cd10 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x4ec>
 1c6cd00:      	b	0x1c6cd10 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x4ec>
 1c6cd04:      	b	0x1c6cd10 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x4ec>
 1c6cd08:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 1c6cd0c:      	b	0x1c6cd10 <__ZN13AmazingEngine15FaceMakeupUtils21catmullromInterpolateERKNS_15PrimitiveVectorINS_8Vector2fEEERKNS1_IhEEib+0x4ec>
 1c6cd10:      	mov	x20, x0
 1c6cd14:      	ldr	x8, [x19]
 1c6cd18:      	ldr	x8, [x8, #0x8]
 1c6cd1c:      	mov	x0, x19
 1c6cd20:      	blr	x8
 1c6cd24:      	mov	x0, x20
 1c6cd28:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 1c6cd2c:      	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
