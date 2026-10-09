
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

00000000003807a8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb>:
  3807a8:      	sub	sp, sp, #0x120
  3807ac:      	stp	d15, d14, [sp, #0x80]
  3807b0:      	stp	d13, d12, [sp, #0x90]
  3807b4:      	stp	d11, d10, [sp, #0xa0]
  3807b8:      	stp	d9, d8, [sp, #0xb0]
  3807bc:      	stp	x28, x27, [sp, #0xc0]
  3807c0:      	stp	x26, x25, [sp, #0xd0]
  3807c4:      	stp	x24, x23, [sp, #0xe0]
  3807c8:      	stp	x22, x21, [sp, #0xf0]
  3807cc:      	stp	x20, x19, [sp, #0x100]
  3807d0:      	stp	x29, x30, [sp, #0x110]
  3807d4:      	add	x29, sp, #0x110
  3807d8:      	mov	x20, x0
  3807dc:      	mov	x19, x8
  3807e0:      	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
  3807e4:      	ldr	x8, [x8, #0x6a8]
  3807e8:      	ldr	x8, [x8]
  3807ec:      	str	x8, [sp, #0x78]
  3807f0:      	stp	xzr, xzr, [sp, #0x30]
  3807f4:      	str	xzr, [sp, #0x40]
  3807f8:      	ldp	x8, x9, [x0]
  3807fc:      	sub	x8, x9, x8
  380800:      	asr	x24, x8, #3
  380804:      	cmp	x24, #0x3
  380808:      	b.hs	0x38081c <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x74>
  38080c:      	mov	x0, x19
  380810:      	mov	x1, x20
  380814:      	bl	0x1f0708 <__ZN3BEF17Sticker2DV3Filter18animationGoToFrameEPKcS2_i+0x4e30>
  380818:      	b	0x380bdc <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x434>
  38081c:      	mov	x21, x3
  380820:      	mov	x22, x2
  380824:      	mov	x23, x1
  380828:      	ldp	x8, x9, [x1]
  38082c:      	subs	x10, x9, x8
  380830:      	b.eq	0x38086c <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0xc4>
  380834:      	mov	w9, #0x0                ; =0
  380838:      	asr	x10, x10, #2
  38083c:      	cmp	x10, #0x1
  380840:      	csinc	x10, x10, xzr, hi
  380844:      	ldr	w11, [x8]
  380848:      	cmp	w11, #0x0
  38084c:      	b.le	0x380bd0 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x428>
  380850:      	add	w9, w11, w9
  380854:      	add	x8, x8, #0x4
  380858:      	subs	x10, x10, #0x1
  38085c:      	b.ne	0x380844 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x9c>
  380860:      	add	w8, w9, #0x1
  380864:      	sxtw	x1, w8
  380868:      	b	0x380870 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0xc8>
  38086c:      	mov	w1, #0x1                ; =1
  380870:      	add	x0, sp, #0x30
  380874:      	bl	0x380100 <__ZN3BEF8MakeupV221catmullromInterpolateERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEbRS7_+0x508>
  380878:      	subs	x25, x24, #0x1
  38087c:      	b.eq	0x380ba4 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x3fc>
  380880:      	mov	x24, #0x0               ; =0
  380884:      	b	0x380894 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0xec>
  380888:      	add	x24, x24, #0x1
  38088c:      	cmp	x24, x25
  380890:      	b.eq	0x380ba4 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x3fc>
  380894:      	ldp	x0, x1, [x20]
  380898:      	add	x4, sp, #0x68
  38089c:      	add	x5, sp, #0x58
  3808a0:      	add	x6, sp, #0x48
  3808a4:      	mov	x2, x24
  3808a8:      	mov	x3, x21
  3808ac:      	bl	0x38023c <__ZN3BEF8MakeupV221catmullromInterpolateERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEbRS7_+0x644>
  3808b0:      	cbz	w22, 0x3808d8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x130>
  3808b4:      	cmp	w22, #0x1
  3808b8:      	b.ne	0x380964 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x1bc>
  3808bc:      	ldr	s1, [sp, #0x6c]
  3808c0:      	fmov	s8, #2.00000000
  3808c4:      	fmov	s0, #1.00000000
  3808c8:      	str	s0, [sp, #0x24]
  3808cc:      	ldr	s0, [sp, #0x5c]
  3808d0:      	stp	s0, s1, [sp, #0x28]
  3808d4:      	b	0x3809e0 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x238>
  3808d8:      	ldp	s0, s8, [sp, #0x68]
  3808dc:      	fsub	s0, s8, s0
  3808e0:      	ldp	s1, s11, [sp, #0x58]
  3808e4:      	fsub	s1, s11, s1
  3808e8:      	fmul	s0, s0, s0
  3808ec:      	fmul	s1, s1, s1
  3808f0:      	fadd	s0, s0, s1
  3808f4:      	fmov	s1, #0.25000000
  3808f8:      	bl	0x29a58ac <dyld_stub_binder+0x29a58ac>
  3808fc:      	movi	d1, #0000000000000000
  380900:      	fadd	s12, s0, s1
  380904:      	str	s12, [sp, #0x4c]
  380908:      	ldr	s9, [sp, #0x70]
  38090c:      	stp	s11, s8, [sp, #0x28]
  380910:      	fsub	s0, s9, s8
  380914:      	ldr	s10, [sp, #0x60]
  380918:      	fsub	s1, s10, s11
  38091c:      	fmul	s0, s0, s0
  380920:      	fmul	s1, s1, s1
  380924:      	fadd	s0, s0, s1
  380928:      	fmov	s1, #0.25000000
  38092c:      	bl	0x29a58ac <dyld_stub_binder+0x29a58ac>
  380930:      	str	s12, [sp, #0x24]
  380934:      	fadd	s8, s12, s0
  380938:      	str	s8, [sp, #0x50]
  38093c:      	ldr	s0, [sp, #0x74]
  380940:      	fsub	s0, s0, s9
  380944:      	ldr	s1, [sp, #0x64]
  380948:      	fsub	s1, s1, s10
  38094c:      	fmul	s0, s0, s0
  380950:      	fmul	s1, s1, s1
  380954:      	fadd	s0, s0, s1
  380958:      	fmov	s1, #0.25000000
  38095c:      	bl	0x29a58ac <dyld_stub_binder+0x29a58ac>
  380960:      	b	0x3809d8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x230>
  380964:      	ldp	s0, s3, [sp, #0x68]
  380968:      	fsub	s0, s3, s0
  38096c:      	ldp	s1, s6, [sp, #0x58]
  380970:      	fsub	s1, s6, s1
  380974:      	fmul	s0, s0, s0
  380978:      	fmul	s1, s1, s1
  38097c:      	fadd	s0, s0, s1
  380980:      	ldp	s1, s2, [sp, #0x70]
  380984:      	stp	s6, s3, [sp, #0x28]
  380988:      	fsub	s3, s1, s3
  38098c:      	ldp	s4, s5, [sp, #0x60]
  380990:      	fsub	s6, s4, s6
  380994:      	fmul	s3, s3, s3
  380998:      	fmul	s6, s6, s6
  38099c:      	fadd	s3, s3, s6
  3809a0:      	fsub	s1, s2, s1
  3809a4:      	fsqrt	s0, s0
  3809a8:      	fabs	s2, s0
  3809ac:      	fsqrt	s0, s3
  3809b0:      	fabs	s0, s0
  3809b4:      	fadd	s8, s2, s0
  3809b8:      	str	s2, [sp, #0x24]
  3809bc:      	stp	s2, s8, [sp, #0x4c]
  3809c0:      	fsub	s0, s5, s4
  3809c4:      	fmul	s1, s1, s1
  3809c8:      	fmul	s0, s0, s0
  3809cc:      	fadd	s0, s1, s0
  3809d0:      	fsqrt	s0, s0
  3809d4:      	fabs	s0, s0
  3809d8:      	fadd	s0, s8, s0
  3809dc:      	str	s0, [sp, #0x54]
  3809e0:      	add	x0, sp, #0x30
  3809e4:      	ldp	s1, s0, [sp, #0x28]
  3809e8:      	bl	0x380420 <__ZN3BEF8MakeupV221catmullromInterpolateERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEbRS7_+0x828>
  3809ec:      	ldr	x8, [x23]
  3809f0:      	ldr	w8, [x8, x24, lsl #2]
  3809f4:      	cmp	w8, #0x2
  3809f8:      	b.lt	0x380888 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0xe0>
  3809fc:      	ldr	s0, [sp, #0x24]
  380a00:      	fsub	s4, s8, s0
  380a04:      	ldp	s1, s0, [sp, #0x48]
  380a08:      	fsub	s15, s0, s1
  380a0c:      	ldp	s10, s2, [sp, #0x50]
  380a10:      	fsub	s12, s10, s0
  380a14:      	ldr	s5, [sp, #0x68]
  380a18:      	ldp	s14, s3, [sp, #0x70]
  380a1c:      	fsub	s8, s2, s10
  380a20:      	stp	s3, s5, [sp, #0xc]
  380a24:      	stp	s2, s1, [sp, #0x14]
  380a28:      	fsub	s11, s10, s1
  380a2c:      	stp	s0, s4, [sp, #0x1c]
  380a30:      	fsub	s9, s2, s0
  380a34:      	ldr	s1, [sp, #0x58]
  380a38:      	ldp	s13, s0, [sp, #0x60]
  380a3c:      	stp	s0, s1, [sp, #0x4]
  380a40:      	mov	w26, #0x1               ; =1
  380a44:      	scvtf	s0, w26
  380a48:      	ldp	s6, s1, [sp, #0x1c]
  380a4c:      	fmul	s0, s1, s0
  380a50:      	scvtf	s1, w8
  380a54:      	fdiv	s0, s0, s1
  380a58:      	ldr	s1, [sp, #0x24]
  380a5c:      	fadd	s0, s1, s0
  380a60:      	fsub	s1, s6, s0
  380a64:      	ldr	s2, [sp, #0x10]
  380a68:      	fmul	s2, s2, s1
  380a6c:      	fdiv	s2, s2, s15
  380a70:      	ldr	s3, [sp, #0x18]
  380a74:      	fsub	s3, s0, s3
  380a78:      	ldr	s5, [sp, #0x2c]
  380a7c:      	fmul	s4, s5, s3
  380a80:      	fdiv	s4, s4, s15
  380a84:      	fadd	s2, s2, s4
  380a88:      	fsub	s4, s10, s0
  380a8c:      	fmul	s5, s5, s4
  380a90:      	fdiv	s5, s5, s12
  380a94:      	fsub	s6, s0, s6
  380a98:      	fmul	s7, s6, s14
  380a9c:      	fdiv	s7, s7, s12
  380aa0:      	fadd	s5, s5, s7
  380aa4:      	ldr	s7, [sp, #0x14]
  380aa8:      	fsub	s7, s7, s0
  380aac:      	fmul	s16, s14, s7
  380ab0:      	fdiv	s16, s16, s8
  380ab4:      	fsub	s17, s0, s10
  380ab8:      	ldr	s0, [sp, #0xc]
  380abc:      	fmul	s0, s17, s0
  380ac0:      	fdiv	s0, s0, s8
  380ac4:      	fadd	s0, s16, s0
  380ac8:      	fmul	s2, s4, s2
  380acc:      	fdiv	s2, s2, s11
  380ad0:      	fmul	s16, s3, s5
  380ad4:      	fdiv	s16, s16, s11
  380ad8:      	fadd	s2, s2, s16
  380adc:      	fmul	s5, s7, s5
  380ae0:      	fdiv	s5, s5, s9
  380ae4:      	fmul	s0, s6, s0
  380ae8:      	fdiv	s0, s0, s9
  380aec:      	fadd	s0, s5, s0
  380af0:      	fmul	s2, s4, s2
  380af4:      	fdiv	s2, s2, s12
  380af8:      	fmul	s0, s6, s0
  380afc:      	fdiv	s0, s0, s12
  380b00:      	fadd	s0, s2, s0
  380b04:      	ldp	s16, s2, [sp, #0x4]
  380b08:      	fmul	s1, s1, s2
  380b0c:      	fdiv	s1, s1, s15
  380b10:      	ldr	s5, [sp, #0x28]
  380b14:      	fmul	s2, s3, s5
  380b18:      	fdiv	s2, s2, s15
  380b1c:      	fadd	s1, s1, s2
  380b20:      	fmul	s2, s4, s5
  380b24:      	fdiv	s2, s2, s12
  380b28:      	fmul	s5, s6, s13
  380b2c:      	fdiv	s5, s5, s12
  380b30:      	fadd	s2, s2, s5
  380b34:      	fmul	s5, s7, s13
  380b38:      	fdiv	s5, s5, s8
  380b3c:      	fmul	s16, s17, s16
  380b40:      	fdiv	s16, s16, s8
  380b44:      	fadd	s5, s5, s16
  380b48:      	fmul	s1, s4, s1
  380b4c:      	fdiv	s1, s1, s11
  380b50:      	fmul	s3, s3, s2
  380b54:      	fdiv	s3, s3, s11
  380b58:      	fadd	s1, s1, s3
  380b5c:      	fmul	s2, s7, s2
  380b60:      	fdiv	s2, s2, s9
  380b64:      	fmul	s3, s6, s5
  380b68:      	fdiv	s3, s3, s9
  380b6c:      	fadd	s2, s2, s3
  380b70:      	fmul	s1, s4, s1
  380b74:      	fdiv	s1, s1, s12
  380b78:      	fmul	s2, s6, s2
  380b7c:      	fdiv	s2, s2, s12
  380b80:      	fadd	s1, s1, s2
  380b84:      	add	x0, sp, #0x30
  380b88:      	bl	0x380420 <__ZN3BEF8MakeupV221catmullromInterpolateERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEbRS7_+0x828>
  380b8c:      	add	w26, w26, #0x1
  380b90:      	ldr	x8, [x23]
  380b94:      	ldr	w8, [x8, x24, lsl #2]
  380b98:      	cmp	w26, w8
  380b9c:      	b.lt	0x380a44 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x29c>
  380ba0:      	b	0x380888 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0xe0>
  380ba4:      	ldr	x8, [x20]
  380ba8:      	add	x1, x8, x25, lsl #3
  380bac:      	add	x0, sp, #0x30
  380bb0:      	bl	0x3805ec <__ZN3BEF8MakeupV221catmullromInterpolateERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEbRS7_+0x9f4>
  380bb4:      	ldr	q0, [sp, #0x30]
  380bb8:      	str	q0, [x19]
  380bbc:      	ldr	x8, [sp, #0x40]
  380bc0:      	str	x8, [x19, #0x10]
  380bc4:      	stp	xzr, xzr, [sp, #0x30]
  380bc8:      	str	xzr, [sp, #0x40]
  380bcc:      	b	0x380bdc <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x434>
  380bd0:      	mov	x0, x19
  380bd4:      	mov	x1, x20
  380bd8:      	bl	0x1f0708 <__ZN3BEF17Sticker2DV3Filter18animationGoToFrameEPKcS2_i+0x4e30>
  380bdc:      	ldr	x19, [sp, #0x30]
  380be0:      	cbz	x19, 0x380c14 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x46c>
  380be4:      	ldr	x0, [sp, #0x38]
  380be8:      	cmp	x0, x19
  380bec:      	b.eq	0x380c08 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x460>
  380bf0:      	sub	x0, x0, #0x8
  380bf4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380bf8:      	cmp	x0, x19
  380bfc:      	b.ne	0x380bf0 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x448>
  380c00:      	ldr	x0, [sp, #0x30]
  380c04:      	b	0x380c0c <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x464>
  380c08:      	mov	x0, x19
  380c0c:      	str	x19, [sp, #0x38]
  380c10:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  380c14:      	ldr	x8, [sp, #0x78]
  380c18:      	adrp	x9, 0x34bc000 <dyld_stub_binder+0x34bc000>
  380c1c:      	ldr	x9, [x9, #0x6a8]
  380c20:      	ldr	x9, [x9]
  380c24:      	cmp	x9, x8
  380c28:      	b.ne	0x380c5c <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x4b4>
  380c2c:      	ldp	x29, x30, [sp, #0x110]
  380c30:      	ldp	x20, x19, [sp, #0x100]
  380c34:      	ldp	x22, x21, [sp, #0xf0]
  380c38:      	ldp	x24, x23, [sp, #0xe0]
  380c3c:      	ldp	x26, x25, [sp, #0xd0]
  380c40:      	ldp	x28, x27, [sp, #0xc0]
  380c44:      	ldp	d9, d8, [sp, #0xb0]
  380c48:      	ldp	d11, d10, [sp, #0xa0]
  380c4c:      	ldp	d13, d12, [sp, #0x90]
  380c50:      	ldp	d15, d14, [sp, #0x80]
  380c54:      	add	sp, sp, #0x120
  380c58:      	ret
  380c5c:      	bl	0x29a4670 <dyld_stub_binder+0x29a4670>
  380c60:      	b	0x380c74 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x4cc>
  380c64:      	b	0x380c74 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x4cc>
  380c68:      	b	0x380c74 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x4cc>
  380c6c:      	b	0x380c74 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x4cc>
  380c70:      	b	0x380c74 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x4cc>
  380c74:      	mov	x19, x0
  380c78:      	ldr	x0, [sp, #0x30]
  380c7c:      	cbz	x0, 0x380c88 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb+0x4e0>
  380c80:      	add	x1, sp, #0x30
  380c84:      	bl	0x28fb588 <__ZN5smash15CvtInputAsFloatEPhPfif+0x19894>
  380c88:      	mov	x0, x19
  380c8c:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

0000000000380c90 <__Z11pointOffsetRKN3BRC4Vec2ES2_S2_f>:
  380c90:      	sub	sp, sp, #0x70
  380c94:      	stp	d9, d8, [sp, #0x30]
  380c98:      	stp	x22, x21, [sp, #0x40]
  380c9c:      	stp	x20, x19, [sp, #0x50]
  380ca0:      	stp	x29, x30, [sp, #0x60]
  380ca4:      	add	x29, sp, #0x60
  380ca8:      	fmov	s8, s0
  380cac:      	mov	x21, x2
  380cb0:      	mov	x20, x1
  380cb4:      	mov	x19, x8
  380cb8:      	ldp	s0, s1, [x1]
  380cbc:      	ldp	s2, s3, [x0]
  380cc0:      	fsub	s0, s0, s2
  380cc4:      	fsub	s1, s1, s3
  380cc8:      	add	x0, sp, #0x20
  380ccc:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  380cd0:      	ldp	s0, s1, [sp, #0x20]
  380cd4:      	fmul	s2, s0, s0
  380cd8:      	fmul	s3, s1, s1
  380cdc:      	fadd	s2, s2, s3
  380ce0:      	fsqrt	s2, s2
  380ce4:      	fcmp	s2, #0.0
  380ce8:      	b.le	0x380d00 <__Z11pointOffsetRKN3BRC4Vec2ES2_S2_f+0x70>
  380cec:      	fdiv	s0, s0, s2
  380cf0:      	fdiv	s1, s1, s2
  380cf4:      	add	x0, sp, #0x28
  380cf8:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  380cfc:      	b	0x380d0c <__Z11pointOffsetRKN3BRC4Vec2ES2_S2_f+0x7c>
  380d00:      	add	x0, sp, #0x28
  380d04:      	add	x1, sp, #0x20
  380d08:      	bl	0x8e2ccc <__ZN3BRC4Vec2C1ERKS0_>
  380d0c:      	add	x0, sp, #0x20
  380d10:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380d14:      	ldp	s0, s1, [x21]
  380d18:      	ldp	s2, s3, [x20]
  380d1c:      	fsub	s0, s0, s2
  380d20:      	fsub	s1, s1, s3
  380d24:      	add	x0, sp, #0x18
  380d28:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  380d2c:      	ldp	s0, s1, [sp, #0x18]
  380d30:      	fmul	s2, s0, s0
  380d34:      	fmul	s3, s1, s1
  380d38:      	fadd	s2, s2, s3
  380d3c:      	fsqrt	s2, s2
  380d40:      	fcmp	s2, #0.0
  380d44:      	b.le	0x380d5c <__Z11pointOffsetRKN3BRC4Vec2ES2_S2_f+0xcc>
  380d48:      	fdiv	s0, s0, s2
  380d4c:      	fdiv	s1, s1, s2
  380d50:      	add	x0, sp, #0x20
  380d54:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  380d58:      	b	0x380d68 <__Z11pointOffsetRKN3BRC4Vec2ES2_S2_f+0xd8>
  380d5c:      	add	x0, sp, #0x20
  380d60:      	add	x1, sp, #0x18
  380d64:      	bl	0x8e2ccc <__ZN3BRC4Vec2C1ERKS0_>
  380d68:      	add	x0, sp, #0x18
  380d6c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380d70:      	ldp	s1, s0, [sp, #0x28]
  380d74:      	ldp	s3, s2, [sp, #0x20]
  380d78:      	fmul	s2, s1, s2
  380d7c:      	fmul	s3, s0, s3
  380d80:      	fsub	s2, s2, s3
  380d84:      	fcmp	s2, #0.0
  380d88:      	fmov	s2, #1.00000000
  380d8c:      	fmov	s3, #-1.00000000
  380d90:      	fcsel	s9, s3, s2, mi
  380d94:      	fneg	s0, s0
  380d98:      	add	x0, sp, #0x18
  380d9c:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  380da0:      	fcvt	d0, s9
  380da4:      	mov	x8, #0x8c3a             ; =35898
  380da8:      	movk	x8, #0xe230, lsl #16
  380dac:      	movk	x8, #0x798e, lsl #32
  380db0:      	movk	x8, #0x3e45, lsl #48
  380db4:      	fmov	d1, x8
  380db8:      	fcmp	d0, d1
  380dbc:      	b.le	0x380e2c <__Z11pointOffsetRKN3BRC4Vec2ES2_S2_f+0x19c>
  380dc0:      	ldp	s0, s1, [sp, #0x20]
  380dc4:      	ldp	s2, s3, [sp, #0x28]
  380dc8:      	fsub	s0, s0, s2
  380dcc:      	fsub	s1, s1, s3
  380dd0:      	add	x0, sp, #0x8
  380dd4:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  380dd8:      	ldp	s0, s1, [sp, #0x8]
  380ddc:      	fmul	s2, s0, s0
  380de0:      	fmul	s3, s1, s1
  380de4:      	fadd	s2, s2, s3
  380de8:      	fsqrt	s2, s2
  380dec:      	fcmp	s2, #0.0
  380df0:      	b.le	0x380e08 <__Z11pointOffsetRKN3BRC4Vec2ES2_S2_f+0x178>
  380df4:      	fdiv	s0, s0, s2
  380df8:      	fdiv	s1, s1, s2
  380dfc:      	add	x0, sp, #0x10
  380e00:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  380e04:      	b	0x380e14 <__Z11pointOffsetRKN3BRC4Vec2ES2_S2_f+0x184>
  380e08:      	add	x0, sp, #0x10
  380e0c:      	add	x1, sp, #0x8
  380e10:      	bl	0x8e2ccc <__ZN3BRC4Vec2C1ERKS0_>
  380e14:      	ldr	d0, [sp, #0x10]
  380e18:      	str	d0, [sp, #0x18]
  380e1c:      	add	x0, sp, #0x10
  380e20:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380e24:      	add	x0, sp, #0x8
  380e28:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380e2c:      	ldp	s0, s1, [sp, #0x18]
  380e30:      	fmul	s0, s0, s8
  380e34:      	fmul	s1, s1, s8
  380e38:      	add	x0, sp, #0x8
  380e3c:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  380e40:      	ldp	s0, s1, [sp, #0x8]
  380e44:      	fmul	s0, s9, s0
  380e48:      	fmul	s1, s9, s1
  380e4c:      	add	x0, sp, #0x10
  380e50:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  380e54:      	ldp	s0, s1, [x20]
  380e58:      	ldp	s2, s3, [sp, #0x10]
  380e5c:      	fadd	s0, s0, s2
  380e60:      	fadd	s1, s1, s3
  380e64:      	mov	x0, x19
  380e68:      	bl	0x8e2ca0 <__ZN3BRC4Vec2C1Eff>
  380e6c:      	add	x0, sp, #0x10
  380e70:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380e74:      	add	x0, sp, #0x8
  380e78:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380e7c:      	add	x0, sp, #0x18
  380e80:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380e84:      	add	x0, sp, #0x20
  380e88:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380e8c:      	add	x0, sp, #0x28
  380e90:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380e94:      	ldp	x29, x30, [sp, #0x60]
  380e98:      	ldp	x20, x19, [sp, #0x50]
  380e9c:      	ldp	x22, x21, [sp, #0x40]
  380ea0:      	ldp	d9, d8, [sp, #0x30]
  380ea4:      	add	sp, sp, #0x70
  380ea8:      	ret
  380eac:      	b	0x380ec4 <__Z11pointOffsetRKN3BRC4Vec2ES2_S2_f+0x234>
  380eb0:      	b	0x380ed4 <__Z11pointOffsetRKN3BRC4Vec2ES2_S2_f+0x244>
  380eb4:      	mov	x19, x0
  380eb8:      	add	x0, sp, #0x10
  380ebc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380ec0:      	b	0x380ec8 <__Z11pointOffsetRKN3BRC4Vec2ES2_S2_f+0x238>
  380ec4:      	mov	x19, x0
  380ec8:      	add	x0, sp, #0x8
  380ecc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380ed0:      	b	0x380ed8 <__Z11pointOffsetRKN3BRC4Vec2ES2_S2_f+0x248>
  380ed4:      	mov	x19, x0
  380ed8:      	add	x0, sp, #0x18
  380edc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380ee0:      	add	x0, sp, #0x20
  380ee4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380ee8:      	add	x0, sp, #0x28
  380eec:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380ef0:      	mov	x0, x19
  380ef4:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  380ef8:      	mov	x19, x0
  380efc:      	add	x0, sp, #0x20
  380f00:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380f04:      	add	x0, sp, #0x28
  380f08:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380f0c:      	mov	x0, x19
  380f10:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  380f14:      	mov	x19, x0
  380f18:      	add	x0, sp, #0x18
  380f1c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380f20:      	add	x0, sp, #0x28
  380f24:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380f28:      	mov	x0, x19
  380f2c:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  380f30:      	mov	x19, x0
  380f34:      	add	x0, sp, #0x28
  380f38:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380f3c:      	mov	x0, x19
  380f40:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  380f44:      	mov	x19, x0
  380f48:      	add	x0, sp, #0x20
  380f4c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  380f50:      	mov	x0, x19
  380f54:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  380f58:      	stp	x20, x19, [sp, #-0x20]!
  380f5c:      	stp	x29, x30, [sp, #0x10]
  380f60:      	add	x29, sp, #0x10
  380f64:      	mov	w0, #0x10               ; =16
  380f68:      	bl	0x29a4574 <dyld_stub_binder+0x29a4574>
  380f6c:      	mov	x19, x0
  380f70:      	bl	0x380fa0 <__Z11pointOffsetRKN3BRC4Vec2ES2_S2_f+0x310>
  380f74:      	adrp	x1, 0x34ae000 <dyld_stub_binder+0x34ae000>
  380f78:      	ldr	x1, [x1, #0x660]
  380f7c:      	adrp	x2, 0x34ae000 <dyld_stub_binder+0x34ae000>
  380f80:      	ldr	x2, [x2, #0x560]
  380f84:      	mov	x0, x19
  380f88:      	bl	0x29a4604 <dyld_stub_binder+0x29a4604>
  380f8c:      	mov	x20, x0
  380f90:      	mov	x0, x19
  380f94:      	bl	0x29a45bc <dyld_stub_binder+0x29a45bc>
  380f98:      	mov	x0, x20
  380f9c:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  380fa0:      	stp	x29, x30, [sp, #-0x10]!
  380fa4:      	mov	x29, sp
  380fa8:      	adrp	x1, 0x32bb000 <dyld_stub_binder+0x32bb000>
  380fac:      	add	x1, x1, #0x2aa
  380fb0:      	bl	0x29a3c8c <dyld_stub_binder+0x29a3c8c>
  380fb4:      	adrp	x8, 0x34bb000 <dyld_stub_binder+0x34bb000>
  380fb8:      	ldr	x8, [x8, #0x1b0]
  380fbc:      	add	x8, x8, #0x10
  380fc0:      	str	x8, [x0]
  380fc4:      	ldp	x29, x30, [sp], #0x10
  380fc8:      	ret
  380fcc:      	stp	x29, x30, [sp, #-0x10]!
  380fd0:      	mov	x29, sp
  380fd4:      	bl	0x29a3c2c <dyld_stub_binder+0x29a3c2c>
  380fd8:      	mov	x19, x1
  380fdc:      	mov	x20, x0
  380fe0:      	ldr	x0, [x1, #0x8]
  380fe4:      	cmp	x0, x20
  380fe8:      	ret

0000000000380fec <__ZN3BEF21FacePartBeautyFeature15registerFeatureEv>:
  380fec:      	sub	sp, sp, #0x50
  380ff0:      	stp	x20, x19, [sp, #0x30]
  380ff4:      	stp	x29, x30, [sp, #0x40]
  380ff8:      	add	x29, sp, #0x40
  380ffc:      	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
  381000:      	ldr	x8, [x8, #0x6a8]
  381004:      	ldr	x8, [x8]
  381008:      	stur	x8, [x29, #-0x18]
  38100c:      	bl	0x382db0 <__ZN3BEF20FacePartBeautyParser14registerParserEv>
  381010:      	adrp	x8, 0x34ed000 <__ZTVN3BEF16FaceParamV2ST240E+0x68>
  381014:      	add	x8, x8, #0x880
  381018:      	add	x19, sp, #0x8
  38101c:      	str	x8, [sp, #0x8]
  381020:      	str	x19, [sp, #0x20]
  381024:      	adrp	x0, 0x31f3000 <dyld_stub_binder+0x31f3000>
  381028:      	add	x0, x0, #0xa17
  38102c:      	add	x1, sp, #0x8
  381030:      	bl	0x44c260 <__ZN3BEF16BEFFilterFactory14registerFilterEPKcNSt3__18functionIFPNS_9BEFFilterEvEEE>
  381034:      	ldr	x0, [sp, #0x20]
  381038:      	cmp	x19, x0
  38103c:      	b.eq	0x381050 <__ZN3BEF21FacePartBeautyFeature15registerFeatureEv+0x64>
  381040:      	cbz	x0, 0x38105c <__ZN3BEF21FacePartBeautyFeature15registerFeatureEv+0x70>
  381044:      	ldr	x8, [x0]
  381048:      	ldr	x8, [x8, #0x28]
  38104c:      	b	0x381058 <__ZN3BEF21FacePartBeautyFeature15registerFeatureEv+0x6c>
  381050:      	ldr	x8, [x0]
  381054:      	ldr	x8, [x8, #0x20]
  381058:      	blr	x8
  38105c:      	ldur	x8, [x29, #-0x18]
  381060:      	adrp	x9, 0x34bc000 <dyld_stub_binder+0x34bc000>
  381064:      	ldr	x9, [x9, #0x6a8]
  381068:      	ldr	x9, [x9]
  38106c:      	cmp	x9, x8
  381070:      	b.ne	0x381084 <__ZN3BEF21FacePartBeautyFeature15registerFeatureEv+0x98>
  381074:      	ldp	x29, x30, [sp, #0x40]
  381078:      	ldp	x20, x19, [sp, #0x30]
  38107c:      	add	sp, sp, #0x50
  381080:      	ret
  381084:      	bl	0x29a4670 <dyld_stub_binder+0x29a4670>
  381088:      	add	x8, sp, #0x8
  38108c:      	mov	x19, x0
  381090:      	ldr	x0, [sp, #0x20]
  381094:      	cmp	x8, x0
  381098:      	b.eq	0x3810a8 <__ZN3BEF21FacePartBeautyFeature15registerFeatureEv+0xbc>
  38109c:      	bl	0x28fb60c <__ZN5smash15CvtInputAsFloatEPhPfif+0x19918>
  3810a0:      	mov	x0, x19
  3810a4:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  3810a8:      	ldr	x8, [x0]
  3810ac:      	ldr	x8, [x8, #0x20]
  3810b0:      	blr	x8
  3810b4:      	mov	x0, x19
  3810b8:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

00000000003810bc <__ZN3BEF21FacePartBeautyFeatureC2Ev>:
  3810bc:      	stp	x20, x19, [sp, #-0x20]!
  3810c0:      	stp	x29, x30, [sp, #0x10]
  3810c4:      	add	x29, sp, #0x10
  3810c8:      	mov	x19, x0
  3810cc:      	bl	0x425e04 <__ZN3BEF14BEFBaseFeatureC2Ev>
  3810d0:      	adrp	x8, 0x34ed000 <__ZTVN3BEF16FaceParamV2ST240E+0x68>
  3810d4:      	add	x8, x8, #0x360
  3810d8:      	add	x9, x8, #0x428
  3810dc:      	stp	x8, x9, [x0], #0x120
  3810e0:      	adrp	x1, 0x31f3000 <dyld_stub_binder+0x31f3000>
  3810e4:      	add	x1, x1, #0xa17
  3810e8:      	bl	0x29a3de8 <dyld_stub_binder+0x29a3de8>
  3810ec:      	mov	x0, x19
  3810f0:      	ldp	x29, x30, [sp, #0x10]
  3810f4:      	ldp	x20, x19, [sp], #0x20
  3810f8:      	ret
  3810fc:      	mov	x20, x0
  381100:      	mov	x0, x19
  381104:      	bl	0x426138 <__ZN3BEF14BEFBaseFeatureD2Ev>
  381108:      	mov	x0, x20
  38110c:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

0000000000381110 <__ZN3BEF21FacePartBeautyFeatureC1Ev>:
  381110:      	stp	x20, x19, [sp, #-0x20]!
  381114:      	stp	x29, x30, [sp, #0x10]
  381118:      	add	x29, sp, #0x10
  38111c:      	mov	x19, x0
  381120:      	bl	0x425e04 <__ZN3BEF14BEFBaseFeatureC2Ev>
  381124:      	adrp	x8, 0x34ed000 <__ZTVN3BEF16FaceParamV2ST240E+0x68>
  381128:      	add	x8, x8, #0x360
  38112c:      	add	x9, x8, #0x428
  381130:      	stp	x8, x9, [x0], #0x120
  381134:      	adrp	x1, 0x31f3000 <dyld_stub_binder+0x31f3000>
  381138:      	add	x1, x1, #0xa17
  38113c:      	bl	0x29a3de8 <dyld_stub_binder+0x29a3de8>
  381140:      	mov	x0, x19
  381144:      	ldp	x29, x30, [sp, #0x10]
  381148:      	ldp	x20, x19, [sp], #0x20
  38114c:      	ret
  381150:      	mov	x20, x0
  381154:      	mov	x0, x19
  381158:      	bl	0x426138 <__ZN3BEF14BEFBaseFeatureD2Ev>
  38115c:      	mov	x0, x20
  381160:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

0000000000381164 <__ZN3BEF21FacePartBeautyFeatureD2Ev>:
  381164:      	b	0x426138 <__ZN3BEF14BEFBaseFeatureD2Ev>

0000000000381168 <__ZN3BEF21FacePartBeautyFeatureD1Ev>:
  381168:      	b	0x426138 <__ZN3BEF14BEFBaseFeatureD2Ev>

000000000038116c <__ZThn8_N3BEF21FacePartBeautyFeatureD1Ev>:
  38116c:      	sub	x0, x0, #0x8
  381170:      	b	0x426138 <__ZN3BEF14BEFBaseFeatureD2Ev>

0000000000381174 <__ZN3BEF21FacePartBeautyFeatureD0Ev>:
  381174:      	stp	x29, x30, [sp, #-0x10]!
  381178:      	mov	x29, sp
  38117c:      	bl	0x426138 <__ZN3BEF14BEFBaseFeatureD2Ev>
  381180:      	ldp	x29, x30, [sp], #0x10
  381184:      	b	0x29a4520 <dyld_stub_binder+0x29a4520>

0000000000381188 <__ZThn8_N3BEF21FacePartBeautyFeatureD0Ev>:
  381188:      	stp	x29, x30, [sp, #-0x10]!
  38118c:      	mov	x29, sp
  381190:      	sub	x0, x0, #0x8
  381194:      	bl	0x426138 <__ZN3BEF14BEFBaseFeatureD2Ev>
  381198:      	ldp	x29, x30, [sp], #0x10
  38119c:      	b	0x29a4520 <dyld_stub_binder+0x29a4520>

00000000003811a0 <__ZN3BEF21FacePartBeautyFeature17getRenderProtocolEv>:
  3811a0:      	ldr	x0, [x0, #0x138]
  3811a4:      	ret

00000000003811a8 <__ZN3BEF21FacePartBeautyFeature12setIntensityERKf>:
  3811a8:      	stp	x29, x30, [sp, #-0x10]!
  3811ac:      	mov	x29, sp
  3811b0:      	ldr	x0, [x0, #0x138]
  3811b4:      	cbz	x0, 0x3811e0 <__ZN3BEF21FacePartBeautyFeature12setIntensityERKf+0x38>
  3811b8:      	adrp	x1, 0x3503000 <__ZTVN3BEF9BEFFilterE+0x248>
  3811bc:      	add	x1, x1, #0xf28
  3811c0:      	adrp	x2, 0x34ed000 <__ZTVN3BEF16FaceParamV2ST240E+0x68>
  3811c4:      	add	x2, x2, #0xed8
  3811c8:      	mov	x3, #0x0                ; =0
  3811cc:      	bl	0x29a4610 <dyld_stub_binder+0x29a4610>
  3811d0:      	cbz	x0, 0x3811e0 <__ZN3BEF21FacePartBeautyFeature12setIntensityERKf+0x38>
  3811d4:      	mov	w0, #0x0                ; =0
  3811d8:      	ldp	x29, x30, [sp], #0x10
  3811dc:      	ret
  3811e0:      	mov	w0, #-0x1               ; =-1
  3811e4:      	ldp	x29, x30, [sp], #0x10
  3811e8:      	ret
  3811ec:      	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
  3811f0:      	ldr	x8, [x8, #0xf8]
  3811f4:      	ldr	x0, [x8]
  3811f8:      	ret
  3811fc:      	ret
  381200:      	b	0x29a4520 <dyld_stub_binder+0x29a4520>
  381204:      	stp	x29, x30, [sp, #-0x10]!
  381208:      	mov	x29, sp
  38120c:      	mov	w0, #0x10               ; =16
  381210:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  381214:      	adrp	x8, 0x34ed000 <__ZTVN3BEF16FaceParamV2ST240E+0x68>
  381218:      	add	x8, x8, #0x880
  38121c:      	str	x8, [x0]
  381220:      	ldp	x29, x30, [sp], #0x10
  381224:      	ret
  381228:      	adrp	x8, 0x34ed000 <__ZTVN3BEF16FaceParamV2ST240E+0x68>
  38122c:      	add	x8, x8, #0x880
  381230:      	str	x8, [x1]
  381234:      	ret
  381238:      	ret
  38123c:      	b	0x29a4520 <dyld_stub_binder+0x29a4520>
  381240:      	stp	x20, x19, [sp, #-0x20]!
  381244:      	stp	x29, x30, [sp, #0x10]
  381248:      	add	x29, sp, #0x10
  38124c:      	mov	w0, #0x4b8              ; =1208
  381250:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  381254:      	mov	x19, x0
  381258:      	bl	0x381750 <__ZN3BEF20FacePartBeautyFilterC1Ev>
  38125c:      	mov	x0, x19
  381260:      	ldp	x29, x30, [sp, #0x10]
  381264:      	ldp	x20, x19, [sp], #0x20
  381268:      	ret
  38126c:      	mov	x20, x0
  381270:      	mov	x0, x19
  381274:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  381278:      	mov	x0, x20
  38127c:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  381280:      	stp	x20, x19, [sp, #-0x20]!
  381284:      	stp	x29, x30, [sp, #0x10]
  381288:      	add	x29, sp, #0x10
  38128c:      	mov	x19, x0
  381290:      	ldr	x9, [x1, #0x8]
  381294:      	adrp	x8, 0x2c48000 <__ZTSN3BEF19FaceParamFaceUCV248E+0x410>
  381298:      	add	x8, x8, #0xdc7
  38129c:      	cmp	x9, x8
  3812a0:      	b.ne	0x3812b4 <__ZN3BEF21FacePartBeautyFeature12setIntensityERKf+0x10c>
  3812a4:      	add	x0, x19, #0x8
  3812a8:      	ldp	x29, x30, [sp, #0x10]
  3812ac:      	ldp	x20, x19, [sp], #0x20
  3812b0:      	ret
  3812b4:      	mov	x0, #0x0                ; =0
  3812b8:      	tbz	x9, #0x3f, 0x3812a8 <__ZN3BEF21FacePartBeautyFeature12setIntensityERKf+0x100>
  3812bc:      	tbz	x8, #0x3f, 0x3812a8 <__ZN3BEF21FacePartBeautyFeature12setIntensityERKf+0x100>
  3812c0:      	and	x0, x9, #0x7fffffffffffffff
  3812c4:      	and	x1, x8, #0x7fffffffffffffff
  3812c8:      	bl	0x29a5c60 <dyld_stub_binder+0x29a5c60>
  3812cc:      	cbz	w0, 0x3812a4 <__ZN3BEF21FacePartBeautyFeature12setIntensityERKf+0xfc>
  3812d0:      	mov	x0, #0x0                ; =0
  3812d4:      	ldp	x29, x30, [sp, #0x10]
  3812d8:      	ldp	x20, x19, [sp], #0x20
  3812dc:      	ret
  3812e0:      	adrp	x0, 0x34ed000 <__ZTVN3BEF16FaceParamV2ST240E+0x68>
  3812e4:      	add	x0, x0, #0x8e0
  3812e8:      	ret
  3812ec:      	sub	sp, sp, #0x50
  3812f0:      	stp	x22, x21, [sp, #0x20]
  3812f4:      	stp	x20, x19, [sp, #0x30]
  3812f8:      	stp	x29, x30, [sp, #0x40]
  3812fc:      	add	x29, sp, #0x40
  381300:      	mov	w0, #0x30               ; =48
  381304:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  381308:      	mov	x19, x0
  38130c:      	adrp	x20, 0x36db000 <dyld_stub_binder+0x36db000>
  381310:      	add	x20, x20, #0x88
  381314:      	str	x0, [x20]
  381318:      	adrp	x8, 0x2c20000 <dyld_stub_binder+0x2c20000>
  38131c:      	ldr	q0, [x8, #0xa50]
  381320:      	str	q0, [sp]
  381324:      	stur	q0, [x20, #0x8]
  381328:      	adrp	x8, 0x31c2000 <dyld_stub_binder+0x31c2000>
  38132c:      	add	x8, x8, #0x7f0
  381330:      	ldp	q0, q1, [x8]
  381334:      	stp	q0, q1, [x0]
  381338:      	strb	wzr, [x0, #0x20]
  38133c:      	add	x21, x20, #0x18
  381340:      	mov	w0, #0x20               ; =32
  381344:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  381348:      	adrp	x8, 0x36db000 <dyld_stub_binder+0x36db000>
  38134c:      	add	x8, x8, #0xa0
  381350:      	str	x0, [x8]
  381354:      	adrp	x9, 0x2c20000 <dyld_stub_binder+0x2c20000>
  381358:      	ldr	q0, [x9, #0xf90]
  38135c:      	str	q0, [sp, #0x10]
  381360:      	stur	q0, [x8, #0x8]
  381364:      	adrp	x9, 0x319c000 <dyld_stub_binder+0x319c000>
  381368:      	add	x9, x9, #0x113
  38136c:      	ldr	q0, [x9]
  381370:      	str	q0, [x0]
  381374:      	ldur	q0, [x9, #0xc]
  381378:      	stur	q0, [x0, #0xc]
  38137c:      	strb	wzr, [x0, #0x1c]
  381380:      	add	x21, x8, #0x18
  381384:      	mov	x19, x0
  381388:      	mov	w0, #0x30               ; =48
  38138c:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  381390:      	adrp	x8, 0x36db000 <dyld_stub_binder+0x36db000>
  381394:      	add	x8, x8, #0xb8
  381398:      	str	x0, [x8]
  38139c:      	ldr	q0, [sp]
  3813a0:      	stur	q0, [x8, #0x8]
  3813a4:      	adrp	x9, 0x31c2000 <dyld_stub_binder+0x31c2000>
  3813a8:      	add	x9, x9, #0x816
  3813ac:      	ldp	q0, q1, [x9]
  3813b0:      	stp	q0, q1, [x0]
  3813b4:      	strb	wzr, [x0, #0x20]
  3813b8:      	add	x21, x8, #0x18
  3813bc:      	mov	x19, x0
  3813c0:      	mov	w0, #0x20               ; =32
  3813c4:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  3813c8:      	adrp	x8, 0x36db000 <dyld_stub_binder+0x36db000>
  3813cc:      	add	x8, x8, #0xd0
  3813d0:      	str	x0, [x8]
  3813d4:      	adrp	x9, 0x2c20000 <dyld_stub_binder+0x2c20000>
  3813d8:      	ldr	q0, [x9, #0xf40]
  3813dc:      	stur	q0, [x8, #0x8]
  3813e0:      	adrp	x9, 0x319c000 <dyld_stub_binder+0x319c000>
  3813e4:      	add	x9, x9, #0x130
  3813e8:      	ldr	q0, [x9]
  3813ec:      	str	q0, [x0]
  3813f0:      	ldur	q0, [x9, #0xb]
  3813f4:      	stur	q0, [x0, #0xb]
  3813f8:      	strb	wzr, [x0, #0x1b]
  3813fc:      	add	x21, x8, #0x18
