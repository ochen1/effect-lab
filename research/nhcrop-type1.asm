
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000001f278e4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv>:
 1f28570: d10443ff     	sub	sp, sp, #0x110
 1f28574: 6d0b23e9     	stp	d9, d8, [sp, #0xb0]
 1f28578: a90c6ffc     	stp	x28, x27, [sp, #0xc0]
 1f2857c: a90d5ff8     	stp	x24, x23, [sp, #0xd0]
 1f28580: a90e57f6     	stp	x22, x21, [sp, #0xe0]
 1f28584: a90f4ff4     	stp	x20, x19, [sp, #0xf0]
 1f28588: a9107bfd     	stp	x29, x30, [sp, #0x100]
 1f2858c: 910403fd     	add	x29, sp, #0x100
 1f28590: 94000942     	bl	0x1f2aa98 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x31b4>
 1f28594: b9401828     	ldr	w8, [x1, #0x18]
 1f28598: 2f00e408     	movi	d8, #0000000000000000
 1f2859c: 2f00e409     	movi	d9, #0000000000000000
 1f285a0: 7100091f     	cmp	w8, #0x2
 1f285a4: 54000281     	b.ne	0x1f285f4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xd10>
 1f285a8: 2d4506e0     	ldp	s0, s1, [x23, #0x28]
 1f285ac: bd402ac2     	ldr	s2, [x22, #0x28]
 1f285b0: 1e222000     	fcmp	s0, s2
 1f285b4: 5400008c     	b.gt	0x1f285c4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xce0>
 1f285b8: 1e214042     	fneg	s2, s2
 1f285bc: 1e222000     	fcmp	s0, s2
 1f285c0: 5400004a     	b.ge	0x1f285c8 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xce4>
 1f285c4: 1e204040     	fmov	s0, s2
 1f285c8: bd4022c2     	ldr	s2, [x22, #0x20]
 1f285cc: 1e222020     	fcmp	s1, s2
 1f285d0: 5400008c     	b.gt	0x1f285e0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xcfc>
 1f285d4: 1e214042     	fneg	s2, s2
 1f285d8: 1e222020     	fcmp	s1, s2
 1f285dc: 5400004a     	b.ge	0x1f285e4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xd00>
 1f285e0: 1e204041     	fmov	s1, s2
 1f285e4: bd401ec2     	ldr	s2, [x22, #0x1c]
 1f285e8: 1e210848     	fmul	s8, s2, s1
 1f285ec: bd4026c1     	ldr	s1, [x22, #0x24]
 1f285f0: 1e200829     	fmul	s9, s1, s0
 1f285f4: 94002499     	bl	0x1f31858 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x9f74>
 1f285f8: aa0003f8     	mov	x24, x0
 1f285fc: a9402009     	ldp	x9, x8, [x0]
 1f28600: cb090108     	sub	x8, x8, x9
 1f28604: 9343fd01     	asr	x1, x8, #3
 1f28608: d101a3a0     	sub	x0, x29, #0x68
 1f2860c: 94235454     	bl	0x27fd75c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x1209dc>
 1f28610: f9400301     	ldr	x1, [x24]
 1f28614: a979a3a0     	ldp	x0, x8, [x29, #-0x68]
 1f28618: cb000102     	sub	x2, x8, x0
 1f2861c: 9429f43e     	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1f28620: a979a7a8     	ldp	x8, x9, [x29, #-0x68]
 1f28624: eb09011f     	cmp	x8, x9
 1f28628: 540000c0     	b.eq	0x1f28640 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xd5c>
 1f2862c: 2d400500     	ldp	s0, s1, [x8]
 1f28630: 1e292800     	fadd	s0, s0, s9
 1f28634: 1e282821     	fadd	s1, s1, s8
 1f28638: 2c810500     	stp	s0, s1, [x8], #0x8
 1f2863c: 17fffffa     	b	0x1f28624 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xd40>
 1f28640: 910042e1     	add	x1, x23, #0x10
 1f28644: 910203e0     	add	x0, sp, #0x80
 1f28648: 9400087d     	bl	0x1f2a83c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x2f58>
 1f2864c: 9101a3e0     	add	x0, sp, #0x68
 1f28650: 52800d41     	mov	w1, #0x6a               ; =106
 1f28654: 94235442     	bl	0x27fd75c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x1209dc>
 1f28658: d2800008     	mov	x8, #0x0                ; =0
 1f2865c: f94043e9     	ldr	x9, [sp, #0x80]
 1f28660: f94037ea     	ldr	x10, [sp, #0x68]
 1f28664: f10d411f     	cmp	x8, #0x350
 1f28668: 540000a0     	b.eq	0x1f2867c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xd98>
 1f2866c: fc686920     	ldr	d0, [x9, x8]
 1f28670: fc286940     	str	d0, [x10, x8]
 1f28674: 91002108     	add	x8, x8, #0x8
 1f28678: 17fffffb     	b	0x1f28664 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xd80>
 1f2867c: 910023e0     	add	x0, sp, #0x8
 1f28680: 97abf5c8     	bl	0xa25da0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec0>
 1f28684: 9101a3e0     	add	x0, sp, #0x68
 1f28688: d101a3a1     	sub	x1, x29, #0x68
 1f2868c: 910023e2     	add	x2, sp, #0x8
 1f28690: 9400004c     	bl	0x1f287c0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xedc>
 1f28694: b9401ac8     	ldr	w8, [x22, #0x18]
 1f28698: 7100051f     	cmp	w8, #0x1
 1f2869c: 54000241     	b.ne	0x1f286e4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xe00>
 1f286a0: bd402ae0     	ldr	s0, [x23, #0x28]
 1f286a4: 1e20c001     	fabs	s1, s0
 1f286a8: 52a84188     	mov	w8, #0x420c0000         ; =1108082688
 1f286ac: 1e270100     	fmov	s0, w8
 1f286b0: 1e202020     	fcmp	s1, s0
 1f286b4: 540001ca     	b.ge	0x1f286ec <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xe08>
 1f286b8: 1e2a1000     	fmov	s0, #0.25000000
 1f286bc: 1e273002     	fmov	s2, #25.00000000
 1f286c0: 1e222020     	fcmp	s1, s2
 1f286c4: 5400018a     	b.ge	0x1f286f4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xe10>
 1f286c8: 1e229000     	fmov	s0, #5.00000000
 1f286cc: 1e202020     	fcmp	s1, s0
 1f286d0: 1a9fa7e8     	cset	w8, lt
 1f286d4: f0007329     	adrp	x9, 0x2d8f000 <__ZTSN2pk7SkTQuadE+0x6c3c>
 1f286d8: 911ae129     	add	x9, x9, #0x6b8
 1f286dc: bc685920     	ldr	s0, [x9, w8, uxtw #2]
 1f286e0: 14000005     	b	0x1f286f4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xe10>
 1f286e4: bd402ec0     	ldr	s0, [x22, #0x2c]
 1f286e8: 14000003     	b	0x1f286f4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xe10>
 1f286ec: 90009328     	adrp	x8, 0x318c000 <__ZTSN5ceres8internal15SchurEliminatorILin1ELin1ELin1EEE+0x78ba>
 1f286f0: bd41b500     	ldr	s0, [x8, #0x1b4]
 1f286f4: 29418ac3     	ldp	w3, w2, [x22, #0xc]
 1f286f8: 1e220061     	scvtf	s1, w3
 1f286fc: 1e220042     	scvtf	s2, w2
 1f28700: 1e2c1003     	fmov	s3, #0.50000000
 1f28704: 1e232803     	fadd	s3, s0, s3
 1f28708: 1e220862     	fmul	s2, s3, s2
 1f2870c: 1e211841     	fdiv	s1, s2, s1
 1f28710: 1e3c1002     	fmov	s2, #-0.50000000
 1f28714: 1e222821     	fadd	s1, s1, s2
 1f28718: 910023e0     	add	x0, sp, #0x8
 1f2871c: 910023e1     	add	x1, sp, #0x8
 1f28720: 940000b6     	bl	0x1f289f8 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1114>
 1f28724: 2d4606c0     	ldp	s0, s1, [x22, #0x30]
 1f28728: 910023e0     	add	x0, sp, #0x8
 1f2872c: 910023e1     	add	x1, sp, #0x8
 1f28730: 9400012b     	bl	0x1f28bdc <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x12f8>
 1f28734: 910023e3     	add	x3, sp, #0x8
 1f28738: 940008a5     	bl	0x1f2a9cc <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x30e8>
 1f2873c: 910023e0     	add	x0, sp, #0x8
 1f28740: 97abec53     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 1f28744: 9101a3e0     	add	x0, sp, #0x68
 1f28748: 97a7b9a1     	bl	0x916dcc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x30eec>
 1f2874c: 910203e0     	add	x0, sp, #0x80
 1f28750: 94002c51     	bl	0x1f33894 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xbfb0>
 1f28754: d101a3a0     	sub	x0, x29, #0x68
 1f28758: 97a7b99d     	bl	0x916dcc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x30eec>
 1f2875c: a9507bfd     	ldp	x29, x30, [sp, #0x100]
 1f28760: a94f4ff4     	ldp	x20, x19, [sp, #0xf0]
 1f28764: a94e57f6     	ldp	x22, x21, [sp, #0xe0]
 1f28768: a94d5ff8     	ldp	x24, x23, [sp, #0xd0]
 1f2876c: a94c6ffc     	ldp	x28, x27, [sp, #0xc0]
 1f28770: 6d4b23e9     	ldp	d9, d8, [sp, #0xb0]
 1f28774: 910443ff     	add	sp, sp, #0x110
 1f28778: d65f03c0     	ret
 1f2877c: 14000007     	b	0x1f28798 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xeb4>
 1f28780: aa0003f3     	mov	x19, x0
 1f28784: 14000008     	b	0x1f287a4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xec0>
 1f28788: aa0003f3     	mov	x19, x0
 1f2878c: 14000008     	b	0x1f287ac <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xec8>
 1f28790: aa0003f3     	mov	x19, x0
 1f28794: 14000008     	b	0x1f287b4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xed0>
 1f28798: aa0003f3     	mov	x19, x0
 1f2879c: 910023e0     	add	x0, sp, #0x8
 1f287a0: 97abec3b     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 1f287a4: 9101a3e0     	add	x0, sp, #0x68
 1f287a8: 97a7b989     	bl	0x916dcc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x30eec>
 1f287ac: 910203e0     	add	x0, sp, #0x80
 1f287b0: 94002c39     	bl	0x1f33894 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xbfb0>
 1f287b4: d101a3a0     	sub	x0, x29, #0x68
 1f287b8: 97a7b985     	bl	0x916dcc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x30eec>
 1f287bc: 94000889     	bl	0x1f2a9e0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x30fc>
 1f287c0: d10643ff     	sub	sp, sp, #0x190
 1f287c4: 6d1423e9     	stp	d9, d8, [sp, #0x140]
 1f287c8: a9156ffc     	stp	x28, x27, [sp, #0x150]
 1f287cc: a91657f6     	stp	x22, x21, [sp, #0x160]
 1f287d0: a9174ff4     	stp	x20, x19, [sp, #0x170]
 1f287d4: a9187bfd     	stp	x29, x30, [sp, #0x180]
 1f287d8: 910603fd     	add	x29, sp, #0x180
 1f287dc: aa0203f3     	mov	x19, x2
 1f287e0: aa0103f4     	mov	x20, x1
 1f287e4: aa0003f5     	mov	x21, x0
 1f287e8: 9000aca8     	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
 1f287ec: f9435508     	ldr	x8, [x8, #0x6a8]
 1f287f0: f9400108     	ldr	x8, [x8]
 1f287f4: f81b83a8     	stur	x8, [x29, #-0x48]
 1f287f8: a9400400     	ldp	x0, x1, [x0]
 1f287fc: cb000028     	sub	x8, x1, x0
 1f28800: 9343fd16     	asr	x22, x8, #3
 1f28804: f81903bf     	stur	xzr, [x29, #-0x70]
 1f28808: d101a3a8     	sub	x8, x29, #0x68
 1f2880c: d101c3a2     	sub	x2, x29, #0x70
 1f28810: 94000387     	bl	0x1f2962c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1d48>
 1f28814: 9e2302c0     	ucvtf	s0, x22
 1f28818: fc5983a1     	ldur	d1, [x29, #-0x68]
 1f2881c: 0e040408     	dup.2s	v8, v0[0]
 1f28820: 2e28fc20     	fdiv.2s	v0, v1, v8
 1f28824: 3d8003e0     	str	q0, [sp]
 1f28828: fc1983a0     	stur	d0, [x29, #-0x68]
 1f2882c: a9400aa1     	ldp	x1, x2, [x21]
 1f28830: d10223a0     	sub	x0, x29, #0x88
 1f28834: 94000840     	bl	0x1f2a934 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x3050>
 1f28838: 3dc003e1     	ldr	q1, [sp]
 1f2883c: a94022a9     	ldp	x9, x8, [x21]
 1f28840: cb090108     	sub	x8, x8, x9
 1f28844: 9343fd08     	asr	x8, x8, #3
 1f28848: f85783a9     	ldur	x9, [x29, #-0x88]
 1f2884c: b40000c8     	cbz	x8, 0x1f28864 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf80>
 1f28850: fd400120     	ldr	d0, [x9]
 1f28854: 0ea1d400     	fsub.2s	v0, v0, v1
 1f28858: fc008520     	str	d0, [x9], #0x8
 1f2885c: d1000508     	sub	x8, x8, #0x1
 1f28860: b5ffff88     	cbnz	x8, 0x1f28850 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf6c>
 1f28864: a9400680     	ldp	x0, x1, [x20]
 1f28868: f81683bf     	stur	xzr, [x29, #-0x98]
 1f2886c: d10243a8     	sub	x8, x29, #0x90
 1f28870: d10263a2     	sub	x2, x29, #0x98
 1f28874: 9400036e     	bl	0x1f2962c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1d48>
 1f28878: fc5703a9     	ldur	d9, [x29, #-0x90]
 1f2887c: a9400a81     	ldp	x1, x2, [x20]
 1f28880: d102c3a0     	sub	x0, x29, #0xb0
 1f28884: 9400082c     	bl	0x1f2a934 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x3050>
 1f28888: 2e28fd20     	fdiv.2s	v0, v9, v8
 1f2888c: a9402289     	ldp	x9, x8, [x20]
 1f28890: cb090108     	sub	x8, x8, x9
 1f28894: 9343fd08     	asr	x8, x8, #3
 1f28898: f85503a9     	ldur	x9, [x29, #-0xb0]
 1f2889c: b40000c8     	cbz	x8, 0x1f288b4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xfd0>
 1f288a0: fd400121     	ldr	d1, [x9]
 1f288a4: 0ea0d421     	fsub.2s	v1, v1, v0
 1f288a8: fc008521     	str	d1, [x9], #0x8
 1f288ac: d1000508     	sub	x8, x8, #0x1
 1f288b0: b5ffff88     	cbnz	x8, 0x1f288a0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xfbc>
 1f288b4: f85783a9     	ldur	x9, [x29, #-0x88]
 1f288b8: f85503a8     	ldur	x8, [x29, #-0xb0]
 1f288bc: 91001108     	add	x8, x8, #0x4
 1f288c0: 91001129     	add	x9, x9, #0x4
 1f288c4: 2f00e401     	movi	d1, #0000000000000000
 1f288c8: 2f00e402     	movi	d2, #0000000000000000
 1f288cc: 2f00e403     	movi	d3, #0000000000000000
 1f288d0: b40001b6     	cbz	x22, 0x1f28904 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1020>
 1f288d4: 2d7f9924     	ldp	s4, s6, [x9, #-0x4]
 1f288d8: 2d7f9d05     	ldp	s5, s7, [x8, #-0x4]
 1f288dc: 1f0404a1     	fmadd	s1, s5, s4, s1
 1f288e0: 1f0604e1     	fmadd	s1, s7, s6, s1
 1f288e4: 1f0588c2     	fmsub	s2, s6, s5, s2
 1f288e8: 1f0408e2     	fmadd	s2, s7, s4, s2
 1f288ec: 1f040c83     	fmadd	s3, s4, s4, s3
 1f288f0: 1f060cc3     	fmadd	s3, s6, s6, s3
 1f288f4: d10006d6     	sub	x22, x22, #0x1
 1f288f8: 91002108     	add	x8, x8, #0x8
 1f288fc: 91002129     	add	x9, x9, #0x8
 1f28900: b5fffeb6     	cbnz	x22, 0x1f288d4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xff0>
 1f28904: 1e231821     	fdiv	s1, s1, s3
 1f28908: 1e231842     	fdiv	s2, s2, s3
 1f2890c: 1e214043     	fneg	s3, s2
 1f28910: 2d340fa1     	stp	s1, s3, [x29, #-0x60]
 1f28914: 1e204003     	fmov	s3, s0
 1f28918: 3dc003e4     	ldr	q4, [sp]
 1f2891c: 5fa41043     	fmla.s	s3, s2, v4[1]
 1f28920: 5f845023     	fmls.s	s3, s1, v4[0]
 1f28924: 2d350ba3     	stp	s3, s2, [x29, #-0x58]
 1f28928: 5e0c0400     	mov	s0, v0[1]
 1f2892c: 5fa45020     	fmls.s	s0, s1, v4[1]
 1f28930: 5f845040     	fmls.s	s0, s2, v4[0]
 1f28934: 2d3603a1     	stp	s1, s0, [x29, #-0x50]
 1f28938: 910043e0     	add	x0, sp, #0x10
 1f2893c: d10183a3     	sub	x3, x29, #0x60
 1f28940: 52800041     	mov	w1, #0x2                ; =2
 1f28944: 9400087a     	bl	0x1f2ab2c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x3248>
 1f28948: 9101c3e8     	add	x8, sp, #0x70
 1f2894c: 910043e0     	add	x0, sp, #0x10
 1f28950: 94234bed     	bl	0x27fb904 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x11eb84>
 1f28954: 9101c3e1     	add	x1, sp, #0x70
 1f28958: aa1303e0     	mov	x0, x19
 1f2895c: 97adf7cf     	bl	0xaa6898 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1c09b8>
 1f28960: 9101c3e0     	add	x0, sp, #0x70
 1f28964: 97abf6c3     	bl	0xa26470 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x140590>
 1f28968: 910043e0     	add	x0, sp, #0x10
 1f2896c: 97abf6c1     	bl	0xa26470 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x140590>
 1f28970: d102c3a0     	sub	x0, x29, #0xb0
 1f28974: 97a7b916     	bl	0x916dcc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x30eec>
 1f28978: d10223a0     	sub	x0, x29, #0x88
 1f2897c: 97a7b914     	bl	0x916dcc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x30eec>
 1f28980: f85b83a8     	ldur	x8, [x29, #-0x48]
 1f28984: 9000aca9     	adrp	x9, 0x34bc000 <dyld_stub_binder+0x34bc000>
 1f28988: f9435529     	ldr	x9, [x9, #0x6a8]
 1f2898c: f9400129     	ldr	x9, [x9]
 1f28990: eb08013f     	cmp	x9, x8
 1f28994: 54000101     	b.ne	0x1f289b4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x10d0>
 1f28998: a9587bfd     	ldp	x29, x30, [sp, #0x180]
 1f2899c: a9574ff4     	ldp	x20, x19, [sp, #0x170]
 1f289a0: a95657f6     	ldp	x22, x21, [sp, #0x160]
 1f289a4: a9556ffc     	ldp	x28, x27, [sp, #0x150]
 1f289a8: 6d5423e9     	ldp	d9, d8, [sp, #0x140]
 1f289ac: 910643ff     	add	sp, sp, #0x190
 1f289b0: d65f03c0     	ret
 1f289b4: 9429ef2f     	bl	0x29a4670 <dyld_stub_binder+0x29a4670>
 1f289b8: aa0003f3     	mov	x19, x0
 1f289bc: 9101c3e0     	add	x0, sp, #0x70
 1f289c0: 97abf6ac     	bl	0xa26470 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x140590>
 1f289c4: 14000002     	b	0x1f289cc <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x10e8>
 1f289c8: aa0003f3     	mov	x19, x0
 1f289cc: 910043e0     	add	x0, sp, #0x10
 1f289d0: 97abf6a8     	bl	0xa26470 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x140590>
 1f289d4: 14000002     	b	0x1f289dc <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x10f8>
 1f289d8: aa0003f3     	mov	x19, x0
 1f289dc: d102c3a0     	sub	x0, x29, #0xb0
 1f289e0: 97a7b8fb     	bl	0x916dcc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x30eec>
 1f289e4: 14000002     	b	0x1f289ec <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1108>
 1f289e8: aa0003f3     	mov	x19, x0
 1f289ec: d10223a0     	sub	x0, x29, #0x88
 1f289f0: 97a7b8f7     	bl	0x916dcc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x30eec>
 1f289f4: 940007fb     	bl	0x1f2a9e0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x30fc>
 1f289f8: 6dbb23e9     	stp	d9, d8, [sp, #-0x50]!
 1f289fc: a9016ffc     	stp	x28, x27, [sp, #0x10]
 1f28a00: a90257f6     	stp	x22, x21, [sp, #0x20]
 1f28a04: a9034ff4     	stp	x20, x19, [sp, #0x30]
 1f28a08: a9047bfd     	stp	x29, x30, [sp, #0x40]
 1f28a0c: 910103fd     	add	x29, sp, #0x40
 1f28a10: d10943ff     	sub	sp, sp, #0x250
 1f28a14: 1e204028     	fmov	s8, s1
 1f28a18: 1e204009     	fmov	s9, s0
 1f28a1c: aa0303f5     	mov	x21, x3
 1f28a20: aa0203f4     	mov	x20, x2
 1f28a24: aa0103f3     	mov	x19, x1
 1f28a28: aa0003f6     	mov	x22, x0
 1f28a2c: 9000aca8     	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
 1f28a30: f9435508     	ldr	x8, [x8, #0x6a8]
 1f28a34: f9400108     	ldr	x8, [x8]
 1f28a38: f81b83a8     	stur	x8, [x29, #-0x48]
 1f28a3c: 94000842     	bl	0x1f2ab44 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x3260>
 1f28a40: d10343a0     	sub	x0, x29, #0xd0
 1f28a44: 52800061     	mov	w1, #0x3                ; =3
 1f28a48: 52800062     	mov	w2, #0x3                ; =3
 1f28a4c: 94235209     	bl	0x27fd270 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x1204f0>
 1f28a50: d2800008     	mov	x8, #0x0                ; =0
 1f28a54: f9400ac9     	ldr	x9, [x22, #0x10]
 1f28a58: f94026ca     	ldr	x10, [x22, #0x48]
 1f28a5c: f940014b     	ldr	x11, [x10]
 1f28a60: f85403aa     	ldur	x10, [x29, #-0xc0]
 1f28a64: f85783ac     	ldur	x12, [x29, #-0x88]
 1f28a68: f940018c     	ldr	x12, [x12]
 1f28a6c: aa0a03ed     	mov	x13, x10
 1f28a70: f100091f     	cmp	x8, #0x2
 1f28a74: 54000180     	b.eq	0x1f28aa4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x11c0>
 1f28a78: d280000e     	mov	x14, #0x0               ; =0
 1f28a7c: f10031df     	cmp	x14, #0xc
 1f28a80: 540000a0     	b.eq	0x1f28a94 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x11b0>
 1f28a84: bc6e6920     	ldr	s0, [x9, x14]
 1f28a88: bc2e69a0     	str	s0, [x13, x14]
 1f28a8c: 910011ce     	add	x14, x14, #0x4
 1f28a90: 17fffffb     	b	0x1f28a7c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1198>
 1f28a94: 91000508     	add	x8, x8, #0x1
 1f28a98: 8b0c01ad     	add	x13, x13, x12
 1f28a9c: 8b0b0129     	add	x9, x9, x11
 1f28aa0: 17fffff4     	b	0x1f28a70 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x118c>
 1f28aa4: 94000839     	bl	0x1f2ab88 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x32a4>
 1f28aa8: 1e2202a1     	scvtf	s1, w21
 1f28aac: 1e2e1002     	fmov	s2, #1.00000000
 1f28ab0: 1e201003     	fmov	s3, #2.00000000
 1f28ab4: 1f030924     	fmadd	s4, s9, s3, s2
 1f28ab8: 1e241821     	fdiv	s1, s1, s4
 1f28abc: 1e220284     	scvtf	s4, w20
 1f28ac0: 1f030902     	fmadd	s2, s8, s3, s2
 1f28ac4: 1e221882     	fdiv	s2, s4, s2
 1f28ac8: bc1943a1     	stur	s1, [x29, #-0x6c]
 1f28acc: b81983bf     	stur	wzr, [x29, #-0x68]
 1f28ad0: 1e290821     	fmul	s1, s1, s9
 1f28ad4: bc19c3a1     	stur	s1, [x29, #-0x64]
 1f28ad8: b81a03bf     	stur	wzr, [x29, #-0x60]
 1f28adc: 1e280841     	fmul	s1, s2, s8
 1f28ae0: 2d3487a2     	stp	s2, s1, [x29, #-0x5c]
 1f28ae4: fc1ac3a0     	stur	d0, [x29, #-0x54]
 1f28ae8: b81b43a9     	stur	w9, [x29, #-0x4c]
 1f28aec: 910583e0     	add	x0, sp, #0x160
 1f28af0: d101b3a3     	sub	x3, x29, #0x6c
 1f28af4: 52800061     	mov	w1, #0x3                ; =3
 1f28af8: 9400080d     	bl	0x1f2ab2c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x3248>
 1f28afc: 910003e8     	mov	x8, sp
 1f28b00: 910583e0     	add	x0, sp, #0x160
 1f28b04: d10343a1     	sub	x1, x29, #0xd0
 1f28b08: 97abdc7a     	bl	0xa1fcf0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x139e10>
 1f28b0c: f94003e0     	ldr	x0, [sp]
 1f28b10: f9400008     	ldr	x8, [x0]
 1f28b14: f9400d08     	ldr	x8, [x8, #0x18]
 1f28b18: 910003e1     	mov	x1, sp
 1f28b1c: d10343a2     	sub	x2, x29, #0xd0
 1f28b20: 528000a3     	mov	w3, #0x5                ; =5
 1f28b24: d63f0100     	blr	x8
 1f28b28: 9400081e     	bl	0x1f2aba0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x32bc>
 1f28b2c: d2800008     	mov	x8, #0x0                ; =0
 1f28b30: f85403a9     	ldur	x9, [x29, #-0xc0]
 1f28b34: f85783aa     	ldur	x10, [x29, #-0x88]
 1f28b38: 94000869     	bl	0x1f2acdc <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x33f8>
 1f28b3c: f100091f     	cmp	x8, #0x2
 1f28b40: 54000180     	b.eq	0x1f28b70 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x128c>
 1f28b44: d280000d     	mov	x13, #0x0               ; =0
 1f28b48: f10031bf     	cmp	x13, #0xc
 1f28b4c: 540000a0     	b.eq	0x1f28b60 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x127c>
 1f28b50: bc6d6920     	ldr	s0, [x9, x13]
 1f28b54: bc2d6960     	str	s0, [x11, x13]
 1f28b58: 910011ad     	add	x13, x13, #0x4
 1f28b5c: 17fffffb     	b	0x1f28b48 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1264>
 1f28b60: 91000508     	add	x8, x8, #0x1
 1f28b64: 8b0c016b     	add	x11, x11, x12
 1f28b68: 8b0a0129     	add	x9, x9, x10
 1f28b6c: 17fffff4     	b	0x1f28b3c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1258>
 1f28b70: 9400081c     	bl	0x1f2abe0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x32fc>
 1f28b74: d10343a0     	sub	x0, x29, #0xd0
 1f28b78: 97abf63e     	bl	0xa26470 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x140590>
 1f28b7c: f85b83a8     	ldur	x8, [x29, #-0x48]
 1f28b80: 9000aca9     	adrp	x9, 0x34bc000 <dyld_stub_binder+0x34bc000>
 1f28b84: f9435529     	ldr	x9, [x9, #0x6a8]
 1f28b88: f9400129     	ldr	x9, [x9]
 1f28b8c: eb08013f     	cmp	x9, x8
 1f28b90: 54000101     	b.ne	0x1f28bb0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x12cc>
 1f28b94: 910943ff     	add	sp, sp, #0x250
 1f28b98: a9447bfd     	ldp	x29, x30, [sp, #0x40]
 1f28b9c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
 1f28ba0: a94257f6     	ldp	x22, x21, [sp, #0x20]
 1f28ba4: a9416ffc     	ldp	x28, x27, [sp, #0x10]
 1f28ba8: 6cc523e9     	ldp	d9, d8, [sp], #0x50
 1f28bac: d65f03c0     	ret
 1f28bb0: 9429eeb0     	bl	0x29a4670 <dyld_stub_binder+0x29a4670>
 1f28bb4: aa0003f3     	mov	x19, x0
 1f28bb8: 940007fa     	bl	0x1f2aba0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x32bc>
 1f28bbc: 14000002     	b	0x1f28bc4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x12e0>
 1f28bc0: aa0003f3     	mov	x19, x0
 1f28bc4: 94000807     	bl	0x1f2abe0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x32fc>
 1f28bc8: 14000002     	b	0x1f28bd0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x12ec>
 1f28bcc: aa0003f3     	mov	x19, x0
 1f28bd0: d10343a0     	sub	x0, x29, #0xd0
 1f28bd4: 97abf627     	bl	0xa26470 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x140590>
 1f28bd8: 94000782     	bl	0x1f2a9e0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x30fc>
 1f28bdc: 6dbc23e9     	stp	d9, d8, [sp, #-0x40]!
 1f28be0: a9016ffc     	stp	x28, x27, [sp, #0x10]
 1f28be4: a9024ff4     	stp	x20, x19, [sp, #0x20]
 1f28be8: a9037bfd     	stp	x29, x30, [sp, #0x30]
 1f28bec: 9100c3fd     	add	x29, sp, #0x30
 1f28bf0: d10943ff     	sub	sp, sp, #0x250
 1f28bf4: 1e204028     	fmov	s8, s1
 1f28bf8: 1e204009     	fmov	s9, s0
 1f28bfc: aa0103f3     	mov	x19, x1
 1f28c00: aa0003f4     	mov	x20, x0
 1f28c04: 9000aca8     	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
 1f28c08: f9435508     	ldr	x8, [x8, #0x6a8]
 1f28c0c: f9400108     	ldr	x8, [x8]
 1f28c10: f81c83a8     	stur	x8, [x29, #-0x38]
 1f28c14: 940007cc     	bl	0x1f2ab44 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x3260>
 1f28c18: d10303a0     	sub	x0, x29, #0xc0
 1f28c1c: 52800061     	mov	w1, #0x3                ; =3
 1f28c20: 52800062     	mov	w2, #0x3                ; =3
 1f28c24: 94235193     	bl	0x27fd270 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x1204f0>
 1f28c28: d2800008     	mov	x8, #0x0                ; =0
 1f28c2c: f9400a89     	ldr	x9, [x20, #0x10]
 1f28c30: f940268a     	ldr	x10, [x20, #0x48]
 1f28c34: f940014b     	ldr	x11, [x10]
 1f28c38: f85503aa     	ldur	x10, [x29, #-0xb0]
 1f28c3c: f85883ac     	ldur	x12, [x29, #-0x78]
 1f28c40: f940018c     	ldr	x12, [x12]
 1f28c44: aa0a03ed     	mov	x13, x10
 1f28c48: f100091f     	cmp	x8, #0x2
 1f28c4c: 54000180     	b.eq	0x1f28c7c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1398>
 1f28c50: d280000e     	mov	x14, #0x0               ; =0
 1f28c54: f10031df     	cmp	x14, #0xc
 1f28c58: 540000a0     	b.eq	0x1f28c6c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1388>
 1f28c5c: bc6e6920     	ldr	s0, [x9, x14]
 1f28c60: bc2e69a0     	str	s0, [x13, x14]
 1f28c64: 910011ce     	add	x14, x14, #0x4
 1f28c68: 17fffffb     	b	0x1f28c54 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1370>
 1f28c6c: 91000508     	add	x8, x8, #0x1
 1f28c70: 8b0c01ad     	add	x13, x13, x12
 1f28c74: 8b0b0129     	add	x9, x9, x11
 1f28c78: 17fffff4     	b	0x1f28c48 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1364>
 1f28c7c: 940007c3     	bl	0x1f2ab88 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x32a4>
 1f28c80: d0006848     	adrp	x8, 0x2c32000 <__ZTSN9Telemetry23ByteioTelemetryReporterE+0x1921>
 1f28c84: fd45a901     	ldr	d1, [x8, #0xb50]
 1f28c88: fc1a03a1     	stur	d1, [x29, #-0x60]
 1f28c8c: bc1a83a9     	stur	s9, [x29, #-0x58]
 1f28c90: b0006828     	adrp	x8, 0x2c2d000 <__ZTSN3BEF24BachFaceSmoothCPUAdapterE>
 1f28c94: fd417501     	ldr	d1, [x8, #0x2e8]
 1f28c98: fc1ac3a1     	stur	d1, [x29, #-0x54]
 1f28c9c: bc1b43a8     	stur	s8, [x29, #-0x4c]
 1f28ca0: fc1b83a0     	stur	d0, [x29, #-0x48]
 1f28ca4: b81c03a9     	stur	w9, [x29, #-0x40]
 1f28ca8: 910583e0     	add	x0, sp, #0x160
 1f28cac: d10183a3     	sub	x3, x29, #0x60
 1f28cb0: 52800061     	mov	w1, #0x3                ; =3
 1f28cb4: 9400079e     	bl	0x1f2ab2c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x3248>
 1f28cb8: 910003e8     	mov	x8, sp
 1f28cbc: 910583e0     	add	x0, sp, #0x160
 1f28cc0: d10303a1     	sub	x1, x29, #0xc0
 1f28cc4: 97abdc0b     	bl	0xa1fcf0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x139e10>
 1f28cc8: f94003e0     	ldr	x0, [sp]
 1f28ccc: f9400008     	ldr	x8, [x0]
 1f28cd0: f9400d08     	ldr	x8, [x8, #0x18]
 1f28cd4: 910003e1     	mov	x1, sp
 1f28cd8: d10303a2     	sub	x2, x29, #0xc0
 1f28cdc: 528000a3     	mov	w3, #0x5                ; =5
 1f28ce0: d63f0100     	blr	x8
 1f28ce4: 940007af     	bl	0x1f2aba0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x32bc>
 1f28ce8: d2800008     	mov	x8, #0x0                ; =0
 1f28cec: f85503a9     	ldur	x9, [x29, #-0xb0]
 1f28cf0: f85883aa     	ldur	x10, [x29, #-0x78]
 1f28cf4: 940007fa     	bl	0x1f2acdc <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x33f8>
 1f28cf8: f100091f     	cmp	x8, #0x2
 1f28cfc: 54000180     	b.eq	0x1f28d2c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1448>
 1f28d00: d280000d     	mov	x13, #0x0               ; =0
 1f28d04: f10031bf     	cmp	x13, #0xc
 1f28d08: 540000a0     	b.eq	0x1f28d1c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1438>
 1f28d0c: bc6d6920     	ldr	s0, [x9, x13]
 1f28d10: bc2d6960     	str	s0, [x11, x13]
 1f28d14: 910011ad     	add	x13, x13, #0x4
 1f28d18: 17fffffb     	b	0x1f28d04 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1420>
 1f28d1c: 91000508     	add	x8, x8, #0x1
 1f28d20: 8b0c016b     	add	x11, x11, x12
 1f28d24: 8b0a0129     	add	x9, x9, x10
 1f28d28: 17fffff4     	b	0x1f28cf8 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1414>
 1f28d2c: 940007ad     	bl	0x1f2abe0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x32fc>
 1f28d30: d10303a0     	sub	x0, x29, #0xc0
 1f28d34: 97abf5cf     	bl	0xa26470 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x140590>
 1f28d38: f85c83a8     	ldur	x8, [x29, #-0x38]
 1f28d3c: 9000aca9     	adrp	x9, 0x34bc000 <dyld_stub_binder+0x34bc000>
 1f28d40: f9435529     	ldr	x9, [x9, #0x6a8]
 1f28d44: f9400129     	ldr	x9, [x9]
 1f28d48: eb08013f     	cmp	x9, x8
 1f28d4c: 540000e1     	b.ne	0x1f28d68 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1484>
 1f28d50: 910943ff     	add	sp, sp, #0x250
 1f28d54: a9437bfd     	ldp	x29, x30, [sp, #0x30]
 1f28d58: a9424ff4     	ldp	x20, x19, [sp, #0x20]
 1f28d5c: a9416ffc     	ldp	x28, x27, [sp, #0x10]
 1f28d60: 6cc423e9     	ldp	d9, d8, [sp], #0x40
 1f28d64: d65f03c0     	ret
 1f28d68: 9429ee42     	bl	0x29a4670 <dyld_stub_binder+0x29a4670>
 1f28d6c: aa0003f3     	mov	x19, x0
 1f28d70: 9400078c     	bl	0x1f2aba0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x32bc>
 1f28d74: 14000002     	b	0x1f28d7c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1498>
 1f28d78: aa0003f3     	mov	x19, x0
 1f28d7c: 94000799     	bl	0x1f2abe0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x32fc>
 1f28d80: 14000002     	b	0x1f28d88 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x14a4>
 1f28d84: aa0003f3     	mov	x19, x0
 1f28d88: d10303a0     	sub	x0, x29, #0xc0
 1f28d8c: 97abf5b9     	bl	0xa26470 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x140590>
 1f28d90: 94000714     	bl	0x1f2a9e0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x30fc>
