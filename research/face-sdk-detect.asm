
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

00000000026dcd80 <__ZNK3bce6device5metal6Device14GetSharedEventEv>:
 273dff0: a9bb67fa     	stp	x26, x25, [sp, #-0x50]!
 273dff4: a9015ff8     	stp	x24, x23, [sp, #0x10]
 273dff8: a90257f6     	stp	x22, x21, [sp, #0x20]
 273dffc: a9034ff4     	stp	x20, x19, [sp, #0x30]
 273e000: a9047bfd     	stp	x29, x30, [sp, #0x40]
 273e004: 910103fd     	add	x29, sp, #0x40
 273e008: 528d5a09     	mov	w9, #0x6ad0             ; =27344
 273e00c: d0006bf0     	adrp	x16, 0x34bc000 <dyld_stub_binder+0x34bc000>
 273e010: f9434e10     	ldr	x16, [x16, #0x698]
 273e014: d63f0200     	blr	x16
 273e018: d1401bff     	sub	sp, sp, #0x6, lsl #12   ; =0x6000
 273e01c: d12b43ff     	sub	sp, sp, #0xad0
 273e020: b40001a0     	cbz	x0, 0x273e054 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x612d4>
 273e024: 12800cf8     	mov	w24, #-0x68             ; =-104
 273e028: b4000181     	cbz	x1, 0x273e058 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x612d8>
 273e02c: f9400bb7     	ldr	x23, [x29, #0x10]
 273e030: b4000157     	cbz	x23, 0x273e058 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x612d8>
 273e034: aa0403f4     	mov	x20, x4
 273e038: aa0303f5     	mov	x21, x3
 273e03c: 7100047f     	cmp	w3, #0x1
 273e040: 7a41a888     	ccmp	w4, #0x1, #0x8, ge
 273e044: 7a41a8a8     	ccmp	w5, #0x1, #0x8, ge
 273e048: 5400012a     	b.ge	0x273e06c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x612ec>
 273e04c: 12800cf8     	mov	w24, #-0x68             ; =-104
 273e050: 14000002     	b	0x273e058 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x612d8>
 273e054: 12800d78     	mov	w24, #-0x6c             ; =-108
 273e058: aa1803e0     	mov	x0, x24
 273e05c: 91401bff     	add	sp, sp, #0x6, lsl #12   ; =0x6000
 273e060: 912b43ff     	add	sp, sp, #0xad0
 273e064: a9447bfd     	ldp	x29, x30, [sp, #0x40]
 273e068: 1400056f     	b	0x273f624 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x628a4>
 273e06c: 71000c5f     	cmp	w2, #0x3
 273e070: 54000508     	b.hi	0x273e110 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61390>
 273e074: aa0003f6     	mov	x22, x0
 273e078: 528eef88     	mov	w8, #0x777c             ; =30588
 273e07c: 8b080019     	add	x25, x0, x8
 273e080: 3941c328     	ldrb	w8, [x25, #0x70]
 273e084: 340004a8     	cbz	w8, 0x273e118 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61398>
 273e088: aa0703f3     	mov	x19, x7
 273e08c: b946fb28     	ldr	w8, [x25, #0x6f8]
 273e090: 7100051f     	cmp	w8, #0x1
 273e094: 540005ab     	b.lt	0x273e148 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x613c8>
 273e098: 39400328     	ldrb	w8, [x25]
 273e09c: 35000428     	cbnz	w8, 0x273e120 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x613a0>
 273e0a0: b9400728     	ldr	w8, [x25, #0x4]
 273e0a4: 6b15011f     	cmp	w8, w21
 273e0a8: 540003c1     	b.ne	0x273e120 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x613a0>
 273e0ac: b9400b28     	ldr	w8, [x25, #0x8]
 273e0b0: 6b14011f     	cmp	w8, w20
 273e0b4: 54000361     	b.ne	0x273e120 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x613a0>
 273e0b8: f97bc6c8     	ldr	x8, [x22, #0x7788]
 273e0bc: eb13011f     	cmp	x8, x19
 273e0c0: 54000301     	b.ne	0x273e120 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x613a0>
 273e0c4: b9401728     	ldr	w8, [x25, #0x14]
 273e0c8: 11000508     	add	w8, w8, #0x1
 273e0cc: b9001728     	str	w8, [x25, #0x14]
 273e0d0: 37000628     	tbnz	w8, #0x0, 0x273e194 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61414>
 273e0d4: 94000563     	bl	0x273f660 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x628e0>
 273e0d8: aa0003f8     	mov	x24, x0
 273e0dc: 910043e0     	add	x0, sp, #0x10
 273e0e0: aa1703e1     	mov	x1, x23
 273e0e4: 528d5782     	mov	w2, #0x6abc             ; =27324
 273e0e8: 94099d8b     	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 273e0ec: 1e2c1000     	fmov	s0, #0.50000000
 273e0f0: aa1603e0     	mov	x0, x22
 273e0f4: aa1703e1     	mov	x1, x23
 273e0f8: 94008420     	bl	0x275f178 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x823f8>
 273e0fc: 913302c0     	add	x0, x22, #0xcc0
 273e100: 910043e1     	add	x1, sp, #0x10
 273e104: 528d5782     	mov	w2, #0x6abc             ; =27324
 273e108: 94099d83     	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 273e10c: 1400000c     	b	0x273e13c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x613bc>
 273e110: 12800db8     	mov	w24, #-0x6e             ; =-110
 273e114: 17ffffd1     	b	0x273e058 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x612d8>
 273e118: 128001f8     	mov	w24, #-0x10             ; =-16
 273e11c: 17ffffcf     	b	0x273e058 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x612d8>
 273e120: 3900033f     	strb	wzr, [x25]
 273e124: 9400054f     	bl	0x273f660 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x628e0>
 273e128: aa0003f8     	mov	x24, x0
 273e12c: 913302c0     	add	x0, x22, #0xcc0
 273e130: aa1703e1     	mov	x1, x23
 273e134: 528d5782     	mov	w2, #0x6abc             ; =27324
 273e138: 94099d7a     	bl	0x29a5720 <dyld_stub_binder+0x29a5720>
 273e13c: 2900d335     	stp	w21, w20, [x25, #0x4]
 273e140: f93bc6d3     	str	x19, [x22, #0x7788]
 273e144: 17ffffc5     	b	0x273e058 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x612d8>
 273e148: 52800028     	mov	w8, #0x1                ; =1
 273e14c: 39000328     	strb	w8, [x25]
 273e150: f9000bb6     	str	x22, [x29, #0x10]
 273e154: aa0103e0     	mov	x0, x1
 273e158: aa0203e1     	mov	x1, x2
 273e15c: aa1503e2     	mov	x2, x21
 273e160: aa1403e3     	mov	x3, x20
 273e164: aa0503e4     	mov	x4, x5
 273e168: aa0603e5     	mov	x5, x6
 273e16c: aa1303e6     	mov	x6, x19
 273e170: aa1703e7     	mov	x7, x23
 273e174: 91401bff     	add	sp, sp, #0x6, lsl #12   ; =0x6000
 273e178: 912b43ff     	add	sp, sp, #0xad0
 273e17c: a9447bfd     	ldp	x29, x30, [sp, #0x40]
 273e180: a9434ff4     	ldp	x20, x19, [sp, #0x30]
 273e184: a94257f6     	ldp	x22, x21, [sp, #0x20]
 273e188: a9415ff8     	ldp	x24, x23, [sp, #0x10]
 273e18c: a8c567fa     	ldp	x26, x25, [sp], #0x50
 273e190: 14000013     	b	0x273e1dc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6145c>
 273e194: 37400073     	tbnz	w19, #0x8, 0x273e1a0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61420>
 273e198: 52800018     	mov	w24, #0x0               ; =0
 273e19c: 1400000d     	b	0x273e1d0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61450>
 273e1a0: 9277fa68     	and	x8, x19, #0xfffffffffffffeff
 273e1a4: f90003f6     	str	x22, [sp]
 273e1a8: aa0103e0     	mov	x0, x1
 273e1ac: aa0203e1     	mov	x1, x2
 273e1b0: aa1503e2     	mov	x2, x21
 273e1b4: aa1403e3     	mov	x3, x20
 273e1b8: aa0503e4     	mov	x4, x5
 273e1bc: aa0603e5     	mov	x5, x6
 273e1c0: aa0803e6     	mov	x6, x8
 273e1c4: aa1703e7     	mov	x7, x23
 273e1c8: 94000005     	bl	0x273e1dc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6145c>
 273e1cc: aa0003f8     	mov	x24, x0
 273e1d0: 913302c1     	add	x1, x22, #0xcc0
 273e1d4: aa1703e0     	mov	x0, x23
 273e1d8: 17ffffd7     	b	0x273e134 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x613b4>
 273e1dc: d10203ff     	sub	sp, sp, #0x80
 273e1e0: a9026ffc     	stp	x28, x27, [sp, #0x20]
 273e1e4: a90367fa     	stp	x26, x25, [sp, #0x30]
 273e1e8: a9045ff8     	stp	x24, x23, [sp, #0x40]
 273e1ec: a90557f6     	stp	x22, x21, [sp, #0x50]
 273e1f0: a9064ff4     	stp	x20, x19, [sp, #0x60]
 273e1f4: a9077bfd     	stp	x29, x30, [sp, #0x70]
 273e1f8: 9101c3fd     	add	x29, sp, #0x70
 273e1fc: aa0703f3     	mov	x19, x7
 273e200: aa0603f4     	mov	x20, x6
 273e204: aa0503f7     	mov	x23, x5
 273e208: aa0403f8     	mov	x24, x4
 273e20c: aa0303fa     	mov	x26, x3
 273e210: aa0203fb     	mov	x27, x2
 273e214: aa0103f9     	mov	x25, x1
 273e218: aa0003f6     	mov	x22, x0
 273e21c: f9400bb5     	ldr	x21, [x29, #0x10]
 273e220: 528fcc68     	mov	w8, #0x7e63             ; =32355
 273e224: 38686aa8     	ldrb	w8, [x21, x8]
 273e228: 340000c8     	cbz	w8, 0x273e240 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x614c0>
 273e22c: 94000540     	bl	0x273f72c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x629ac>
 273e230: aa1403e6     	mov	x6, x20
 273e234: aa1303e7     	mov	x7, x19
 273e238: a9477bfd     	ldp	x29, x30, [sp, #0x70]
 273e23c: 14000502     	b	0x273f644 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x628c4>
 273e240: aa1303e0     	mov	x0, x19
 273e244: 528d5781     	mov	w1, #0x6abc             ; =27324
 273e248: 940999b2     	bl	0x29a4910 <dyld_stub_binder+0x29a4910>
 273e24c: 29006ffa     	stp	w26, w27, [sp]
 273e250: b9000bf8     	str	w24, [sp, #0x8]
 273e254: 92407e88     	and	x8, x20, #0xffffffff
 273e258: f9000be8     	str	x8, [sp, #0x10]
 273e25c: 29035ff9     	stp	w25, w23, [sp, #0x18]
 273e260: aa1503e0     	mov	x0, x21
 273e264: aa1403e1     	mov	x1, x20
 273e268: 94008f1e     	bl	0x2761ee0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x85160>
 273e26c: 34000100     	cbz	w0, 0x273e28c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6150c>
 273e270: 94000550     	bl	0x273f7b0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a30>
 273e274: 350000e0     	cbnz	w0, 0x273e290 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61510>
 273e278: 9400055d     	bl	0x273f7ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a6c>
 273e27c: aa1403e2     	mov	x2, x20
 273e280: 940084e4     	bl	0x275f610 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x82890>
 273e284: 52800000     	mov	w0, #0x0                ; =0
 273e288: 14000002     	b	0x273e290 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61510>
 273e28c: 12800d40     	mov	w0, #-0x6b              ; =-107
 273e290: a9477bfd     	ldp	x29, x30, [sp, #0x70]
 273e294: 14000516     	b	0x273f6ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6296c>
 273e298: d10203ff     	sub	sp, sp, #0x80
 273e29c: a9026ffc     	stp	x28, x27, [sp, #0x20]
 273e2a0: a90367fa     	stp	x26, x25, [sp, #0x30]
 273e2a4: a9045ff8     	stp	x24, x23, [sp, #0x40]
 273e2a8: a90557f6     	stp	x22, x21, [sp, #0x50]
 273e2ac: a9064ff4     	stp	x20, x19, [sp, #0x60]
 273e2b0: a9077bfd     	stp	x29, x30, [sp, #0x70]
 273e2b4: 9101c3fd     	add	x29, sp, #0x70
 273e2b8: b4000200     	cbz	x0, 0x273e2f8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61578>
 273e2bc: aa0103f6     	mov	x22, x1
 273e2c0: aa0003f5     	mov	x21, x0
 273e2c4: 12800ce0     	mov	w0, #-0x68              ; =-104
 273e2c8: b40001a1     	cbz	x1, 0x273e2fc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6157c>
 273e2cc: f9400bb4     	ldr	x20, [x29, #0x10]
 273e2d0: b4000174     	cbz	x20, 0x273e2fc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6157c>
 273e2d4: aa0503f8     	mov	x24, x5
 273e2d8: aa0403fa     	mov	x26, x4
 273e2dc: aa0303fb     	mov	x27, x3
 273e2e0: 7100047f     	cmp	w3, #0x1
 273e2e4: 7a41a888     	ccmp	w4, #0x1, #0x8, ge
 273e2e8: 7a41a8a8     	ccmp	w5, #0x1, #0x8, ge
 273e2ec: 540000ca     	b.ge	0x273e304 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61584>
 273e2f0: 12800ce0     	mov	w0, #-0x68              ; =-104
 273e2f4: 14000002     	b	0x273e2fc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6157c>
 273e2f8: 12800d60     	mov	w0, #-0x6c              ; =-108
 273e2fc: a9477bfd     	ldp	x29, x30, [sp, #0x70]
 273e300: 140004fb     	b	0x273f6ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6296c>
 273e304: aa0203f9     	mov	x25, x2
 273e308: 71000c5f     	cmp	w2, #0x3
 273e30c: 540001c8     	b.hi	0x273e344 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x615c4>
 273e310: 528efd88     	mov	w8, #0x77ec             ; =30700
 273e314: 8b0802a8     	add	x8, x21, x8
 273e318: 39400109     	ldrb	w9, [x8]
 273e31c: 34000189     	cbz	w9, 0x273e34c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x615cc>
 273e320: aa0703f3     	mov	x19, x7
 273e324: aa0603f7     	mov	x23, x6
 273e328: 3959dd08     	ldrb	w8, [x8, #0x677]
 273e32c: 34000148     	cbz	w8, 0x273e354 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x615d4>
 273e330: 940004ff     	bl	0x273f72c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x629ac>
 273e334: aa1303e6     	mov	x6, x19
 273e338: aa1403e7     	mov	x7, x20
 273e33c: a9477bfd     	ldp	x29, x30, [sp, #0x70]
 273e340: 140004c1     	b	0x273f644 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x628c4>
 273e344: 12800da0     	mov	w0, #-0x6e              ; =-110
 273e348: 17ffffed     	b	0x273e2fc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6157c>
 273e34c: 128001e0     	mov	w0, #-0x10              ; =-16
 273e350: 17ffffeb     	b	0x273e2fc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6157c>
 273e354: f9400fa8     	ldr	x8, [x29, #0x18]
 273e358: b941a51c     	ldr	w28, [x8, #0x1a4]
 273e35c: aa1403e0     	mov	x0, x20
 273e360: 528d5781     	mov	w1, #0x6abc             ; =27324
 273e364: 9409996b     	bl	0x29a4910 <dyld_stub_binder+0x29a4910>
 273e368: 29006ffa     	stp	w26, w27, [sp]
 273e36c: b9000bf8     	str	w24, [sp, #0x8]
 273e370: 92407e68     	and	x8, x19, #0xffffffff
 273e374: f9000be8     	str	x8, [sp, #0x10]
 273e378: 29035ff9     	stp	w25, w23, [sp, #0x18]
 273e37c: 9400051c     	bl	0x273f7ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a6c>
 273e380: 94008ed8     	bl	0x2761ee0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x85160>
 273e384: 340001a0     	cbz	w0, 0x273e3b8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61638>
 273e388: 910003e2     	mov	x2, sp
 273e38c: aa1503e0     	mov	x0, x21
 273e390: aa1603e1     	mov	x1, x22
 273e394: aa1c03e3     	mov	x3, x28
 273e398: 94007de9     	bl	0x275db3c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x80dbc>
 273e39c: 35fffb00     	cbnz	w0, 0x273e2fc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6157c>
 273e3a0: aa1503e0     	mov	x0, x21
 273e3a4: aa1403e1     	mov	x1, x20
 273e3a8: aa1303e2     	mov	x2, x19
 273e3ac: 94008499     	bl	0x275f610 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x82890>
 273e3b0: 52800000     	mov	w0, #0x0                ; =0
 273e3b4: 17ffffd2     	b	0x273e2fc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6157c>
 273e3b8: 12800d40     	mov	w0, #-0x6b              ; =-107
 273e3bc: 17ffffd0     	b	0x273e2fc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6157c>
 273e3c0: d10143ff     	sub	sp, sp, #0x50
 273e3c4: a90257f6     	stp	x22, x21, [sp, #0x20]
 273e3c8: a9034ff4     	stp	x20, x19, [sp, #0x30]
 273e3cc: a9047bfd     	stp	x29, x30, [sp, #0x40]
 273e3d0: 910103fd     	add	x29, sp, #0x40
 273e3d4: aa0703f4     	mov	x20, x7
 273e3d8: aa0603f3     	mov	x19, x6
 273e3dc: aa0003f6     	mov	x22, x0
 273e3e0: f9400bb5     	ldr	x21, [x29, #0x10]
 273e3e4: 528d5708     	mov	w8, #0x6ab8             ; =27320
 273e3e8: b82868ff     	str	wzr, [x7, x8]
 273e3ec: 29000be3     	stp	w3, w2, [sp]
 273e3f0: b9000be4     	str	w4, [sp, #0x8]
 273e3f4: 92407cc8     	and	x8, x6, #0xffffffff
 273e3f8: f9000be8     	str	x8, [sp, #0x10]
 273e3fc: 290317e1     	stp	w1, w5, [sp, #0x18]
 273e400: aa1503e0     	mov	x0, x21
 273e404: aa0603e1     	mov	x1, x6
 273e408: 94008eb6     	bl	0x2761ee0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x85160>
 273e40c: 34000120     	cbz	w0, 0x273e430 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x616b0>
 273e410: 940004e8     	bl	0x273f7b0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a30>
 273e414: 35000100     	cbnz	w0, 0x273e434 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x616b4>
 273e418: aa1503e0     	mov	x0, x21
 273e41c: aa1403e1     	mov	x1, x20
 273e420: aa1303e2     	mov	x2, x19
 273e424: 940090e8     	bl	0x27627c4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x85a44>
 273e428: 52800000     	mov	w0, #0x0                ; =0
 273e42c: 14000002     	b	0x273e434 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x616b4>
 273e430: 12800d40     	mov	w0, #-0x6b              ; =-107
 273e434: a9447bfd     	ldp	x29, x30, [sp, #0x40]
 273e438: 14000477     	b	0x273f614 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62894>
 273e43c: a9bb67fa     	stp	x26, x25, [sp, #-0x50]!
 273e440: a9015ff8     	stp	x24, x23, [sp, #0x10]
 273e444: a90257f6     	stp	x22, x21, [sp, #0x20]
 273e448: a9034ff4     	stp	x20, x19, [sp, #0x30]
 273e44c: a9047bfd     	stp	x29, x30, [sp, #0x40]
 273e450: 910103fd     	add	x29, sp, #0x40
 273e454: d106c3ff     	sub	sp, sp, #0x1b0
 273e458: b4000420     	cbz	x0, 0x273e4dc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6175c>
 273e45c: aa0203f3     	mov	x19, x2
 273e460: b4000422     	cbz	x2, 0x273e4e4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61764>
 273e464: 940004bc     	bl	0x273f754 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x629d4>
 273e468: 34000428     	cbz	w8, 0x273e4ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6176c>
 273e46c: aa0103f5     	mov	x21, x1
 273e470: 3959dec8     	ldrb	w8, [x22, #0x677]
 273e474: 34000408     	cbz	w8, 0x273e4f4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61774>
 273e478: b901427f     	str	wzr, [x19, #0x140]
 273e47c: 9400046f     	bl	0x273f638 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x628b8>
 273e480: 34000660     	cbz	w0, 0x273e54c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x617cc>
 273e484: 940004c5     	bl	0x273f798 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a18>
 273e488: eb09015f     	cmp	x10, x9
 273e48c: 54000640     	b.eq	0x273e554 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x617d4>
 273e490: 7100251f     	cmp	w8, #0x9
 273e494: 5400020c     	b.gt	0x273e4d4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61754>
 273e498: 9400048f     	bl	0x273f6d4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62954>
 273e49c: 3400010b     	cbz	w11, 0x273e4bc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6173c>
 273e4a0: 9b0c39b1     	madd	x17, x13, x12, x14
 273e4a4: f9404a20     	ldr	x0, [x17, #0x90]
 273e4a8: f9000600     	str	x0, [x16, #0x8]
 273e4ac: b9409a20     	ldr	w0, [x17, #0x98]
 273e4b0: b9000200     	str	w0, [x16]
 273e4b4: f9405231     	ldr	x17, [x17, #0xa0]
 273e4b8: 14000004     	b	0x273e4c8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61748>
 273e4bc: d2800011     	mov	x17, #0x0               ; =0
 273e4c0: f900061f     	str	xzr, [x16, #0x8]
 273e4c4: b900021f     	str	wzr, [x16]
 273e4c8: 8b0f166f     	add	x15, x19, x15, lsl #5
 273e4cc: f90009f1     	str	x17, [x15, #0x10]
 273e4d0: 940004a6     	bl	0x273f768 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x629e8>
 273e4d4: 91000529     	add	x9, x9, #0x1
 273e4d8: 17ffffec     	b	0x273e488 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61708>
 273e4dc: 12800d60     	mov	w0, #-0x6c              ; =-108
 273e4e0: 14000023     	b	0x273e56c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x617ec>
 273e4e4: 12800ce0     	mov	w0, #-0x68              ; =-104
 273e4e8: 14000021     	b	0x273e56c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x617ec>
 273e4ec: 128001e0     	mov	w0, #-0x10              ; =-16
 273e4f0: 1400001f     	b	0x273e56c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x617ec>
 273e4f4: 940004a2     	bl	0x273f77c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x629fc>
 273e4f8: 94000450     	bl	0x273f638 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x628b8>
 273e4fc: 34000280     	cbz	w0, 0x273e54c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x617cc>
 273e500: 3959cad5     	ldrb	w21, [x22, #0x672]
 273e504: 94000481     	bl	0x273f708 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62988>
 273e508: 940004bc     	bl	0x273f7f8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a78>
 273e50c: f9421a88     	ldr	x8, [x20, #0x430]
 273e510: eb17011f     	cmp	x8, x23
 273e514: 54000269     	b.ls	0x273e560 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x617e0>
 273e518: 710026df     	cmp	w22, #0x9
 273e51c: 5400014c     	b.gt	0x273e544 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x617c4>
 273e520: 9400047e     	bl	0x273f718 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62998>
 273e524: 940004a9     	bl	0x273f7c8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a48>
 273e528: f9404fe8     	ldr	x8, [sp, #0x98]
 273e52c: b940a3e9     	ldr	w9, [sp, #0xa0]
 273e530: f94057ea     	ldr	x10, [sp, #0xa8]
 273e534: 720002bf     	tst	w21, #0x1
 273e538: 9a8a03ea     	csel	x10, xzr, x10, eq
 273e53c: 9a8803e8     	csel	x8, xzr, x8, eq
 273e540: 9400042b     	bl	0x273f5ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6286c>
 273e544: 910006f7     	add	x23, x23, #0x1
 273e548: 17fffff1     	b	0x273e50c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6178c>
 273e54c: 12800d40     	mov	w0, #-0x6b              ; =-107
 273e550: 14000007     	b	0x273e56c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x617ec>
 273e554: 52800000     	mov	w0, #0x0                ; =0
 273e558: b9014268     	str	w8, [x19, #0x140]
 273e55c: 14000004     	b	0x273e56c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x617ec>
 273e560: b9014276     	str	w22, [x19, #0x140]
 273e564: 9400047a     	bl	0x273f74c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x629cc>
 273e568: 52800000     	mov	w0, #0x0                ; =0
 273e56c: 9106c3ff     	add	sp, sp, #0x1b0
 273e570: a9447bfd     	ldp	x29, x30, [sp, #0x40]
 273e574: 1400042c     	b	0x273f624 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x628a4>
 273e578: aa0003f3     	mov	x19, x0
 273e57c: 94000474     	bl	0x273f74c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x629cc>
 273e580: 94000482     	bl	0x273f788 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a08>
 273e584: a9bb67fa     	stp	x26, x25, [sp, #-0x50]!
 273e588: a9015ff8     	stp	x24, x23, [sp, #0x10]
 273e58c: a90257f6     	stp	x22, x21, [sp, #0x20]
 273e590: a9034ff4     	stp	x20, x19, [sp, #0x30]
 273e594: a9047bfd     	stp	x29, x30, [sp, #0x40]
 273e598: 910103fd     	add	x29, sp, #0x40
 273e59c: d106c3ff     	sub	sp, sp, #0x1b0
 273e5a0: b4000420     	cbz	x0, 0x273e624 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x618a4>
 273e5a4: aa0203f3     	mov	x19, x2
 273e5a8: b4000422     	cbz	x2, 0x273e62c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x618ac>
 273e5ac: 9400046a     	bl	0x273f754 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x629d4>
 273e5b0: 34000428     	cbz	w8, 0x273e634 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x618b4>
 273e5b4: aa0103f5     	mov	x21, x1
 273e5b8: 3959dec8     	ldrb	w8, [x22, #0x677]
 273e5bc: 34000408     	cbz	w8, 0x273e63c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x618bc>
 273e5c0: b901427f     	str	wzr, [x19, #0x140]
 273e5c4: 9400041d     	bl	0x273f638 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x628b8>
 273e5c8: 34000660     	cbz	w0, 0x273e694 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61914>
 273e5cc: 94000473     	bl	0x273f798 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a18>
 273e5d0: eb09015f     	cmp	x10, x9
 273e5d4: 54000640     	b.eq	0x273e69c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6191c>
 273e5d8: 7100251f     	cmp	w8, #0x9
 273e5dc: 5400020c     	b.gt	0x273e61c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6189c>
 273e5e0: 9400043d     	bl	0x273f6d4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62954>
 273e5e4: 3400010b     	cbz	w11, 0x273e604 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61884>
 273e5e8: 9b0c39b1     	madd	x17, x13, x12, x14
 273e5ec: f9405620     	ldr	x0, [x17, #0xa8]
 273e5f0: f9000600     	str	x0, [x16, #0x8]
 273e5f4: b940b220     	ldr	w0, [x17, #0xb0]
 273e5f8: b9000200     	str	w0, [x16]
 273e5fc: f9405e31     	ldr	x17, [x17, #0xb8]
 273e600: 14000004     	b	0x273e610 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61890>
 273e604: d2800011     	mov	x17, #0x0               ; =0
 273e608: f900061f     	str	xzr, [x16, #0x8]
 273e60c: b900021f     	str	wzr, [x16]
 273e610: 8b0f166f     	add	x15, x19, x15, lsl #5
 273e614: f90009f1     	str	x17, [x15, #0x10]
 273e618: 94000454     	bl	0x273f768 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x629e8>
 273e61c: 91000529     	add	x9, x9, #0x1
