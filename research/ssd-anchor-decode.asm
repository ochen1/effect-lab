
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

00000000028465e4 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE>:
 28475b0: 1aca0d2c     	sdiv	w12, w9, w10
 28475b4: 1b0aa58b     	msub	w11, w12, w10, w9
 28475b8: d65f03c0     	ret
 28475bc: 1e620101     	scvtf	d1, w8
 28475c0: 1e611800     	fdiv	d0, d0, d1
 28475c4: 1e624000     	fcvt	s0, d0
 28475c8: bd003800     	str	s0, [x0, #0x38]
 28475cc: 1e220121     	scvtf	s1, w9
 28475d0: 1e210800     	fmul	s0, s0, s1
 28475d4: 1e380008     	fcvtzs	w8, s0
 28475d8: 2905a808     	stp	w8, w10, [x0, #0x2c]
 28475dc: 2904a808     	stp	w8, w10, [x0, #0x24]
 28475e0: b940080a     	ldr	w10, [x0, #0x8]
 28475e4: 1aca0d0c     	sdiv	w12, w8, w10
 28475e8: 1b0aa18b     	msub	w11, w12, w10, w8
 28475ec: d65f03c0     	ret
 28475f0: 1e620100     	scvtf	d0, w8
 28475f4: 1e620121     	scvtf	d1, w9
 28475f8: 1e611800     	fdiv	d0, d0, d1
 28475fc: 1e624000     	fcvt	s0, d0
 2847600: bd003400     	str	s0, [x0, #0x34]
 2847604: d65f03c0     	ret
 2847608: aa1303e0     	mov	x0, x19
 284760c: 14056ed9     	b	0x29a3170 <dyld_stub_binder+0x29a3170>
 2847610: f829796a     	str	x10, [x11, x9, lsl #3]
 2847614: 91000529     	add	x9, x9, #0x1
 2847618: 91008108     	add	x8, x8, #0x20
 284761c: d65f03c0     	ret
 2847620: 1e620120     	scvtf	d0, w9
 2847624: 1e620101     	scvtf	d1, w8
 2847628: 1e611800     	fdiv	d0, d0, d1
 284762c: 1e624000     	fcvt	s0, d0
 2847630: bd003800     	str	s0, [x0, #0x38]
 2847634: d65f03c0     	ret
 2847638: 9101a3e2     	add	x2, sp, #0x68
 284763c: 2f00e400     	movi	d0, #0000000000000000
 2847640: 2f00e401     	movi	d1, #0000000000000000
 2847644: 52800003     	mov	w3, #0x0                ; =0
 2847648: 1785c5e0     	b	0x9b8dc8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0xd2ee8>
 284764c: fd400420     	ldr	d0, [x1, #0x8]
 2847650: 0ea00800     	rev64.2s	v0, v0
 2847654: fc01c000     	stur	d0, [x0, #0x1c]
 2847658: b9401008     	ldr	w8, [x0, #0x10]
 284765c: 7100051f     	cmp	w8, #0x1
 2847660: d65f03c0     	ret
 2847664: 910023e0     	add	x0, sp, #0x8
 2847668: 17877089     	b	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 284766c: 9103c3ff     	add	sp, sp, #0xf0
 2847670: d65f03c0     	ret
 2847674: f9400048     	ldr	x8, [x2]
 2847678: f9000448     	str	x8, [x2, #0x8]
 284767c: f9400068     	ldr	x8, [x3]
 2847680: f9000468     	str	x8, [x3, #0x8]
 2847684: d65f03c0     	ret
 2847688: f9400008     	ldr	x8, [x0]
 284768c: f9400508     	ldr	x8, [x8, #0x8]
 2847690: d61f0100     	br	x8
 2847694: a94223e9     	ldp	x9, x8, [sp, #0x20]
 2847698: cb090108     	sub	x8, x8, x9
 284769c: 52800289     	mov	w9, #0x14               ; =20
 28476a0: 9ac90d01     	sdiv	x1, x8, x9
 28476a4: d65f03c0     	ret
 28476a8: d2800008     	mov	x8, #0x0                ; =0
 28476ac: d2800009     	mov	x9, #0x0                ; =0
 28476b0: d65f03c0     	ret

00000000028476b4 <__ZN5smash13private_utils3ssd13DetectorTorch4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffiNS1_8SideModeEf>:
 28476b4: d10403ff     	sub	sp, sp, #0x100
 28476b8: 6d082beb     	stp	d11, d10, [sp, #0x80]
 28476bc: 6d0923e9     	stp	d9, d8, [sp, #0x90]
 28476c0: a90a6ffc     	stp	x28, x27, [sp, #0xa0]
 28476c4: a90b67fa     	stp	x26, x25, [sp, #0xb0]
 28476c8: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
 28476cc: a90d57f6     	stp	x22, x21, [sp, #0xd0]
 28476d0: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
 28476d4: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
 28476d8: 9103c3fd     	add	x29, sp, #0xf0
 28476dc: 1e204048     	fmov	s8, s2
 28476e0: 1e204029     	fmov	s9, s1
 28476e4: 1e20400a     	fmov	s10, s0
 28476e8: aa0703f6     	mov	x22, x7
 28476ec: aa0603f7     	mov	x23, x6
 28476f0: aa0503f8     	mov	x24, x5
 28476f4: aa0403f9     	mov	x25, x4
 28476f8: aa0303f4     	mov	x20, x3
 28476fc: aa0203fa     	mov	x26, x2
 2847700: aa0103fb     	mov	x27, x1
 2847704: aa0003f3     	mov	x19, x0
 2847708: f0006321     	adrp	x1, 0x34ae000 <dyld_stub_binder+0x34ae000>
 284770c: f942f421     	ldr	x1, [x1, #0x5e8]
 2847710: 52800e00     	mov	w0, #0x70               ; =112
 2847714: 94057392     	bl	0x29a455c <dyld_stub_binder+0x29a455c>
 2847718: b4000680     	cbz	x0, 0x28477e8 <__ZN5smash13private_utils3ssd13DetectorTorch4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffiNS1_8SideModeEf+0x134>
 284771c: aa0003f5     	mov	x21, x0
 2847720: 940000f6     	bl	0x2847af8 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x274>
 2847724: 9101a3e0     	add	x0, sp, #0x68
 2847728: aa1b03e1     	mov	x1, x27
 284772c: 97e00ece     	bl	0x204b264 <__ZN4Bach16SceneRecogBuffer13fromMapBufferERKNS_10BachBufferE+0x7104>
 2847730: 910143e0     	add	x0, sp, #0x50
 2847734: aa1a03e1     	mov	x1, x26
 2847738: 97e00ecb     	bl	0x204b264 <__ZN4Bach16SceneRecogBuffer13fromMapBufferERKNS_10BachBufferE+0x7104>
 284773c: 9100e3e0     	add	x0, sp, #0x38
 2847740: aa1403e1     	mov	x1, x20
 2847744: 97e00ec8     	bl	0x204b264 <__ZN4Bach16SceneRecogBuffer13fromMapBufferERKNS_10BachBufferE+0x7104>
 2847748: 910083e0     	add	x0, sp, #0x20
 284774c: aa1903e1     	mov	x1, x25
 2847750: 97fcef94     	bl	0x27835a0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xa6820>
 2847754: 910023e0     	add	x0, sp, #0x8
 2847758: aa1803e1     	mov	x1, x24
 284775c: 97fcef91     	bl	0x27835a0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xa6820>
 2847760: b94013b8     	ldr	w24, [x29, #0x10]
 2847764: b90003f8     	str	w24, [sp]
 2847768: 9101a3e1     	add	x1, sp, #0x68
 284776c: 910143e2     	add	x2, sp, #0x50
 2847770: 9100e3e3     	add	x3, sp, #0x38
 2847774: 910083e4     	add	x4, sp, #0x20
 2847778: 910023e5     	add	x5, sp, #0x8
 284777c: aa1503e0     	mov	x0, x21
 2847780: aa1703e6     	mov	x6, x23
 2847784: aa1603e7     	mov	x7, x22
 2847788: 1e204140     	fmov	s0, s10
 284778c: 1e204121     	fmov	s1, s9
 2847790: 1e204102     	fmov	s2, s8
 2847794: 940008ed     	bl	0x2849b48 <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffif>
 2847798: aa0003f6     	mov	x22, x0
 284779c: 910023e0     	add	x0, sp, #0x8
 28477a0: 97fcea98     	bl	0x2782200 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xa5480>
 28477a4: 910083e0     	add	x0, sp, #0x20
 28477a8: 97fcea96     	bl	0x2782200 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xa5480>
 28477ac: 9100e3e0     	add	x0, sp, #0x38
 28477b0: 9400125b     	bl	0x284c11c <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x24c4>
 28477b4: 910143e0     	add	x0, sp, #0x50
 28477b8: 94001259     	bl	0x284c11c <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x24c4>
 28477bc: 9101a3e0     	add	x0, sp, #0x68
 28477c0: 94001257     	bl	0x284c11c <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x24c4>
 28477c4: 35000156     	cbnz	w22, 0x28477ec <__ZN5smash13private_utils3ssd13DetectorTorch4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffiNS1_8SideModeEf+0x138>
 28477c8: b94017a8     	ldr	w8, [x29, #0x14]
 28477cc: f9006e75     	str	x21, [x19, #0xd8]
 28477d0: 2901a278     	stp	w24, w8, [x19, #0xc]
 28477d4: a9400680     	ldp	x0, x1, [x20]
 28477d8: 97fffc46     	bl	0x28468f0 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x30c>
 28477dc: b9400008     	ldr	w8, [x0]
 28477e0: b9000a68     	str	w8, [x19, #0x8]
 28477e4: 14000002     	b	0x28477ec <__ZN5smash13private_utils3ssd13DetectorTorch4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffiNS1_8SideModeEf+0x138>
 28477e8: 12800cd6     	mov	w22, #-0x67             ; =-103
 28477ec: aa1603e0     	mov	x0, x22
 28477f0: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
 28477f4: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
 28477f8: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
 28477fc: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
 2847800: a94b67fa     	ldp	x26, x25, [sp, #0xb0]
 2847804: a94a6ffc     	ldp	x28, x27, [sp, #0xa0]
 2847808: 6d4923e9     	ldp	d9, d8, [sp, #0x90]
 284780c: 6d482beb     	ldp	d11, d10, [sp, #0x80]
 2847810: 910403ff     	add	sp, sp, #0x100
 2847814: d65f03c0     	ret
 2847818: aa0003f3     	mov	x19, x0
 284781c: 910023e0     	add	x0, sp, #0x8
 2847820: 97fcea78     	bl	0x2782200 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xa5480>
 2847824: 14000002     	b	0x284782c <__ZN5smash13private_utils3ssd13DetectorTorch4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffiNS1_8SideModeEf+0x178>
 2847828: aa0003f3     	mov	x19, x0
 284782c: 910083e0     	add	x0, sp, #0x20
 2847830: 97fcea74     	bl	0x2782200 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xa5480>
 2847834: 14000002     	b	0x284783c <__ZN5smash13private_utils3ssd13DetectorTorch4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffiNS1_8SideModeEf+0x188>
 2847838: aa0003f3     	mov	x19, x0
 284783c: 9100e3e0     	add	x0, sp, #0x38
 2847840: 94001237     	bl	0x284c11c <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x24c4>
 2847844: 14000002     	b	0x284784c <__ZN5smash13private_utils3ssd13DetectorTorch4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffiNS1_8SideModeEf+0x198>
 2847848: aa0003f3     	mov	x19, x0
 284784c: 910143e0     	add	x0, sp, #0x50
 2847850: 94001233     	bl	0x284c11c <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x24c4>
 2847854: 14000002     	b	0x284785c <__ZN5smash13private_utils3ssd13DetectorTorch4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffiNS1_8SideModeEf+0x1a8>
 2847858: aa0003f3     	mov	x19, x0
 284785c: 9101a3e0     	add	x0, sp, #0x68
 2847860: 9400122f     	bl	0x284c11c <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x24c4>
 2847864: aa1303e0     	mov	x0, x19
 2847868: 94056e42     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 284786c: aa0003f3     	mov	x19, x0
 2847870: f0006321     	adrp	x1, 0x34ae000 <dyld_stub_binder+0x34ae000>
 2847874: f942f421     	ldr	x1, [x1, #0x5e8]
 2847878: aa1503e0     	mov	x0, x21
 284787c: 9405732c     	bl	0x29a452c <dyld_stub_binder+0x29a452c>
 2847880: 17fffff9     	b	0x2847864 <__ZN5smash13private_utils3ssd13DetectorTorch4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffiNS1_8SideModeEf+0x1b0>

0000000002847884 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE>:
 2847884: d103c3ff     	sub	sp, sp, #0xf0
 2847888: a90a67fa     	stp	x26, x25, [sp, #0xa0]
 284788c: a90b5ff8     	stp	x24, x23, [sp, #0xb0]
 2847890: a90c57f6     	stp	x22, x21, [sp, #0xc0]
 2847894: a90d4ff4     	stp	x20, x19, [sp, #0xd0]
 2847898: a90e7bfd     	stp	x29, x30, [sp, #0xe0]
 284789c: 910383fd     	add	x29, sp, #0xe0
 28478a0: aa0203f3     	mov	x19, x2
 28478a4: aa0103f4     	mov	x20, x1
 28478a8: aa0003f5     	mov	x21, x0
 28478ac: a94a2009     	ldp	x9, x8, [x0, #0xa0]
 28478b0: cb090108     	sub	x8, x8, x9
 28478b4: 52800316     	mov	w22, #0x18              ; =24
 28478b8: a94be019     	ldp	x25, x24, [x0, #0xb8]
 28478bc: a93affbf     	stp	xzr, xzr, [x29, #-0x58]
 28478c0: f81b83bf     	stur	xzr, [x29, #-0x48]
 28478c4: a9077fff     	stp	xzr, xzr, [sp, #0x70]
 28478c8: f90043ff     	str	xzr, [sp, #0x80]
 28478cc: 9ad60d17     	sdiv	x23, x8, x22
 28478d0: 910163e0     	add	x0, sp, #0x58
 28478d4: aa1703e1     	mov	x1, x23
 28478d8: 97fffd6a     	bl	0x2846e80 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x89c>
 28478dc: cb190308     	sub	x8, x24, x25
 28478e0: 9ad60d16     	sdiv	x22, x8, x22
 28478e4: 910103e0     	add	x0, sp, #0x40
 28478e8: aa1603e1     	mov	x1, x22
 28478ec: 97fffd65     	bl	0x2846e80 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x89c>
 28478f0: d2800018     	mov	x24, #0x0               ; =0
 28478f4: aa1703f9     	mov	x25, x23
 28478f8: b4000199     	cbz	x25, 0x2847928 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0xa4>
 28478fc: f9406aa0     	ldr	x0, [x21, #0xd0]
 2847900: f94052a8     	ldr	x8, [x21, #0xa0]
 2847904: 8b180101     	add	x1, x8, x24
 2847908: 910083e8     	add	x8, sp, #0x20
 284790c: 97fff1a0     	bl	0x2843f8c <__ZN5smash13private_utils7predict9Predictor12GetRawOutputERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE>
 2847910: d10163a0     	sub	x0, x29, #0x58
 2847914: 910083e1     	add	x1, sp, #0x20
 2847918: 97fffbdb     	bl	0x2846884 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x2a0>
 284791c: d1000739     	sub	x25, x25, #0x1
 2847920: 91006318     	add	x24, x24, #0x18
 2847924: b5fffed9     	cbnz	x25, 0x28478fc <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x78>
 2847928: d2800008     	mov	x8, #0x0                ; =0
 284792c: d2800009     	mov	x9, #0x0                ; =0
 2847930: eb0902ff     	cmp	x23, x9
 2847934: 54000100     	b.eq	0x2847954 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0xd0>
 2847938: f85a83aa     	ldur	x10, [x29, #-0x58]
 284793c: 8b08014a     	add	x10, x10, x8
 2847940: f9402feb     	ldr	x11, [sp, #0x58]
 2847944: f829796a     	str	x10, [x11, x9, lsl #3]
 2847948: 91000529     	add	x9, x9, #0x1
 284794c: 91008108     	add	x8, x8, #0x20
 2847950: 17fffff8     	b	0x2847930 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0xac>
 2847954: d2800017     	mov	x23, #0x0               ; =0
 2847958: aa1603f8     	mov	x24, x22
 284795c: b4000198     	cbz	x24, 0x284798c <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x108>
 2847960: f9406aa0     	ldr	x0, [x21, #0xd0]
 2847964: f9405ea8     	ldr	x8, [x21, #0xb8]
 2847968: 8b170101     	add	x1, x8, x23
 284796c: 910083e8     	add	x8, sp, #0x20
 2847970: 97fff187     	bl	0x2843f8c <__ZN5smash13private_utils7predict9Predictor12GetRawOutputERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE>
 2847974: 9101c3e0     	add	x0, sp, #0x70
 2847978: 910083e1     	add	x1, sp, #0x20
 284797c: 97fffbc2     	bl	0x2846884 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x2a0>
 2847980: d1000718     	sub	x24, x24, #0x1
 2847984: 910062f7     	add	x23, x23, #0x18
 2847988: b5fffed8     	cbnz	x24, 0x2847960 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0xdc>
 284798c: d2800008     	mov	x8, #0x0                ; =0
 2847990: d2800009     	mov	x9, #0x0                ; =0
 2847994: eb0902df     	cmp	x22, x9
 2847998: 54000100     	b.eq	0x28479b8 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x134>
 284799c: f9403bea     	ldr	x10, [sp, #0x70]
 28479a0: 8b08014a     	add	x10, x10, x8
 28479a4: f94023eb     	ldr	x11, [sp, #0x40]
 28479a8: f829796a     	str	x10, [x11, x9, lsl #3]
 28479ac: 91000529     	add	x9, x9, #0x1
 28479b0: 91008108     	add	x8, x8, #0x20
 28479b4: 17fffff8     	b	0x2847994 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x110>
 28479b8: a9027fff     	stp	xzr, xzr, [sp, #0x20]
 28479bc: f9001bff     	str	xzr, [sp, #0x30]
 28479c0: f9406ea0     	ldr	x0, [x21, #0xd8]
 28479c4: 294492a3     	ldp	w3, w4, [x21, #0x24]
 28479c8: f9400008     	ldr	x8, [x0]
 28479cc: f9400909     	ldr	x9, [x8, #0x10]
 28479d0: 910023e8     	add	x8, sp, #0x8
 28479d4: 910163e1     	add	x1, sp, #0x58
 28479d8: 910103e2     	add	x2, sp, #0x40
 28479dc: d63f0120     	blr	x9
 28479e0: 910083e0     	add	x0, sp, #0x20
 28479e4: 910023e1     	add	x1, sp, #0x8
 28479e8: 97fffe7e     	bl	0x28473e0 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdfc>
 28479ec: 910023e0     	add	x0, sp, #0x8
 28479f0: 97fffe69     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 28479f4: 9400004b     	bl	0x2847b20 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x29c>
 28479f8: aa1403e0     	mov	x0, x20
 28479fc: 97fffbb2     	bl	0x28468c4 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x2e0>
 2847a00: 94000048     	bl	0x2847b20 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x29c>
 2847a04: aa1303e0     	mov	x0, x19
 2847a08: 97fe6458     	bl	0x27e0b68 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x103de8>
 2847a0c: fc4342a0     	ldur	d0, [x21, #0x34]
 2847a10: 0f03f601     	fmov.2s	v1, #1.00000000
 2847a14: 2e20fc20     	fdiv.2s	v0, v1, v0
 2847a18: 6e180400     	mov.d	v0[1], v0[0]
 2847a1c: a94223ea     	ldp	x10, x8, [sp, #0x20]
 2847a20: cb0a010b     	sub	x11, x8, x10
 2847a24: 5280028c     	mov	w12, #0x14              ; =20
 2847a28: f9400288     	ldr	x8, [x20]
 2847a2c: f9400269     	ldr	x9, [x19]
 2847a30: 9100414a     	add	x10, x10, #0x10
 2847a34: 9acc0d6b     	sdiv	x11, x11, x12
 2847a38: b400012b     	cbz	x11, 0x2847a5c <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x1d8>
 2847a3c: 3cdf0141     	ldur	q1, [x10, #-0x10]
 2847a40: 6e20dc21     	fmul.4s	v1, v1, v0
 2847a44: 4ea1b821     	fcvtzs.4s	v1, v1
 2847a48: 3c810501     	str	q1, [x8], #0x10
 2847a4c: bc414541     	ldr	s1, [x10], #0x14
 2847a50: bc004521     	str	s1, [x9], #0x4
 2847a54: d100056b     	sub	x11, x11, #0x1
 2847a58: b5ffff2b     	cbnz	x11, 0x2847a3c <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x1b8>
 2847a5c: 910083e0     	add	x0, sp, #0x20
 2847a60: 97fffe4d     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 2847a64: 910103e0     	add	x0, sp, #0x40
 2847a68: 97fffd64     	bl	0x2846ff8 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xa14>
 2847a6c: 910163e0     	add	x0, sp, #0x58
 2847a70: 97fffd62     	bl	0x2846ff8 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xa14>
 2847a74: 9101c3e0     	add	x0, sp, #0x70
 2847a78: 97fffcef     	bl	0x2846e34 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x850>
 2847a7c: d10163a0     	sub	x0, x29, #0x58
 2847a80: 97fffced     	bl	0x2846e34 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x850>
 2847a84: 52800000     	mov	w0, #0x0                ; =0
 2847a88: a94e7bfd     	ldp	x29, x30, [sp, #0xe0]
 2847a8c: a94d4ff4     	ldp	x20, x19, [sp, #0xd0]
 2847a90: a94c57f6     	ldp	x22, x21, [sp, #0xc0]
 2847a94: a94b5ff8     	ldp	x24, x23, [sp, #0xb0]
 2847a98: a94a67fa     	ldp	x26, x25, [sp, #0xa0]
 2847a9c: 9103c3ff     	add	sp, sp, #0xf0
 2847aa0: d65f03c0     	ret
 2847aa4: 14000005     	b	0x2847ab8 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x234>
 2847aa8: aa0003f3     	mov	x19, x0
 2847aac: 1400000b     	b	0x2847ad8 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x254>
 2847ab0: aa0003f3     	mov	x19, x0
 2847ab4: 1400000b     	b	0x2847ae0 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x25c>
 2847ab8: aa0003f3     	mov	x19, x0
 2847abc: 910083e0     	add	x0, sp, #0x20
 2847ac0: 97fffe35     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 2847ac4: 14000003     	b	0x2847ad0 <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x24c>
 2847ac8: 14000001     	b	0x2847acc <__ZN5smash13private_utils3ssd13DetectorTorch6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x248>
 2847acc: aa0003f3     	mov	x19, x0
 2847ad0: 910103e0     	add	x0, sp, #0x40
 2847ad4: 97fffd49     	bl	0x2846ff8 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xa14>
 2847ad8: 910163e0     	add	x0, sp, #0x58
 2847adc: 97fffd47     	bl	0x2846ff8 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xa14>
 2847ae0: 9101c3e0     	add	x0, sp, #0x70
 2847ae4: 97fffcd4     	bl	0x2846e34 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x850>
 2847ae8: d10163a0     	sub	x0, x29, #0x58
 2847aec: 97fffcd2     	bl	0x2846e34 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x850>
 2847af0: aa1303e0     	mov	x0, x19
 2847af4: 94056d9f     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 2847af8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 2847afc: 910003fd     	mov	x29, sp
 2847b00: 9400010f     	bl	0x2847f3c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayerC2Ev>
 2847b04: 90007048     	adrp	x8, 0x364f000 <__ZTIN5ceres8internal15SchurEliminatorILin1ELin1ELin1EEE+0x38b0>
 2847b08: 910c4108     	add	x8, x8, #0x310
 2847b0c: 91004108     	add	x8, x8, #0x10
 2847b10: f9000008     	str	x8, [x0]
 2847b14: b9006c1f     	str	wzr, [x0, #0x6c]
 2847b18: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 2847b1c: d65f03c0     	ret
 2847b20: a94223e9     	ldp	x9, x8, [sp, #0x20]
 2847b24: cb090108     	sub	x8, x8, x9
 2847b28: 52800289     	mov	w9, #0x14               ; =20
 2847b2c: 9ac90d01     	sdiv	x1, x8, x9
 2847b30: d65f03c0     	ret

0000000002847b34 <__ZN5smash13private_utils3ssd8ProposalC2Ev>:
 2847b34: d0006388     	adrp	x8, 0x34b9000 <dyld_stub_binder+0x34b9000>
 2847b38: f9419d08     	ldr	x8, [x8, #0x338]
 2847b3c: 140007d1     	b	0x2849a80 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1490>

0000000002847b40 <__ZN5smash13private_utils3ssd8ProposalC1Ev>:
 2847b40: d0006388     	adrp	x8, 0x34b9000 <dyld_stub_binder+0x34b9000>
 2847b44: f9419d08     	ldr	x8, [x8, #0x338]
 2847b48: 140007ce     	b	0x2849a80 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1490>

0000000002847b4c <__ZN5smash13private_utils3ssd8Proposal4InitERNSt3__16vectorIiNS3_9allocatorIiEEEERNS4_INS4_IfNS5_IfEEEENS5_ISA_EEEESD_f>:
 2847b4c: a9bc5ff8     	stp	x24, x23, [sp, #-0x40]!
 2847b50: a90157f6     	stp	x22, x21, [sp, #0x10]
 2847b54: a9024ff4     	stp	x20, x19, [sp, #0x20]
 2847b58: a9037bfd     	stp	x29, x30, [sp, #0x30]
 2847b5c: 9100c3fd     	add	x29, sp, #0x30
 2847b60: aa0303f3     	mov	x19, x3
 2847b64: aa0203f4     	mov	x20, x2
 2847b68: aa0103f5     	mov	x21, x1
 2847b6c: bd002c00     	str	s0, [x0, #0x2c]
 2847b70: a9402029     	ldp	x9, x8, [x1]
 2847b74: cb090108     	sub	x8, x8, x9
 2847b78: 91002016     	add	x22, x0, #0x8
 2847b7c: 93428501     	sbfx	x1, x8, #2, #32
 2847b80: aa1603e0     	mov	x0, x22
 2847b84: 94000018     	bl	0x2847be4 <__ZN5smash13private_utils3ssd8Proposal4InitERNSt3__16vectorIiNS3_9allocatorIiEEEERNS4_INS4_IfNS5_IfEEEENS5_ISA_EEEESD_f+0x98>
 2847b88: d2800017     	mov	x23, #0x0               ; =0
 2847b8c: d2800018     	mov	x24, #0x0               ; =0
 2847b90: a94026a8     	ldp	x8, x9, [x21]
 2847b94: cb080129     	sub	x9, x9, x8
 2847b98: eb890b1f     	cmp	x24, x9, asr #2
 2847b9c: 54000182     	b.hs	0x2847bcc <__ZN5smash13private_utils3ssd8Proposal4InitERNSt3__16vectorIiNS3_9allocatorIiEEEERNS4_INS4_IfNS5_IfEEEENS5_ISA_EEEESD_f+0x80>
 2847ba0: b8787900     	ldr	w0, [x8, x24, lsl #2]
 2847ba4: f9400288     	ldr	x8, [x20]
 2847ba8: 8b170101     	add	x1, x8, x23
 2847bac: f9400268     	ldr	x8, [x19]
 2847bb0: 8b170102     	add	x2, x8, x23
 2847bb4: f94002c8     	ldr	x8, [x22]
 2847bb8: 8b170103     	add	x3, x8, x23
 2847bbc: 97fff615     	bl	0x2845410 <__ZN5smash13private_utils3ssd6Anchor15GenerateAnchorsEiRKNSt3__16vectorIfNS3_9allocatorIfEEEES9_RNS4_INS1_3BoxENS5_ISA_EEEE>
 2847bc0: 91000718     	add	x24, x24, #0x1
 2847bc4: 910062f7     	add	x23, x23, #0x18
 2847bc8: 17fffff2     	b	0x2847b90 <__ZN5smash13private_utils3ssd8Proposal4InitERNSt3__16vectorIiNS3_9allocatorIiEEEERNS4_INS4_IfNS5_IfEEEENS5_ISA_EEEESD_f+0x44>
 2847bcc: 52800000     	mov	w0, #0x0                ; =0
 2847bd0: a9437bfd     	ldp	x29, x30, [sp, #0x30]
 2847bd4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
 2847bd8: a94157f6     	ldp	x22, x21, [sp, #0x10]
 2847bdc: a8c45ff8     	ldp	x24, x23, [sp], #0x40
 2847be0: d65f03c0     	ret
 2847be4: a9402408     	ldp	x8, x9, [x0]
 2847be8: cb080129     	sub	x9, x9, x8
 2847bec: 5280030a     	mov	w10, #0x18              ; =24
 2847bf0: 9aca0d29     	sdiv	x9, x9, x10
 2847bf4: eb01013f     	cmp	x9, x1
 2847bf8: 54000062     	b.hs	0x2847c04 <__ZN5smash13private_utils3ssd8Proposal4InitERNSt3__16vectorIiNS3_9allocatorIiEEEERNS4_INS4_IfNS5_IfEEEENS5_ISA_EEEESD_f+0xb8>
 2847bfc: cb090021     	sub	x1, x1, x9
 2847c00: 140003aa     	b	0x2848aa8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x4b8>
 2847c04: 54000089     	b.ls	0x2847c14 <__ZN5smash13private_utils3ssd8Proposal4InitERNSt3__16vectorIiNS3_9allocatorIiEEEERNS4_INS4_IfNS5_IfEEEENS5_ISA_EEEESD_f+0xc8>
 2847c08: 52800309     	mov	w9, #0x18               ; =24
 2847c0c: 9b092021     	madd	x1, x1, x9, x8
 2847c10: 140004d2     	b	0x2848f58 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x968>
 2847c14: d65f03c0     	ret

0000000002847c18 <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__16vectorINS1_15TargetCandidateENS3_9allocatorIS5_EEEERKNS4_INS1_3BoxENS6_ISA_EEEEfiifiiRSC_>:
 2847c18: d10443ff     	sub	sp, sp, #0x110
 2847c1c: 6d073bef     	stp	d15, d14, [sp, #0x70]
 2847c20: 6d0833ed     	stp	d13, d12, [sp, #0x80]
 2847c24: 6d092beb     	stp	d11, d10, [sp, #0x90]
 2847c28: 6d0a23e9     	stp	d9, d8, [sp, #0xa0]
 2847c2c: a90b6ffc     	stp	x28, x27, [sp, #0xb0]
 2847c30: a90c67fa     	stp	x26, x25, [sp, #0xc0]
 2847c34: a90d5ff8     	stp	x24, x23, [sp, #0xd0]
 2847c38: a90e57f6     	stp	x22, x21, [sp, #0xe0]
 2847c3c: a90f4ff4     	stp	x20, x19, [sp, #0xf0]
 2847c40: a9107bfd     	stp	x29, x30, [sp, #0x100]
 2847c44: 910403fd     	add	x29, sp, #0x100
 2847c48: aa0703f3     	mov	x19, x7
 2847c4c: 1e204008     	fmov	s8, s0
 2847c50: aa0203f4     	mov	x20, x2
 2847c54: aa0103f5     	mov	x21, x1
 2847c58: d2800016     	mov	x22, #0x0               ; =0
 2847c5c: d2800017     	mov	x23, #0x0               ; =0
 2847c60: 1e2700a0     	fmov	s0, w5
 2847c64: 1e220082     	scvtf	s2, w4
 2847c68: 4e0c1cc0     	mov.s	v0[1], w6
 2847c6c: 6f07e7e3     	movi.2d	v3, #0xffffffffffffffff
 2847c70: 0ea38400     	add.2s	v0, v0, v3
 2847c74: 1e220069     	scvtf	s9, w3
 2847c78: 1e260018     	fmov	w24, s0
 2847c7c: 3d8007e0     	str	q0, [sp, #0x10]
 2847c80: 0e0c3c19     	mov.s	w25, v0[1]
 2847c84: 0e040424     	dup.2s	v4, v1[0]
 2847c88: 0e040440     	dup.2s	v0, v2[0]
 2847c8c: 6d0013e0     	stp	d0, d4, [sp]
 2847c90: 5280029a     	mov	w26, #0x14              ; =20
 2847c94: 0f03f60c     	fmov.2s	v12, #1.00000000
 2847c98: 6f03f400     	fmov.2d	v0, #0.50000000
 2847c9c: 3d8013e0     	str	q0, [sp, #0x40]
 2847ca0: 0f07f60d     	fmov.2s	v13, #-1.00000000
 2847ca4: a94026a8     	ldp	x8, x9, [x21]
 2847ca8: cb080129     	sub	x9, x9, x8
 2847cac: d345fd29     	lsr	x9, x9, #5
 2847cb0: eb29c2ff     	cmp	x23, w9, sxtw
 2847cb4: 54000a4a     	b.ge	0x2847dfc <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__16vectorINS1_15TargetCandidateENS3_9allocatorIS5_EEEERKNS4_INS1_3BoxENS6_ISA_EEEEfiifiiRSC_+0x1e4>
 2847cb8: 8b160109     	add	x9, x8, x22
 2847cbc: bd40112f     	ldr	s15, [x9, #0x10]
 2847cc0: 1e2821e0     	fcmp	s15, s8
 2847cc4: 5400096b     	b.lt	0x2847df0 <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__16vectorINS1_15TargetCandidateENS3_9allocatorIS5_EEEERKNS4_INS1_3BoxENS6_ISA_EEEEfiifiiRSC_+0x1d8>
 2847cc8: b9801d29     	ldrsw	x9, [x9, #0x1c]
 2847ccc: a9402e8a     	ldp	x10, x11, [x20]
 2847cd0: cb0a016b     	sub	x11, x11, x10
 2847cd4: 9ada0d6b     	sdiv	x11, x11, x26
 2847cd8: eb09017f     	cmp	x11, x9
 2847cdc: 540008a9     	b.ls	0x2847df0 <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__16vectorINS1_15TargetCandidateENS3_9allocatorIS5_EEEERKNS4_INS1_3BoxENS6_ISA_EEEEfiifiiRSC_+0x1d8>
 2847ce0: 8b160108     	add	x8, x8, x22
 2847ce4: 9b1a2929     	madd	x9, x9, x26, x10
 2847ce8: 6d400520     	ldp	d0, d1, [x9]
 2847cec: 0ea0d42a     	fsub.2s	v10, v1, v0
 2847cf0: 0e2cd54b     	fadd.2s	v11, v10, v12
 2847cf4: fc414101     	ldur	d1, [x8, #0x14]
 2847cf8: 0e21d821     	scvtf.2s	v1, v1
 2847cfc: fd4007e2     	ldr	d2, [sp, #0x8]
 2847d00: 0e21d441     	fadd.2s	v1, v2, v1
 2847d04: fd4003e2     	ldr	d2, [sp]
 2847d08: 0e21cc40     	fmla.2s	v0, v2, v1
 2847d0c: 0e617800     	fcvtl	v0.2d, v0.2s
 2847d10: 0e617961     	fcvtl	v1.2d, v11.2s
 2847d14: 3dc013e2     	ldr	q2, [sp, #0x40]
 2847d18: 4e61cc40     	fmla.2d	v0, v2, v1
 2847d1c: 0e61680e     	fcvtn	v14.2s, v0.2d
 2847d20: 6d400500     	ldp	d0, d1, [x8]
 2847d24: 3d800be1     	str	q1, [sp, #0x20]
 2847d28: 0e20cd6e     	fmla.2s	v14, v11, v0
 2847d2c: 5e0c0420     	mov	s0, v1[1]
 2847d30: 94057373     	bl	0x29a4afc <dyld_stub_binder+0x29a4afc>
 2847d34: fd001be0     	str	d0, [sp, #0x30]
 2847d38: 3dc00be0     	ldr	q0, [sp, #0x20]
 2847d3c: 94057370     	bl	0x29a4afc <dyld_stub_binder+0x29a4afc>
 2847d40: ad418fe1     	ldp	q1, q3, [sp, #0x30]
 2847d44: 6e0c0420     	mov.s	v0[1], v1[0]
 2847d48: 1e6041a1     	fmov	d1, d13
 2847d4c: 0e20cd61     	fmla.2s	v1, v11, v0
 2847d50: 0e2acc00     	fmla.2s	v0, v0, v10
 2847d54: 0e6179c2     	fcvtl	v2.2d, v14.2s
 2847d58: 0e617800     	fcvtl	v0.2d, v0.2s
 2847d5c: 4ee0cc62     	fmls.2d	v2, v3, v0
 2847d60: 0e616840     	fcvtn	v0.2s, v2.2d
 2847d64: 0e20d421     	fadd.2s	v1, v1, v0
 2847d68: 1e380008     	fcvtzs	w8, s0
 2847d6c: 7100011f     	cmp	w8, #0x0
 2847d70: 1a9fc108     	csel	w8, w8, wzr, gt
 2847d74: 6b08031f     	cmp	w24, w8
 2847d78: 1a88b308     	csel	w8, w24, w8, lt
 2847d7c: 1e220102     	scvtf	s2, w8
 2847d80: 5e0c0400     	mov	s0, v0[1]
 2847d84: 1e380008     	fcvtzs	w8, s0
 2847d88: 7100011f     	cmp	w8, #0x0
 2847d8c: 1a9fc108     	csel	w8, w8, wzr, gt
 2847d90: 6b08033f     	cmp	w25, w8
 2847d94: 1a88b328     	csel	w8, w25, w8, lt
 2847d98: 1e220100     	scvtf	s0, w8
 2847d9c: 2d0b03e2     	stp	s2, s0, [sp, #0x58]
 2847da0: 0ea1b821     	fcvtzs.2s	v1, v1
 2847da4: 6f00e403     	movi.2d	v3, #0000000000000000
 2847da8: 0ea36421     	smax.2s	v1, v1, v3
 2847dac: 3dc007e3     	ldr	q3, [sp, #0x10]
 2847db0: 0ea16c61     	smin.2s	v1, v3, v1
 2847db4: 0e21d821     	scvtf.2s	v1, v1
 2847db8: fd0033e1     	str	d1, [sp, #0x60]
 2847dbc: bd006bef     	str	s15, [sp, #0x68]
 2847dc0: 1e2e1003     	fmov	s3, #1.00000000
 2847dc4: 1e223862     	fsub	s2, s3, s2
 2847dc8: 1e212842     	fadd	s2, s2, s1
 2847dcc: 1e292040     	fcmp	s2, s9
 2847dd0: 1e203860     	fsub	s0, s3, s0
 2847dd4: 5e0c0421     	mov	s1, v1[1]
 2847dd8: 1e212800     	fadd	s0, s0, s1
 2847ddc: 1e29a408     	fccmp	s0, s9, #0x8, ge
 2847de0: 5400008b     	b.lt	0x2847df0 <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__16vectorINS1_15TargetCandidateENS3_9allocatorIS5_EEEERKNS4_INS1_3BoxENS6_ISA_EEEEfiifiiRSC_+0x1d8>
 2847de4: 910163e1     	add	x1, sp, #0x58
 2847de8: aa1303e0     	mov	x0, x19
 2847dec: 97fff696     	bl	0x2845844 <__ZN5smash13private_utils3ssd12DetectHelper3NMSERNSt3__16vectorINS1_3BoxENS3_9allocatorIS5_EEEEiif+0x1e8>
 2847df0: 910006f7     	add	x23, x23, #0x1
 2847df4: 910082d6     	add	x22, x22, #0x20
 2847df8: 17ffffab     	b	0x2847ca4 <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__16vectorINS1_15TargetCandidateENS3_9allocatorIS5_EEEERKNS4_INS1_3BoxENS6_ISA_EEEEfiifiiRSC_+0x8c>
 2847dfc: a9507bfd     	ldp	x29, x30, [sp, #0x100]
 2847e00: a94f4ff4     	ldp	x20, x19, [sp, #0xf0]
 2847e04: a94e57f6     	ldp	x22, x21, [sp, #0xe0]
 2847e08: a94d5ff8     	ldp	x24, x23, [sp, #0xd0]
 2847e0c: a94c67fa     	ldp	x26, x25, [sp, #0xc0]
 2847e10: a94b6ffc     	ldp	x28, x27, [sp, #0xb0]
 2847e14: 6d4a23e9     	ldp	d9, d8, [sp, #0xa0]
 2847e18: 6d492beb     	ldp	d11, d10, [sp, #0x90]
 2847e1c: 6d4833ed     	ldp	d13, d12, [sp, #0x80]
 2847e20: 6d473bef     	ldp	d15, d14, [sp, #0x70]
 2847e24: 910443ff     	add	sp, sp, #0x110
 2847e28: d65f03c0     	ret

0000000002847e2c <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__16vectorINS1_15TargetCandidateENS3_9allocatorIS5_EEEEiiifiiRNS4_INS1_3BoxENS6_ISA_EEEE>:
 2847e2c: 1e204001     	fmov	s1, s0
 2847e30: f94000e8     	ldr	x8, [x7]
 2847e34: f90004e8     	str	x8, [x7, #0x8]
 2847e38: f9400408     	ldr	x8, [x0, #0x8]
 2847e3c: 52800309     	mov	w9, #0x18               ; =24
 2847e40: 9b292042     	smaddl	x2, w2, w9, x8
 2847e44: bd402c00     	ldr	s0, [x0, #0x2c]
 2847e48: 17ffff74     	b	0x2847c18 <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__16vectorINS1_15TargetCandidateENS3_9allocatorIS5_EEEERKNS4_INS1_3BoxENS6_ISA_EEEEfiifiiRSC_>

0000000002847e4c <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__14listINS3_6vectorINS1_15TargetCandidateENS3_9allocatorIS6_EEEENS7_IS9_EEEERNS5_IiNS7_IiEEEESF_fiiRNS5_INS1_3BoxENS7_ISG_EEEE>:
 2847e4c: d10243ff     	sub	sp, sp, #0x90
 2847e50: 6d0223e9     	stp	d9, d8, [sp, #0x20]
 2847e54: a9036ffc     	stp	x28, x27, [sp, #0x30]
 2847e58: a90467fa     	stp	x26, x25, [sp, #0x40]
 2847e5c: a9055ff8     	stp	x24, x23, [sp, #0x50]
 2847e60: a90657f6     	stp	x22, x21, [sp, #0x60]
 2847e64: a9074ff4     	stp	x20, x19, [sp, #0x70]
 2847e68: a9087bfd     	stp	x29, x30, [sp, #0x80]
 2847e6c: 910203fd     	add	x29, sp, #0x80
 2847e70: aa0603f3     	mov	x19, x6
 2847e74: aa0503f4     	mov	x20, x5
 2847e78: aa0403f5     	mov	x21, x4
 2847e7c: 1e204008     	fmov	s8, s0
 2847e80: aa0303f6     	mov	x22, x3
 2847e84: aa0203f7     	mov	x23, x2
 2847e88: aa0103f8     	mov	x24, x1
 2847e8c: aa0003f9     	mov	x25, x0
 2847e90: d280001a     	mov	x26, #0x0               ; =0
 2847e94: d280001b     	mov	x27, #0x0               ; =0
 2847e98: f94000c8     	ldr	x8, [x6]
 2847e9c: f90004c8     	str	x8, [x6, #0x8]
 2847ea0: aa0103fc     	mov	x28, x1
 2847ea4: f940079c     	ldr	x28, [x28, #0x8]
 2847ea8: eb18039f     	cmp	x28, x24
 2847eac: 540002c0     	b.eq	0x2847f04 <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__14listINS3_6vectorINS1_15TargetCandidateENS3_9allocatorIS6_EEEENS7_IS9_EEEERNS5_IiNS7_IiEEEESF_fiiRNS5_INS1_3BoxENS7_ISG_EEEE+0xb8>
 2847eb0: 91004381     	add	x1, x28, #0x10
 2847eb4: 910023e0     	add	x0, sp, #0x8
 2847eb8: 94000437     	bl	0x2848f94 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x9a4>
 2847ebc: f9400728     	ldr	x8, [x25, #0x8]
 2847ec0: 8b1b0102     	add	x2, x8, x27
 2847ec4: bd402f20     	ldr	s0, [x25, #0x2c]
 2847ec8: f94002e8     	ldr	x8, [x23]
 2847ecc: b87a6903     	ldr	w3, [x8, x26]
 2847ed0: f94002c8     	ldr	x8, [x22]
 2847ed4: b87a6904     	ldr	w4, [x8, x26]
 2847ed8: 910023e1     	add	x1, sp, #0x8
 2847edc: 1e204101     	fmov	s1, s8
 2847ee0: aa1503e5     	mov	x5, x21
 2847ee4: aa1403e6     	mov	x6, x20
 2847ee8: aa1303e7     	mov	x7, x19
 2847eec: 97ffff4b     	bl	0x2847c18 <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__16vectorINS1_15TargetCandidateENS3_9allocatorIS5_EEEERKNS4_INS1_3BoxENS6_ISA_EEEEfiifiiRSC_>
 2847ef0: 910023e0     	add	x0, sp, #0x8
 2847ef4: 97fc7c70     	bl	0x27670b4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a334>
 2847ef8: 9100637b     	add	x27, x27, #0x18
 2847efc: 9100135a     	add	x26, x26, #0x4
 2847f00: 17ffffe9     	b	0x2847ea4 <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__14listINS3_6vectorINS1_15TargetCandidateENS3_9allocatorIS6_EEEENS7_IS9_EEEERNS5_IiNS7_IiEEEESF_fiiRNS5_INS1_3BoxENS7_ISG_EEEE+0x58>
 2847f04: a9487bfd     	ldp	x29, x30, [sp, #0x80]
 2847f08: a9474ff4     	ldp	x20, x19, [sp, #0x70]
 2847f0c: a94657f6     	ldp	x22, x21, [sp, #0x60]
 2847f10: a9455ff8     	ldp	x24, x23, [sp, #0x50]
 2847f14: a94467fa     	ldp	x26, x25, [sp, #0x40]
 2847f18: a9436ffc     	ldp	x28, x27, [sp, #0x30]
 2847f1c: 6d4223e9     	ldp	d9, d8, [sp, #0x20]
 2847f20: 910243ff     	add	sp, sp, #0x90
 2847f24: d65f03c0     	ret
 2847f28: aa0003f3     	mov	x19, x0
 2847f2c: 910023e0     	add	x0, sp, #0x8
 2847f30: 97fc7c61     	bl	0x27670b4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a334>
 2847f34: aa1303e0     	mov	x0, x19
 2847f38: 94056c8e     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

0000000002847f3c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayerC2Ev>:
 2847f3c: 90007048     	adrp	x8, 0x364f000 <__ZTIN5ceres8internal15SchurEliminatorILin1ELin1ELin1EEE+0x38b0>
 2847f40: 910b6108     	add	x8, x8, #0x2d8
 2847f44: 140006c3     	b	0x2849a50 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1460>

0000000002847f48 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayerC1Ev>:
 2847f48: 90007048     	adrp	x8, 0x364f000 <__ZTIN5ceres8internal15SchurEliminatorILin1ELin1ELin1EEE+0x38b0>
 2847f4c: 910b6108     	add	x8, x8, #0x2d8
 2847f50: 140006c0     	b	0x2849a50 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1460>

0000000002847f54 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayerD2Ev>:
 2847f54: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2847f58: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2847f5c: 910043fd     	add	x29, sp, #0x10
 2847f60: aa0003f3     	mov	x19, x0
 2847f64: 90007048     	adrp	x8, 0x364f000 <__ZTIN5ceres8internal15SchurEliminatorILin1ELin1ELin1EEE+0x38b0>
 2847f68: 910b6108     	add	x8, x8, #0x2d8
 2847f6c: f9000008     	str	x8, [x0]
 2847f70: f9400400     	ldr	x0, [x0, #0x8]
 2847f74: b40000a0     	cbz	x0, 0x2847f88 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayerD2Ev+0x34>
 2847f78: f9400008     	ldr	x8, [x0]
 2847f7c: f9400508     	ldr	x8, [x8, #0x8]
 2847f80: d63f0100     	blr	x8
 2847f84: f900067f     	str	xzr, [x19, #0x8]
 2847f88: 91010260     	add	x0, x19, #0x40
 2847f8c: 94001064     	bl	0x284c11c <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x24c4>
 2847f90: 9100a260     	add	x0, x19, #0x28
 2847f94: 94001062     	bl	0x284c11c <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x24c4>
 2847f98: 91004260     	add	x0, x19, #0x10
 2847f9c: 94001060     	bl	0x284c11c <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x24c4>
 2847fa0: aa1303e0     	mov	x0, x19
 2847fa4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2847fa8: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2847fac: d65f03c0     	ret

0000000002847fb0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayerD1Ev>:
 2847fb0: 17ffffe9     	b	0x2847f54 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayerD2Ev>

0000000002847fb4 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayerD0Ev>:
 2847fb4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 2847fb8: 910003fd     	mov	x29, sp
 2847fbc: 97ffffe6     	bl	0x2847f54 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayerD2Ev>
 2847fc0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 2847fc4: 14057157     	b	0x29a4520 <dyld_stub_binder+0x29a4520>

0000000002847fc8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffi>:
 2847fc8: 6db923e9     	stp	d9, d8, [sp, #-0x70]!
 2847fcc: a9016ffc     	stp	x28, x27, [sp, #0x10]
 2847fd0: a90267fa     	stp	x26, x25, [sp, #0x20]
 2847fd4: a9035ff8     	stp	x24, x23, [sp, #0x30]
 2847fd8: a90457f6     	stp	x22, x21, [sp, #0x40]
 2847fdc: a9054ff4     	stp	x20, x19, [sp, #0x50]
 2847fe0: a9067bfd     	stp	x29, x30, [sp, #0x60]
 2847fe4: 910183fd     	add	x29, sp, #0x60
 2847fe8: 1e204028     	fmov	s8, s1
 2847fec: 1e204009     	fmov	s9, s0
 2847ff0: aa0703f3     	mov	x19, x7
 2847ff4: aa0603f5     	mov	x21, x6
 2847ff8: aa0503f9     	mov	x25, x5
 2847ffc: aa0403fa     	mov	x26, x4
 2848000: aa0303f6     	mov	x22, x3
 2848004: aa0203f7     	mov	x23, x2
 2848008: aa0103f8     	mov	x24, x1
 284800c: aa0003f4     	mov	x20, x0
 2848010: d0006321     	adrp	x1, 0x34ae000 <dyld_stub_binder+0x34ae000>
 2848014: f942f421     	ldr	x1, [x1, #0x5e8]
 2848018: 52800600     	mov	w0, #0x30               ; =48
 284801c: 94057150     	bl	0x29a455c <dyld_stub_binder+0x29a455c>
 2848020: b4000360     	cbz	x0, 0x284808c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffi+0xc4>
 2848024: b94013bb     	ldr	w27, [x29, #0x10]
 2848028: b0006388     	adrp	x8, 0x34b9000 <dyld_stub_binder+0x34b9000>
 284802c: f9419d08     	ldr	x8, [x8, #0x338]
 2848030: 91004108     	add	x8, x8, #0x10
 2848034: a9007c08     	stp	x8, xzr, [x0]
 2848038: a9017c1f     	stp	xzr, xzr, [x0, #0x10]
 284803c: f9000680     	str	x0, [x20, #0x8]
 2848040: aa1803e1     	mov	x1, x24
 2848044: aa1a03e2     	mov	x2, x26
 2848048: aa1903e3     	mov	x3, x25
 284804c: 1e204100     	fmov	s0, s8
 2848050: 97fffebf     	bl	0x2847b4c <__ZN5smash13private_utils3ssd8Proposal4InitERNSt3__16vectorIiNS3_9allocatorIiEEEERNS4_INS4_IfNS5_IfEEEENS5_ISA_EEEESD_f>
 2848054: 91004280     	add	x0, x20, #0x10
 2848058: aa1803e1     	mov	x1, x24
 284805c: 94000016     	bl	0x28480b4 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffi+0xec>
 2848060: 9100a280     	add	x0, x20, #0x28
 2848064: aa1703e1     	mov	x1, x23
 2848068: 94000013     	bl	0x28480b4 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffi+0xec>
 284806c: 91010280     	add	x0, x20, #0x40
 2848070: aa1603e1     	mov	x1, x22
 2848074: 94000010     	bl	0x28480b4 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffi+0xec>
 2848078: 52800000     	mov	w0, #0x0                ; =0
 284807c: 290b4e95     	stp	w21, w19, [x20, #0x58]
 2848080: 2d0c2289     	stp	s9, s8, [x20, #0x60]
 2848084: b9006a9b     	str	w27, [x20, #0x68]
 2848088: 14000003     	b	0x2848094 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffi+0xcc>
 284808c: f900069f     	str	xzr, [x20, #0x8]
 2848090: 12800cc0     	mov	w0, #-0x67              ; =-103
 2848094: a9467bfd     	ldp	x29, x30, [sp, #0x60]
 2848098: a9454ff4     	ldp	x20, x19, [sp, #0x50]
 284809c: a94457f6     	ldp	x22, x21, [sp, #0x40]
 28480a0: a9435ff8     	ldp	x24, x23, [sp, #0x30]
 28480a4: a94267fa     	ldp	x26, x25, [sp, #0x20]
 28480a8: a9416ffc     	ldp	x28, x27, [sp, #0x10]
 28480ac: 6cc723e9     	ldp	d9, d8, [sp], #0x70
 28480b0: d65f03c0     	ret
 28480b4: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 28480b8: a9017bfd     	stp	x29, x30, [sp, #0x10]
 28480bc: 910043fd     	add	x29, sp, #0x10
 28480c0: aa0003f3     	mov	x19, x0
 28480c4: eb01001f     	cmp	x0, x1
 28480c8: 540000a0     	b.eq	0x28480dc <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer4InitENSt3__16vectorIiNS3_9allocatorIiEEEES7_S7_NS4_INS4_IfNS5_IfEEEENS5_IS9_EEEESB_iiffi+0x114>
 28480cc: a9400828     	ldp	x8, x2, [x1]
 28480d0: aa1303e0     	mov	x0, x19
 28480d4: aa0803e1     	mov	x1, x8
 28480d8: 94002099     	bl	0x285033c <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x66e4>
 28480dc: aa1303e0     	mov	x0, x19
 28480e0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 28480e4: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 28480e8: d65f03c0     	ret

00000000028480ec <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii>:
 28480ec: d10603ff     	sub	sp, sp, #0x180
 28480f0: 6d0f33ed     	stp	d13, d12, [sp, #0xf0]
 28480f4: 6d102beb     	stp	d11, d10, [sp, #0x100]
 28480f8: 6d1123e9     	stp	d9, d8, [sp, #0x110]
 28480fc: a9126ffc     	stp	x28, x27, [sp, #0x120]
 2848100: a91367fa     	stp	x26, x25, [sp, #0x130]
 2848104: a9145ff8     	stp	x24, x23, [sp, #0x140]
 2848108: a91557f6     	stp	x22, x21, [sp, #0x150]
 284810c: a9164ff4     	stp	x20, x19, [sp, #0x160]
 2848110: a9177bfd     	stp	x29, x30, [sp, #0x170]
 2848114: 9105c3fd     	add	x29, sp, #0x170
 2848118: aa0403f3     	mov	x19, x4
 284811c: aa0303f5     	mov	x21, x3
 2848120: a9018be1     	stp	x1, x2, [sp, #0x18]
 2848124: aa0003f4     	mov	x20, x0
 2848128: aa0803f7     	mov	x23, x8
 284812c: d2800016     	mov	x22, #0x0               ; =0
 2848130: a9402029     	ldp	x9, x8, [x1]
 2848134: cb090108     	sub	x8, x8, x9
 2848138: aa1703f8     	mov	x24, x23
 284813c: f8008f1f     	str	xzr, [x24, #0x8]!
 2848140: f9000aff     	str	xzr, [x23, #0x10]
 2848144: f90002f8     	str	x24, [x23]
 2848148: d343fd08     	lsr	x8, x8, #3
 284814c: 9102c3e9     	add	x9, sp, #0xb0
 2848150: 91002139     	add	x25, x9, #0x8
 2848154: 7100011f     	cmp	w8, #0x0
 2848158: 1a9fc108     	csel	w8, w8, wzr, gt
 284815c: a902a3f7     	stp	x23, x8, [sp, #0x28]
 2848160: f9000bf8     	str	x24, [sp, #0x10]
 2848164: 290113e3     	stp	w3, w4, [sp, #0x8]
 2848168: f90003f9     	str	x25, [sp]
 284816c: f9401be8     	ldr	x8, [sp, #0x30]
 2848170: eb0802df     	cmp	x22, x8
 2848174: 54001900     	b.eq	0x2848494 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x3a8>
 2848178: f9400fe8     	ldr	x8, [sp, #0x18]
 284817c: f9400108     	ldr	x8, [x8]
 2848180: f8767913     	ldr	x19, [x8, x22, lsl #3]
 2848184: 29426268     	ldp	w8, w24, [x19, #0x10]
 2848188: b90057e8     	str	w8, [sp, #0x54]
 284818c: f94013e8     	ldr	x8, [sp, #0x20]
 2848190: f9400108     	ldr	x8, [x8]
 2848194: f90023f6     	str	x22, [sp, #0x40]
 2848198: f8767916     	ldr	x22, [x8, x22, lsl #3]
 284819c: 29426edc     	ldp	w28, w27, [x22, #0x10]
 28481a0: 29415ed5     	ldp	w21, w23, [x22, #0x8]
 28481a4: b9401e68     	ldr	w8, [x19, #0x1c]
 28481a8: 94000627     	bl	0x2849a44 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1454>
 28481ac: 1e604008     	fmov	d8, d0
 28481b0: b9401ec8     	ldr	w8, [x22, #0x1c]
 28481b4: 94000624     	bl	0x2849a44 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1454>
 28481b8: 1e604009     	fmov	d9, d0
 28481bc: f9400268     	ldr	x8, [x19]
 28481c0: f90047e8     	str	x8, [sp, #0x88]
 28481c4: f94002d6     	ldr	x22, [x22]
 28481c8: 52800088     	mov	w8, #0x4                ; =4
 28481cc: b90053f8     	str	w24, [sp, #0x50]
 28481d0: 1ac80f13     	sdiv	w19, w24, w8
 28481d4: 1ad30f79     	sdiv	w25, w27, w19
 28481d8: 93407f21     	sxtw	x1, w25
 28481dc: d10283a0     	sub	x0, x29, #0xa0
 28481e0: 940003bc     	bl	0x28490d0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xae0>
 28481e4: 5280000a     	mov	w10, #0x0               ; =0
 28481e8: 52800018     	mov	w24, #0x0               ; =0
 28481ec: 5280001a     	mov	w26, #0x0               ; =0
 28481f0: b9004bfb     	str	w27, [sp, #0x48]
 28481f4: 1b1c7f68     	mul	w8, w27, w28
 28481f8: 1b157d08     	mul	w8, w8, w21
 28481fc: 1b177d08     	mul	w8, w8, w23
 2848200: b9005be8     	str	w8, [sp, #0x58]
 2848204: 1e624108     	fcvt	s8, d8
 2848208: 1e624129     	fcvt	s9, d9
 284820c: 93407e69     	sxtw	x9, w19
 2848210: 937f7e68     	sbfiz	x8, x19, #1, #32
 2848214: a906a7e8     	stp	x8, x9, [sp, #0x68]
 2848218: 8b33c108     	add	x8, x8, w19, sxtw
 284821c: f90033e8     	str	x8, [sp, #0x60]
 2848220: 7100033f     	cmp	w25, #0x0
 2848224: f9001ff9     	str	x25, [sp, #0x38]
 2848228: 1a9fc328     	csel	w8, w25, wzr, gt
 284822c: 7100027f     	cmp	w19, #0x0
 2848230: 1a9fc269     	csel	w9, w19, wzr, gt
 2848234: f90043e9     	str	x9, [sp, #0x80]
 2848238: 52800309     	mov	w9, #0x18               ; =24
 284823c: 9ba97d1b     	umull	x27, w8, w9
 2848240: b9004ffc     	str	w28, [sp, #0x4c]
 2848244: b9405be8     	ldr	w8, [sp, #0x58]
 2848248: 6b08015f     	cmp	w10, w8
 284824c: 54000aea     	b.ge	0x28483a8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x2bc>
 2848250: aa0a03fc     	mov	x28, x10
 2848254: d2800019     	mov	x25, #0x0               ; =0
 2848258: 294a23e9     	ldp	w9, w8, [sp, #0x50]
 284825c: 1b086348     	madd	w8, w26, w8, w24
 2848260: 1b097d08     	mul	w8, w8, w9
 2848264: b9007fe8     	str	w8, [sp, #0x7c]
 2848268: b9005fea     	str	w10, [sp, #0x5c]
 284826c: f94043e8     	ldr	x8, [sp, #0x80]
 2848270: eb08033f     	cmp	x25, x8
 2848274: 54000880     	b.eq	0x2848384 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x298>
 2848278: b9407fe8     	ldr	w8, [sp, #0x7c]
 284827c: 0b19010a     	add	w10, w8, w25
 2848280: b9406a88     	ldr	w8, [x20, #0x68]
 2848284: 93407d49     	sxtw	x9, w10
 2848288: f9403beb     	ldr	x11, [sp, #0x70]
 284828c: 8b2ac16a     	add	x10, x11, w10, sxtw
 2848290: 7100211f     	cmp	w8, #0x8
 2848294: 540000c1     	b.ne	0x28482ac <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1c0>
 2848298: f94047ec     	ldr	x12, [sp, #0x88]
 284829c: 38e9698b     	ldrsb	w11, [x12, x9]
 28482a0: 1e220160     	scvtf	s0, w11
 28482a4: 38ea698a     	ldrsb	w10, [x12, x10]
 28482a8: 14000005     	b	0x28482bc <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1d0>
 28482ac: f94047ec     	ldr	x12, [sp, #0x88]
 28482b0: 78e9798b     	ldrsh	w11, [x12, x9, lsl #1]
 28482b4: 1e220160     	scvtf	s0, w11
 28482b8: 78ea798a     	ldrsh	w10, [x12, x10, lsl #1]
 28482bc: 1e220141     	scvtf	s1, w10
 28482c0: a9462beb     	ldp	x11, x10, [sp, #0x60]
 28482c4: 8b0a012a     	add	x10, x9, x10
 28482c8: 8b0b0129     	add	x9, x9, x11
 28482cc: 7100211f     	cmp	w8, #0x8
 28482d0: 540000c1     	b.ne	0x28482e8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1fc>
 28482d4: f94047eb     	ldr	x11, [sp, #0x88]
 28482d8: 38ea6968     	ldrsb	w8, [x11, x10]
 28482dc: 1e220103     	scvtf	s3, w8
 28482e0: 38e96968     	ldrsb	w8, [x11, x9]
 28482e4: 14000005     	b	0x28482f8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x20c>
 28482e8: f94047eb     	ldr	x11, [sp, #0x88]
 28482ec: 78ea7968     	ldrsh	w8, [x11, x10, lsl #1]
 28482f0: 1e220103     	scvtf	s3, w8
 28482f4: 78e97968     	ldrsh	w8, [x11, x9, lsl #1]
 28482f8: 1e220102     	scvtf	s2, w8
 28482fc: d2800017     	mov	x23, #0x0               ; =0
 2848300: 1e28080a     	fmul	s10, s0, s8
 2848304: 1e28082b     	fmul	s11, s1, s8
 2848308: 1e28086c     	fmul	s12, s3, s8
 284830c: aa1c03f5     	mov	x21, x28
 2848310: 1e28084d     	fmul	s13, s2, s8
 2848314: eb17037f     	cmp	x27, x23
 2848318: 54000300     	b.eq	0x2848378 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x28c>
 284831c: b9406a89     	ldr	w9, [x20, #0x68]
 2848320: 93407ea8     	sxtw	x8, w21
 2848324: 7100213f     	cmp	w9, #0x8
 2848328: 54000061     	b.ne	0x2848334 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x248>
 284832c: 38e86ac8     	ldrsb	w8, [x22, x8]
 2848330: 14000002     	b	0x2848338 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x24c>
 2848334: 78e87ac8     	ldrsh	w8, [x22, x8, lsl #1]
 2848338: 940005cc     	bl	0x2849a68 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1478>
 284833c: bd406681     	ldr	s1, [x20, #0x64]
 2848340: 1e212000     	fcmp	s0, s1
 2848344: 5400014b     	b.lt	0x284836c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x280>
 2848348: 2918ebf8     	stp	w24, w26, [sp, #0xc4]
 284834c: b900cff9     	str	w25, [sp, #0xcc]
 2848350: 2d162fea     	stp	s10, s11, [sp, #0xb0]
 2848354: 2d1737ec     	stp	s12, s13, [sp, #0xb8]
 2848358: bd00c3e0     	str	s0, [sp, #0xc0]
 284835c: f85603a8     	ldur	x8, [x29, #-0xa0]
 2848360: 8b170100     	add	x0, x8, x23
 2848364: 9102c3e1     	add	x1, sp, #0xb0
 2848368: 97fc7ae4     	bl	0x2766ef8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a178>
 284836c: 0b1302b5     	add	w21, w21, w19
 2848370: 910062f7     	add	x23, x23, #0x18
 2848374: 17ffffe8     	b	0x2848314 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x228>
 2848378: 91000739     	add	x25, x25, #0x1
 284837c: 1100079c     	add	w28, w28, #0x1
 2848380: 17ffffbb     	b	0x284826c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x180>
 2848384: 11000708     	add	w8, w24, #0x1
 2848388: b9404ffc     	ldr	w28, [sp, #0x4c]
 284838c: 6b1c011f     	cmp	w8, w28
 2848390: 1a9807f8     	csinc	w24, wzr, w24, eq
 2848394: 1a9a175a     	cinc	w26, w26, eq
 2848398: b9404be8     	ldr	w8, [sp, #0x48]
 284839c: b9405fea     	ldr	w10, [sp, #0x5c]
 28483a0: 0b08014a     	add	w10, w10, w8
 28483a4: 17ffffa8     	b	0x2848244 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x158>
 28483a8: 52800008     	mov	w8, #0x0                ; =0
 28483ac: f94017f7     	ldr	x23, [sp, #0x28]
 28483b0: f9400bf8     	ldr	x24, [sp, #0x10]
 28483b4: 29414ff5     	ldp	w21, w19, [sp, #0x8]
 28483b8: a943dbfb     	ldp	x27, x22, [sp, #0x38]
 28483bc: f94003f9     	ldr	x25, [sp]
 28483c0: 5280031a     	mov	w26, #0x18              ; =24
 28483c4: b900afe8     	str	w8, [sp, #0xac]
 28483c8: 6b1b011f     	cmp	w8, w27
 28483cc: 540005ca     	b.ge	0x2848484 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x398>
 28483d0: f85603a9     	ldur	x9, [x29, #-0xa0]
 28483d4: 9b3a2501     	smaddl	x1, w8, w26, x9
 28483d8: a940242a     	ldp	x10, x9, [x1]
 28483dc: eb0a013f     	cmp	x9, x10
 28483e0: 540004e0     	b.eq	0x284847c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x390>
 28483e4: a909ffff     	stp	xzr, xzr, [sp, #0x98]
 28483e8: f9004bff     	str	xzr, [sp, #0x90]
 28483ec: f9401688     	ldr	x8, [x20, #0x28]
 28483f0: b8767903     	ldr	w3, [x8, x22, lsl #2]
 28483f4: f9402288     	ldr	x8, [x20, #0x40]
 28483f8: b8767904     	ldr	w4, [x8, x22, lsl #2]
 28483fc: f9400680     	ldr	x0, [x20, #0x8]
 2848400: 2f00e400     	movi	d0, #0000000000000000
 2848404: 910243e7     	add	x7, sp, #0x90
 2848408: aa1603e2     	mov	x2, x22
 284840c: aa1503e5     	mov	x5, x21
 2848410: aa1303e6     	mov	x6, x19
 2848414: 97fffe86     	bl	0x2847e2c <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__16vectorINS1_15TargetCandidateENS3_9allocatorIS5_EEEEiiifiiRNS4_INS1_3BoxENS6_ISA_EEEE>
 2848418: 9102b3e1     	add	x1, sp, #0xac
 284841c: aa1703e0     	mov	x0, x23
 2848420: 940003bd     	bl	0x2849314 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xd24>
 2848424: eb00031f     	cmp	x24, x0
 2848428: 54000100     	b.eq	0x2848448 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x35c>
 284842c: 9102b3e1     	add	x1, sp, #0xac
 2848430: aa1703e0     	mov	x0, x23
 2848434: 9400005e     	bl	0x28485ac <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x4c0>
 2848438: f9400401     	ldr	x1, [x0, #0x8]
 284843c: a9490fe2     	ldp	x2, x3, [sp, #0x90]
 2848440: 94000068     	bl	0x28485e0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x4f4>
 2848444: 1400000b     	b	0x2848470 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x384>
 2848448: b940afe8     	ldr	w8, [sp, #0xac]
 284844c: b900b3e8     	str	w8, [sp, #0xb0]
 2848450: 910243e1     	add	x1, sp, #0x90
 2848454: aa1903e0     	mov	x0, x25
 2848458: 94000152     	bl	0x28489a0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x3b0>
 284845c: 9102c3e1     	add	x1, sp, #0xb0
 2848460: aa1703e0     	mov	x0, x23
 2848464: 9400004c     	bl	0x2848594 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x4a8>
 2848468: aa1903e0     	mov	x0, x25
 284846c: 97fffbca     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 2848470: 910243e0     	add	x0, sp, #0x90
 2848474: 97fffbc8     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 2848478: b940afe8     	ldr	w8, [sp, #0xac]
 284847c: 11000508     	add	w8, w8, #0x1
 2848480: 17ffffd1     	b	0x28483c4 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x2d8>
 2848484: d10283a0     	sub	x0, x29, #0xa0
 2848488: 94000396     	bl	0x28492e0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xcf0>
 284848c: 910006d6     	add	x22, x22, #0x1
 2848490: 17ffff37     	b	0x284816c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x80>
 2848494: f94002f5     	ldr	x21, [x23]
 2848498: 52800293     	mov	w19, #0x14              ; =20
 284849c: eb1802bf     	cmp	x21, x24
 28484a0: 54000300     	b.eq	0x2848500 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x414>
 28484a4: aa1503f6     	mov	x22, x21
 28484a8: a9c28ac0     	ldp	x0, x2, [x22, #0x28]!
 28484ac: cb000048     	sub	x8, x2, x0
 28484b0: 9ad30d09     	sdiv	x9, x8, x19
 28484b4: b9805a88     	ldrsw	x8, [x20, #0x58]
 28484b8: eb08013f     	cmp	x9, x8
 28484bc: 54000082     	b.hs	0x28484cc <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x3e0>
 28484c0: aa0203e1     	mov	x1, x2
 28484c4: 97fc7bb4     	bl	0x2767394 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a614>
 28484c8: 14000006     	b	0x28484e0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x3f4>
 28484cc: 9b130101     	madd	x1, x8, x19, x0
 28484d0: 97fc7fa2     	bl	0x2768358 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8b5d8>
 28484d4: b9805a81     	ldrsw	x1, [x20, #0x58]
 28484d8: aa1603e0     	mov	x0, x22
 28484dc: 97fc7a8f     	bl	0x2766f18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a198>
 28484e0: 294b0a81     	ldp	w1, w2, [x20, #0x58]
 28484e4: bd406280     	ldr	s0, [x20, #0x60]
 28484e8: aa1603e0     	mov	x0, x22
 28484ec: 97fff45c     	bl	0x284565c <__ZN5smash13private_utils3ssd12DetectHelper3NMSERNSt3__16vectorINS1_3BoxENS3_9allocatorIS5_EEEEiif>
 28484f0: aa1503e0     	mov	x0, x21
 28484f4: 97fed3c5     	bl	0x27fd408 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x120688>
 28484f8: aa0003f5     	mov	x21, x0
 28484fc: 17ffffe8     	b	0x284849c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x3b0>
 2848500: a9577bfd     	ldp	x29, x30, [sp, #0x170]
 2848504: a9564ff4     	ldp	x20, x19, [sp, #0x160]
 2848508: a95557f6     	ldp	x22, x21, [sp, #0x150]
 284850c: a9545ff8     	ldp	x24, x23, [sp, #0x140]
 2848510: a95367fa     	ldp	x26, x25, [sp, #0x130]
 2848514: a9526ffc     	ldp	x28, x27, [sp, #0x120]
 2848518: 6d5123e9     	ldp	d9, d8, [sp, #0x110]
 284851c: 6d502beb     	ldp	d11, d10, [sp, #0x100]
 2848520: 6d4f33ed     	ldp	d13, d12, [sp, #0xf0]
 2848524: 910603ff     	add	sp, sp, #0x180
 2848528: d65f03c0     	ret
 284852c: 14000004     	b	0x284853c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x450>
 2848530: aa0003f4     	mov	x20, x0
 2848534: f94017f7     	ldr	x23, [sp, #0x28]
 2848538: 14000013     	b	0x2848584 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x498>
 284853c: aa0003f4     	mov	x20, x0
 2848540: 14000011     	b	0x2848584 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x498>
 2848544: aa0003f4     	mov	x20, x0
 2848548: aa1903e0     	mov	x0, x25
 284854c: 97fffb92     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 2848550: 14000006     	b	0x2848568 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x47c>
 2848554: 14000004     	b	0x2848564 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x478>
 2848558: 14000003     	b	0x2848564 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x478>
 284855c: 14000002     	b	0x2848564 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x478>
 2848560: 14000001     	b	0x2848564 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x478>
 2848564: aa0003f4     	mov	x20, x0
 2848568: 910243e0     	add	x0, sp, #0x90
 284856c: 97fffb8a     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 2848570: 14000003     	b	0x284857c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer22GetProposalsMultiLabelERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x490>
 2848574: aa0003f4     	mov	x20, x0
 2848578: f94017f7     	ldr	x23, [sp, #0x28]
 284857c: d10283a0     	sub	x0, x29, #0xa0
 2848580: 94000358     	bl	0x28492e0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xcf0>
 2848584: aa1703e0     	mov	x0, x23
 2848588: 97fffafa     	bl	0x2847170 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xb8c>
 284858c: aa1403e0     	mov	x0, x20
 2848590: 94056af8     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 2848594: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 2848598: 910003fd     	mov	x29, sp
 284859c: 9400037b     	bl	0x2849388 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xd98>
 28485a0: 92401c21     	and	x1, x1, #0xff
 28485a4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 28485a8: d65f03c0     	ret
 28485ac: d10083ff     	sub	sp, sp, #0x20
 28485b0: a9017bfd     	stp	x29, x30, [sp, #0x10]
 28485b4: 910043fd     	add	x29, sp, #0x10
 28485b8: f90007e1     	str	x1, [sp, #0x8]
 28485bc: f0004a22     	adrp	x2, 0x318f000 <__ZTSN5ceres8internal15SchurEliminatorILin1ELin1ELin1EEE+0xa8ba>
 28485c0: 910e2842     	add	x2, x2, #0x38a
 28485c4: 910023e3     	add	x3, sp, #0x8
 28485c8: 910003e4     	mov	x4, sp
 28485cc: 940003fc     	bl	0x28495bc <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xfcc>
 28485d0: 9100a000     	add	x0, x0, #0x28
 28485d4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 28485d8: 910083ff     	add	sp, sp, #0x20
 28485dc: d65f03c0     	ret
 28485e0: cb020068     	sub	x8, x3, x2
 28485e4: 52800289     	mov	w9, #0x14               ; =20
 28485e8: 9ac90d04     	sdiv	x4, x8, x9
 28485ec: 14000420     	b	0x284966c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x107c>
