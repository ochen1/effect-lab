
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000002845098 <__ZN5smash3md5EPKhm>:
 2845200: 94057cec     	bl	0x29a45b0 <dyld_stub_binder+0x29a45b0>
 2845204: 17ffffec     	b	0x28451b4 <__ZN5smash3md5EPKhm+0x11c>
 2845208: aa0003f3     	mov	x19, x0
 284520c: 94057ce9     	bl	0x29a45b0 <dyld_stub_binder+0x29a45b0>
 2845210: aa1303e0     	mov	x0, x19
 2845214: 940577d7     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 2845218: 975f215d     	bl	0xd78c <__ZN10IAsynProto7MsgHeadD2Ev+0x94>
 284521c: d101c3ff     	sub	sp, sp, #0x70
 2845220: a90267fa     	stp	x26, x25, [sp, #0x20]
 2845224: a9035ff8     	stp	x24, x23, [sp, #0x30]
 2845228: a90457f6     	stp	x22, x21, [sp, #0x40]
 284522c: a9054ff4     	stp	x20, x19, [sp, #0x50]
 2845230: a9067bfd     	stp	x29, x30, [sp, #0x60]
 2845234: 910183fd     	add	x29, sp, #0x60
 2845238: aa0003f3     	mov	x19, x0
 284523c: b40006c0     	cbz	x0, 0x2845314 <__ZN5smash3md5EPKhm+0x27c>
 2845240: aa0503f8     	mov	x24, x5
 2845244: aa0403f4     	mov	x20, x4
 2845248: aa0303f6     	mov	x22, x3
 284524c: aa0203f5     	mov	x21, x2
 2845250: f9400c88     	ldr	x8, [x4, #0x18]
 2845254: cb010069     	sub	x9, x3, x1
 2845258: eb090108     	subs	x8, x8, x9
 284525c: 9a9fc117     	csel	x23, x8, xzr, gt
 2845260: cb010059     	sub	x25, x2, x1
 2845264: f100073f     	cmp	x25, #0x1
 2845268: 5400010b     	b.lt	0x2845288 <__ZN5smash3md5EPKhm+0x1f0>
 284526c: f9400268     	ldr	x8, [x19]
 2845270: f9403108     	ldr	x8, [x8, #0x60]
 2845274: aa1303e0     	mov	x0, x19
 2845278: aa1903e2     	mov	x2, x25
 284527c: d63f0100     	blr	x8
 2845280: eb19001f     	cmp	x0, x25
 2845284: 54000461     	b.ne	0x2845310 <__ZN5smash3md5EPKhm+0x278>
 2845288: f10006ff     	cmp	x23, #0x1
 284528c: 5400028b     	b.lt	0x28452dc <__ZN5smash3md5EPKhm+0x244>
 2845290: 910023f9     	add	x25, sp, #0x8
 2845294: 910023e0     	add	x0, sp, #0x8
 2845298: aa1703e1     	mov	x1, x23
 284529c: aa1803e2     	mov	x2, x24
 28452a0: 94057ac3     	bl	0x29a3dac <dyld_stub_binder+0x29a3dac>
 28452a4: 39c07fe8     	ldrsb	w8, [sp, #0x1f]
 28452a8: f94007e9     	ldr	x9, [sp, #0x8]
 28452ac: 7100011f     	cmp	w8, #0x0
 28452b0: 9a99b121     	csel	x1, x9, x25, lt
 28452b4: f9400268     	ldr	x8, [x19]
 28452b8: f9403108     	ldr	x8, [x8, #0x60]
 28452bc: aa1303e0     	mov	x0, x19
 28452c0: aa1703e2     	mov	x2, x23
 28452c4: d63f0100     	blr	x8
 28452c8: aa0003f8     	mov	x24, x0
 28452cc: 910023e0     	add	x0, sp, #0x8
 28452d0: 94057af9     	bl	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 28452d4: eb17031f     	cmp	x24, x23
 28452d8: 540001c1     	b.ne	0x2845310 <__ZN5smash3md5EPKhm+0x278>
 28452dc: cb1502d6     	sub	x22, x22, x21
 28452e0: f10006df     	cmp	x22, #0x1
 28452e4: 5400012b     	b.lt	0x2845308 <__ZN5smash3md5EPKhm+0x270>
 28452e8: f9400268     	ldr	x8, [x19]
 28452ec: f9403108     	ldr	x8, [x8, #0x60]
 28452f0: aa1303e0     	mov	x0, x19
 28452f4: aa1503e1     	mov	x1, x21
 28452f8: aa1603e2     	mov	x2, x22
 28452fc: d63f0100     	blr	x8
 2845300: eb16001f     	cmp	x0, x22
 2845304: 54000061     	b.ne	0x2845310 <__ZN5smash3md5EPKhm+0x278>
 2845308: f9000e9f     	str	xzr, [x20, #0x18]
 284530c: 14000002     	b	0x2845314 <__ZN5smash3md5EPKhm+0x27c>
 2845310: d2800013     	mov	x19, #0x0               ; =0
 2845314: aa1303e0     	mov	x0, x19
 2845318: a9467bfd     	ldp	x29, x30, [sp, #0x60]
 284531c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
 2845320: a94457f6     	ldp	x22, x21, [sp, #0x40]
 2845324: a9435ff8     	ldp	x24, x23, [sp, #0x30]
 2845328: a94267fa     	ldp	x26, x25, [sp, #0x20]
 284532c: 9101c3ff     	add	sp, sp, #0x70
 2845330: d65f03c0     	ret
 2845334: aa0003f3     	mov	x19, x0
 2845338: 910023e0     	add	x0, sp, #0x8
 284533c: 94057ade     	bl	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 2845340: aa1303e0     	mov	x0, x19
 2845344: 9405778b     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 2845348: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 284534c: a9017bfd     	stp	x29, x30, [sp, #0x10]
 2845350: 910043fd     	add	x29, sp, #0x10
 2845354: aa0003f3     	mov	x19, x0
 2845358: b9409000     	ldr	w0, [x0, #0x90]
 284535c: 3100041f     	cmn	w0, #0x1
 2845360: 540000a1     	b.ne	0x2845374 <__ZN5smash3md5EPKhm+0x2dc>
 2845364: aa1303e0     	mov	x0, x19
 2845368: 52800401     	mov	w1, #0x20               ; =32
 284536c: 94000006     	bl	0x2845384 <__ZN5smash3md5EPKhm+0x2ec>
 2845370: b9009260     	str	w0, [x19, #0x90]
 2845374: 13001c00     	sxtb	w0, w0
 2845378: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 284537c: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 2845380: d65f03c0     	ret
 2845384: d100c3ff     	sub	sp, sp, #0x30
 2845388: a9014ff4     	stp	x20, x19, [sp, #0x10]
 284538c: a9027bfd     	stp	x29, x30, [sp, #0x20]
 2845390: 910083fd     	add	x29, sp, #0x20
 2845394: aa0103f3     	mov	x19, x1
 2845398: 910023e8     	add	x8, sp, #0x8
 284539c: 94057a36     	bl	0x29a3c74 <dyld_stub_binder+0x29a3c74>
 28453a0: 910023e0     	add	x0, sp, #0x8
 28453a4: 97ff6bf4     	bl	0x2820374 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x1435f4>
 28453a8: f9400008     	ldr	x8, [x0]
 28453ac: f9401d08     	ldr	x8, [x8, #0x38]
 28453b0: aa1303e1     	mov	x1, x19
 28453b4: d63f0100     	blr	x8
 28453b8: aa0003f3     	mov	x19, x0
 28453bc: 910023e0     	add	x0, sp, #0x8
 28453c0: 94057be3     	bl	0x29a434c <dyld_stub_binder+0x29a434c>
 28453c4: aa1303e0     	mov	x0, x19
 28453c8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
 28453cc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 28453d0: 9100c3ff     	add	sp, sp, #0x30
 28453d4: d65f03c0     	ret
 28453d8: aa0003f3     	mov	x19, x0
 28453dc: 910023e0     	add	x0, sp, #0x8
 28453e0: 94057bdb     	bl	0x29a434c <dyld_stub_binder+0x29a434c>
 28453e4: aa1303e0     	mov	x0, x19
 28453e8: 94057762     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 28453ec: aa0003f3     	mov	x19, x0
 28453f0: 910023e0     	add	x0, sp, #0x8
 28453f4: 14057ab0     	b	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 28453f8: a9484ff4     	ldp	x20, x19, [sp, #0x80]
 28453fc: 910283ff     	add	sp, sp, #0xa0
 2845400: d65f03c0     	ret
 2845404: 910023e0     	add	x0, sp, #0x8
 2845408: aa1303e8     	mov	x8, x19
 284540c: 17fffeb7     	b	0x2844ee8 <__ZNK5smash3MD59hexdigestEv>

0000000002845410 <__ZN5smash13private_utils3ssd6Anchor15GenerateAnchorsEiRKNSt3__16vectorIfNS3_9allocatorIfEEEES9_RNS4_INS1_3BoxENS5_ISA_EEEE>:
 2845410: 6dbc23e9     	stp	d9, d8, [sp, #-0x40]!
 2845414: a90157f6     	stp	x22, x21, [sp, #0x10]
 2845418: a9024ff4     	stp	x20, x19, [sp, #0x20]
 284541c: a9037bfd     	stp	x29, x30, [sp, #0x30]
 2845420: 9100c3fd     	add	x29, sp, #0x30
 2845424: aa0303f3     	mov	x19, x3
 2845428: aa0203f5     	mov	x21, x2
 284542c: aa0103f4     	mov	x20, x1
 2845430: 1b007c08     	mul	w8, w0, w0
 2845434: 1e220108     	scvtf	s8, w8
 2845438: a9402049     	ldp	x9, x8, [x2]
 284543c: cb090108     	sub	x8, x8, x9
 2845440: a940242a     	ldp	x10, x9, [x1]
 2845444: 940001c8     	bl	0x2845b64 <__ZN5smash13private_utils3ssd12DetectHelper3NMSERNSt3__16vectorINS1_3BoxENS3_9allocatorIS5_EEEEiif+0x508>
 2845448: aa0303e0     	mov	x0, x3
 284544c: 97fc86b3     	bl	0x2766f18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a198>
 2845450: d280000a     	mov	x10, #0x0               ; =0
 2845454: a94026a8     	ldp	x8, x9, [x21]
 2845458: 1e3c1000     	fmov	s0, #-0.50000000
 284545c: 0f0167e1     	movi.2s	v1, #0x3f, lsl #24
 2845460: 0f07f602     	fmov.2s	v2, #-1.00000000
 2845464: eb09011f     	cmp	x8, x9
 2845468: 54000280     	b.eq	0x28454b8 <__ZN5smash13private_utils3ssd6Anchor15GenerateAnchorsEiRKNSt3__16vectorIfNS3_9allocatorIfEEEES9_RNS4_INS1_3BoxENS5_ISA_EEEE+0xa8>
 284546c: 940001ac     	bl	0x2845b1c <__ZN5smash13private_utils3ssd12DetectHelper3NMSERNSt3__16vectorINS1_3BoxENS3_9allocatorIS5_EEEEiif+0x4c0>
 2845470: eb0c017f     	cmp	x11, x12
 2845474: 540001e0     	b.eq	0x28454b0 <__ZN5smash13private_utils3ssd6Anchor15GenerateAnchorsEiRKNSt3__16vectorIfNS3_9allocatorIfEEEES9_RNS4_INS1_3BoxENS5_ISA_EEEE+0xa0>
 2845478: f940026e     	ldr	x14, [x19]
 284547c: 0ddfc964     	ld1r.2s	{ v4 }, [x11], #4
 2845480: 9100054a     	add	x10, x10, #0x1
 2845484: 8b0d01ce     	add	x14, x14, x13
 2845488: 2e23dc84     	fmul.2s	v4, v4, v3
 284548c: 5f849005     	fmul.s	s5, s0, v4[0]
 2845490: 5fa49006     	fmul.s	s6, s0, v4[1]
 2845494: 1e604047     	fmov	d7, d2
 2845498: 2d0019c5     	stp	s5, s6, [x14]
 284549c: 0e24cc27     	fmla.2s	v7, v1, v4
 28454a0: fd0005c7     	str	d7, [x14, #0x8]
 28454a4: b90011df     	str	wzr, [x14, #0x10]
 28454a8: 910051ad     	add	x13, x13, #0x14
 28454ac: 17fffff1     	b	0x2845470 <__ZN5smash13private_utils3ssd6Anchor15GenerateAnchorsEiRKNSt3__16vectorIfNS3_9allocatorIfEEEES9_RNS4_INS1_3BoxENS5_ISA_EEEE+0x60>
 28454b0: 91001108     	add	x8, x8, #0x4
 28454b4: 17ffffec     	b	0x2845464 <__ZN5smash13private_utils3ssd6Anchor15GenerateAnchorsEiRKNSt3__16vectorIfNS3_9allocatorIfEEEES9_RNS4_INS1_3BoxENS5_ISA_EEEE+0x54>
 28454b8: 52800000     	mov	w0, #0x0                ; =0
 28454bc: a9437bfd     	ldp	x29, x30, [sp, #0x30]
 28454c0: 140001a5     	b	0x2845b54 <__ZN5smash13private_utils3ssd12DetectHelper3NMSERNSt3__16vectorINS1_3BoxENS3_9allocatorIS5_EEEEiif+0x4f8>

00000000028454c4 <__ZN5smash13private_utils3ssd6Anchor23GenerateAnchors_pytorchEiiRKNSt3__16vectorIfNS3_9allocatorIfEEEES9_RNS4_INS1_3BoxENS5_ISA_EEEE>:
 28454c4: 6dbc23e9     	stp	d9, d8, [sp, #-0x40]!
 28454c8: a90157f6     	stp	x22, x21, [sp, #0x10]
 28454cc: a9024ff4     	stp	x20, x19, [sp, #0x20]
 28454d0: a9037bfd     	stp	x29, x30, [sp, #0x30]
 28454d4: 9100c3fd     	add	x29, sp, #0x30
 28454d8: aa0403f3     	mov	x19, x4
 28454dc: aa0303f5     	mov	x21, x3
 28454e0: aa0203f4     	mov	x20, x2
 28454e4: aa0103f6     	mov	x22, x1
 28454e8: 1b007c08     	mul	w8, w0, w0
 28454ec: 1e220108     	scvtf	s8, w8
 28454f0: a9402069     	ldp	x9, x8, [x3]
 28454f4: cb090108     	sub	x8, x8, x9
 28454f8: a940244a     	ldp	x10, x9, [x2]
 28454fc: 9400019a     	bl	0x2845b64 <__ZN5smash13private_utils3ssd12DetectHelper3NMSERNSt3__16vectorINS1_3BoxENS3_9allocatorIS5_EEEEiif+0x508>
 2845500: aa0403e0     	mov	x0, x4
 2845504: 97fc8685     	bl	0x2766f18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8a198>
 2845508: d280000a     	mov	x10, #0x0               ; =0
 284550c: a94026a8     	ldp	x8, x9, [x21]
 2845510: 1e6202c0     	scvtf	d0, w22
 2845514: 1e6c1001     	fmov	d1, #0.50000000
 2845518: 1e610800     	fmul	d0, d0, d1
 284551c: 4e080400     	dup.2d	v0, v0[0]
 2845520: 6f07f401     	fmov.2d	v1, #-0.50000000
 2845524: 0f07f602     	fmov.2s	v2, #-1.00000000
 2845528: eb09011f     	cmp	x8, x9
 284552c: 540002c0     	b.eq	0x2845584 <__ZN5smash13private_utils3ssd6Anchor23GenerateAnchors_pytorchEiiRKNSt3__16vectorIfNS3_9allocatorIfEEEES9_RNS4_INS1_3BoxENS5_ISA_EEEE+0xc0>
 2845530: 9400017b     	bl	0x2845b1c <__ZN5smash13private_utils3ssd12DetectHelper3NMSERNSt3__16vectorINS1_3BoxENS3_9allocatorIS5_EEEEiif+0x4c0>
 2845534: eb0c017f     	cmp	x11, x12
 2845538: 54000220     	b.eq	0x284557c <__ZN5smash13private_utils3ssd6Anchor23GenerateAnchors_pytorchEiiRKNSt3__16vectorIfNS3_9allocatorIfEEEES9_RNS4_INS1_3BoxENS5_ISA_EEEE+0xb8>
 284553c: 9100054a     	add	x10, x10, #0x1
 2845540: f940026e     	ldr	x14, [x19]
 2845544: 8b0d01ce     	add	x14, x14, x13
 2845548: 0ddfc964     	ld1r.2s	{ v4 }, [x11], #4
 284554c: 2e23dc85     	fmul.2s	v5, v4, v3
 2845550: 0e6178a5     	fcvtl	v5.2d, v5.2s
 2845554: 4ea01c06     	mov.16b	v6, v0
 2845558: 4e65cc26     	fmla.2d	v6, v1, v5
 284555c: 0e6168c5     	fcvtn	v5.2s, v6.2d
 2845560: 1e604046     	fmov	d6, d2
 2845564: 0e24cc66     	fmla.2s	v6, v3, v4
 2845568: 0e25d4c4     	fadd.2s	v4, v6, v5
 284556c: 6d0011c5     	stp	d5, d4, [x14]
 2845570: b90011df     	str	wzr, [x14, #0x10]
 2845574: 910051ad     	add	x13, x13, #0x14
 2845578: 17ffffef     	b	0x2845534 <__ZN5smash13private_utils3ssd6Anchor23GenerateAnchors_pytorchEiiRKNSt3__16vectorIfNS3_9allocatorIfEEEES9_RNS4_INS1_3BoxENS5_ISA_EEEE+0x70>
 284557c: 91001108     	add	x8, x8, #0x4
 2845580: 17ffffea     	b	0x2845528 <__ZN5smash13private_utils3ssd6Anchor23GenerateAnchors_pytorchEiiRKNSt3__16vectorIfNS3_9allocatorIfEEEES9_RNS4_INS1_3BoxENS5_ISA_EEEE+0x64>
 2845584: 52800000     	mov	w0, #0x0                ; =0
 2845588: a9437bfd     	ldp	x29, x30, [sp, #0x30]
 284558c: 14000172     	b	0x2845b54 <__ZN5smash13private_utils3ssd12DetectHelper3NMSERNSt3__16vectorINS1_3BoxENS3_9allocatorIS5_EEEEiif+0x4f8>

0000000002845590 <__ZN5smash13private_utils3ssd12DetectHelper3IoUEPfS3_>:
 2845590: bd400002     	ldr	s2, [x0]
 2845594: bd400821     	ldr	s1, [x1, #0x8]
 2845598: 2f00e400     	movi	d0, #0000000000000000
 284559c: 1e212040     	fcmp	s2, s1
 28455a0: 540005cc     	b.gt	0x2845658 <__ZN5smash13private_utils3ssd12DetectHelper3IoUEPfS3_+0xc8>
 28455a4: bd400404     	ldr	s4, [x0, #0x4]
 28455a8: bd400c23     	ldr	s3, [x1, #0xc]
 28455ac: 1e232080     	fcmp	s4, s3
 28455b0: 5400054c     	b.gt	0x2845658 <__ZN5smash13private_utils3ssd12DetectHelper3IoUEPfS3_+0xc8>
 28455b4: bd400807     	ldr	s7, [x0, #0x8]
 28455b8: bd400025     	ldr	s5, [x1]
 28455bc: 1e2520e0     	fcmp	s7, s5
 28455c0: 540004cb     	b.lt	0x2845658 <__ZN5smash13private_utils3ssd12DetectHelper3IoUEPfS3_+0xc8>
 28455c4: bd400c10     	ldr	s16, [x0, #0xc]
 28455c8: bd400426     	ldr	s6, [x1, #0x4]
 28455cc: 1e262200     	fcmp	s16, s6
 28455d0: 5400044b     	b.lt	0x2845658 <__ZN5smash13private_utils3ssd12DetectHelper3IoUEPfS3_+0xc8>
 28455d4: 1e252040     	fcmp	s2, s5
 28455d8: 9a80b028     	csel	x8, x1, x0, lt
 28455dc: bd400100     	ldr	s0, [x8]
 28455e0: 1e262080     	fcmp	s4, s6
 28455e4: 9a80b028     	csel	x8, x1, x0, lt
 28455e8: bd400511     	ldr	s17, [x8, #0x4]
 28455ec: 1e272020     	fcmp	s1, s7
 28455f0: 9a80b028     	csel	x8, x1, x0, lt
 28455f4: bd400912     	ldr	s18, [x8, #0x8]
 28455f8: 1e302060     	fcmp	s3, s16
 28455fc: 9a80b028     	csel	x8, x1, x0, lt
 2845600: bd400d13     	ldr	s19, [x8, #0xc]
 2845604: 1e203a40     	fsub	s0, s18, s0
 2845608: 1e2e1012     	fmov	s18, #1.00000000
 284560c: 1e322800     	fadd	s0, s0, s18
 2845610: 2f00e414     	movi	d20, #0000000000000000
 2845614: 1e346800     	fmaxnm	s0, s0, s20
 2845618: 1e313a71     	fsub	s17, s19, s17
 284561c: 1e322a31     	fadd	s17, s17, s18
 2845620: 1e346a31     	fmaxnm	s17, s17, s20
 2845624: 1e200a33     	fmul	s19, s17, s0
 2845628: 1e223a42     	fsub	s2, s18, s2
 284562c: 1e272842     	fadd	s2, s2, s7
 2845630: 1e323884     	fsub	s4, s4, s18
 2845634: 1e303884     	fsub	s4, s4, s16
 2845638: 1e220882     	fmul	s2, s4, s2
 284563c: 1e322821     	fadd	s1, s1, s18
 2845640: 1e253821     	fsub	s1, s1, s5
 2845644: 1e322863     	fadd	s3, s3, s18
 2845648: 1e2338c3     	fsub	s3, s6, s3
 284564c: 1f010861     	fmadd	s1, s3, s1, s2
 2845650: 1f200620     	fnmadd	s0, s17, s0, s1
 2845654: 1e201a60     	fdiv	s0, s19, s0
 2845658: d65f03c0     	ret
