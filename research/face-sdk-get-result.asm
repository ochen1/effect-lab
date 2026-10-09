
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

00000000026dcd80 <__ZNK3bce6device5metal6Device14GetSharedEventEv>:
 275f610: 6db733ed     	stp	d13, d12, [sp, #-0x90]!
 275f614: 6d012beb     	stp	d11, d10, [sp, #0x10]
 275f618: 6d0223e9     	stp	d9, d8, [sp, #0x20]
 275f61c: a9036ffc     	stp	x28, x27, [sp, #0x30]
 275f620: a90467fa     	stp	x26, x25, [sp, #0x40]
 275f624: a9055ff8     	stp	x24, x23, [sp, #0x50]
 275f628: a90657f6     	stp	x22, x21, [sp, #0x60]
 275f62c: a9074ff4     	stp	x20, x19, [sp, #0x70]
 275f630: a9087bfd     	stp	x29, x30, [sp, #0x80]
 275f634: 910203fd     	add	x29, sp, #0x80
 275f638: d13e83ff     	sub	sp, sp, #0xfa0
 275f63c: aa0103f3     	mov	x19, x1
 275f640: aa0003f4     	mov	x20, x0
 275f644: 528fcd88     	mov	w8, #0x7e6c             ; =32364
 275f648: 8b080015     	add	x21, x0, x8
 275f64c: 528f5768     	mov	w8, #0x7abb             ; =31419
 275f650: 8b080008     	add	x8, x0, x8
 275f654: 394e8109     	ldrb	w9, [x8, #0x3a0]
 275f658: 34000069     	cbz	w9, 0x275f664 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x828e4>
 275f65c: 39400108     	ldrb	w8, [x8]
 275f660: 34000408     	cbz	w8, 0x275f6e0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x82960>
 275f664: 52800016     	mov	w22, #0x0               ; =0
 275f668: f97e0289     	ldr	x9, [x20, #0x7c00]
 275f66c: f97e0688     	ldr	x8, [x20, #0x7c08]
 275f670: 91005129     	add	x9, x9, #0x14
 275f674: 5280a58a     	mov	w10, #0x52c             ; =1324
 275f678: d100512b     	sub	x11, x9, #0x14
 275f67c: eb08017f     	cmp	x11, x8
 275f680: 54000680     	b.eq	0x275f750 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x829d0>
 275f684: 710026df     	cmp	w22, #0x9
 275f688: 5400028c     	b.gt	0x275f6d8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x82958>
 275f68c: 385f412b     	ldurb	w11, [x9, #-0xc]
 275f690: 3400024b     	cbz	w11, 0x275f6d8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x82958>
 275f694: bd401520     	ldr	s0, [x9, #0x14]
 275f698: b940012b     	ldr	w11, [x9]
 275f69c: 385f612c     	ldurb	w12, [x9, #-0xa]
 275f6a0: 9b2a4ecd     	smaddl	x13, w22, w10, x19
 275f6a4: fc404121     	ldur	d1, [x9, #0x4]
 275f6a8: 1e38002e     	fcvtzs	w14, s1
 275f6ac: 5e0c0422     	mov	s2, v1[1]
 275f6b0: 1e38004f     	fcvtzs	w15, s2
 275f6b4: fc40c122     	ldur	d2, [x9, #0xc]
 275f6b8: 0e21d441     	fadd.2s	v1, v2, v1
 275f6bc: 0ea1b821     	fcvtzs.2s	v1, v1
 275f6c0: 29003dae     	stp	w14, w15, [x13]
 275f6c4: fd0005a1     	str	d1, [x13, #0x8]
 275f6c8: bd0011a0     	str	s0, [x13, #0x10]
 275f6cc: b90525ab     	str	w11, [x13, #0x524]
 275f6d0: 3914a1ac     	strb	w12, [x13, #0x528]
 275f6d4: 110006d6     	add	w22, w22, #0x1
 275f6d8: 91064129     	add	x9, x9, #0x190
 275f6dc: 17ffffe7     	b	0x275f678 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x828f8>
 275f6e0: d2800017     	mov	x23, #0x0               ; =0
 275f6e4: 52800016     	mov	w22, #0x0               ; =0
 275f6e8: 5280b018     	mov	w24, #0x580             ; =1408
 275f6ec: 52867719     	mov	w25, #0x33b8            ; =13240
 275f6f0: 5280a59a     	mov	w26, #0x52c             ; =1324
 275f6f4: f9421a88     	ldr	x8, [x20, #0x430]
 275f6f8: eb17011f     	cmp	x8, x23
 275f6fc: 540002a9     	b.ls	0x275f750 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x829d0>
 275f700: 710026df     	cmp	w22, #0x9
 275f704: 5400022c     	b.gt	0x275f748 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x829c8>
 275f708: f9400288     	ldr	x8, [x20]
 275f70c: b8777903     	ldr	w3, [x8, x23, lsl #2]
 275f710: 9129c3e1     	add	x1, sp, #0xa70
 275f714: 9101e3e2     	add	x2, sp, #0x78
 275f718: aa1403e0     	mov	x0, x20
 275f71c: 94000aa4     	bl	0x27621ac <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8542c>
 275f720: 9b384ec8     	smaddl	x8, w22, w24, x19
 275f724: 8b190100     	add	x0, x8, x25
 275f728: 9101e3e1     	add	x1, sp, #0x78
 275f72c: 5280b002     	mov	w2, #0x580              ; =1408
 275f730: 940917f9     	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 275f734: 9b3a4ec0     	smaddl	x0, w22, w26, x19
 275f738: 9129c3e1     	add	x1, sp, #0xa70
 275f73c: 5280a582     	mov	w2, #0x52c              ; =1324
 275f740: 940917f5     	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 275f744: 110006d6     	add	w22, w22, #0x1
 275f748: 910006f7     	add	x23, x23, #0x1
 275f74c: 17ffffea     	b	0x275f6f4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x82974>
 275f750: 528d5708     	mov	w8, #0x6ab8             ; =27320
 275f754: b8286a76     	str	w22, [x19, x8]
 275f758: b94002a8     	ldr	w8, [x21]
 275f75c: 7100091f     	cmp	w8, #0x2
 275f760: 540007c1     	b.ne	0x275f858 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x82ad8>
 275f764: f97e0293     	ldr	x19, [x20, #0x7c00]
 275f768: f97e0694     	ldr	x20, [x20, #0x7c08]
 275f76c: 1e2e1008     	fmov	s8, #1.00000000
 275f770: eb14027f     	cmp	x19, x20
 275f774: 54000720     	b.eq	0x275f858 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x82ad8>
 275f778: f9406268     	ldr	x8, [x19, #0xc0]
 275f77c: b40006a8     	cbz	x8, 0x275f850 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x82ad0>
 275f780: f9406a64     	ldr	x4, [x19, #0xd0]
 275f784: 9129c3e0     	add	x0, sp, #0xa70
 275f788: 94002ecd     	bl	0x276b2bc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e53c>
 275f78c: 912843e0     	add	x0, sp, #0xa10
 275f790: 94002dfe     	bl	0x276af88 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e208>
 275f794: 9126c3e0     	add	x0, sp, #0x9b0
 275f798: 94002dfc     	bl	0x276af88 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e208>
 275f79c: 94002de0     	bl	0x276af1c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e19c>
 275f7a0: 9101e3e0     	add	x0, sp, #0x78
 275f7a4: 940370a8     	bl	0x283ba44 <__ZN5smash22ImageTransformNewAlignC1Ev>
 275f7a8: 9101e3e0     	add	x0, sp, #0x78
 275f7ac: 9129c3e1     	add	x1, sp, #0xa70
