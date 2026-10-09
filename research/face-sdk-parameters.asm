
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

00000000026dcd80 <__ZNK3bce6device5metal6Device14GetSharedEventEv>:
 27617c4: d10103ff     	sub	sp, sp, #0x40
 27617c8: 6d0123e9     	stp	d9, d8, [sp, #0x10]
 27617cc: a9024ff4     	stp	x20, x19, [sp, #0x20]
 27617d0: a9037bfd     	stp	x29, x30, [sp, #0x30]
 27617d4: 9100c3fd     	add	x29, sp, #0x30
 27617d8: 528eef89     	mov	w9, #0x777c             ; =30588
 27617dc: 8b090013     	add	x19, x0, x9
 27617e0: b9406269     	ldr	w9, [x19, #0x60]
 27617e4: 7119993f     	cmp	w9, #0x666
 27617e8: 540002c1     	b.ne	0x2761840 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac0>
 27617ec: b9406a69     	ldr	w9, [x19, #0x68]
 27617f0: 7122213f     	cmp	w9, #0x888
 27617f4: 54000261     	b.ne	0x2761840 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac0>
 27617f8: aa0003e8     	mov	x8, x0
 27617fc: 52800000     	mov	w0, #0x0                ; =0
 2761800: 51000429     	sub	w9, w1, #0x1
 2761804: 71005d3f     	cmp	w9, #0x17
 2761808: 540001e8     	b.hi	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
 276180c: 1e204008     	fmov	s8, s0
 2761810: f000512a     	adrp	x10, 0x3188000 <__ZTSN5ceres8internal15SchurEliminatorILin1ELin1ELin1EEE+0x38ba>
 2761814: 912ec14a     	add	x10, x10, #0xbb0
 2761818: 1000008b     	adr	x11, 0x2761828 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84aa8>
 276181c: 3869694c     	ldrb	w12, [x10, x9]
 2761820: 8b0c096b     	add	x11, x11, x12, lsl #2
 2761824: d61f0160     	br	x11
 2761828: 1e380108     	fcvtzs	w8, s8
 276182c: 7100051f     	cmp	w8, #0x1
 2761830: 54000c2b     	b.lt	0x27619b4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84c34>
 2761834: 52800000     	mov	w0, #0x0                ; =0
 2761838: b902ce68     	str	w8, [x19, #0x2cc]
 276183c: 14000002     	b	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
 2761840: 12800de0     	mov	w0, #-0x70              ; =-112
 2761844: a9437bfd     	ldp	x29, x30, [sp, #0x30]
 2761848: a9424ff4     	ldp	x20, x19, [sp, #0x20]
 276184c: 6d4123e9     	ldp	d9, d8, [sp, #0x10]
 2761850: 140027ae     	b	0x276b708 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e988>
 2761854: 1e380101     	fcvtzs	w1, s8
 2761858: aa0803e0     	mov	x0, x8
 276185c: 97ffe721     	bl	0x275b4e0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7e760>
 2761860: 140000a8     	b	0x2761b00 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84d80>
 2761864: 52800000     	mov	w0, #0x0                ; =0
 2761868: b0005168     	adrp	x8, 0x318e000 <__ZTSN5ceres8internal15SchurEliminatorILin1ELin1ELin1EEE+0x98ba>
 276186c: bd4e3d00     	ldr	s0, [x8, #0xe3c]
 2761870: 1e202100     	fcmp	s8, s0
 2761874: 2f00e400     	movi	d0, #0000000000000000
 2761878: 1e20d508     	fccmp	s8, s0, #0x8, le
 276187c: 1e249000     	fmov	s0, #10.00000000
 2761880: 1e28bc00     	fcsel	s0, s0, s8, lt
 2761884: 2d0f0260     	stp	s0, s0, [x19, #0x78]
 2761888: 52800028     	mov	w8, #0x1                ; =1
 276188c: 39022268     	strb	w8, [x19, #0x88]
 2761890: 17ffffed     	b	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
 2761894: 52800000     	mov	w0, #0x0                ; =0
 2761898: b0005168     	adrp	x8, 0x318e000 <__ZTSN5ceres8internal15SchurEliminatorILin1ELin1ELin1EEE+0x98ba>
 276189c: bd4e3d00     	ldr	s0, [x8, #0xe3c]
 27618a0: 1e202100     	fcmp	s8, s0
 27618a4: 2f00e400     	movi	d0, #0000000000000000
 27618a8: 1e20d508     	fccmp	s8, s0, #0x8, le
 27618ac: 1e249000     	fmov	s0, #10.00000000
 27618b0: 1e28bc00     	fcsel	s0, s0, s8, lt
 27618b4: bd008260     	str	s0, [x19, #0x80]
 27618b8: 17ffffe3     	b	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
 27618bc: 1e380109     	fcvtzs	w9, s8
 27618c0: 37f807a9     	tbnz	w9, #0x1f, 0x27619b4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84c34>
 27618c4: b902da69     	str	w9, [x19, #0x2d8]
 27618c8: f97e010a     	ldr	x10, [x8, #0x7c00]
 27618cc: f97e0508     	ldr	x8, [x8, #0x7c08]
 27618d0: eb08015f     	cmp	x10, x8
 27618d4: 54001160     	b.eq	0x2761b00 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84d80>
 27618d8: f940014b     	ldr	x11, [x10]
 27618dc: b400004b     	cbz	x11, 0x27618e4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84b64>
 27618e0: b9092569     	str	w9, [x11, #0x924]
 27618e4: 9106414a     	add	x10, x10, #0x190
 27618e8: 17fffffa     	b	0x27618d0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84b50>
 27618ec: 1e38010a     	fcvtzs	w10, s8
 27618f0: 37f8062a     	tbnz	w10, #0x1f, 0x27619b4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84c34>
 27618f4: b902de6a     	str	w10, [x19, #0x2dc]
 27618f8: f97e0109     	ldr	x9, [x8, #0x7c00]
 27618fc: f97e0508     	ldr	x8, [x8, #0x7c08]
 2761900: 7100015f     	cmp	w10, #0x0
 2761904: 1a9f07ea     	cset	w10, ne
 2761908: eb08013f     	cmp	x9, x8
 276190c: 54000fa0     	b.eq	0x2761b00 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84d80>
 2761910: f940012b     	ldr	x11, [x9]
 2761914: b400004b     	cbz	x11, 0x276191c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84b9c>
 2761918: 3924a16a     	strb	w10, [x11, #0x928]
 276191c: 91064129     	add	x9, x9, #0x190
 2761920: 17fffffa     	b	0x2761908 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84b88>
 2761924: b0005168     	adrp	x8, 0x318e000 <__ZTSN5ceres8internal15SchurEliminatorILin1ELin1ELin1EEE+0x98ba>
 2761928: bd4e3d00     	ldr	s0, [x8, #0xe3c]
 276192c: 1e202100     	fcmp	s8, s0
 2761930: 2f00e400     	movi	d0, #0000000000000000
 2761934: 1e20d508     	fccmp	s8, s0, #0x8, le
 2761938: 1e2e1000     	fmov	s0, #1.00000000
 276193c: 1e28bc00     	fcsel	s0, s0, s8, lt
 2761940: bd008660     	str	s0, [x19, #0x84]
 2761944: 1e22c000     	fcvt	d0, s0
 2761948: fd0003e0     	str	d0, [sp]
 276194c: b0006240     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 2761950: 91044c00     	add	x0, x0, #0x113
 2761954: 90006221     	adrp	x1, 0x33a5000 <dyld_stub_binder+0x33a5000>
 2761958: 9110d821     	add	x1, x1, #0x436
 276195c: 14000068     	b	0x2761afc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84d7c>
 2761960: 1e380114     	fcvtzs	w20, s8
 2761964: f90003f4     	str	x20, [sp]
 2761968: b0006240     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 276196c: 91044c00     	add	x0, x0, #0x113
 2761970: 90006221     	adrp	x1, 0x33a5000 <dyld_stub_binder+0x33a5000>
 2761974: 9111fc21     	add	x1, x1, #0x47f
 2761978: 9405ff75     	bl	0x28e174c <_smash_platform_print>
 276197c: 7100069f     	cmp	w20, #0x1
 2761980: 54000d80     	b.eq	0x2761b30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84db0>
 2761984: 52800000     	mov	w0, #0x0                ; =0
 2761988: 910cf668     	add	x8, x19, #0x33d
 276198c: 35000db4     	cbnz	w20, 0x2761b40 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84dc0>
 2761990: 7900011f     	strh	wzr, [x8]
 2761994: 17ffffac     	b	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
 2761998: 1e380108     	fcvtzs	w8, s8
 276199c: 37f800c8     	tbnz	w8, #0x1f, 0x27619b4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84c34>
 27619a0: 7100051f     	cmp	w8, #0x1
 27619a4: 54000d41     	b.ne	0x2761b4c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84dcc>
 27619a8: 52800000     	mov	w0, #0x0                ; =0
 27619ac: 39207268     	strb	w8, [x19, #0x81c]
 27619b0: 17ffffa5     	b	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
 27619b4: 12800000     	mov	w0, #-0x1               ; =-1
 27619b8: 17ffffa3     	b	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
 27619bc: 1e202108     	fcmp	s8, #0.0
 27619c0: 1a9fd7e8     	cset	w8, gt
 27619c4: 390c2668     	strb	w8, [x19, #0x309]
 27619c8: 1e380108     	fcvtzs	w8, s8
 27619cc: f90003e8     	str	x8, [sp]
 27619d0: b0006240     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 27619d4: 91044c00     	add	x0, x0, #0x113
 27619d8: 90006221     	adrp	x1, 0x33a5000 <dyld_stub_binder+0x33a5000>
 27619dc: 91116021     	add	x1, x1, #0x458
 27619e0: 14000047     	b	0x2761afc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84d7c>
 27619e4: 395ca268     	ldrb	w8, [x19, #0x728]
 27619e8: 1e202108     	fcmp	s8, #0.0
 27619ec: 7a400900     	ccmp	w8, #0x0, #0x0, eq
 27619f0: 1a9f07e8     	cset	w8, ne
 27619f4: 391b9e68     	strb	w8, [x19, #0x6e7]
 27619f8: f90003e8     	str	x8, [sp]
 27619fc: b0006240     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 2761a00: 91044c00     	add	x0, x0, #0x113
 2761a04: 90006221     	adrp	x1, 0x33a5000 <dyld_stub_binder+0x33a5000>
 2761a08: 91127c21     	add	x1, x1, #0x49f
 2761a0c: 1400003c     	b	0x2761afc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84d7c>
 2761a10: 52800000     	mov	w0, #0x0                ; =0
 2761a14: 1e202108     	fcmp	s8, #0.0
 2761a18: 1a9fd7e8     	cset	w8, gt
 2761a1c: 390c4668     	strb	w8, [x19, #0x311]
 2761a20: 17ffff89     	b	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
 2761a24: 52800000     	mov	w0, #0x0                ; =0
 2761a28: 1e380108     	fcvtzs	w8, s8
 2761a2c: b906ea68     	str	w8, [x19, #0x6e8]
 2761a30: 17ffff85     	b	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
 2761a34: 1e380108     	fcvtzs	w8, s8
 2761a38: 7100091f     	cmp	w8, #0x2
 2761a3c: 54000628     	b.hi	0x2761b00 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84d80>
 2761a40: b906f268     	str	w8, [x19, #0x6f0]
 2761a44: f90003e8     	str	x8, [sp]
 2761a48: b0006240     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 2761a4c: 91044c00     	add	x0, x0, #0x113
 2761a50: 90006221     	adrp	x1, 0x33a5000 <dyld_stub_binder+0x33a5000>
 2761a54: 9112c421     	add	x1, x1, #0x4b1
 2761a58: 14000029     	b	0x2761afc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84d7c>
 2761a5c: 1e380108     	fcvtzs	w8, s8
 2761a60: 52800049     	mov	w9, #0x2                ; =2
 2761a64: 7100091f     	cmp	w8, #0x2
 2761a68: 1a89b108     	csel	w8, w8, w9, lt
 2761a6c: 7100011f     	cmp	w8, #0x0
 2761a70: 1a9fc108     	csel	w8, w8, wzr, gt
 2761a74: b9034e68     	str	w8, [x19, #0x34c]
 2761a78: f90003e8     	str	x8, [sp]
 2761a7c: b0006240     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 2761a80: 91044c00     	add	x0, x0, #0x113
 2761a84: 90006221     	adrp	x1, 0x33a5000 <dyld_stub_binder+0x33a5000>
 2761a88: 91135021     	add	x1, x1, #0x4d4
 2761a8c: 1400001c     	b	0x2761afc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84d7c>
 2761a90: 1e380108     	fcvtzs	w8, s8
 2761a94: b906fa68     	str	w8, [x19, #0x6f8]
 2761a98: 52800029     	mov	w9, #0x1                ; =1
 2761a9c: 39000269     	strb	w9, [x19]
 2761aa0: f90003e8     	str	x8, [sp]
 2761aa4: b0006240     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 2761aa8: 91044c00     	add	x0, x0, #0x113
 2761aac: 90006221     	adrp	x1, 0x33a5000 <dyld_stub_binder+0x33a5000>
 2761ab0: 9113d821     	add	x1, x1, #0x4f6
 2761ab4: 9405ff26     	bl	0x28e174c <_smash_platform_print>
 2761ab8: 395cae68     	ldrb	w8, [x19, #0x72b]
 2761abc: 34000268     	cbz	w8, 0x2761b08 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84d88>
 2761ac0: 52800000     	mov	w0, #0x0                ; =0
 2761ac4: 52800028     	mov	w8, #0x1                ; =1
 2761ac8: 14000013     	b	0x2761b14 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84d94>
 2761acc: 395caa68     	ldrb	w8, [x19, #0x72a]
 2761ad0: 34000268     	cbz	w8, 0x2761b1c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84d9c>
 2761ad4: 52800000     	mov	w0, #0x0                ; =0
 2761ad8: 52800028     	mov	w8, #0x1                ; =1
 2761adc: 14000013     	b	0x2761b28 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84da8>
 2761ae0: 1e380108     	fcvtzs	w8, s8
 2761ae4: b9037a68     	str	w8, [x19, #0x378]
 2761ae8: f90003e8     	str	x8, [sp]
 2761aec: b0006240     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 2761af0: 91044c00     	add	x0, x0, #0x113
 2761af4: 90006221     	adrp	x1, 0x33a5000 <dyld_stub_binder+0x33a5000>
 2761af8: 91145821     	add	x1, x1, #0x516
 2761afc: 9405ff14     	bl	0x28e174c <_smash_platform_print>
 2761b00: 52800000     	mov	w0, #0x0                ; =0
 2761b04: 17ffff50     	b	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
 2761b08: 52800000     	mov	w0, #0x0                ; =0
 2761b0c: 1e202108     	fcmp	s8, #0.0
 2761b10: 1a9f07e8     	cset	w8, ne
 2761b14: 391bf668     	strb	w8, [x19, #0x6fd]
 2761b18: 17ffff4b     	b	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
 2761b1c: 52800000     	mov	w0, #0x0                ; =0
 2761b20: 1e202108     	fcmp	s8, #0.0
 2761b24: 1a9f07e8     	cset	w8, ne
 2761b28: 391bf268     	strb	w8, [x19, #0x6fc]
 2761b2c: 17ffff46     	b	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
 2761b30: 52800000     	mov	w0, #0x0                ; =0
 2761b34: 910cf668     	add	x8, x19, #0x33d
 2761b38: 52800029     	mov	w9, #0x1                ; =1
 2761b3c: 14000002     	b	0x2761b44 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84dc4>
 2761b40: 52802029     	mov	w9, #0x101              ; =257
 2761b44: 79000109     	strh	w9, [x8]
 2761b48: 17ffff3f     	b	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
 2761b4c: 52800000     	mov	w0, #0x0                ; =0
 2761b50: 3920727f     	strb	wzr, [x19, #0x81c]
 2761b54: 17ffff3c     	b	0x2761844 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x84ac4>
