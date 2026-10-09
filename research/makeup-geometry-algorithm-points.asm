
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000001c6b7c8 <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_>:
 1c6b7c8:      	stp	d9, d8, [sp, #-0x40]!
 1c6b7cc:      	stp	x22, x21, [sp, #0x10]
 1c6b7d0:      	stp	x20, x19, [sp, #0x20]
 1c6b7d4:      	stp	x29, x30, [sp, #0x30]
 1c6b7d8:      	add	x29, sp, #0x30
 1c6b7dc:      	mov	x19, x3
 1c6b7e0:      	mov	x21, x2
 1c6b7e4:      	mov	x20, x1
 1c6b7e8:      	mov	x22, x0
 1c6b7ec:      	ldr	x8, [x2]
 1c6b7f0:      	mov	x0, x8
 1c6b7f4:      	ldr	x9, [x0, #0x10]!
 1c6b7f8:      	ldr	x10, [x8, #0x18]
 1c6b7fc:      	sub	x11, x10, x9
 1c6b800:      	asr	x10, x11, #3
 1c6b804:      	cmp	x10, #0x69
 1c6b808:      	b.hi	0x1c6b81c <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0x54>
 1c6b80c:      	mov	w8, #0x6a               ; =106
 1c6b810:      	sub	x1, x8, x10
 1c6b814:      	bl	0x20f7ca0 <__ZNK4Bach10BachObjectcvPNS_10BachVectorEEv+0x21b0>
 1c6b818:      	b	0x1c6b82c <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0x64>
 1c6b81c:      	cmp	x11, #0x350
 1c6b820:      	b.eq	0x1c6b82c <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0x64>
 1c6b824:      	add	x9, x9, #0x350
 1c6b828:      	str	x9, [x8, #0x18]
 1c6b82c:      	ldr	x8, [x19]
 1c6b830:      	mov	x0, x8
 1c6b834:      	ldr	x9, [x0, #0x10]!
 1c6b838:      	ldr	x10, [x8, #0x18]
 1c6b83c:      	sub	x11, x10, x9
 1c6b840:      	asr	x10, x11, #3
 1c6b844:      	cmp	x10, #0xad
 1c6b848:      	b.hi	0x1c6b85c <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0x94>
 1c6b84c:      	mov	w8, #0xae               ; =174
 1c6b850:      	sub	x1, x8, x10
 1c6b854:      	bl	0x20f7ca0 <__ZNK4Bach10BachObjectcvPNS_10BachVectorEEv+0x21b0>
 1c6b858:      	b	0x1c6b86c <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0xa4>
 1c6b85c:      	cmp	x11, #0x570
 1c6b860:      	b.eq	0x1c6b86c <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0xa4>
 1c6b864:      	add	x9, x9, #0x570
 1c6b868:      	str	x9, [x8, #0x18]
 1c6b86c:      	mov	w0, #0x1                ; =1
 1c6b870:      	bl	0xb60970 <__ZN13AmazingEngine6Amazer8instanceEb>
 1c6b874:      	ldr	x8, [x0]
 1c6b878:      	ldr	x8, [x8, #0x118]
 1c6b87c:      	blr	x8
 1c6b880:      	bl	0xb69980 <__ZNK13AmazingEngine13BuiltinObject22getOutputTextureHeightEv>
 1c6b884:      	scvtf	s8, w0
 1c6b888:      	mov	w0, #0x1                ; =1
 1c6b88c:      	bl	0xb60970 <__ZN13AmazingEngine6Amazer8instanceEb>
 1c6b890:      	ldr	x8, [x0]
 1c6b894:      	ldr	x8, [x8, #0x118]
 1c6b898:      	blr	x8
 1c6b89c:      	bl	0xb69934 <__ZNK13AmazingEngine13BuiltinObject21getOutputTextureWidthEv>
 1c6b8a0:      	mov	x10, #0x0               ; =0
 1c6b8a4:      	ldr	x8, [x22, #0x20]
 1c6b8a8:      	ldr	x8, [x8, #0x10]
 1c6b8ac:      	ldr	x9, [x21]
 1c6b8b0:      	ldr	x9, [x9, #0x10]
 1c6b8b4:      	add	x11, x9, #0x34c
 1c6b8b8:      	add	x12, x8, #0x34c
 1c6b8bc:      	add	x13, x9, #0x4
 1c6b8c0:      	add	x14, x8, #0x4
 1c6b8c4:      	cmp	x9, x12
 1c6b8c8:      	cset	w12, lo
 1c6b8cc:      	cmp	x8, x11
 1c6b8d0:      	cset	w15, lo
 1c6b8d4:      	add	x11, x8, #0x350
 1c6b8d8:      	cmp	x13, x11
 1c6b8dc:      	cset	w11, lo
 1c6b8e0:      	add	x13, x9, #0x350
 1c6b8e4:      	cmp	x14, x13
 1c6b8e8:      	scvtf	s0, w0
 1c6b8ec:      	fdiv	s0, s8, s0
 1c6b8f0:      	and	w13, w12, w15
 1c6b8f4:      	cset	w12, lo
 1c6b8f8:      	tbnz	w13, #0x0, 0x1c6b934 <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0x16c>
 1c6b8fc:      	and	w11, w11, w12
 1c6b900:      	cbnz	w11, 0x1c6b934 <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0x16c>
 1c6b904:      	mov	x11, #0x0               ; =0
 1c6b908:      	fmov.4s	v1, #1.00000000
 1c6b90c:      	mov	w10, #0x68              ; =104
 1c6b910:      	add	x12, x8, x11
 1c6b914:      	ld2.4s	{ v2, v3 }, [x12]
 1c6b918:      	fsub.4s	v4, v1, v3
 1c6b91c:      	fmul.4s	v3, v4, v0[0]
 1c6b920:      	add	x12, x9, x11
 1c6b924:      	st2.4s	{ v2, v3 }, [x12]
 1c6b928:      	add	x11, x11, #0x20
 1c6b92c:      	cmp	x11, #0x340
 1c6b930:      	b.ne	0x1c6b910 <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0x148>
 1c6b934:      	lsl	x10, x10, #3
 1c6b938:      	fmov	s1, #1.00000000
 1c6b93c:      	add	x11, x8, x10
 1c6b940:      	add	x12, x9, x10
 1c6b944:      	ldp	s2, s3, [x11]
 1c6b948:      	fsub	s3, s1, s3
 1c6b94c:      	fmul	s3, s0, s3
 1c6b950:      	stp	s2, s3, [x12]
 1c6b954:      	add	x10, x10, #0x8
 1c6b958:      	cmp	x10, #0x350
 1c6b95c:      	b.ne	0x1c6b93c <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0x174>
 1c6b960:      	mov	x9, #0x0                ; =0
 1c6b964:      	ldp	x10, x8, [x20, #0x20]
 1c6b968:      	ldr	x11, [x8, #0x10]
 1c6b96c:      	ldr	x8, [x19]
 1c6b970:      	ldr	x8, [x8, #0x10]
 1c6b974:      	add	x12, x8, #0xb0
 1c6b978:      	add	x14, x8, #0x15c
 1c6b97c:      	add	x13, x11, #0xac
 1c6b980:      	add	x15, x8, #0xb4
 1c6b984:      	add	x16, x11, #0x4
 1c6b988:      	cmp	x12, x13
 1c6b98c:      	cset	w13, lo
 1c6b990:      	cmp	x11, x14
 1c6b994:      	cset	w14, lo
 1c6b998:      	add	x17, x11, #0xb0
 1c6b99c:      	cmp	x15, x17
 1c6b9a0:      	cset	w15, lo
 1c6b9a4:      	add	x17, x8, #0x160
 1c6b9a8:      	cmp	x16, x17
 1c6b9ac:      	ldr	x16, [x10, #0x10]
 1c6b9b0:      	ldr	x10, [x19]
 1c6b9b4:      	ldr	x10, [x10, #0x10]
 1c6b9b8:      	fcvt	d0, s0
 1c6b9bc:      	ldp	s2, s1, [x16]
 1c6b9c0:      	fcvt	d3, s1
 1c6b9c4:      	fmov	d1, #1.00000000
 1c6b9c8:      	fsub	d3, d1, d3
 1c6b9cc:      	fmul	d3, d3, d0
 1c6b9d0:      	fcvt	s3, d3
 1c6b9d4:      	stp	s2, s3, [x10]
 1c6b9d8:      	ldp	s2, s3, [x16, #0x8]
 1c6b9dc:      	fcvt	d3, s3
 1c6b9e0:      	fsub	d3, d1, d3
 1c6b9e4:      	fmul	d3, d3, d0
 1c6b9e8:      	fcvt	s3, d3
 1c6b9ec:      	stp	s2, s3, [x10, #0x8]
 1c6b9f0:      	ldp	s2, s3, [x16, #0x10]
 1c6b9f4:      	fcvt	d3, s3
 1c6b9f8:      	fsub	d3, d1, d3
 1c6b9fc:      	fmul	d3, d3, d0
 1c6ba00:      	fcvt	s3, d3
 1c6ba04:      	stp	s2, s3, [x10, #0x10]
 1c6ba08:      	ldp	s2, s3, [x16, #0x18]
 1c6ba0c:      	fcvt	d3, s3
 1c6ba10:      	fsub	d3, d1, d3
 1c6ba14:      	fmul	d3, d3, d0
 1c6ba18:      	fcvt	s3, d3
 1c6ba1c:      	stp	s2, s3, [x10, #0x18]
 1c6ba20:      	ldp	s2, s3, [x16, #0x20]
 1c6ba24:      	fcvt	d3, s3
 1c6ba28:      	fsub	d3, d1, d3
 1c6ba2c:      	fmul	d3, d3, d0
 1c6ba30:      	fcvt	s3, d3
 1c6ba34:      	stp	s2, s3, [x10, #0x20]
 1c6ba38:      	ldp	s2, s3, [x16, #0x28]
 1c6ba3c:      	fcvt	d3, s3
 1c6ba40:      	fsub	d3, d1, d3
 1c6ba44:      	fmul	d3, d3, d0
 1c6ba48:      	fcvt	s3, d3
 1c6ba4c:      	stp	s2, s3, [x10, #0x28]
 1c6ba50:      	ldp	s2, s3, [x16, #0x30]
 1c6ba54:      	fcvt	d3, s3
 1c6ba58:      	fsub	d3, d1, d3
 1c6ba5c:      	fmul	d3, d3, d0
 1c6ba60:      	fcvt	s3, d3
 1c6ba64:      	stp	s2, s3, [x10, #0x30]
 1c6ba68:      	ldp	s2, s3, [x16, #0x38]
 1c6ba6c:      	fcvt	d3, s3
 1c6ba70:      	fsub	d3, d1, d3
 1c6ba74:      	fmul	d3, d3, d0
 1c6ba78:      	fcvt	s3, d3
 1c6ba7c:      	stp	s2, s3, [x10, #0x38]
 1c6ba80:      	ldp	s2, s3, [x16, #0x40]
 1c6ba84:      	fcvt	d3, s3
 1c6ba88:      	fsub	d3, d1, d3
 1c6ba8c:      	fmul	d3, d3, d0
 1c6ba90:      	fcvt	s3, d3
 1c6ba94:      	stp	s2, s3, [x10, #0x40]
 1c6ba98:      	ldp	s2, s3, [x16, #0x48]
 1c6ba9c:      	fcvt	d3, s3
 1c6baa0:      	fsub	d3, d1, d3
 1c6baa4:      	fmul	d3, d3, d0
 1c6baa8:      	fcvt	s3, d3
 1c6baac:      	stp	s2, s3, [x10, #0x48]
 1c6bab0:      	ldp	s2, s3, [x16, #0x50]
 1c6bab4:      	fcvt	d3, s3
 1c6bab8:      	fsub	d3, d1, d3
 1c6babc:      	fmul	d3, d3, d0
 1c6bac0:      	fcvt	s3, d3
 1c6bac4:      	stp	s2, s3, [x10, #0x50]
 1c6bac8:      	ldp	s2, s3, [x16, #0x58]
 1c6bacc:      	fcvt	d3, s3
 1c6bad0:      	fsub	d3, d1, d3
 1c6bad4:      	fmul	d3, d3, d0
 1c6bad8:      	fcvt	s3, d3
 1c6badc:      	stp	s2, s3, [x10, #0x58]
 1c6bae0:      	ldp	s2, s3, [x16, #0x60]
 1c6bae4:      	fcvt	d3, s3
 1c6bae8:      	fsub	d3, d1, d3
 1c6baec:      	fmul	d3, d3, d0
 1c6baf0:      	fcvt	s3, d3
 1c6baf4:      	stp	s2, s3, [x10, #0x60]
 1c6baf8:      	ldp	s2, s3, [x16, #0x68]
 1c6bafc:      	fcvt	d3, s3
 1c6bb00:      	fsub	d3, d1, d3
 1c6bb04:      	fmul	d3, d3, d0
 1c6bb08:      	fcvt	s3, d3
 1c6bb0c:      	stp	s2, s3, [x10, #0x68]
 1c6bb10:      	ldp	s2, s3, [x16, #0x70]
 1c6bb14:      	fcvt	d3, s3
 1c6bb18:      	fsub	d3, d1, d3
 1c6bb1c:      	fmul	d3, d3, d0
 1c6bb20:      	fcvt	s3, d3
 1c6bb24:      	stp	s2, s3, [x10, #0x70]
 1c6bb28:      	ldp	s2, s3, [x16, #0x78]
 1c6bb2c:      	fcvt	d3, s3
 1c6bb30:      	fsub	d3, d1, d3
 1c6bb34:      	fmul	d3, d3, d0
 1c6bb38:      	fcvt	s3, d3
 1c6bb3c:      	stp	s2, s3, [x10, #0x78]
 1c6bb40:      	ldp	s2, s3, [x16, #0x80]
 1c6bb44:      	fcvt	d3, s3
 1c6bb48:      	fsub	d3, d1, d3
 1c6bb4c:      	fmul	d3, d3, d0
 1c6bb50:      	fcvt	s3, d3
 1c6bb54:      	stp	s2, s3, [x10, #0x80]
 1c6bb58:      	ldp	s2, s3, [x16, #0x88]
 1c6bb5c:      	fcvt	d3, s3
 1c6bb60:      	fsub	d3, d1, d3
 1c6bb64:      	fmul	d3, d3, d0
 1c6bb68:      	fcvt	s3, d3
 1c6bb6c:      	stp	s2, s3, [x10, #0x88]
 1c6bb70:      	ldp	s2, s3, [x16, #0x90]
 1c6bb74:      	fcvt	d3, s3
 1c6bb78:      	fsub	d3, d1, d3
 1c6bb7c:      	fmul	d3, d3, d0
 1c6bb80:      	fcvt	s3, d3
 1c6bb84:      	stp	s2, s3, [x10, #0x90]
 1c6bb88:      	ldp	s2, s3, [x16, #0x98]
 1c6bb8c:      	fcvt	d3, s3
 1c6bb90:      	fsub	d3, d1, d3
 1c6bb94:      	fmul	d3, d3, d0
 1c6bb98:      	fcvt	s3, d3
 1c6bb9c:      	stp	s2, s3, [x10, #0x98]
 1c6bba0:      	ldp	s2, s3, [x16, #0xa0]
 1c6bba4:      	fcvt	d3, s3
 1c6bba8:      	fsub	d3, d1, d3
 1c6bbac:      	fmul	d3, d3, d0
 1c6bbb0:      	fcvt	s3, d3
 1c6bbb4:      	stp	s2, s3, [x10, #0xa0]
 1c6bbb8:      	ldp	s2, s3, [x16, #0xa8]
 1c6bbbc:      	fcvt	d3, s3
 1c6bbc0:      	fsub	d3, d1, d3
 1c6bbc4:      	fmul	d3, d3, d0
 1c6bbc8:      	fcvt	s3, d3
 1c6bbcc:      	stp	s2, s3, [x10, #0xa8]
 1c6bbd0:      	and	w13, w13, w14
 1c6bbd4:      	cset	w10, lo
 1c6bbd8:      	tbnz	w13, #0x0, 0x1c6bcd8 <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0x510>
 1c6bbdc:      	and	w10, w15, w10
 1c6bbe0:      	cbnz	w10, 0x1c6bcd8 <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0x510>
 1c6bbe4:      	mov	x9, x11
 1c6bbe8:      	ld2.4s	{ v2, v3 }, [x9], #32
 1c6bbec:      	fcvtl2	v4.2d, v3.4s
 1c6bbf0:      	fcvtl	v5.2d, v3.2s
 1c6bbf4:      	fmov.2d	v6, #1.00000000
 1c6bbf8:      	fsub.2d	v5, v6, v5
 1c6bbfc:      	fsub.2d	v4, v6, v4
 1c6bc00:      	fmul.2d	v4, v4, v0[0]
 1c6bc04:      	fmul.2d	v5, v5, v0[0]
 1c6bc08:      	fcvtn	v3.2s, v5.2d
 1c6bc0c:      	fcvtn2	v3.4s, v4.2d
 1c6bc10:      	add	x10, x8, #0xb0
 1c6bc14:      	st2.4s	{ v2, v3 }, [x10]
 1c6bc18:      	ld2.4s	{ v2, v3 }, [x9]
 1c6bc1c:      	fcvtl2	v4.2d, v3.4s
 1c6bc20:      	fcvtl	v5.2d, v3.2s
 1c6bc24:      	fsub.2d	v5, v6, v5
 1c6bc28:      	fsub.2d	v4, v6, v4
 1c6bc2c:      	fmul.2d	v4, v4, v0[0]
 1c6bc30:      	fmul.2d	v5, v5, v0[0]
 1c6bc34:      	fcvtn	v3.2s, v5.2d
 1c6bc38:      	fcvtn2	v3.4s, v4.2d
 1c6bc3c:      	add	x9, x8, #0xd0
 1c6bc40:      	st2.4s	{ v2, v3 }, [x9]
 1c6bc44:      	add	x9, x11, #0x40
 1c6bc48:      	ld2.4s	{ v2, v3 }, [x9]
 1c6bc4c:      	fcvtl2	v4.2d, v3.4s
 1c6bc50:      	fcvtl	v5.2d, v3.2s
 1c6bc54:      	fsub.2d	v5, v6, v5
 1c6bc58:      	fsub.2d	v4, v6, v4
 1c6bc5c:      	fmul.2d	v4, v4, v0[0]
 1c6bc60:      	fmul.2d	v5, v5, v0[0]
 1c6bc64:      	fcvtn	v3.2s, v5.2d
 1c6bc68:      	fcvtn2	v3.4s, v4.2d
 1c6bc6c:      	add	x9, x8, #0xf0
 1c6bc70:      	st2.4s	{ v2, v3 }, [x9]
 1c6bc74:      	add	x9, x11, #0x60
 1c6bc78:      	ld2.4s	{ v2, v3 }, [x9]
 1c6bc7c:      	fcvtl2	v4.2d, v3.4s
 1c6bc80:      	fcvtl	v5.2d, v3.2s
 1c6bc84:      	fsub.2d	v5, v6, v5
 1c6bc88:      	fsub.2d	v4, v6, v4
 1c6bc8c:      	fmul.2d	v4, v4, v0[0]
 1c6bc90:      	fmul.2d	v5, v5, v0[0]
 1c6bc94:      	fcvtn	v3.2s, v5.2d
 1c6bc98:      	fcvtn2	v3.4s, v4.2d
 1c6bc9c:      	add	x9, x8, #0x110
 1c6bca0:      	st2.4s	{ v2, v3 }, [x9]
 1c6bca4:      	add	x9, x11, #0x80
 1c6bca8:      	ld2.4s	{ v2, v3 }, [x9]
 1c6bcac:      	fcvtl2	v4.2d, v3.4s
 1c6bcb0:      	fcvtl	v5.2d, v3.2s
 1c6bcb4:      	fsub.2d	v5, v6, v5
 1c6bcb8:      	fsub.2d	v4, v6, v4
 1c6bcbc:      	fmul.2d	v4, v4, v0[0]
 1c6bcc0:      	fmul.2d	v5, v5, v0[0]
 1c6bcc4:      	fcvtn	v3.2s, v5.2d
 1c6bcc8:      	fcvtn2	v3.4s, v4.2d
 1c6bccc:      	add	x9, x8, #0x130
 1c6bcd0:      	st2.4s	{ v2, v3 }, [x9]
 1c6bcd4:      	mov	w9, #0x14               ; =20
 1c6bcd8:      	lsl	x9, x9, #3
 1c6bcdc:      	add	x10, x11, x9
 1c6bce0:      	add	x13, x12, x9
 1c6bce4:      	ldp	s2, s3, [x10]
 1c6bce8:      	fcvt	d3, s3
 1c6bcec:      	fsub	d3, d1, d3
 1c6bcf0:      	fmul	d3, d3, d0
 1c6bcf4:      	fcvt	s3, d3
 1c6bcf8:      	stp	s2, s3, [x13]
 1c6bcfc:      	add	x9, x9, #0x8
 1c6bd00:      	cmp	x9, #0xb0
 1c6bd04:      	b.ne	0x1c6bcdc <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0x514>
 1c6bd08:      	ldp	x9, x10, [x20, #0x30]
 1c6bd0c:      	ldr	x9, [x9, #0x10]
 1c6bd10:      	ldp	s1, s2, [x9]
 1c6bd14:      	str	s1, [x8, #0x160]
 1c6bd18:      	fcvt	d2, s2
 1c6bd1c:      	fmov	d1, #1.00000000
 1c6bd20:      	fsub	d2, d1, d2
 1c6bd24:      	fmul	d2, d2, d0
 1c6bd28:      	fcvt	s2, d2
 1c6bd2c:      	str	s2, [x8, #0x164]
 1c6bd30:      	ldp	s2, s3, [x9, #0x8]
 1c6bd34:      	str	s2, [x8, #0x168]
 1c6bd38:      	fcvt	d2, s3
 1c6bd3c:      	fsub	d2, d1, d2
 1c6bd40:      	fmul	d2, d2, d0
 1c6bd44:      	fcvt	s2, d2
 1c6bd48:      	str	s2, [x8, #0x16c]
 1c6bd4c:      	ldp	s2, s3, [x9, #0x10]
 1c6bd50:      	str	s2, [x8, #0x170]
 1c6bd54:      	fcvt	d2, s3
 1c6bd58:      	fsub	d2, d1, d2
 1c6bd5c:      	fmul	d2, d2, d0
 1c6bd60:      	fcvt	s2, d2
 1c6bd64:      	str	s2, [x8, #0x174]
 1c6bd68:      	ldp	s2, s3, [x9, #0x18]
 1c6bd6c:      	str	s2, [x8, #0x178]
 1c6bd70:      	fcvt	d2, s3
 1c6bd74:      	fsub	d2, d1, d2
 1c6bd78:      	fmul	d2, d2, d0
 1c6bd7c:      	fcvt	s2, d2
 1c6bd80:      	str	s2, [x8, #0x17c]
 1c6bd84:      	ldp	s2, s3, [x9, #0x20]
 1c6bd88:      	str	s2, [x8, #0x180]
 1c6bd8c:      	fcvt	d2, s3
 1c6bd90:      	fsub	d2, d1, d2
 1c6bd94:      	fmul	d2, d2, d0
 1c6bd98:      	fcvt	s2, d2
 1c6bd9c:      	str	s2, [x8, #0x184]
 1c6bda0:      	ldp	s2, s3, [x9, #0x28]
 1c6bda4:      	str	s2, [x8, #0x188]
 1c6bda8:      	fcvt	d2, s3
 1c6bdac:      	fsub	d2, d1, d2
 1c6bdb0:      	fmul	d2, d2, d0
 1c6bdb4:      	fcvt	s2, d2
 1c6bdb8:      	str	s2, [x8, #0x18c]
 1c6bdbc:      	ldp	s2, s3, [x9, #0x30]
 1c6bdc0:      	str	s2, [x8, #0x190]
 1c6bdc4:      	fcvt	d2, s3
 1c6bdc8:      	fsub	d2, d1, d2
 1c6bdcc:      	fmul	d2, d2, d0
 1c6bdd0:      	fcvt	s2, d2
 1c6bdd4:      	str	s2, [x8, #0x194]
 1c6bdd8:      	ldp	s2, s3, [x9, #0x38]
 1c6bddc:      	str	s2, [x8, #0x198]
 1c6bde0:      	fcvt	d2, s3
 1c6bde4:      	fsub	d2, d1, d2
 1c6bde8:      	fmul	d2, d2, d0
 1c6bdec:      	fcvt	s2, d2
 1c6bdf0:      	str	s2, [x8, #0x19c]
 1c6bdf4:      	ldp	s2, s3, [x9, #0x40]
 1c6bdf8:      	str	s2, [x8, #0x1a0]
 1c6bdfc:      	fcvt	d2, s3
 1c6be00:      	fsub	d2, d1, d2
 1c6be04:      	fmul	d2, d2, d0
 1c6be08:      	fcvt	s2, d2
 1c6be0c:      	str	s2, [x8, #0x1a4]
 1c6be10:      	ldp	s2, s3, [x9, #0x48]
 1c6be14:      	str	s2, [x8, #0x1a8]
 1c6be18:      	fcvt	d2, s3
 1c6be1c:      	fsub	d2, d1, d2
 1c6be20:      	fmul	d2, d2, d0
 1c6be24:      	fcvt	s2, d2
 1c6be28:      	str	s2, [x8, #0x1ac]
 1c6be2c:      	ldp	s2, s3, [x9, #0x50]
 1c6be30:      	str	s2, [x8, #0x1b0]
 1c6be34:      	fcvt	d2, s3
 1c6be38:      	fsub	d2, d1, d2
 1c6be3c:      	fmul	d2, d2, d0
 1c6be40:      	fcvt	s2, d2
 1c6be44:      	str	s2, [x8, #0x1b4]
 1c6be48:      	ldp	s2, s3, [x9, #0x58]
 1c6be4c:      	str	s2, [x8, #0x1b8]
 1c6be50:      	fcvt	d2, s3
 1c6be54:      	fsub	d2, d1, d2
 1c6be58:      	fmul	d2, d2, d0
 1c6be5c:      	fcvt	s2, d2
 1c6be60:      	str	s2, [x8, #0x1bc]
 1c6be64:      	ldp	s2, s3, [x9, #0x60]
 1c6be68:      	str	s2, [x8, #0x1c0]
 1c6be6c:      	fcvt	d2, s3
 1c6be70:      	fsub	d2, d1, d2
 1c6be74:      	fmul	d2, d2, d0
 1c6be78:      	fcvt	s2, d2
 1c6be7c:      	str	s2, [x8, #0x1c4]
 1c6be80:      	ldr	x8, [x10, #0x10]
 1c6be84:      	ldr	x9, [x19]
 1c6be88:      	ldr	x9, [x9, #0x10]
 1c6be8c:      	ldp	s2, s3, [x8]
 1c6be90:      	str	s2, [x9, #0x1c8]
 1c6be94:      	fcvt	d2, s3
 1c6be98:      	fsub	d2, d1, d2
 1c6be9c:      	fmul	d2, d2, d0
 1c6bea0:      	fcvt	s2, d2
 1c6bea4:      	str	s2, [x9, #0x1cc]
 1c6bea8:      	ldp	s2, s3, [x8, #0x8]
 1c6beac:      	str	s2, [x9, #0x1d0]
 1c6beb0:      	fcvt	d2, s3
 1c6beb4:      	fsub	d2, d1, d2
 1c6beb8:      	fmul	d2, d2, d0
 1c6bebc:      	fcvt	s2, d2
 1c6bec0:      	str	s2, [x9, #0x1d4]
 1c6bec4:      	ldp	s2, s3, [x8, #0x10]
 1c6bec8:      	str	s2, [x9, #0x1d8]
 1c6becc:      	fcvt	d2, s3
 1c6bed0:      	fsub	d2, d1, d2
 1c6bed4:      	fmul	d2, d2, d0
 1c6bed8:      	fcvt	s2, d2
 1c6bedc:      	str	s2, [x9, #0x1dc]
 1c6bee0:      	ldp	s2, s3, [x8, #0x18]
 1c6bee4:      	str	s2, [x9, #0x1e0]
 1c6bee8:      	fcvt	d2, s3
 1c6beec:      	fsub	d2, d1, d2
 1c6bef0:      	fmul	d2, d2, d0
 1c6bef4:      	fcvt	s2, d2
 1c6bef8:      	str	s2, [x9, #0x1e4]
 1c6befc:      	ldp	s2, s3, [x8, #0x20]
 1c6bf00:      	str	s2, [x9, #0x1e8]
 1c6bf04:      	fcvt	d2, s3
 1c6bf08:      	fsub	d2, d1, d2
 1c6bf0c:      	fmul	d2, d2, d0
 1c6bf10:      	fcvt	s2, d2
 1c6bf14:      	str	s2, [x9, #0x1ec]
 1c6bf18:      	ldp	s2, s3, [x8, #0x28]
 1c6bf1c:      	str	s2, [x9, #0x1f0]
 1c6bf20:      	fcvt	d2, s3
 1c6bf24:      	fsub	d2, d1, d2
 1c6bf28:      	fmul	d2, d2, d0
 1c6bf2c:      	fcvt	s2, d2
 1c6bf30:      	str	s2, [x9, #0x1f4]
 1c6bf34:      	ldp	s2, s3, [x8, #0x30]
 1c6bf38:      	str	s2, [x9, #0x1f8]
 1c6bf3c:      	fcvt	d2, s3
 1c6bf40:      	fsub	d2, d1, d2
 1c6bf44:      	fmul	d2, d2, d0
 1c6bf48:      	fcvt	s2, d2
 1c6bf4c:      	str	s2, [x9, #0x1fc]
 1c6bf50:      	ldp	s2, s3, [x8, #0x38]
 1c6bf54:      	str	s2, [x9, #0x200]
 1c6bf58:      	fcvt	d2, s3
 1c6bf5c:      	fsub	d2, d1, d2
 1c6bf60:      	fmul	d2, d2, d0
 1c6bf64:      	fcvt	s2, d2
 1c6bf68:      	str	s2, [x9, #0x204]
 1c6bf6c:      	ldp	s2, s3, [x8, #0x40]
 1c6bf70:      	str	s2, [x9, #0x208]
 1c6bf74:      	fcvt	d2, s3
 1c6bf78:      	fsub	d2, d1, d2
 1c6bf7c:      	fmul	d2, d2, d0
 1c6bf80:      	fcvt	s2, d2
 1c6bf84:      	str	s2, [x9, #0x20c]
 1c6bf88:      	ldp	s2, s3, [x8, #0x48]
 1c6bf8c:      	str	s2, [x9, #0x210]
 1c6bf90:      	fcvt	d2, s3
 1c6bf94:      	fsub	d2, d1, d2
 1c6bf98:      	fmul	d2, d2, d0
 1c6bf9c:      	fcvt	s2, d2
 1c6bfa0:      	str	s2, [x9, #0x214]
 1c6bfa4:      	ldp	s2, s3, [x8, #0x50]
 1c6bfa8:      	str	s2, [x9, #0x218]
 1c6bfac:      	fcvt	d2, s3
 1c6bfb0:      	fsub	d2, d1, d2
 1c6bfb4:      	fmul	d2, d2, d0
 1c6bfb8:      	fcvt	s2, d2
 1c6bfbc:      	str	s2, [x9, #0x21c]
 1c6bfc0:      	ldp	s2, s3, [x8, #0x58]
 1c6bfc4:      	str	s2, [x9, #0x220]
 1c6bfc8:      	fcvt	d2, s3
 1c6bfcc:      	fsub	d2, d1, d2
 1c6bfd0:      	fmul	d2, d2, d0
 1c6bfd4:      	fcvt	s2, d2
 1c6bfd8:      	str	s2, [x9, #0x224]
 1c6bfdc:      	ldp	s2, s3, [x8, #0x60]
 1c6bfe0:      	str	s2, [x9, #0x228]
 1c6bfe4:      	fcvt	d2, s3
 1c6bfe8:      	fsub	d2, d1, d2
 1c6bfec:      	fmul	d2, d2, d0
 1c6bff0:      	fcvt	s2, d2
 1c6bff4:      	str	s2, [x9, #0x22c]
 1c6bff8:      	ldr	x8, [x20, #0x40]
 1c6bffc:      	ldr	x9, [x8, #0x10]
 1c6c000:      	ldr	x8, [x19]
 1c6c004:      	ldr	x8, [x8, #0x10]
 1c6c008:      	add	x10, x8, #0x230
 1c6c00c:      	add	x11, x8, #0x42c
 1c6c010:      	add	x12, x9, #0x1fc
 1c6c014:      	add	x13, x8, #0x234
 1c6c018:      	add	x14, x9, #0x4
 1c6c01c:      	cmp	x10, x12
 1c6c020:      	cset	w10, lo
 1c6c024:      	cmp	x9, x11
 1c6c028:      	cset	w11, lo
 1c6c02c:      	and	w12, w10, w11
 1c6c030:      	add	x10, x9, #0x200
 1c6c034:      	cmp	x13, x10
 1c6c038:      	cset	w10, lo
 1c6c03c:      	add	x11, x8, #0x430
 1c6c040:      	cmp	x14, x11
 1c6c044:      	cset	w11, lo
 1c6c048:      	tbnz	w12, #0x0, 0x1c6c358 <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0xb90>
 1c6c04c:      	and	w10, w10, w11
 1c6c050:      	cbnz	w10, 0x1c6c358 <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0xb90>
 1c6c054:      	mov	x10, x9
 1c6c058:      	ld2.4s	{ v2, v3 }, [x10], #32
 1c6c05c:      	fcvtl2	v4.2d, v3.4s
 1c6c060:      	fcvtl	v5.2d, v3.2s
 1c6c064:      	fmov.2d	v1, #1.00000000
 1c6c068:      	fsub.2d	v5, v1, v5
 1c6c06c:      	fsub.2d	v4, v1, v4
 1c6c070:      	fmul.2d	v4, v4, v0[0]
 1c6c074:      	fmul.2d	v5, v5, v0[0]
 1c6c078:      	fcvtn	v3.2s, v5.2d
 1c6c07c:      	fcvtn2	v3.4s, v4.2d
 1c6c080:      	add	x11, x8, #0x230
 1c6c084:      	st2.4s	{ v2, v3 }, [x11]
 1c6c088:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c08c:      	fcvtl2	v4.2d, v3.4s
 1c6c090:      	fcvtl	v5.2d, v3.2s
 1c6c094:      	fsub.2d	v5, v1, v5
 1c6c098:      	fsub.2d	v4, v1, v4
 1c6c09c:      	fmul.2d	v4, v4, v0[0]
 1c6c0a0:      	fmul.2d	v5, v5, v0[0]
 1c6c0a4:      	fcvtn	v3.2s, v5.2d
 1c6c0a8:      	fcvtn2	v3.4s, v4.2d
 1c6c0ac:      	add	x10, x8, #0x250
 1c6c0b0:      	st2.4s	{ v2, v3 }, [x10]
 1c6c0b4:      	add	x10, x9, #0x40
 1c6c0b8:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c0bc:      	fcvtl2	v4.2d, v3.4s
 1c6c0c0:      	fcvtl	v5.2d, v3.2s
 1c6c0c4:      	fsub.2d	v5, v1, v5
 1c6c0c8:      	fsub.2d	v4, v1, v4
 1c6c0cc:      	fmul.2d	v4, v4, v0[0]
 1c6c0d0:      	fmul.2d	v5, v5, v0[0]
 1c6c0d4:      	fcvtn	v3.2s, v5.2d
 1c6c0d8:      	fcvtn2	v3.4s, v4.2d
 1c6c0dc:      	add	x10, x8, #0x270
 1c6c0e0:      	st2.4s	{ v2, v3 }, [x10]
 1c6c0e4:      	add	x10, x9, #0x60
 1c6c0e8:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c0ec:      	fcvtl2	v4.2d, v3.4s
 1c6c0f0:      	fcvtl	v5.2d, v3.2s
 1c6c0f4:      	fsub.2d	v5, v1, v5
 1c6c0f8:      	fsub.2d	v4, v1, v4
 1c6c0fc:      	fmul.2d	v4, v4, v0[0]
 1c6c100:      	fmul.2d	v5, v5, v0[0]
 1c6c104:      	fcvtn	v3.2s, v5.2d
 1c6c108:      	fcvtn2	v3.4s, v4.2d
 1c6c10c:      	add	x10, x8, #0x290
 1c6c110:      	st2.4s	{ v2, v3 }, [x10]
 1c6c114:      	add	x10, x9, #0x80
 1c6c118:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c11c:      	fcvtl2	v4.2d, v3.4s
 1c6c120:      	fcvtl	v5.2d, v3.2s
 1c6c124:      	fsub.2d	v5, v1, v5
 1c6c128:      	fsub.2d	v4, v1, v4
 1c6c12c:      	fmul.2d	v4, v4, v0[0]
 1c6c130:      	fmul.2d	v5, v5, v0[0]
 1c6c134:      	fcvtn	v3.2s, v5.2d
 1c6c138:      	fcvtn2	v3.4s, v4.2d
 1c6c13c:      	add	x10, x8, #0x2b0
 1c6c140:      	st2.4s	{ v2, v3 }, [x10]
 1c6c144:      	add	x10, x9, #0xa0
 1c6c148:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c14c:      	fcvtl2	v4.2d, v3.4s
 1c6c150:      	fcvtl	v5.2d, v3.2s
 1c6c154:      	fsub.2d	v5, v1, v5
 1c6c158:      	fsub.2d	v4, v1, v4
 1c6c15c:      	fmul.2d	v4, v4, v0[0]
 1c6c160:      	fmul.2d	v5, v5, v0[0]
 1c6c164:      	fcvtn	v3.2s, v5.2d
 1c6c168:      	fcvtn2	v3.4s, v4.2d
 1c6c16c:      	add	x10, x8, #0x2d0
 1c6c170:      	st2.4s	{ v2, v3 }, [x10]
 1c6c174:      	add	x10, x9, #0xc0
 1c6c178:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c17c:      	fcvtl2	v4.2d, v3.4s
 1c6c180:      	fcvtl	v5.2d, v3.2s
 1c6c184:      	fsub.2d	v5, v1, v5
 1c6c188:      	fsub.2d	v4, v1, v4
 1c6c18c:      	fmul.2d	v4, v4, v0[0]
 1c6c190:      	fmul.2d	v5, v5, v0[0]
 1c6c194:      	fcvtn	v3.2s, v5.2d
 1c6c198:      	fcvtn2	v3.4s, v4.2d
 1c6c19c:      	add	x10, x8, #0x2f0
 1c6c1a0:      	st2.4s	{ v2, v3 }, [x10]
 1c6c1a4:      	add	x10, x9, #0xe0
 1c6c1a8:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c1ac:      	fcvtl2	v4.2d, v3.4s
 1c6c1b0:      	fcvtl	v5.2d, v3.2s
 1c6c1b4:      	fsub.2d	v5, v1, v5
 1c6c1b8:      	fsub.2d	v4, v1, v4
 1c6c1bc:      	fmul.2d	v4, v4, v0[0]
 1c6c1c0:      	fmul.2d	v5, v5, v0[0]
 1c6c1c4:      	fcvtn	v3.2s, v5.2d
 1c6c1c8:      	fcvtn2	v3.4s, v4.2d
 1c6c1cc:      	add	x10, x8, #0x310
 1c6c1d0:      	st2.4s	{ v2, v3 }, [x10]
 1c6c1d4:      	add	x10, x9, #0x100
 1c6c1d8:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c1dc:      	fcvtl2	v4.2d, v3.4s
 1c6c1e0:      	fcvtl	v5.2d, v3.2s
 1c6c1e4:      	fsub.2d	v5, v1, v5
 1c6c1e8:      	fsub.2d	v4, v1, v4
 1c6c1ec:      	fmul.2d	v4, v4, v0[0]
 1c6c1f0:      	fmul.2d	v5, v5, v0[0]
 1c6c1f4:      	fcvtn	v3.2s, v5.2d
 1c6c1f8:      	fcvtn2	v3.4s, v4.2d
 1c6c1fc:      	add	x10, x8, #0x330
 1c6c200:      	st2.4s	{ v2, v3 }, [x10]
 1c6c204:      	add	x10, x9, #0x120
 1c6c208:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c20c:      	fcvtl2	v4.2d, v3.4s
 1c6c210:      	fcvtl	v5.2d, v3.2s
 1c6c214:      	fsub.2d	v5, v1, v5
 1c6c218:      	fsub.2d	v4, v1, v4
 1c6c21c:      	fmul.2d	v4, v4, v0[0]
 1c6c220:      	fmul.2d	v5, v5, v0[0]
 1c6c224:      	fcvtn	v3.2s, v5.2d
 1c6c228:      	fcvtn2	v3.4s, v4.2d
 1c6c22c:      	add	x10, x8, #0x350
 1c6c230:      	st2.4s	{ v2, v3 }, [x10]
 1c6c234:      	add	x10, x9, #0x140
 1c6c238:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c23c:      	fcvtl2	v4.2d, v3.4s
 1c6c240:      	fcvtl	v5.2d, v3.2s
 1c6c244:      	fsub.2d	v5, v1, v5
 1c6c248:      	fsub.2d	v4, v1, v4
 1c6c24c:      	fmul.2d	v4, v4, v0[0]
 1c6c250:      	fmul.2d	v5, v5, v0[0]
 1c6c254:      	fcvtn	v3.2s, v5.2d
 1c6c258:      	fcvtn2	v3.4s, v4.2d
 1c6c25c:      	add	x10, x8, #0x370
 1c6c260:      	st2.4s	{ v2, v3 }, [x10]
 1c6c264:      	add	x10, x9, #0x160
 1c6c268:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c26c:      	fcvtl2	v4.2d, v3.4s
 1c6c270:      	fcvtl	v5.2d, v3.2s
 1c6c274:      	fsub.2d	v5, v1, v5
 1c6c278:      	fsub.2d	v4, v1, v4
 1c6c27c:      	fmul.2d	v4, v4, v0[0]
 1c6c280:      	fmul.2d	v5, v5, v0[0]
 1c6c284:      	fcvtn	v3.2s, v5.2d
 1c6c288:      	fcvtn2	v3.4s, v4.2d
 1c6c28c:      	add	x10, x8, #0x390
 1c6c290:      	st2.4s	{ v2, v3 }, [x10]
 1c6c294:      	add	x10, x9, #0x180
 1c6c298:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c29c:      	fcvtl2	v4.2d, v3.4s
 1c6c2a0:      	fcvtl	v5.2d, v3.2s
 1c6c2a4:      	fsub.2d	v5, v1, v5
 1c6c2a8:      	fsub.2d	v4, v1, v4
 1c6c2ac:      	fmul.2d	v4, v4, v0[0]
 1c6c2b0:      	fmul.2d	v5, v5, v0[0]
 1c6c2b4:      	fcvtn	v3.2s, v5.2d
 1c6c2b8:      	fcvtn2	v3.4s, v4.2d
 1c6c2bc:      	add	x10, x8, #0x3b0
 1c6c2c0:      	st2.4s	{ v2, v3 }, [x10]
 1c6c2c4:      	add	x10, x9, #0x1a0
 1c6c2c8:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c2cc:      	fcvtl2	v4.2d, v3.4s
 1c6c2d0:      	fcvtl	v5.2d, v3.2s
 1c6c2d4:      	fsub.2d	v5, v1, v5
 1c6c2d8:      	fsub.2d	v4, v1, v4
 1c6c2dc:      	fmul.2d	v4, v4, v0[0]
 1c6c2e0:      	fmul.2d	v5, v5, v0[0]
 1c6c2e4:      	fcvtn	v3.2s, v5.2d
 1c6c2e8:      	fcvtn2	v3.4s, v4.2d
 1c6c2ec:      	add	x10, x8, #0x3d0
 1c6c2f0:      	st2.4s	{ v2, v3 }, [x10]
 1c6c2f4:      	add	x10, x9, #0x1c0
 1c6c2f8:      	ld2.4s	{ v2, v3 }, [x10]
 1c6c2fc:      	fcvtl2	v4.2d, v3.4s
 1c6c300:      	fcvtl	v5.2d, v3.2s
 1c6c304:      	fsub.2d	v5, v1, v5
 1c6c308:      	fsub.2d	v4, v1, v4
 1c6c30c:      	fmul.2d	v4, v4, v0[0]
 1c6c310:      	fmul.2d	v5, v5, v0[0]
 1c6c314:      	fcvtn	v3.2s, v5.2d
 1c6c318:      	fcvtn2	v3.4s, v4.2d
 1c6c31c:      	add	x10, x8, #0x3f0
 1c6c320:      	st2.4s	{ v2, v3 }, [x10]
 1c6c324:      	add	x9, x9, #0x1e0
 1c6c328:      	ld2.4s	{ v2, v3 }, [x9]
 1c6c32c:      	fcvtl2	v4.2d, v3.4s
 1c6c330:      	fcvtl	v5.2d, v3.2s
 1c6c334:      	fsub.2d	v5, v1, v5
 1c6c338:      	fsub.2d	v1, v1, v4
 1c6c33c:      	fmul.2d	v1, v1, v0[0]
 1c6c340:      	fmul.2d	v4, v5, v0[0]
 1c6c344:      	fcvtn	v3.2s, v4.2d
 1c6c348:      	fcvtn2	v3.4s, v1.2d
 1c6c34c:      	add	x9, x8, #0x410
 1c6c350:      	st2.4s	{ v2, v3 }, [x9]
 1c6c354:      	b	0x1c6c38c <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0xbc4>
 1c6c358:      	mov	x10, #0x0               ; =0
 1c6c35c:      	add	x11, x9, x10
 1c6c360:      	add	x12, x8, x10
 1c6c364:      	ldp	s2, s3, [x11]
 1c6c368:      	str	s2, [x12, #0x230]
 1c6c36c:      	fcvt	d2, s3
 1c6c370:      	fsub	d2, d1, d2
 1c6c374:      	fmul	d2, d2, d0
 1c6c378:      	fcvt	s2, d2
 1c6c37c:      	str	s2, [x12, #0x234]
 1c6c380:      	add	x10, x10, #0x8
 1c6c384:      	cmp	x10, #0x200
 1c6c388:      	b.ne	0x1c6c35c <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0xb94>
 1c6c38c:      	ldr	w9, [x20, #0x18]
 1c6c390:      	cmp	w9, #0x1
 1c6c394:      	b.lt	0x1c6c810 <__ZN13AmazingEngine15FaceMakeupUtils21calcAlgorithmPointsV2EPKN4Bach7Face106EPKNS1_9FaceExtraERNS_15PrimitiveVectorINS_8Vector2fEEESB_+0x1048>
 1c6c398:      	ldp	x9, x10, [x20, #0x48]
 1c6c39c:      	ldr	x9, [x9, #0x10]
 1c6c3a0:      	ldp	s1, s2, [x9]
 1c6c3a4:      	str	s1, [x8, #0x430]
 1c6c3a8:      	fcvt	d2, s2
 1c6c3ac:      	fmov	d1, #1.00000000
 1c6c3b0:      	fsub	d2, d1, d2
 1c6c3b4:      	fmul	d2, d2, d0
 1c6c3b8:      	fcvt	s2, d2
 1c6c3bc:      	str	s2, [x8, #0x434]
 1c6c3c0:      	ldp	s2, s3, [x9, #0x8]
 1c6c3c4:      	str	s2, [x8, #0x438]
 1c6c3c8:      	fcvt	d2, s3
 1c6c3cc:      	fsub	d2, d1, d2
 1c6c3d0:      	fmul	d2, d2, d0
 1c6c3d4:      	fcvt	s2, d2
 1c6c3d8:      	str	s2, [x8, #0x43c]
 1c6c3dc:      	ldp	s2, s3, [x9, #0x10]
 1c6c3e0:      	str	s2, [x8, #0x440]
 1c6c3e4:      	fcvt	d2, s3
 1c6c3e8:      	fsub	d2, d1, d2
 1c6c3ec:      	fmul	d2, d2, d0
 1c6c3f0:      	fcvt	s2, d2
 1c6c3f4:      	str	s2, [x8, #0x444]
 1c6c3f8:      	ldp	s2, s3, [x9, #0x18]
 1c6c3fc:      	str	s2, [x8, #0x448]
 1c6c400:      	fcvt	d2, s3
 1c6c404:      	fsub	d2, d1, d2
 1c6c408:      	fmul	d2, d2, d0
 1c6c40c:      	fcvt	s2, d2
 1c6c410:      	str	s2, [x8, #0x44c]
 1c6c414:      	ldp	s2, s3, [x9, #0x20]
 1c6c418:      	str	s2, [x8, #0x450]
 1c6c41c:      	fcvt	d2, s3
 1c6c420:      	fsub	d2, d1, d2
 1c6c424:      	fmul	d2, d2, d0
 1c6c428:      	fcvt	s2, d2
 1c6c42c:      	str	s2, [x8, #0x454]
 1c6c430:      	ldp	s2, s3, [x9, #0x28]
 1c6c434:      	str	s2, [x8, #0x458]
 1c6c438:      	fcvt	d2, s3
 1c6c43c:      	fsub	d2, d1, d2
 1c6c440:      	fmul	d2, d2, d0
 1c6c444:      	fcvt	s2, d2
 1c6c448:      	str	s2, [x8, #0x45c]
 1c6c44c:      	ldp	s2, s3, [x9, #0x30]
 1c6c450:      	str	s2, [x8, #0x460]
 1c6c454:      	fcvt	d2, s3
 1c6c458:      	fsub	d2, d1, d2
 1c6c45c:      	fmul	d2, d2, d0
 1c6c460:      	fcvt	s2, d2
 1c6c464:      	str	s2, [x8, #0x464]
 1c6c468:      	ldp	s2, s3, [x9, #0x38]
 1c6c46c:      	str	s2, [x8, #0x468]
 1c6c470:      	fcvt	d2, s3
 1c6c474:      	fsub	d2, d1, d2
 1c6c478:      	fmul	d2, d2, d0
 1c6c47c:      	fcvt	s2, d2
 1c6c480:      	str	s2, [x8, #0x46c]
 1c6c484:      	ldp	s2, s3, [x9, #0x40]
 1c6c488:      	str	s2, [x8, #0x470]
 1c6c48c:      	fcvt	d2, s3
 1c6c490:      	fsub	d2, d1, d2
 1c6c494:      	fmul	d2, d2, d0
 1c6c498:      	fcvt	s2, d2
 1c6c49c:      	str	s2, [x8, #0x474]
 1c6c4a0:      	ldp	s2, s3, [x9, #0x48]
 1c6c4a4:      	str	s2, [x8, #0x478]
 1c6c4a8:      	fcvt	d2, s3
 1c6c4ac:      	fsub	d2, d1, d2
 1c6c4b0:      	fmul	d2, d2, d0
 1c6c4b4:      	fcvt	s2, d2
 1c6c4b8:      	str	s2, [x8, #0x47c]
 1c6c4bc:      	ldp	s2, s3, [x9, #0x50]
 1c6c4c0:      	str	s2, [x8, #0x480]
 1c6c4c4:      	fcvt	d2, s3
 1c6c4c8:      	fsub	d2, d1, d2
 1c6c4cc:      	fmul	d2, d2, d0
 1c6c4d0:      	fcvt	s2, d2
 1c6c4d4:      	str	s2, [x8, #0x484]
 1c6c4d8:      	ldp	s2, s3, [x9, #0x58]
 1c6c4dc:      	str	s2, [x8, #0x488]
 1c6c4e0:      	fcvt	d2, s3
 1c6c4e4:      	fsub	d2, d1, d2
 1c6c4e8:      	fmul	d2, d2, d0
 1c6c4ec:      	fcvt	s2, d2
 1c6c4f0:      	str	s2, [x8, #0x48c]
 1c6c4f4:      	ldp	s2, s3, [x9, #0x60]
 1c6c4f8:      	str	s2, [x8, #0x490]
 1c6c4fc:      	fcvt	d2, s3
 1c6c500:      	fsub	d2, d1, d2
 1c6c504:      	fmul	d2, d2, d0
 1c6c508:      	fcvt	s2, d2
 1c6c50c:      	str	s2, [x8, #0x494]
 1c6c510:      	ldp	s2, s3, [x9, #0x68]
 1c6c514:      	str	s2, [x8, #0x498]
 1c6c518:      	fcvt	d2, s3
 1c6c51c:      	fsub	d2, d1, d2
 1c6c520:      	fmul	d2, d2, d0
 1c6c524:      	fcvt	s2, d2
 1c6c528:      	str	s2, [x8, #0x49c]
 1c6c52c:      	ldp	s2, s3, [x9, #0x70]
 1c6c530:      	str	s2, [x8, #0x4a0]
 1c6c534:      	fcvt	d2, s3
 1c6c538:      	fsub	d2, d1, d2
 1c6c53c:      	fmul	d2, d2, d0
 1c6c540:      	fcvt	s2, d2
 1c6c544:      	str	s2, [x8, #0x4a4]
 1c6c548:      	ldp	s2, s3, [x9, #0x78]
 1c6c54c:      	str	s2, [x8, #0x4a8]
 1c6c550:      	fcvt	d2, s3
 1c6c554:      	fsub	d2, d1, d2
 1c6c558:      	fmul	d2, d2, d0
 1c6c55c:      	fcvt	s2, d2
 1c6c560:      	str	s2, [x8, #0x4ac]
 1c6c564:      	ldp	s2, s3, [x9, #0x80]
 1c6c568:      	str	s2, [x8, #0x4b0]
 1c6c56c:      	fcvt	d2, s3
 1c6c570:      	fsub	d2, d1, d2
 1c6c574:      	fmul	d2, d2, d0
 1c6c578:      	fcvt	s2, d2
 1c6c57c:      	str	s2, [x8, #0x4b4]
 1c6c580:      	ldp	s2, s3, [x9, #0x88]
 1c6c584:      	str	s2, [x8, #0x4b8]
 1c6c588:      	fcvt	d2, s3
 1c6c58c:      	fsub	d2, d1, d2
 1c6c590:      	fmul	d2, d2, d0
 1c6c594:      	fcvt	s2, d2
 1c6c598:      	str	s2, [x8, #0x4bc]
 1c6c59c:      	ldp	s2, s3, [x9, #0x90]
 1c6c5a0:      	str	s2, [x8, #0x4c0]
 1c6c5a4:      	fcvt	d2, s3
 1c6c5a8:      	fsub	d2, d1, d2
 1c6c5ac:      	fmul	d2, d2, d0
 1c6c5b0:      	fcvt	s2, d2
 1c6c5b4:      	str	s2, [x8, #0x4c4]
 1c6c5b8:      	ldp	s2, s3, [x9, #0x98]
 1c6c5bc:      	str	s2, [x8, #0x4c8]
 1c6c5c0:      	fcvt	d2, s3
 1c6c5c4:      	fsub	d2, d1, d2
 1c6c5c8:      	fmul	d2, d2, d0
 1c6c5cc:      	fcvt	s2, d2
 1c6c5d0:      	str	s2, [x8, #0x4cc]
 1c6c5d4:      	ldr	x9, [x10, #0x10]
 1c6c5d8:      	ldr	x8, [x19]
 1c6c5dc:      	ldr	x8, [x8, #0x10]
 1c6c5e0:      	ldp	s2, s3, [x9]
 1c6c5e4:      	str	s2, [x8, #0x4d0]
 1c6c5e8:      	fcvt	d2, s3
 1c6c5ec:      	fsub	d2, d1, d2
 1c6c5f0:      	fmul	d2, d2, d0
 1c6c5f4:      	fcvt	s2, d2
 1c6c5f8:      	str	s2, [x8, #0x4d4]
 1c6c5fc:      	ldp	s2, s3, [x9, #0x8]
 1c6c600:      	str	s2, [x8, #0x4d8]
 1c6c604:      	fcvt	d2, s3
 1c6c608:      	fsub	d2, d1, d2
 1c6c60c:      	fmul	d2, d2, d0
 1c6c610:      	fcvt	s2, d2
 1c6c614:      	str	s2, [x8, #0x4dc]
 1c6c618:      	ldp	s2, s3, [x9, #0x10]
 1c6c61c:      	str	s2, [x8, #0x4e0]
 1c6c620:      	fcvt	d2, s3
 1c6c624:      	fsub	d2, d1, d2
 1c6c628:      	fmul	d2, d2, d0
 1c6c62c:      	fcvt	s2, d2
 1c6c630:      	str	s2, [x8, #0x4e4]
 1c6c634:      	ldp	s2, s3, [x9, #0x18]
 1c6c638:      	str	s2, [x8, #0x4e8]
 1c6c63c:      	fcvt	d2, s3
 1c6c640:      	fsub	d2, d1, d2
 1c6c644:      	fmul	d2, d2, d0
 1c6c648:      	fcvt	s2, d2
 1c6c64c:      	str	s2, [x8, #0x4ec]
 1c6c650:      	ldp	s2, s3, [x9, #0x20]
 1c6c654:      	str	s2, [x8, #0x4f0]
 1c6c658:      	fcvt	d2, s3
 1c6c65c:      	fsub	d2, d1, d2
 1c6c660:      	fmul	d2, d2, d0
 1c6c664:      	fcvt	s2, d2
 1c6c668:      	str	s2, [x8, #0x4f4]
 1c6c66c:      	ldp	s2, s3, [x9, #0x28]
 1c6c670:      	str	s2, [x8, #0x4f8]
 1c6c674:      	fcvt	d2, s3
 1c6c678:      	fsub	d2, d1, d2
 1c6c67c:      	fmul	d2, d2, d0
 1c6c680:      	fcvt	s2, d2
 1c6c684:      	str	s2, [x8, #0x4fc]
 1c6c688:      	ldp	s2, s3, [x9, #0x30]
 1c6c68c:      	str	s2, [x8, #0x500]
 1c6c690:      	fcvt	d2, s3
 1c6c694:      	fsub	d2, d1, d2
 1c6c698:      	fmul	d2, d2, d0
 1c6c69c:      	fcvt	s2, d2
 1c6c6a0:      	str	s2, [x8, #0x504]
 1c6c6a4:      	ldp	s2, s3, [x9, #0x38]
 1c6c6a8:      	str	s2, [x8, #0x508]
 1c6c6ac:      	fcvt	d2, s3
 1c6c6b0:      	fsub	d2, d1, d2
 1c6c6b4:      	fmul	d2, d2, d0
 1c6c6b8:      	fcvt	s2, d2
 1c6c6bc:      	str	s2, [x8, #0x50c]
 1c6c6c0:      	ldp	s2, s3, [x9, #0x40]
 1c6c6c4:      	str	s2, [x8, #0x510]
 1c6c6c8:      	fcvt	d2, s3
 1c6c6cc:      	fsub	d2, d1, d2
 1c6c6d0:      	fmul	d2, d2, d0
 1c6c6d4:      	fcvt	s2, d2
 1c6c6d8:      	str	s2, [x8, #0x514]
 1c6c6dc:      	ldp	s2, s3, [x9, #0x48]
 1c6c6e0:      	str	s2, [x8, #0x518]
 1c6c6e4:      	fcvt	d2, s3
 1c6c6e8:      	fsub	d2, d1, d2
 1c6c6ec:      	fmul	d2, d2, d0
 1c6c6f0:      	fcvt	s2, d2
 1c6c6f4:      	str	s2, [x8, #0x51c]
 1c6c6f8:      	ldp	s2, s3, [x9, #0x50]
 1c6c6fc:      	str	s2, [x8, #0x520]
 1c6c700:      	fcvt	d2, s3
 1c6c704:      	fsub	d2, d1, d2
 1c6c708:      	fmul	d2, d2, d0
 1c6c70c:      	fcvt	s2, d2
 1c6c710:      	str	s2, [x8, #0x524]
 1c6c714:      	ldp	s2, s3, [x9, #0x58]
 1c6c718:      	str	s2, [x8, #0x528]
 1c6c71c:      	fcvt	d2, s3
 1c6c720:      	fsub	d2, d1, d2
 1c6c724:      	fmul	d2, d2, d0
 1c6c728:      	fcvt	s2, d2
 1c6c72c:      	str	s2, [x8, #0x52c]
 1c6c730:      	ldp	s2, s3, [x9, #0x60]
 1c6c734:      	str	s2, [x8, #0x530]
 1c6c738:      	fcvt	d2, s3
 1c6c73c:      	fsub	d2, d1, d2
 1c6c740:      	fmul	d2, d2, d0
 1c6c744:      	fcvt	s2, d2
 1c6c748:      	str	s2, [x8, #0x534]
 1c6c74c:      	ldp	s2, s3, [x9, #0x68]
 1c6c750:      	str	s2, [x8, #0x538]
 1c6c754:      	fcvt	d2, s3
 1c6c758:      	fsub	d2, d1, d2
 1c6c75c:      	fmul	d2, d2, d0
 1c6c760:      	fcvt	s2, d2
 1c6c764:      	str	s2, [x8, #0x53c]
 1c6c768:      	ldp	s2, s3, [x9, #0x70]
 1c6c76c:      	str	s2, [x8, #0x540]
 1c6c770:      	fcvt	d2, s3
 1c6c774:      	fsub	d2, d1, d2
 1c6c778:      	fmul	d2, d2, d0
 1c6c77c:      	fcvt	s2, d2
 1c6c780:      	str	s2, [x8, #0x544]
 1c6c784:      	ldp	s2, s3, [x9, #0x78]
 1c6c788:      	str	s2, [x8, #0x548]
 1c6c78c:      	fcvt	d2, s3
 1c6c790:      	fsub	d2, d1, d2
 1c6c794:      	fmul	d2, d2, d0
 1c6c798:      	fcvt	s2, d2
 1c6c79c:      	str	s2, [x8, #0x54c]
 1c6c7a0:      	ldp	s2, s3, [x9, #0x80]
 1c6c7a4:      	str	s2, [x8, #0x550]
 1c6c7a8:      	fcvt	d2, s3
 1c6c7ac:      	fsub	d2, d1, d2
 1c6c7b0:      	fmul	d2, d2, d0
 1c6c7b4:      	fcvt	s2, d2
 1c6c7b8:      	str	s2, [x8, #0x554]
 1c6c7bc:      	ldp	s2, s3, [x9, #0x88]
 1c6c7c0:      	str	s2, [x8, #0x558]
 1c6c7c4:      	fcvt	d2, s3
 1c6c7c8:      	fsub	d2, d1, d2
 1c6c7cc:      	fmul	d2, d2, d0
 1c6c7d0:      	fcvt	s2, d2
 1c6c7d4:      	str	s2, [x8, #0x55c]
 1c6c7d8:      	ldp	s2, s3, [x9, #0x90]
 1c6c7dc:      	str	s2, [x8, #0x560]
 1c6c7e0:      	fcvt	d2, s3
 1c6c7e4:      	fsub	d2, d1, d2
 1c6c7e8:      	fmul	d2, d2, d0
 1c6c7ec:      	fcvt	s2, d2
 1c6c7f0:      	str	s2, [x8, #0x564]
 1c6c7f4:      	ldp	s2, s3, [x9, #0x98]
 1c6c7f8:      	str	s2, [x8, #0x568]
 1c6c7fc:      	fcvt	d2, s3
 1c6c800:      	fsub	d1, d1, d2
 1c6c804:      	fmul	d0, d1, d0
 1c6c808:      	fcvt	s0, d0
 1c6c80c:      	str	s0, [x8, #0x56c]
 1c6c810:      	ldp	x29, x30, [sp, #0x30]
 1c6c814:      	ldp	x20, x19, [sp, #0x20]
 1c6c818:      	ldp	x22, x21, [sp, #0x10]
 1c6c81c:      	ldp	d9, d8, [sp], #0x40
 1c6c820:      	ret
