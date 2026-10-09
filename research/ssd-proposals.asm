
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

00000000028485f0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii>:
 28485f0: d10583ff     	sub	sp, sp, #0x160
 28485f4: 6d0e2beb     	stp	d11, d10, [sp, #0xe0]
 28485f8: 6d0f23e9     	stp	d9, d8, [sp, #0xf0]
 28485fc: a9106ffc     	stp	x28, x27, [sp, #0x100]
 2848600: a91167fa     	stp	x26, x25, [sp, #0x110]
 2848604: a9125ff8     	stp	x24, x23, [sp, #0x120]
 2848608: a91357f6     	stp	x22, x21, [sp, #0x130]
 284860c: a9144ff4     	stp	x20, x19, [sp, #0x140]
 2848610: a9157bfd     	stp	x29, x30, [sp, #0x150]
 2848614: 910543fd     	add	x29, sp, #0x150
 2848618: 290113e3     	stp	w3, w4, [sp, #0x8]
 284861c: a90187e2     	stp	x2, x1, [sp, #0x18]
 2848620: aa0003f4     	mov	x20, x0
 2848624: aa0803f3     	mov	x19, x8
 2848628: a9402029     	ldp	x9, x8, [x1]
 284862c: cb090108     	sub	x8, x8, x9
 2848630: 9343fd01     	asr	x1, x8, #3
 2848634: d10243a0     	sub	x0, x29, #0x90
 2848638: 97fc7a45     	bl	0x2766f4c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a1cc>
 284863c: d280000a     	mov	x10, #0x0               ; =0
 2848640: f85783b5     	ldur	x21, [x29, #-0x88]
 2848644: f9000bf3     	str	x19, [sp, #0x10]
 2848648: f94013e8     	ldr	x8, [sp, #0x20]
 284864c: a9402508     	ldp	x8, x9, [x8]
 2848650: cb080129     	sub	x9, x9, x8
 2848654: eb890d5f     	cmp	x10, x9, asr #3
 2848658: 54001302     	b.hs	0x28488b8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x2c8>
 284865c: f86a7913     	ldr	x19, [x8, x10, lsl #3]
 2848660: 29426268     	ldp	w8, w24, [x19, #0x10]
 2848664: b90067e8     	str	w8, [sp, #0x64]
 2848668: f9400fe8     	ldr	x8, [sp, #0x18]
 284866c: f9400108     	ldr	x8, [x8]
 2848670: f9001bea     	str	x10, [sp, #0x30]
 2848674: f86a7916     	ldr	x22, [x8, x10, lsl #3]
 2848678: 294266ca     	ldp	w10, w25, [x22, #0x10]
 284867c: 294126c8     	ldp	w8, w9, [x22, #0x8]
 2848680: b90053ea     	str	w10, [sp, #0x50]
 2848684: 1b0a7f2a     	mul	w10, w25, w10
 2848688: 1b087d48     	mul	w8, w10, w8
 284868c: 1b097d17     	mul	w23, w8, w9
 2848690: b9401e68     	ldr	w8, [x19, #0x1c]
 2848694: 940004ec     	bl	0x2849a44 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1454>
 2848698: 1e624009     	fcvt	s9, d0
 284869c: b9401ec8     	ldr	w8, [x22, #0x1c]
 28486a0: 940004e9     	bl	0x2849a44 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1454>
 28486a4: d2800009     	mov	x9, #0x0                ; =0
 28486a8: f9004fff     	str	xzr, [sp, #0x98]
 28486ac: 1e62400a     	fcvt	s10, d0
 28486b0: f940027a     	ldr	x26, [x19]
 28486b4: 52800088     	mov	w8, #0x4                ; =4
 28486b8: 1ac80f08     	sdiv	w8, w24, w8
 28486bc: 531f790a     	lsl	w10, w8, #1
 28486c0: 290be3e8     	stp	w8, w24, [sp, #0x5c]
 28486c4: 0b080508     	add	w8, w8, w8, lsl #1
 28486c8: 290aabe8     	stp	w8, w10, [sp, #0x54]
 28486cc: f90017f5     	str	x21, [sp, #0x28]
 28486d0: 910042a8     	add	x8, x21, #0x10
 28486d4: f9003fe8     	str	x8, [sp, #0x78]
 28486d8: 52800048     	mov	w8, #0x2                ; =2
 28486dc: 1ac80f35     	sdiv	w21, w25, w8
 28486e0: 710002bf     	cmp	w21, #0x0
 28486e4: 1a9fc2b3     	csel	w19, w21, wzr, gt
 28486e8: 93407f28     	sxtw	x8, w25
 28486ec: f94002d6     	ldr	x22, [x22]
 28486f0: 93407eea     	sxtw	x10, w23
 28486f4: f90037ea     	str	x10, [sp, #0x68]
 28486f8: a90467e8     	stp	x8, x25, [sp, #0x40]
 28486fc: d37ff908     	lsl	x8, x8, #1
 2848700: f9001fe8     	str	x8, [sp, #0x38]
 2848704: a908dbf6     	stp	x22, x22, [sp, #0x88]
 2848708: f94037e8     	ldr	x8, [sp, #0x68]
 284870c: eb08013f     	cmp	x9, x8
 2848710: 54000caa     	b.ge	0x28488a4 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x2b4>
 2848714: f9003be9     	str	x9, [sp, #0x70]
 2848718: d2800019     	mov	x25, #0x0               ; =0
 284871c: b94067e8     	ldr	w8, [sp, #0x64]
 2848720: 295327ea     	ldp	w10, w9, [sp, #0x98]
 2848724: 1b082548     	madd	w8, w10, w8, w9
 2848728: b94063e9     	ldr	w9, [sp, #0x60]
 284872c: 1b097d1b     	mul	w27, w8, w9
 2848730: b9405fe8     	ldr	w8, [sp, #0x5c]
 2848734: 0b1b0108     	add	w8, w8, w27
 2848738: f90043e8     	str	x8, [sp, #0x80]
 284873c: b9405be8     	ldr	w8, [sp, #0x58]
 2848740: 0b1b0117     	add	w23, w8, w27
 2848744: b94057e8     	ldr	w8, [sp, #0x54]
 2848748: 0b1b0118     	add	w24, w8, w27
 284874c: eb19027f     	cmp	x19, x25
 2848750: 54000840     	b.eq	0x2848858 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x268>
 2848754: b9406a9c     	ldr	w28, [x20, #0x68]
 2848758: 7100239f     	cmp	w28, #0x8
 284875c: 54000081     	b.ne	0x284876c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x17c>
 2848760: f9404be8     	ldr	x8, [sp, #0x90]
 2848764: 38f96908     	ldrsb	w8, [x8, x25]
 2848768: 14000003     	b	0x2848774 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x184>
 284876c: f94047e8     	ldr	x8, [sp, #0x88]
 2848770: 78f97908     	ldrsh	w8, [x8, x25, lsl #1]
 2848774: 940004c7     	bl	0x2849a90 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x14a0>
 2848778: 1e204008     	fmov	s8, s0
 284877c: 0b1902a8     	add	w8, w21, w25
 2848780: 940004bd     	bl	0x2849a74 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1484>
 2848784: 54000061     	b.ne	0x2848790 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1a0>
 2848788: 38e86ac8     	ldrsb	w8, [x22, x8]
 284878c: 14000002     	b	0x2848794 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1a4>
 2848790: 78e87ac8     	ldrsh	w8, [x22, x8, lsl #1]
 2848794: 940004bf     	bl	0x2849a90 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x14a0>
 2848798: 1e282801     	fadd	s1, s0, s8
 284879c: 1e211800     	fdiv	s0, s0, s1
 28487a0: bd406681     	ldr	s1, [x20, #0x64]
 28487a4: 1e212000     	fcmp	s0, s1
 28487a8: 5400054b     	b.lt	0x2848850 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x260>
 28487ac: 0b190368     	add	w8, w27, w25
 28487b0: bd00b3e0     	str	s0, [sp, #0xb0]
 28487b4: b9409fea     	ldr	w10, [sp, #0x9c]
 28487b8: b9409be9     	ldr	w9, [sp, #0x98]
 28487bc: 2916a7ea     	stp	w10, w9, [sp, #0xb4]
 28487c0: b900bff9     	str	w25, [sp, #0xbc]
 28487c4: 940004ac     	bl	0x2849a74 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1484>
 28487c8: 54000061     	b.ne	0x28487d4 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1e4>
 28487cc: 38e86b48     	ldrsb	w8, [x26, x8]
 28487d0: 14000002     	b	0x28487d8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1e8>
 28487d4: 78e87b48     	ldrsh	w8, [x26, x8, lsl #1]
 28487d8: 940004a4     	bl	0x2849a68 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1478>
 28487dc: bd00a3e0     	str	s0, [sp, #0xa0]
 28487e0: f94043e8     	ldr	x8, [sp, #0x80]
 28487e4: 0b190108     	add	w8, w8, w25
 28487e8: 940004a3     	bl	0x2849a74 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1484>
 28487ec: 54000061     	b.ne	0x28487f8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x208>
 28487f0: 38e86b48     	ldrsb	w8, [x26, x8]
 28487f4: 14000002     	b	0x28487fc <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x20c>
 28487f8: 78e87b48     	ldrsh	w8, [x26, x8, lsl #1]
 28487fc: 9400049b     	bl	0x2849a68 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1478>
 2848800: bd00a7e0     	str	s0, [sp, #0xa4]
 2848804: 0b1902e8     	add	w8, w23, w25
 2848808: 9400049b     	bl	0x2849a74 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1484>
 284880c: 54000061     	b.ne	0x2848818 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x228>
 2848810: 38e86b48     	ldrsb	w8, [x26, x8]
 2848814: 14000002     	b	0x284881c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x22c>
 2848818: 78e87b48     	ldrsh	w8, [x26, x8, lsl #1]
 284881c: 94000493     	bl	0x2849a68 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1478>
 2848820: bd00abe0     	str	s0, [sp, #0xa8]
 2848824: 0b190308     	add	w8, w24, w25
 2848828: 94000493     	bl	0x2849a74 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1484>
 284882c: 54000061     	b.ne	0x2848838 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x248>
 2848830: 38e86b48     	ldrsb	w8, [x26, x8]
 2848834: 14000002     	b	0x284883c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x24c>
 2848838: 78e87b48     	ldrsh	w8, [x26, x8, lsl #1]
 284883c: 9400048b     	bl	0x2849a68 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1478>
 2848840: bd00afe0     	str	s0, [sp, #0xac]
 2848844: 910283e1     	add	x1, sp, #0xa0
 2848848: f9403fe0     	ldr	x0, [sp, #0x78]
 284884c: 97fc79ab     	bl	0x2766ef8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a178>
 2848850: 91000739     	add	x25, x25, #0x1
 2848854: 17ffffbe     	b	0x284874c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x15c>
 2848858: b9409fea     	ldr	w10, [sp, #0x9c]
 284885c: 11000548     	add	w8, w10, #0x1
 2848860: b94053e9     	ldr	w9, [sp, #0x50]
 2848864: 6b09011f     	cmp	w8, w9
 2848868: 1a8a07ea     	csinc	w10, wzr, w10, eq
 284886c: b9409be8     	ldr	w8, [sp, #0x98]
 2848870: 1a881508     	cinc	w8, w8, eq
 2848874: 29132be8     	stp	w8, w10, [sp, #0x98]
 2848878: f9403be9     	ldr	x9, [sp, #0x70]
 284887c: a94423ea     	ldp	x10, x8, [sp, #0x40]
 2848880: 8b0a0129     	add	x9, x9, x10
 2848884: 8b0802b5     	add	x21, x21, x8
 2848888: f9401fe8     	ldr	x8, [sp, #0x38]
 284888c: f94047eb     	ldr	x11, [sp, #0x88]
 2848890: 8b08016b     	add	x11, x11, x8
 2848894: f9404be8     	ldr	x8, [sp, #0x90]
 2848898: 8b0a0108     	add	x8, x8, x10
 284889c: a908a3eb     	stp	x11, x8, [sp, #0x88]
 28488a0: 17ffff9a     	b	0x2848708 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x118>
 28488a4: a942abf5     	ldp	x21, x10, [sp, #0x28]
 28488a8: f94006b5     	ldr	x21, [x21, #0x8]
 28488ac: 9100054a     	add	x10, x10, #0x1
 28488b0: f9400bf3     	ldr	x19, [sp, #0x10]
 28488b4: 17ffff65     	b	0x2848648 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x58>
 28488b8: a9007e7f     	stp	xzr, xzr, [x19]
 28488bc: f9000a7f     	str	xzr, [x19, #0x10]
 28488c0: 9100a282     	add	x2, x20, #0x28
 28488c4: 91010283     	add	x3, x20, #0x40
 28488c8: f9400680     	ldr	x0, [x20, #0x8]
 28488cc: d10243a1     	sub	x1, x29, #0x90
 28488d0: 2f00e400     	movi	d0, #0000000000000000
 28488d4: 294117e4     	ldp	w4, w5, [sp, #0x8]
 28488d8: aa1303e6     	mov	x6, x19
 28488dc: 97fffd5c     	bl	0x2847e4c <__ZN5smash13private_utils3ssd8Proposal11GetProposalERNSt3__14listINS3_6vectorINS1_15TargetCandidateENS3_9allocatorIS6_EEEENS7_IS9_EEEERNS5_IiNS7_IiEEEESF_fiiRNS5_INS1_3BoxENS7_ISG_EEEE>
 28488e0: a9400a60     	ldp	x0, x2, [x19]
 28488e4: cb000048     	sub	x8, x2, x0
 28488e8: 52800289     	mov	w9, #0x14               ; =20
 28488ec: 9ac90d09     	sdiv	x9, x8, x9
 28488f0: b9805a88     	ldrsw	x8, [x20, #0x58]
 28488f4: eb08013f     	cmp	x9, x8
 28488f8: 54000082     	b.hs	0x2848908 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x318>
 28488fc: aa0203e1     	mov	x1, x2
 2848900: 97fc7aa5     	bl	0x2767394 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a614>
 2848904: 14000007     	b	0x2848920 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x330>
 2848908: 52800289     	mov	w9, #0x14               ; =20
 284890c: 9b090101     	madd	x1, x8, x9, x0
 2848910: 97fc7e92     	bl	0x2768358 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8b5d8>
 2848914: b9805a81     	ldrsw	x1, [x20, #0x58]
 2848918: aa1303e0     	mov	x0, x19
 284891c: 97fc797f     	bl	0x2766f18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a198>
 2848920: 294b0a81     	ldp	w1, w2, [x20, #0x58]
 2848924: bd406280     	ldr	s0, [x20, #0x60]
 2848928: aa1303e0     	mov	x0, x19
 284892c: 97fff34c     	bl	0x284565c <__ZN5smash13private_utils3ssd12DetectHelper3NMSERNSt3__16vectorINS1_3BoxENS3_9allocatorIS5_EEEEiif>
 2848930: d10243a0     	sub	x0, x29, #0x90
 2848934: 97fc79c5     	bl	0x2767048 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a2c8>
 2848938: a9557bfd     	ldp	x29, x30, [sp, #0x150]
 284893c: a9544ff4     	ldp	x20, x19, [sp, #0x140]
 2848940: a95357f6     	ldp	x22, x21, [sp, #0x130]
 2848944: a9525ff8     	ldp	x24, x23, [sp, #0x120]
 2848948: a95167fa     	ldp	x26, x25, [sp, #0x110]
 284894c: a9506ffc     	ldp	x28, x27, [sp, #0x100]
 2848950: 6d4f23e9     	ldp	d9, d8, [sp, #0xf0]
 2848954: 6d4e2beb     	ldp	d11, d10, [sp, #0xe0]
 2848958: 910583ff     	add	sp, sp, #0x160
 284895c: d65f03c0     	ret
 2848960: 14000001     	b	0x2848964 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x374>
 2848964: aa0003f4     	mov	x20, x0
 2848968: aa1303e0     	mov	x0, x19
 284896c: 97fffa8a     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 2848970: 14000002     	b	0x2848978 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x388>
 2848974: aa0003f4     	mov	x20, x0
 2848978: d10243a0     	sub	x0, x29, #0x90
 284897c: 97fc79b3     	bl	0x2767048 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a2c8>
 2848980: aa1403e0     	mov	x0, x20
 2848984: 940569fb     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 2848988: 14000403     	b	0x2849994 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x13a4>
 284898c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 2848990: 910003fd     	mov	x29, sp
 2848994: 94000400     	bl	0x2849994 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x13a4>
 2848998: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 284899c: 14056ee1     	b	0x29a4520 <dyld_stub_binder+0x29a4520>
 28489a0: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 28489a4: a9017bfd     	stp	x29, x30, [sp, #0x10]
 28489a8: 910043fd     	add	x29, sp, #0x10
 28489ac: aa0003f3     	mov	x19, x0
 28489b0: a900fc1f     	stp	xzr, xzr, [x0, #0x8]
 28489b4: f900001f     	str	xzr, [x0]
 28489b8: a9400828     	ldp	x8, x2, [x1]
 28489bc: cb080049     	sub	x9, x2, x8
 28489c0: 5280028a     	mov	w10, #0x14              ; =20
 28489c4: 9aca0d23     	sdiv	x3, x9, x10
 28489c8: aa0803e1     	mov	x1, x8
 28489cc: 94000005     	bl	0x28489e0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x3f0>
 28489d0: aa1303e0     	mov	x0, x19
 28489d4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 28489d8: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 28489dc: d65f03c0     	ret
 28489e0: d10103ff     	sub	sp, sp, #0x40
 28489e4: a90157f6     	stp	x22, x21, [sp, #0x10]
 28489e8: a9024ff4     	stp	x20, x19, [sp, #0x20]
 28489ec: a9037bfd     	stp	x29, x30, [sp, #0x30]
 28489f0: 9100c3fd     	add	x29, sp, #0x30
 28489f4: f90003e0     	str	x0, [sp]
 28489f8: 390023ff     	strb	wzr, [sp, #0x8]
 28489fc: b4000223     	cbz	x3, 0x2848a40 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x450>
 2848a00: aa0203f5     	mov	x21, x2
 2848a04: aa0103f4     	mov	x20, x1
 2848a08: aa0003f3     	mov	x19, x0
 2848a0c: aa0303e1     	mov	x1, x3
 2848a10: 97fff42f     	bl	0x2845acc <__ZN5smash13private_utils3ssd12DetectHelper3NMSERNSt3__16vectorINS1_3BoxENS3_9allocatorIS5_EEEEiif+0x470>
 2848a14: f9400676     	ldr	x22, [x19, #0x8]
 2848a18: eb1402b5     	subs	x21, x21, x20
 2848a1c: 540000a0     	b.eq	0x2848a30 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x440>
 2848a20: aa1603e0     	mov	x0, x22
 2848a24: aa1403e1     	mov	x1, x20
 2848a28: aa1503e2     	mov	x2, x21
 2848a2c: 9405733d     	bl	0x29a5720 <dyld_stub_binder+0x29a5720>
 2848a30: 52800288     	mov	w8, #0x14               ; =20
 2848a34: 9ac80ea9     	sdiv	x9, x21, x8
 2848a38: 9b085928     	madd	x8, x9, x8, x22
 2848a3c: f9000668     	str	x8, [x19, #0x8]
 2848a40: 52800028     	mov	w8, #0x1                ; =1
 2848a44: 390023e8     	strb	w8, [sp, #0x8]
 2848a48: 910003e0     	mov	x0, sp
 2848a4c: 9400000b     	bl	0x2848a78 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x488>
 2848a50: a9437bfd     	ldp	x29, x30, [sp, #0x30]
 2848a54: a9424ff4     	ldp	x20, x19, [sp, #0x20]
 2848a58: a94157f6     	ldp	x22, x21, [sp, #0x10]
 2848a5c: 910103ff     	add	sp, sp, #0x40
 2848a60: d65f03c0     	ret
 2848a64: aa0003f3     	mov	x19, x0
 2848a68: 910003e0     	mov	x0, sp
 2848a6c: 94000003     	bl	0x2848a78 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x488>
 2848a70: aa1303e0     	mov	x0, x19
 2848a74: 940569bf     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 2848a78: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2848a7c: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2848a80: 910043fd     	add	x29, sp, #0x10
 2848a84: aa0003f3     	mov	x19, x0
 2848a88: 39402008     	ldrb	w8, [x0, #0x8]
 2848a8c: 35000068     	cbnz	w8, 0x2848a98 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x4a8>
 2848a90: aa1303e0     	mov	x0, x19
 2848a94: 97fffa4d     	bl	0x28473c8 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xde4>
 2848a98: aa1303e0     	mov	x0, x19
 2848a9c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2848aa0: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2848aa4: d65f03c0     	ret
 2848aa8: d10183ff     	sub	sp, sp, #0x60
 2848aac: a90357f6     	stp	x22, x21, [sp, #0x30]
 2848ab0: a9044ff4     	stp	x20, x19, [sp, #0x40]
 2848ab4: a9057bfd     	stp	x29, x30, [sp, #0x50]
 2848ab8: 910143fd     	add	x29, sp, #0x50
 2848abc: aa0103f4     	mov	x20, x1
 2848ac0: aa0003f3     	mov	x19, x0
 2848ac4: aa0003f5     	mov	x21, x0
 2848ac8: f8410ea9     	ldr	x9, [x21, #0x10]!
 2848acc: f85f82a8     	ldur	x8, [x21, #-0x8]
 2848ad0: cb080129     	sub	x9, x9, x8
 2848ad4: 5280030a     	mov	w10, #0x18              ; =24
 2848ad8: 9aca0d29     	sdiv	x9, x9, x10
 2848adc: eb01013f     	cmp	x9, x1
 2848ae0: 54000382     	b.hs	0x2848b50 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x560>
 2848ae4: f9400269     	ldr	x9, [x19]
 2848ae8: cb090108     	sub	x8, x8, x9
 2848aec: 52800316     	mov	w22, #0x18              ; =24
 2848af0: 9ad60d08     	sdiv	x8, x8, x22
 2848af4: 8b140101     	add	x1, x8, x20
 2848af8: aa1303e0     	mov	x0, x19
 2848afc: 9400002d     	bl	0x2848bb0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x5c0>
 2848b00: aa0003e1     	mov	x1, x0
 2848b04: a9402269     	ldp	x9, x8, [x19]
 2848b08: cb090108     	sub	x8, x8, x9
 2848b0c: 9ad60d02     	sdiv	x2, x8, x22
 2848b10: 910023e0     	add	x0, sp, #0x8
 2848b14: aa1503e3     	mov	x3, x21
 2848b18: 94000069     	bl	0x2848cbc <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x6cc>
 2848b1c: 910023e0     	add	x0, sp, #0x8
 2848b20: aa1403e1     	mov	x1, x20
 2848b24: 94000038     	bl	0x2848c04 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x614>
 2848b28: 910023e1     	add	x1, sp, #0x8
 2848b2c: aa1303e0     	mov	x0, x19
 2848b30: 94000041     	bl	0x2848c34 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x644>
 2848b34: 910023e0     	add	x0, sp, #0x8
 2848b38: 940000eb     	bl	0x2848ee4 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x8f4>
 2848b3c: a9457bfd     	ldp	x29, x30, [sp, #0x50]
 2848b40: a9444ff4     	ldp	x20, x19, [sp, #0x40]
 2848b44: a94357f6     	ldp	x22, x21, [sp, #0x30]
 2848b48: 910183ff     	add	sp, sp, #0x60
 2848b4c: d65f03c0     	ret
 2848b50: aa1303e0     	mov	x0, x19
 2848b54: aa1403e1     	mov	x1, x20
 2848b58: a9457bfd     	ldp	x29, x30, [sp, #0x50]
 2848b5c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
 2848b60: a94357f6     	ldp	x22, x21, [sp, #0x30]
 2848b64: 910183ff     	add	sp, sp, #0x60
 2848b68: 14000006     	b	0x2848b80 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x590>
 2848b6c: aa0003f3     	mov	x19, x0
 2848b70: 910023e0     	add	x0, sp, #0x8
 2848b74: 940000dc     	bl	0x2848ee4 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x8f4>
 2848b78: aa1303e0     	mov	x0, x19
 2848b7c: 9405697d     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 2848b80: f9400408     	ldr	x8, [x0, #0x8]
 2848b84: 8b01042a     	add	x10, x1, x1, lsl #1
 2848b88: 8b0a0d09     	add	x9, x8, x10, lsl #3
 2848b8c: d37df14a     	lsl	x10, x10, #3
 2848b90: b40000ca     	cbz	x10, 0x2848ba8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x5b8>
 2848b94: a9007d1f     	stp	xzr, xzr, [x8]
 2848b98: f900091f     	str	xzr, [x8, #0x10]
 2848b9c: 91006108     	add	x8, x8, #0x18
 2848ba0: d100614a     	sub	x10, x10, #0x18
 2848ba4: b5ffff8a     	cbnz	x10, 0x2848b94 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x5a4>
 2848ba8: f9000409     	str	x9, [x0, #0x8]
 2848bac: d65f03c0     	ret
 2848bb0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 2848bb4: 910003fd     	mov	x29, sp
 2848bb8: b201f3e8     	mov	x8, #-0x5555555555555556 ; =-6148914691236517206
 2848bbc: f2e15548     	movk	x8, #0xaaa, lsl #48
 2848bc0: eb08003f     	cmp	x1, x8
 2848bc4: 540001e8     	b.hi	0x2848c00 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x610>
 2848bc8: f9400809     	ldr	x9, [x0, #0x10]
 2848bcc: f940000a     	ldr	x10, [x0]
 2848bd0: cb0a0129     	sub	x9, x9, x10
 2848bd4: 5280030a     	mov	w10, #0x18              ; =24
 2848bd8: 9aca0d29     	sdiv	x9, x9, x10
 2848bdc: d37ff92a     	lsl	x10, x9, #1
 2848be0: eb01015f     	cmp	x10, x1
 2848be4: 9a81814a     	csel	x10, x10, x1, hi
 2848be8: b200f3eb     	mov	x11, #0x5555555555555555 ; =6148914691236517205
 2848bec: f2e0aaab     	movk	x11, #0x555, lsl #48
 2848bf0: eb0b013f     	cmp	x9, x11
 2848bf4: 9a883140     	csel	x0, x10, x8, lo
 2848bf8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 2848bfc: d65f03c0     	ret
 2848c00: 9400002a     	bl	0x2848ca8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x6b8>
 2848c04: f9400808     	ldr	x8, [x0, #0x10]
 2848c08: 8b01042a     	add	x10, x1, x1, lsl #1
 2848c0c: 8b0a0d09     	add	x9, x8, x10, lsl #3
 2848c10: d37df14a     	lsl	x10, x10, #3
 2848c14: b40000ca     	cbz	x10, 0x2848c2c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x63c>
 2848c18: a9007d1f     	stp	xzr, xzr, [x8]
 2848c1c: f900091f     	str	xzr, [x8, #0x10]
 2848c20: 91006108     	add	x8, x8, #0x18
 2848c24: d100614a     	sub	x10, x10, #0x18
 2848c28: b5ffff8a     	cbnz	x10, 0x2848c18 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x628>
 2848c2c: f9000809     	str	x9, [x0, #0x10]
 2848c30: d65f03c0     	ret
 2848c34: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2848c38: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2848c3c: 910043fd     	add	x29, sp, #0x10
 2848c40: aa0103f3     	mov	x19, x1
 2848c44: aa0003f4     	mov	x20, x0
 2848c48: 91004000     	add	x0, x0, #0x10
 2848c4c: a9400683     	ldp	x3, x1, [x20]
 2848c50: f9400665     	ldr	x5, [x19, #0x8]
 2848c54: aa0103e2     	mov	x2, x1
 2848c58: aa0303e4     	mov	x4, x3
 2848c5c: aa0503e6     	mov	x6, x5
 2848c60: 9400003f     	bl	0x2848d5c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x76c>
 2848c64: f9000661     	str	x1, [x19, #0x8]
 2848c68: f9400288     	ldr	x8, [x20]
 2848c6c: f9000281     	str	x1, [x20]
 2848c70: f9000668     	str	x8, [x19, #0x8]
 2848c74: f9400688     	ldr	x8, [x20, #0x8]
 2848c78: f9400a69     	ldr	x9, [x19, #0x10]
 2848c7c: f9000689     	str	x9, [x20, #0x8]
 2848c80: f9000a68     	str	x8, [x19, #0x10]
 2848c84: f9400a88     	ldr	x8, [x20, #0x10]
 2848c88: f9400e69     	ldr	x9, [x19, #0x18]
 2848c8c: f9000a89     	str	x9, [x20, #0x10]
 2848c90: f9000e68     	str	x8, [x19, #0x18]
 2848c94: f9400668     	ldr	x8, [x19, #0x8]
 2848c98: f9000268     	str	x8, [x19]
 2848c9c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2848ca0: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2848ca4: d65f03c0     	ret
 2848ca8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 2848cac: 910003fd     	mov	x29, sp
 2848cb0: d0005b00     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 2848cb4: 91062000     	add	x0, x0, #0x188
 2848cb8: 94000b74     	bl	0x284ba88 <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1e30>
 2848cbc: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2848cc0: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2848cc4: 910043fd     	add	x29, sp, #0x10
 2848cc8: aa0203f4     	mov	x20, x2
 2848ccc: aa0003f3     	mov	x19, x0
 2848cd0: a9018c1f     	stp	xzr, x3, [x0, #0x18]
 2848cd4: b4000081     	cbz	x1, 0x2848ce4 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x6f4>
 2848cd8: aa0303e0     	mov	x0, x3
 2848cdc: 9400000c     	bl	0x2848d0c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x71c>
 2848ce0: 14000002     	b	0x2848ce8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x6f8>
 2848ce4: d2800000     	mov	x0, #0x0                ; =0
 2848ce8: 52800308     	mov	w8, #0x18               ; =24
 2848cec: 9b080289     	madd	x9, x20, x8, x0
 2848cf0: a9002660     	stp	x0, x9, [x19]
 2848cf4: 9b080028     	madd	x8, x1, x8, x0
 2848cf8: a9012269     	stp	x9, x8, [x19, #0x10]
 2848cfc: aa1303e0     	mov	x0, x19
 2848d00: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2848d04: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2848d08: d65f03c0     	ret
 2848d0c: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2848d10: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2848d14: 910043fd     	add	x29, sp, #0x10
 2848d18: aa0103f3     	mov	x19, x1
 2848d1c: 94000005     	bl	0x2848d30 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x740>
 2848d20: aa1303e1     	mov	x1, x19
 2848d24: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2848d28: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2848d2c: d65f03c0     	ret
 2848d30: b201f3e8     	mov	x8, #-0x5555555555555556 ; =-6148914691236517206
 2848d34: f2955568     	movk	x8, #0xaaab
 2848d38: f2e15548     	movk	x8, #0xaaa, lsl #48
 2848d3c: eb08003f     	cmp	x1, x8
 2848d40: 54000082     	b.hs	0x2848d50 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x760>
 2848d44: 8b010428     	add	x8, x1, x1, lsl #1
 2848d48: d37df100     	lsl	x0, x8, #3
 2848d4c: 14056e01     	b	0x29a4550 <dyld_stub_binder+0x29a4550>
 2848d50: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 2848d54: 910003fd     	mov	x29, sp
 2848d58: 94000b71     	bl	0x284bb1c <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1ec4>
 2848d5c: d10183ff     	sub	sp, sp, #0x60
 2848d60: a9044ff4     	stp	x20, x19, [sp, #0x40]
 2848d64: a9057bfd     	stp	x29, x30, [sp, #0x50]
 2848d68: 910143fd     	add	x29, sp, #0x50
 2848d6c: aa0603f3     	mov	x19, x6
 2848d70: a93e1ba5     	stp	x5, x6, [x29, #-0x20]
 2848d74: 3cde03a0     	ldur	q0, [x29, #-0x20]
 2848d78: 3d800be0     	str	q0, [sp, #0x20]
 2848d7c: 910083e8     	add	x8, sp, #0x20
 2848d80: a90023e0     	stp	x0, x8, [sp]
 2848d84: d10083a8     	sub	x8, x29, #0x20
 2848d88: f9000be8     	str	x8, [sp, #0x10]
 2848d8c: eb04005f     	cmp	x2, x4
 2848d90: 540001e0     	b.eq	0x2848dcc <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x7dc>
 2848d94: a93f7e7f     	stp	xzr, xzr, [x19, #-0x10]
 2848d98: f81e827f     	stur	xzr, [x19, #-0x18]
 2848d9c: f85e8c48     	ldr	x8, [x2, #-0x18]!
 2848da0: f81e8268     	stur	x8, [x19, #-0x18]
 2848da4: f9400448     	ldr	x8, [x2, #0x8]
 2848da8: f81f0268     	stur	x8, [x19, #-0x10]
 2848dac: f9400848     	ldr	x8, [x2, #0x10]
 2848db0: f81f8268     	stur	x8, [x19, #-0x8]
 2848db4: a9007c5f     	stp	xzr, xzr, [x2]
 2848db8: f900085f     	str	xzr, [x2, #0x10]
 2848dbc: f85e83a8     	ldur	x8, [x29, #-0x18]
 2848dc0: d1006113     	sub	x19, x8, #0x18
 2848dc4: f81e83b3     	stur	x19, [x29, #-0x18]
 2848dc8: 17fffff1     	b	0x2848d8c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x79c>
 2848dcc: 52800028     	mov	w8, #0x1                ; =1
 2848dd0: 390063e8     	strb	w8, [sp, #0x18]
 2848dd4: f85e03b4     	ldur	x20, [x29, #-0x20]
 2848dd8: 910003e0     	mov	x0, sp
 2848ddc: 94000007     	bl	0x2848df8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x808>
 2848de0: aa1403e0     	mov	x0, x20
 2848de4: aa1303e1     	mov	x1, x19
 2848de8: a9457bfd     	ldp	x29, x30, [sp, #0x50]
 2848dec: a9444ff4     	ldp	x20, x19, [sp, #0x40]
 2848df0: 910183ff     	add	sp, sp, #0x60
 2848df4: d65f03c0     	ret
 2848df8: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2848dfc: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2848e00: 910043fd     	add	x29, sp, #0x10
 2848e04: aa0003f3     	mov	x19, x0
 2848e08: 39406008     	ldrb	w8, [x0, #0x18]
 2848e0c: 35000068     	cbnz	w8, 0x2848e18 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x828>
 2848e10: aa1303e0     	mov	x0, x19
 2848e14: 94000006     	bl	0x2848e2c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x83c>
 2848e18: aa1303e0     	mov	x0, x19
 2848e1c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2848e20: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2848e24: d65f03c0     	ret
 2848e28: 975f1259     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 2848e2c: d101c3ff     	sub	sp, sp, #0x70
 2848e30: a9067bfd     	stp	x29, x30, [sp, #0x60]
 2848e34: 910183fd     	add	x29, sp, #0x60
 2848e38: 900063a8     	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
 2848e3c: f9435508     	ldr	x8, [x8, #0x6a8]
 2848e40: f9400108     	ldr	x8, [x8]
 2848e44: f81f83a8     	stur	x8, [x29, #-0x8]
 2848e48: f9400808     	ldr	x8, [x0, #0x10]
 2848e4c: a9402109     	ldp	x9, x8, [x8]
 2848e50: a903a3e9     	stp	x9, x8, [sp, #0x38]
 2848e54: a904a3e9     	stp	x9, x8, [sp, #0x48]
 2848e58: a9402408     	ldp	x8, x9, [x0]
 2848e5c: a940252a     	ldp	x10, x9, [x9]
 2848e60: a90127ea     	stp	x10, x9, [sp, #0x10]
 2848e64: a90227ea     	stp	x10, x9, [sp, #0x20]
 2848e68: 9100c3e1     	add	x1, sp, #0x30
 2848e6c: 910023e2     	add	x2, sp, #0x8
 2848e70: aa0803e0     	mov	x0, x8
 2848e74: 9400000b     	bl	0x2848ea0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x8b0>
 2848e78: f85f83a8     	ldur	x8, [x29, #-0x8]
 2848e7c: 900063a9     	adrp	x9, 0x34bc000 <dyld_stub_binder+0x34bc000>
 2848e80: f9435529     	ldr	x9, [x9, #0x6a8]
 2848e84: f9400129     	ldr	x9, [x9]
 2848e88: eb08013f     	cmp	x9, x8
 2848e8c: 54000081     	b.ne	0x2848e9c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x8ac>
 2848e90: a9467bfd     	ldp	x29, x30, [sp, #0x60]
 2848e94: 9101c3ff     	add	sp, sp, #0x70
 2848e98: d65f03c0     	ret
 2848e9c: 94056df5     	bl	0x29a4670 <dyld_stub_binder+0x29a4670>
 2848ea0: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2848ea4: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2848ea8: 910043fd     	add	x29, sp, #0x10
 2848eac: aa0203f3     	mov	x19, x2
 2848eb0: aa0103f4     	mov	x20, x1
 2848eb4: f9401020     	ldr	x0, [x1, #0x20]
 2848eb8: f9401268     	ldr	x8, [x19, #0x20]
 2848ebc: eb08001f     	cmp	x0, x8
 2848ec0: 540000c0     	b.eq	0x2848ed8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x8e8>
 2848ec4: 97fff934     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 2848ec8: f9401288     	ldr	x8, [x20, #0x20]
 2848ecc: 91006100     	add	x0, x8, #0x18
 2848ed0: f9001280     	str	x0, [x20, #0x20]
 2848ed4: 17fffff9     	b	0x2848eb8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x8c8>
 2848ed8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2848edc: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2848ee0: d65f03c0     	ret
 2848ee4: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2848ee8: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2848eec: 910043fd     	add	x29, sp, #0x10
 2848ef0: aa0003f3     	mov	x19, x0
 2848ef4: 94000008     	bl	0x2848f14 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x924>
 2848ef8: f9400260     	ldr	x0, [x19]
 2848efc: b4000040     	cbz	x0, 0x2848f04 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x914>
 2848f00: 94056d88     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 2848f04: aa1303e0     	mov	x0, x19
 2848f08: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2848f0c: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2848f10: d65f03c0     	ret
 2848f14: f9400401     	ldr	x1, [x0, #0x8]
 2848f18: 14000001     	b	0x2848f1c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x92c>
 2848f1c: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2848f20: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2848f24: 910043fd     	add	x29, sp, #0x10
 2848f28: aa0103f3     	mov	x19, x1
 2848f2c: aa0003f4     	mov	x20, x0
 2848f30: f9400a88     	ldr	x8, [x20, #0x10]
 2848f34: eb13011f     	cmp	x8, x19
 2848f38: 540000a0     	b.eq	0x2848f4c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x95c>
 2848f3c: d1006100     	sub	x0, x8, #0x18
 2848f40: f9000a80     	str	x0, [x20, #0x10]
 2848f44: 97fff914     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 2848f48: 17fffffa     	b	0x2848f30 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x940>
 2848f4c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2848f50: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2848f54: d65f03c0     	ret
 2848f58: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2848f5c: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2848f60: 910043fd     	add	x29, sp, #0x10
 2848f64: aa0103f3     	mov	x19, x1
 2848f68: aa0003f4     	mov	x20, x0
 2848f6c: f9400400     	ldr	x0, [x0, #0x8]
 2848f70: eb13001f     	cmp	x0, x19
 2848f74: 54000080     	b.eq	0x2848f84 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x994>
 2848f78: d1006000     	sub	x0, x0, #0x18
 2848f7c: 97fff906     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 2848f80: 17fffffc     	b	0x2848f70 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x980>
 2848f84: f9000693     	str	x19, [x20, #0x8]
 2848f88: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2848f8c: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2848f90: d65f03c0     	ret
 2848f94: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2848f98: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2848f9c: 910043fd     	add	x29, sp, #0x10
 2848fa0: aa0003f3     	mov	x19, x0
 2848fa4: a900fc1f     	stp	xzr, xzr, [x0, #0x8]
 2848fa8: f900001f     	str	xzr, [x0]
 2848fac: a9400828     	ldp	x8, x2, [x1]
 2848fb0: cb080049     	sub	x9, x2, x8
 2848fb4: 9345fd23     	asr	x3, x9, #5
 2848fb8: aa0803e1     	mov	x1, x8
 2848fbc: 94000005     	bl	0x2848fd0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x9e0>
 2848fc0: aa1303e0     	mov	x0, x19
 2848fc4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2848fc8: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2848fcc: d65f03c0     	ret
 2848fd0: d10103ff     	sub	sp, sp, #0x40
 2848fd4: a90157f6     	stp	x22, x21, [sp, #0x10]
 2848fd8: a9024ff4     	stp	x20, x19, [sp, #0x20]
 2848fdc: a9037bfd     	stp	x29, x30, [sp, #0x30]
 2848fe0: 9100c3fd     	add	x29, sp, #0x30
 2848fe4: f90003e0     	str	x0, [sp]
 2848fe8: 390023ff     	strb	wzr, [sp, #0x8]
 2848fec: b40001e3     	cbz	x3, 0x2849028 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xa38>
 2848ff0: aa0203f5     	mov	x21, x2
 2848ff4: aa0103f4     	mov	x20, x1
 2848ff8: aa0003f3     	mov	x19, x0
 2848ffc: aa0303e1     	mov	x1, x3
 2849000: 94000018     	bl	0x2849060 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xa70>
 2849004: f9400676     	ldr	x22, [x19, #0x8]
 2849008: eb1402b5     	subs	x21, x21, x20
 284900c: 540000a0     	b.eq	0x2849020 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xa30>
 2849010: aa1603e0     	mov	x0, x22
 2849014: aa1403e1     	mov	x1, x20
 2849018: aa1503e2     	mov	x2, x21
 284901c: 940571c1     	bl	0x29a5720 <dyld_stub_binder+0x29a5720>
 2849020: 8b1502c8     	add	x8, x22, x21
 2849024: f9000668     	str	x8, [x19, #0x8]
 2849028: 52800028     	mov	w8, #0x1                ; =1
 284902c: 390023e8     	strb	w8, [sp, #0x8]
 2849030: 910003e0     	mov	x0, sp
 2849034: 9400001b     	bl	0x28490a0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xab0>
 2849038: a9437bfd     	ldp	x29, x30, [sp, #0x30]
 284903c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
 2849040: a94157f6     	ldp	x22, x21, [sp, #0x10]
 2849044: 910103ff     	add	sp, sp, #0x40
 2849048: d65f03c0     	ret
 284904c: aa0003f3     	mov	x19, x0
 2849050: 910003e0     	mov	x0, sp
 2849054: 94000013     	bl	0x28490a0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xab0>
 2849058: aa1303e0     	mov	x0, x19
 284905c: 94056845     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 2849060: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2849064: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2849068: 910043fd     	add	x29, sp, #0x10
 284906c: aa0003f3     	mov	x19, x0
 2849070: d37bfc28     	lsr	x8, x1, #59
 2849074: b5000128     	cbnz	x8, 0x2849098 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xaa8>
 2849078: 91004260     	add	x0, x19, #0x10
 284907c: 97fc78a1     	bl	0x2767300 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a580>
 2849080: a9000260     	stp	x0, x0, [x19]
 2849084: 8b011408     	add	x8, x0, x1, lsl #5
 2849088: f9000a68     	str	x8, [x19, #0x10]
 284908c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2849090: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2849094: d65f03c0     	ret
 2849098: aa1303e0     	mov	x0, x19
 284909c: 97fc7894     	bl	0x27672ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a56c>
 28490a0: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 28490a4: a9017bfd     	stp	x29, x30, [sp, #0x10]
 28490a8: 910043fd     	add	x29, sp, #0x10
 28490ac: aa0003f3     	mov	x19, x0
 28490b0: 39402008     	ldrb	w8, [x0, #0x8]
 28490b4: 35000068     	cbnz	w8, 0x28490c0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xad0>
 28490b8: aa1303e0     	mov	x0, x19
 28490bc: 97fc780b     	bl	0x27670e8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a368>
 28490c0: aa1303e0     	mov	x0, x19
 28490c4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 28490c8: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 28490cc: d65f03c0     	ret
 28490d0: d100c3ff     	sub	sp, sp, #0x30
 28490d4: a9014ff4     	stp	x20, x19, [sp, #0x10]
 28490d8: a9027bfd     	stp	x29, x30, [sp, #0x20]
 28490dc: 910083fd     	add	x29, sp, #0x20
 28490e0: aa0003f3     	mov	x19, x0
 28490e4: a9007c1f     	stp	xzr, xzr, [x0]
 28490e8: f900081f     	str	xzr, [x0, #0x10]
 28490ec: f90003e0     	str	x0, [sp]
 28490f0: 390023ff     	strb	wzr, [sp, #0x8]
 28490f4: b40000e1     	cbz	x1, 0x2849110 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xb20>
 28490f8: aa0103f4     	mov	x20, x1
 28490fc: aa1303e0     	mov	x0, x19
 2849100: 94000012     	bl	0x2849148 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xb58>
 2849104: aa1303e0     	mov	x0, x19
 2849108: aa1403e1     	mov	x1, x20
 284910c: 94000023     	bl	0x2849198 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xba8>
 2849110: 52800028     	mov	w8, #0x1                ; =1
 2849114: 390023e8     	strb	w8, [sp, #0x8]
 2849118: 910003e0     	mov	x0, sp
 284911c: 94000044     	bl	0x284922c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xc3c>
 2849120: aa1303e0     	mov	x0, x19
 2849124: a9427bfd     	ldp	x29, x30, [sp, #0x20]
 2849128: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 284912c: 9100c3ff     	add	sp, sp, #0x30
 2849130: d65f03c0     	ret
 2849134: aa0003f3     	mov	x19, x0
 2849138: 910003e0     	mov	x0, sp
 284913c: 9400003c     	bl	0x284922c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xc3c>
 2849140: aa1303e0     	mov	x0, x19
 2849144: 9405680b     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 2849148: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 284914c: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2849150: 910043fd     	add	x29, sp, #0x10
 2849154: aa0003f3     	mov	x19, x0
 2849158: b201f3e8     	mov	x8, #-0x5555555555555556 ; =-6148914691236517206
 284915c: f2955568     	movk	x8, #0xaaab
 2849160: f2e15548     	movk	x8, #0xaaa, lsl #48
 2849164: eb08003f     	cmp	x1, x8
 2849168: 54000142     	b.hs	0x2849190 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xba0>
 284916c: 91004260     	add	x0, x19, #0x10
 2849170: 9400001b     	bl	0x28491dc <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xbec>
 2849174: a9000260     	stp	x0, x0, [x19]
 2849178: 52800308     	mov	w8, #0x18               ; =24
 284917c: 9b080028     	madd	x8, x1, x8, x0
 2849180: f9000a68     	str	x8, [x19, #0x10]
 2849184: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2849188: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 284918c: d65f03c0     	ret
 2849190: aa1303e0     	mov	x0, x19
 2849194: 9400000d     	bl	0x28491c8 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xbd8>
 2849198: f9400408     	ldr	x8, [x0, #0x8]
 284919c: 8b01042a     	add	x10, x1, x1, lsl #1
 28491a0: 8b0a0d09     	add	x9, x8, x10, lsl #3
 28491a4: d37df14a     	lsl	x10, x10, #3
 28491a8: b40000ca     	cbz	x10, 0x28491c0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xbd0>
 28491ac: a9007d1f     	stp	xzr, xzr, [x8]
 28491b0: f900091f     	str	xzr, [x8, #0x10]
 28491b4: 91006108     	add	x8, x8, #0x18
 28491b8: d100614a     	sub	x10, x10, #0x18
 28491bc: b5ffff8a     	cbnz	x10, 0x28491ac <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xbbc>
 28491c0: f9000409     	str	x9, [x0, #0x8]
 28491c4: d65f03c0     	ret
 28491c8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 28491cc: 910003fd     	mov	x29, sp
 28491d0: b0005b00     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 28491d4: 91062000     	add	x0, x0, #0x188
 28491d8: 94000a2c     	bl	0x284ba88 <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1e30>
 28491dc: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 28491e0: a9017bfd     	stp	x29, x30, [sp, #0x10]
 28491e4: 910043fd     	add	x29, sp, #0x10
 28491e8: aa0103f3     	mov	x19, x1
 28491ec: 94000005     	bl	0x2849200 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xc10>
 28491f0: aa1303e1     	mov	x1, x19
 28491f4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 28491f8: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 28491fc: d65f03c0     	ret
 2849200: b201f3e8     	mov	x8, #-0x5555555555555556 ; =-6148914691236517206
 2849204: f2955568     	movk	x8, #0xaaab
 2849208: f2e15548     	movk	x8, #0xaaa, lsl #48
 284920c: eb08003f     	cmp	x1, x8
 2849210: 54000082     	b.hs	0x2849220 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xc30>
 2849214: 8b010428     	add	x8, x1, x1, lsl #1
 2849218: d37df100     	lsl	x0, x8, #3
 284921c: 14056ccd     	b	0x29a4550 <dyld_stub_binder+0x29a4550>
 2849220: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 2849224: 910003fd     	mov	x29, sp
 2849228: 94000a3d     	bl	0x284bb1c <__ZN5smash13private_utils3ssd28MultiScaleProposalLayerTorch12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0x1ec4>
 284922c: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2849230: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2849234: 910043fd     	add	x29, sp, #0x10
 2849238: aa0003f3     	mov	x19, x0
 284923c: 39402008     	ldrb	w8, [x0, #0x8]
 2849240: 35000068     	cbnz	w8, 0x284924c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xc5c>
 2849244: aa1303e0     	mov	x0, x19
 2849248: 94000005     	bl	0x284925c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xc6c>
 284924c: aa1303e0     	mov	x0, x19
 2849250: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2849254: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2849258: d65f03c0     	ret
 284925c: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 2849260: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2849264: 910043fd     	add	x29, sp, #0x10
 2849268: aa0003f3     	mov	x19, x0
 284926c: f9400000     	ldr	x0, [x0]
 2849270: f9400008     	ldr	x8, [x0]
 2849274: b40000e8     	cbz	x8, 0x2849290 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xca0>
 2849278: 94000009     	bl	0x284929c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xcac>
 284927c: f9400268     	ldr	x8, [x19]
 2849280: f9400100     	ldr	x0, [x8]
 2849284: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2849288: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 284928c: 14056ca5     	b	0x29a4520 <dyld_stub_binder+0x29a4520>
 2849290: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2849294: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2849298: d65f03c0     	ret
 284929c: f9400001     	ldr	x1, [x0]
 28492a0: 14000001     	b	0x28492a4 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xcb4>
 28492a4: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 28492a8: a9017bfd     	stp	x29, x30, [sp, #0x10]
 28492ac: 910043fd     	add	x29, sp, #0x10
 28492b0: aa0103f3     	mov	x19, x1
 28492b4: aa0003f4     	mov	x20, x0
 28492b8: f9400400     	ldr	x0, [x0, #0x8]
 28492bc: eb13001f     	cmp	x0, x19
 28492c0: 54000080     	b.eq	0x28492d0 <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xce0>
 28492c4: d1006000     	sub	x0, x0, #0x18
 28492c8: 97fc777b     	bl	0x27670b4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a334>
 28492cc: 17fffffc     	b	0x28492bc <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xccc>
 28492d0: f9000693     	str	x19, [x20, #0x8]
 28492d4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 28492d8: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 28492dc: d65f03c0     	ret
 28492e0: d100c3ff     	sub	sp, sp, #0x30
 28492e4: a9014ff4     	stp	x20, x19, [sp, #0x10]
 28492e8: a9027bfd     	stp	x29, x30, [sp, #0x20]
 28492ec: 910083fd     	add	x29, sp, #0x20
 28492f0: aa0003f3     	mov	x19, x0
 28492f4: f90007e0     	str	x0, [sp, #0x8]
 28492f8: 910023e0     	add	x0, sp, #0x8
 28492fc: 97ffffd8     	bl	0x284925c <__ZN5smash13private_utils3ssd23MultiScaleProposalLayer12GetProposalsERNSt3__16vectorIPNS0_7predict11ModelOutputENS3_9allocatorIS7_EEEESB_ii+0xc6c>
