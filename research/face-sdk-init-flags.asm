
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

00000000026dcd80 <__ZNK3bce6device5metal6Device14GetSharedEventEv>:
 275b7d0: a9bb67fa     	stp	x26, x25, [sp, #-0x50]!
 275b7d4: a9015ff8     	stp	x24, x23, [sp, #0x10]
 275b7d8: a90257f6     	stp	x22, x21, [sp, #0x20]
 275b7dc: a9034ff4     	stp	x20, x19, [sp, #0x30]
 275b7e0: a9047bfd     	stp	x29, x30, [sp, #0x40]
 275b7e4: 910103fd     	add	x29, sp, #0x40
 275b7e8: aa0003f5     	mov	x21, x0
 275b7ec: 52800024     	mov	w4, #0x1                ; =1
 275b7f0: 97fffb7e     	bl	0x275a5e8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7d868>
 275b7f4: 35000500     	cbnz	w0, 0x275b894 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7eb14>
 275b7f8: 528efb88     	mov	w8, #0x77dc             ; =30684
 275b7fc: 8b0802b8     	add	x24, x21, x8
 275b800: 528f8008     	mov	w8, #0x7c00             ; =31744
 275b804: 8b0802b3     	add	x19, x21, x8
 275b808: b9827301     	ldrsw	x1, [x24, #0x270]
 275b80c: aa1303e0     	mov	x0, x19
 275b810: 94000029     	bl	0x275b8b4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7eb34>
 275b814: d2800019     	mov	x25, #0x0               ; =0
 275b818: d280001a     	mov	x26, #0x0               ; =0
 275b81c: 528f5f08     	mov	w8, #0x7af8             ; =31480
 275b820: 8b0802b4     	add	x20, x21, x8
 275b824: 528fcf88     	mov	w8, #0x7e7c             ; =32380
 275b828: 8b0802b5     	add	x21, x21, x8
 275b82c: f0006a96     	adrp	x22, 0x34ae000 <dyld_stub_binder+0x34ae000>
 275b830: f942f6d6     	ldr	x22, [x22, #0x5e8]
 275b834: b9827308     	ldrsw	x8, [x24, #0x270]
 275b838: eb08035f     	cmp	x26, x8
 275b83c: 5400022a     	b.ge	0x275b880 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7eb00>
 275b840: 52954200     	mov	w0, #0xaa10             ; =43536
 275b844: aa1603e1     	mov	x1, x22
 275b848: 94092345     	bl	0x29a455c <dyld_stub_binder+0x29a455c>
 275b84c: aa0003f7     	mov	x23, x0
 275b850: b4000060     	cbz	x0, 0x275b85c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7eadc>
 275b854: aa1703e0     	mov	x0, x23
 275b858: 94002501     	bl	0x2764c5c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x87edc>
 275b85c: f9400268     	ldr	x8, [x19]
 275b860: f8396917     	str	x23, [x8, x25]
 275b864: aa1703e0     	mov	x0, x23
 275b868: aa1403e1     	mov	x1, x20
 275b86c: aa1503e2     	mov	x2, x21
 275b870: 94003fb9     	bl	0x276b754 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e9d4>
 275b874: 9100075a     	add	x26, x26, #0x1
 275b878: 91064339     	add	x25, x25, #0x190
 275b87c: 17ffffee     	b	0x275b834 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7eab4>
 275b880: 52800000     	mov	w0, #0x0                ; =0
 275b884: 52800028     	mov	w8, #0x1                ; =1
 275b888: 39004308     	strb	w8, [x24, #0x10]
 275b88c: 5280ccc8     	mov	w8, #0x666              ; =1638
 275b890: b9000308     	str	w8, [x24]
 275b894: a9447bfd     	ldp	x29, x30, [sp, #0x40]
 275b898: 14003eb9     	b	0x276b37c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e5fc>
 275b89c: aa0003f3     	mov	x19, x0
 275b8a0: f0006a81     	adrp	x1, 0x34ae000 <dyld_stub_binder+0x34ae000>
 275b8a4: f942f421     	ldr	x1, [x1, #0x5e8]
 275b8a8: aa1703e0     	mov	x0, x23
 275b8ac: 94092320     	bl	0x29a452c <dyld_stub_binder+0x29a452c>
 275b8b0: 94003d6f     	bl	0x276ae6c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e0ec>
 275b8b4: a9402408     	ldp	x8, x9, [x0]
 275b8b8: cb080129     	sub	x9, x9, x8
 275b8bc: 5280320a     	mov	w10, #0x190             ; =400
 275b8c0: 9aca0d29     	sdiv	x9, x9, x10
 275b8c4: eb01013f     	cmp	x9, x1
 275b8c8: 54000062     	b.hs	0x275b8d4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7eb54>
 275b8cc: cb090021     	sub	x1, x1, x9
 275b8d0: 14003664     	b	0x2769260 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8c4e0>
 275b8d4: 54000089     	b.ls	0x275b8e4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7eb64>
 275b8d8: 52803209     	mov	w9, #0x190              ; =400
 275b8dc: 9b092021     	madd	x1, x1, x9, x8
 275b8e0: 17ff8f27     	b	0x273f57c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x627fc>
 275b8e4: d65f03c0     	ret
 275b8e8: d10583ff     	sub	sp, sp, #0x160
 275b8ec: a9106ffc     	stp	x28, x27, [sp, #0x100]
 275b8f0: a91167fa     	stp	x26, x25, [sp, #0x110]
 275b8f4: a9125ff8     	stp	x24, x23, [sp, #0x120]
 275b8f8: a91357f6     	stp	x22, x21, [sp, #0x130]
 275b8fc: a9144ff4     	stp	x20, x19, [sp, #0x140]
 275b900: a9157bfd     	stp	x29, x30, [sp, #0x150]
 275b904: 910543fd     	add	x29, sp, #0x150
 275b908: 528efb88     	mov	w8, #0x77dc             ; =30684
 275b90c: 8b08001a     	add	x26, x0, x8
 275b910: b9400348     	ldr	w8, [x26]
 275b914: 7119991f     	cmp	w8, #0x666
 275b918: 540006a1     	b.ne	0x275b9ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ec6c>
 275b91c: b9400b48     	ldr	w8, [x26, #0x8]
 275b920: 7122211f     	cmp	w8, #0x888
 275b924: 54000641     	b.ne	0x275b9ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ec6c>
 275b928: aa0303f5     	mov	x21, x3
 275b92c: aa0203f6     	mov	x22, x2
 275b930: aa0003f3     	mov	x19, x0
 275b934: 395acb48     	ldrb	w8, [x26, #0x6b2]
 275b938: 35000068     	cbnz	w8, 0x275b944 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ebc4>
 275b93c: 53082028     	ubfx	w8, w1, #8, #1
 275b940: 391acb48     	strb	w8, [x26, #0x6b2]
 275b944: 395ad348     	ldrb	w8, [x26, #0x6b4]
 275b948: 35000068     	cbnz	w8, 0x275b954 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ebd4>
 275b94c: 530b2c28     	ubfx	w8, w1, #11, #1
 275b950: 391ad348     	strb	w8, [x26, #0x6b4]
 275b954: 926c0428     	and	x8, x1, #0x300000
 275b958: f14c011f     	cmp	x8, #0x300, lsl #12     ; =0x300000
 275b95c: 1a9f17e9     	cset	w9, eq
 275b960: 391acf49     	strb	w9, [x26, #0x6b3]
 275b964: b4000596     	cbz	x22, 0x275ba14 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ec94>
 275b968: f14c011f     	cmp	x8, #0x300, lsl #12     ; =0x300000
 275b96c: 540005e1     	b.ne	0x275ba28 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7eca8>
 275b970: f97c0e74     	ldr	x20, [x19, #0x7818]
 275b974: b4000554     	cbz	x20, 0x275ba1c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ec9c>
 275b978: 528f5208     	mov	w8, #0x7a90             ; =31376
 275b97c: 8b080277     	add	x23, x19, x8
 275b980: 528f1e08     	mov	w8, #0x78f0             ; =30960
 275b984: 8b080278     	add	x24, x19, x8
 275b988: 394aa759     	ldrb	w25, [x26, #0x2a9]
 275b98c: 94003d3d     	bl	0x276ae80 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e100>
 275b990: d101a3a0     	sub	x0, x29, #0x68
 275b994: 9409213f     	bl	0x29a3e90 <dyld_stub_binder+0x29a3e90>
 275b998: d101a3a5     	sub	x5, x29, #0x68
 275b99c: aa1403e0     	mov	x0, x20
 275b9a0: 52800001     	mov	w1, #0x0                ; =0
 275b9a4: aa1703e2     	mov	x2, x23
 275b9a8: aa1803e3     	mov	x3, x24
 275b9ac: aa1903e4     	mov	x4, x25
 275b9b0: 97ffe015     	bl	0x2753a04 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x76c84>
 275b9b4: aa0003f4     	mov	x20, x0
 275b9b8: 94003e4d     	bl	0x276b2ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e56c>
 275b9bc: 34000354     	cbz	w20, 0x275ba24 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7eca4>
 275b9c0: 39cb2f48     	ldrsb	w8, [x26, #0x2cb]
 275b9c4: 36f80048     	tbz	w8, #0x1f, 0x275b9cc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ec4c>
 275b9c8: f94002f7     	ldr	x23, [x23]
 275b9cc: aa1403e8     	mov	x8, x20
 275b9d0: a90023f7     	stp	x23, x8, [sp]
 275b9d4: f0006260     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 275b9d8: 91044c00     	add	x0, x0, #0x113
 275b9dc: b0006241     	adrp	x1, 0x33a4000 <dyld_stub_binder+0x33a4000>
 275b9e0: 9136b821     	add	x1, x1, #0xdae
 275b9e4: 9406175a     	bl	0x28e174c <_smash_platform_print>
 275b9e8: 14000002     	b	0x275b9f0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ec70>
 275b9ec: 12800df4     	mov	w20, #-0x70             ; =-112
 275b9f0: aa1403e0     	mov	x0, x20
 275b9f4: a9557bfd     	ldp	x29, x30, [sp, #0x150]
 275b9f8: a9544ff4     	ldp	x20, x19, [sp, #0x140]
 275b9fc: a95357f6     	ldp	x22, x21, [sp, #0x130]
 275ba00: a9525ff8     	ldp	x24, x23, [sp, #0x120]
 275ba04: a95167fa     	ldp	x26, x25, [sp, #0x110]
 275ba08: a9506ffc     	ldp	x28, x27, [sp, #0x100]
 275ba0c: 910583ff     	add	sp, sp, #0x160
 275ba10: d65f03c0     	ret
 275ba14: 12800054     	mov	w20, #-0x3              ; =-3
 275ba18: 17fffff6     	b	0x275b9f0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ec70>
 275ba1c: 128001f4     	mov	w20, #-0x10             ; =-16
 275ba20: 17fffff4     	b	0x275b9f0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ec70>
 275ba24: 94003f0c     	bl	0x276b654 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e8d4>
 275ba28: f0006a81     	adrp	x1, 0x34ae000 <dyld_stub_binder+0x34ae000>
 275ba2c: f942f421     	ldr	x1, [x1, #0x5e8]
 275ba30: 52800100     	mov	w0, #0x8                ; =8
 275ba34: 940922ca     	bl	0x29a455c <dyld_stub_binder+0x29a455c>
 275ba38: aa0003f4     	mov	x20, x0
 275ba3c: b40000a0     	cbz	x0, 0x275ba50 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ecd0>
 275ba40: 528ef608     	mov	w8, #0x77b0             ; =30640
 275ba44: 8b080261     	add	x1, x19, x8
 275ba48: aa1403e0     	mov	x0, x20
 275ba4c: 9403041e     	bl	0x281cac4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x13fd44>
 275ba50: f93c0e74     	str	x20, [x19, #0x7818]
 275ba54: aa1403e0     	mov	x0, x20
 275ba58: 94003f16     	bl	0x276b6b0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e930>
 275ba5c: aa0003e8     	mov	x8, x0
 275ba60: 34000120     	cbz	w0, 0x275ba84 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ed04>
 275ba64: f90003e8     	str	x8, [sp]
 275ba68: f0006260     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 275ba6c: 91044c00     	add	x0, x0, #0x113
 275ba70: d0006241     	adrp	x1, 0x33a5000 <dyld_stub_binder+0x33a5000>
 275ba74: 91042021     	add	x1, x1, #0x108
 275ba78: 94061735     	bl	0x28e174c <_smash_platform_print>
 275ba7c: 12800094     	mov	w20, #-0x5              ; =-5
