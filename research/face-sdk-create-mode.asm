
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

00000000026dcd80 <__ZNK3bce6device5metal6Device14GetSharedEventEv>:
 275a5e8: d10243ff     	sub	sp, sp, #0x90
 275a5ec: a9055ff8     	stp	x24, x23, [sp, #0x50]
 275a5f0: a90657f6     	stp	x22, x21, [sp, #0x60]
 275a5f4: a9074ff4     	stp	x20, x19, [sp, #0x70]
 275a5f8: a9087bfd     	stp	x29, x30, [sp, #0x80]
 275a5fc: 910203fd     	add	x29, sp, #0x80
 275a600: aa0403f4     	mov	x20, x4
 275a604: aa0303f5     	mov	x21, x3
 275a608: aa0203f6     	mov	x22, x2
 275a60c: aa0003f3     	mov	x19, x0
 275a610: 528fcf88     	mov	w8, #0x7e7c             ; =32380
 275a614: 8b080018     	add	x24, x0, x8
 275a618: d3517c29     	ubfx	x9, x1, #17, #15
 275a61c: 53114428     	ubfx	w8, w1, #17, #1
 275a620: 39000b08     	strb	w8, [x24, #0x2]
 275a624: 53124828     	ubfx	w8, w1, #18, #1
 275a628: 39000f08     	strb	w8, [x24, #0x3]
 275a62c: d3534c2a     	ubfx	x10, x1, #19, #1
 275a630: 3900130a     	strb	w10, [x24, #0x4]
 275a634: 370000a9     	tbnz	w9, #0x0, 0x275a648 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7d8c8>
 275a638: 37980081     	tbnz	w1, #0x13, 0x275a648 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7d8c8>
 275a63c: 35000068     	cbnz	w8, 0x275a648 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7d8c8>
 275a640: 52800028     	mov	w8, #0x1                ; =1
 275a644: 39000b08     	strb	w8, [x24, #0x2]
 275a648: 53061828     	ubfx	w8, w1, #6, #1
 275a64c: 39003308     	strb	w8, [x24, #0xc]
 275a650: 53010428     	ubfx	w8, w1, #1, #1
 275a654: 39003708     	strb	w8, [x24, #0xd]
 275a658: 53020828     	ubfx	w8, w1, #2, #1
 275a65c: 39003b08     	strb	w8, [x24, #0xe]
 275a660: 53030c28     	ubfx	w8, w1, #3, #1
 275a664: 39003f08     	strb	w8, [x24, #0xf]
 275a668: 53041028     	ubfx	w8, w1, #4, #1
 275a66c: 39004308     	strb	w8, [x24, #0x10]
 275a670: 53051428     	ubfx	w8, w1, #5, #1
 275a674: 39004708     	strb	w8, [x24, #0x11]
 275a678: d3565828     	ubfx	x8, x1, #22, #1
 275a67c: 39008308     	strb	w8, [x24, #0x20]
 275a680: f90003e8     	str	x8, [sp]
 275a684: 90006280     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 275a688: 91044c00     	add	x0, x0, #0x113
 275a68c: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a690: 91371c21     	add	x1, x1, #0xdc7
 275a694: 94061c2e     	bl	0x28e174c <_smash_platform_print>
 275a698: b4000316     	cbz	x22, 0x275a6f8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7d978>
 275a69c: f97c0a77     	ldr	x23, [x19, #0x7810]
 275a6a0: b5000197     	cbnz	x23, 0x275a6d0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7d950>
 275a6a4: 90006aa1     	adrp	x1, 0x34ae000 <dyld_stub_binder+0x34ae000>
 275a6a8: f942f421     	ldr	x1, [x1, #0x5e8]
 275a6ac: 52800100     	mov	w0, #0x8                ; =8
 275a6b0: 940927ab     	bl	0x29a455c <dyld_stub_binder+0x29a455c>
 275a6b4: aa0003f7     	mov	x23, x0
 275a6b8: b40000a0     	cbz	x0, 0x275a6cc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7d94c>
 275a6bc: 528ef308     	mov	w8, #0x7798             ; =30616
 275a6c0: 8b080261     	add	x1, x19, x8
 275a6c4: aa1703e0     	mov	x0, x23
 275a6c8: 940308ff     	bl	0x281cac4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x13fd44>
 275a6cc: f93c0a77     	str	x23, [x19, #0x7810]
 275a6d0: aa1703e0     	mov	x0, x23
 275a6d4: 940043f7     	bl	0x276b6b0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e930>
 275a6d8: 34000140     	cbz	w0, 0x275a700 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7d980>
 275a6dc: 90006280     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 275a6e0: 91044c00     	add	x0, x0, #0x113
 275a6e4: b0006261     	adrp	x1, 0x33a7000 <dyld_stub_binder+0x33a7000>
 275a6e8: 911e3c21     	add	x1, x1, #0x78f
 275a6ec: 94061c18     	bl	0x28e174c <_smash_platform_print>
 275a6f0: 12800094     	mov	w20, #-0x5              ; =-5
 275a6f4: 140001f4     	b	0x275aec4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7e144>
 275a6f8: 12800054     	mov	w20, #-0x3              ; =-3
 275a6fc: 140001f2     	b	0x275aec4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7e144>
 275a700: f97c0a60     	ldr	x0, [x19, #0x7810]
 275a704: b4fffec0     	cbz	x0, 0x275a6dc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7d95c>
 275a708: 9100e3e8     	add	x8, sp, #0x38
 275a70c: a9047fff     	stp	xzr, xzr, [sp, #0x40]
 275a710: 91002117     	add	x23, x8, #0x8
 275a714: f9001ff7     	str	x23, [sp, #0x38]
 275a718: 9100e3e1     	add	x1, sp, #0x38
 275a71c: 940309c3     	bl	0x281ce28 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x1400a8>
 275a720: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a724: 91376c21     	add	x1, x1, #0xddb
 275a728: 940041bc     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a72c: 940041e7     	bl	0x276aec8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e148>
 275a730: aa0003f5     	mov	x21, x0
 275a734: 940041b7     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a738: b40001b5     	cbz	x21, 0x275a76c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7d9ec>
 275a73c: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a740: 91376c21     	add	x1, x1, #0xddb
 275a744: 940041b5     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a748: 940041ab     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a74c: b9400008     	ldr	w8, [x0]
 275a750: f90003e8     	str	x8, [sp]
 275a754: 90006280     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 275a758: 91044c00     	add	x0, x0, #0x113
 275a75c: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a760: 9137b821     	add	x1, x1, #0xdee
 275a764: 94061bfa     	bl	0x28e174c <_smash_platform_print>
 275a768: 940041aa     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a76c: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a770: 91383021     	add	x1, x1, #0xe0c
 275a774: 940041a9     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a778: 940041d4     	bl	0x276aec8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e148>
 275a77c: aa0003f5     	mov	x21, x0
 275a780: 528f4808     	mov	w8, #0x7a40             ; =31296
 275a784: 8b080276     	add	x22, x19, x8
 275a788: 940041a2     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a78c: b4000115     	cbz	x21, 0x275a7ac <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7da2c>
 275a790: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a794: 91383021     	add	x1, x1, #0xe0c
 275a798: 940041a0     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a79c: 94004196     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a7a0: b9400008     	ldr	w8, [x0]
 275a7a4: b90002c8     	str	w8, [x22]
 275a7a8: 9400419a     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a7ac: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a7b0: 91386021     	add	x1, x1, #0xe18
 275a7b4: 94004199     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a7b8: 940041c4     	bl	0x276aec8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e148>
 275a7bc: aa0003f5     	mov	x21, x0
 275a7c0: 94004194     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a7c4: b4000135     	cbz	x21, 0x275a7e8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7da68>
 275a7c8: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a7cc: 91386021     	add	x1, x1, #0xe18
 275a7d0: 94004192     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a7d4: 94004188     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a7d8: 940041a1     	bl	0x276ae5c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e0dc>
 275a7dc: 3900e6c8     	strb	w8, [x22, #0x39]
 275a7e0: 9400418c     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a7e4: 14000002     	b	0x275a7ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7da6c>
 275a7e8: 3900e6df     	strb	wzr, [x22, #0x39]
 275a7ec: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a7f0: 9138b021     	add	x1, x1, #0xe2c
 275a7f4: 94004189     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a7f8: 940041b4     	bl	0x276aec8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e148>
 275a7fc: aa0003f5     	mov	x21, x0
 275a800: 94004184     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a804: b4000135     	cbz	x21, 0x275a828 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7daa8>
 275a808: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a80c: 9138b021     	add	x1, x1, #0xe2c
 275a810: 94004182     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a814: 94004178     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a818: 94004191     	bl	0x276ae5c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e0dc>
 275a81c: 390212c8     	strb	w8, [x22, #0x84]
 275a820: 9400417c     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a824: 14000002     	b	0x275a82c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7daac>
 275a828: 390212df     	strb	wzr, [x22, #0x84]
 275a82c: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a830: 91390421     	add	x1, x1, #0xe41
 275a834: 94004179     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a838: 940041a4     	bl	0x276aec8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e148>
 275a83c: aa0003f5     	mov	x21, x0
 275a840: 94004174     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a844: b4000135     	cbz	x21, 0x275a868 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7dae8>
 275a848: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a84c: 91390421     	add	x1, x1, #0xe41
 275a850: 94004172     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a854: 94004168     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a858: 94004181     	bl	0x276ae5c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e0dc>
 275a85c: 390216c8     	strb	w8, [x22, #0x85]
 275a860: 9400416c     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a864: 14000002     	b	0x275a86c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7daec>
 275a868: 390216df     	strb	wzr, [x22, #0x85]
 275a86c: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a870: 91394421     	add	x1, x1, #0xe51
 275a874: 94004169     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a878: 94004194     	bl	0x276aec8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e148>
 275a87c: aa0003f5     	mov	x21, x0
 275a880: 94004164     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a884: b4000135     	cbz	x21, 0x275a8a8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7db28>
 275a888: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a88c: 91394421     	add	x1, x1, #0xe51
 275a890: 94004162     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a894: 94004158     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a898: 94004171     	bl	0x276ae5c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e0dc>
 275a89c: 39021ac8     	strb	w8, [x22, #0x86]
 275a8a0: 9400415c     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a8a4: 14000002     	b	0x275a8ac <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7db2c>
 275a8a8: 39021adf     	strb	wzr, [x22, #0x86]
 275a8ac: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a8b0: 91398421     	add	x1, x1, #0xe61
 275a8b4: 94004159     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a8b8: 94004184     	bl	0x276aec8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e148>
 275a8bc: aa0003f5     	mov	x21, x0
 275a8c0: 94004154     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a8c4: b4000135     	cbz	x21, 0x275a8e8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7db68>
 275a8c8: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a8cc: 91398421     	add	x1, x1, #0xe61
 275a8d0: 94004152     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a8d4: 94004148     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a8d8: 94004161     	bl	0x276ae5c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e0dc>
 275a8dc: 39021ec8     	strb	w8, [x22, #0x87]
 275a8e0: 9400414c     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a8e4: 14000002     	b	0x275a8ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7db6c>
 275a8e8: 39021edf     	strb	wzr, [x22, #0x87]
 275a8ec: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a8f0: 9139bc21     	add	x1, x1, #0xe6f
 275a8f4: 94004149     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a8f8: 94004174     	bl	0x276aec8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e148>
 275a8fc: aa0003f5     	mov	x21, x0
 275a900: 94004144     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a904: b4000295     	cbz	x21, 0x275a954 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7dbd4>
 275a908: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a90c: 9139bc21     	add	x1, x1, #0xe6f
 275a910: 94004142     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a914: 94004138     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a918: b9400008     	ldr	w8, [x0]
 275a91c: 52800049     	mov	w9, #0x2                ; =2
 275a920: 7100091f     	cmp	w8, #0x2
 275a924: 1a89b108     	csel	w8, w8, w9, lt
 275a928: 7100011f     	cmp	w8, #0x0
 275a92c: 1a9fc108     	csel	w8, w8, wzr, gt
 275a930: b9008ac8     	str	w8, [x22, #0x88]
 275a934: 94004137     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a938: b9408ac8     	ldr	w8, [x22, #0x88]
 275a93c: f90003e8     	str	x8, [sp]
 275a940: 90006280     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 275a944: 91044c00     	add	x0, x0, #0x113
 275a948: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a94c: 913a1421     	add	x1, x1, #0xe85
 275a950: 94061b7f     	bl	0x28e174c <_smash_platform_print>
 275a954: 34000114     	cbz	w20, 0x275a974 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7dbf4>
 275a958: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a95c: 913acc21     	add	x1, x1, #0xeb3
 275a960: 9400412e     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a964: 94004124     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a968: b9400008     	ldr	w8, [x0]
 275a96c: b9000ec8     	str	w8, [x22, #0xc]
 275a970: 94004128     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a974: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a978: 913b0021     	add	x1, x1, #0xec0
 275a97c: 94004127     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a980: 9400411d     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a984: b9400008     	ldr	w8, [x0]
 275a988: b9001ec8     	str	w8, [x22, #0x1c]
 275a98c: 94004121     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a990: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a994: 913b8421     	add	x1, x1, #0xee1
 275a998: 94004120     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a99c: 94004116     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a9a0: b9400008     	ldr	w8, [x0]
 275a9a4: b90022c8     	str	w8, [x22, #0x20]
 275a9a8: 9400411a     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a9ac: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a9b0: 913c3821     	add	x1, x1, #0xf0e
 275a9b4: 94004119     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a9b8: 9400410f     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a9bc: 94004128     	bl	0x276ae5c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e0dc>
 275a9c0: 390092c8     	strb	w8, [x22, #0x24]
 275a9c4: 94004113     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a9c8: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a9cc: 913c8821     	add	x1, x1, #0xf22
 275a9d0: 94004112     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a9d4: 94004108     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a9d8: 94004121     	bl	0x276ae5c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e0dc>
 275a9dc: 3900c2c8     	strb	w8, [x22, #0x30]
 275a9e0: 9400410c     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275a9e4: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275a9e8: 913cd021     	add	x1, x1, #0xf34
 275a9ec: 9400410b     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275a9f0: 94004101     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275a9f4: bd400000     	ldr	s0, [x0]
 275a9f8: 5e21d800     	scvtf	s0, s0
 275a9fc: bd002ac0     	str	s0, [x22, #0x28]
 275aa00: 94004104     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275aa04: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275aa08: 913d3c21     	add	x1, x1, #0xf4f
 275aa0c: 94004103     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275aa10: 940040f9     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
 275aa14: bd400000     	ldr	s0, [x0]
 275aa18: 5e21d800     	scvtf	s0, s0
 275aa1c: 90005168     	adrp	x8, 0x3186000 <__ZTSN5ceres8internal15SchurEliminatorILin1ELin1ELin1EEE+0x18ba>
 275aa20: bd453501     	ldr	s1, [x8, #0x534]
 275aa24: 1e210800     	fmul	s0, s0, s1
 275aa28: bd002ec0     	str	s0, [x22, #0x2c]
 275aa2c: 940040f9     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275aa30: d0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275aa34: 913d9c21     	add	x1, x1, #0xf67
 275aa38: 940040f8     	bl	0x276ae18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e098>
 275aa3c: 940040ee     	bl	0x276adf4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e074>
