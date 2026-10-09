
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

00000000008e5ee0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE>:
  a33400: 91016102     	add	x2, x8, #0x58
  a33404: b94002a8     	ldr	w8, [x21]
  a33408: 12002d03     	and	w3, w8, #0xfff
  a3340c: aa1303e0     	mov	x0, x19
  a33410: aa1403e1     	mov	x1, x20
  a33414: 97ffc283     	bl	0xa23e20 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13df40>
  a33418: 910003e0     	mov	x0, sp
  a3341c: 940038bd     	bl	0xa41710 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15b830>
  a33420: 940038df     	bl	0xa4179c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15b8bc>
  a33424: 910003e0     	mov	x0, sp
  a33428: aa1503e1     	mov	x1, x21
  a3342c: 94000380     	bl	0xa3422c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14e34c>
  a33430: f94006a8     	ldr	x8, [x21, #0x8]
  a33434: b4000068     	cbz	x8, 0xa33440 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d560>
  a33438: f9400d17     	ldr	x23, [x8, #0x18]
  a3343c: 14000002     	b	0xa33444 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d564>
  a33440: d2800017     	mov	x23, #0x0               ; =0
  a33444: aa1503e0     	mov	x0, x21
  a33448: 97ffffa0     	bl	0xa332c8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d3e8>
  a3344c: aa0003f5     	mov	x21, x0
  a33450: b40002b7     	cbz	x23, 0xa334a4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d5c4>
  a33454: 910003e0     	mov	x0, sp
  a33458: 97ffffa6     	bl	0xa332f0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d410>
  a3345c: f9400bf6     	ldr	x22, [sp, #0x10]
  a33460: 91004001     	add	x1, x0, #0x10
  a33464: 71000a9f     	cmp	w20, #0x2
  a33468: 540000ab     	b.lt	0xa3347c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d59c>
  a3346c: aa1303e0     	mov	x0, x19
  a33470: 94000014     	bl	0xa334c0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d5e0>
  a33474: aa0003e1     	mov	x1, x0
  a33478: 14000006     	b	0xa33490 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d5b0>
  a3347c: b9800028     	ldrsw	x8, [x1]
  a33480: f9400a69     	ldr	x9, [x19, #0x10]
  a33484: f940266a     	ldr	x10, [x19, #0x48]
  a33488: f940014a     	ldr	x10, [x10]
  a3348c: 9b082541     	madd	x1, x10, x8, x9
  a33490: 94003898     	bl	0xa416f0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15b810>
  a33494: 910003e0     	mov	x0, sp
  a33498: 97ffffa1     	bl	0xa3331c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d43c>
  a3349c: d10006f7     	sub	x23, x23, #0x1
  a334a0: b5fffdb7     	cbnz	x23, 0xa33454 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d574>
  a334a4: a9457bfd     	ldp	x29, x30, [sp, #0x50]
  a334a8: 1400377b     	b	0xa41294 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15b3b4>
  a334ac: 52800014     	mov	w20, #0x0               ; =0
  a334b0: 17ffffd4     	b	0xa33400 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d520>
  a334b4: aa0003f3     	mov	x19, x0
  a334b8: 94003344     	bl	0xa401c8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a2e8>
  a334bc: 94003345     	bl	0xa401d0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a2f0>
  a334c0: d2800009     	mov	x9, #0x0                ; =0
  a334c4: b940040a     	ldr	w10, [x0, #0x4]
  a334c8: f9400808     	ldr	x8, [x0, #0x10]
  a334cc: 7100015f     	cmp	w10, #0x0
  a334d0: 1a9fc14a     	csel	w10, w10, wzr, gt
  a334d4: eb09015f     	cmp	x10, x9
  a334d8: 540000e0     	b.eq	0xa334f4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d614>
  a334dc: b8a9782b     	ldrsw	x11, [x1, x9, lsl #2]
  a334e0: f940240c     	ldr	x12, [x0, #0x48]
  a334e4: f869798c     	ldr	x12, [x12, x9, lsl #3]
  a334e8: 9b0b2188     	madd	x8, x12, x11, x8
  a334ec: 91000529     	add	x9, x9, #0x1
  a334f0: 17fffff9     	b	0xa334d4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d5f4>
  a334f4: aa0803e0     	mov	x0, x8
  a334f8: d65f03c0     	ret
  a334fc: d101c3ff     	sub	sp, sp, #0x70
  a33500: 6d0223e9     	stp	d9, d8, [sp, #0x20]
  a33504: a9035ff8     	stp	x24, x23, [sp, #0x30]
  a33508: a90457f6     	stp	x22, x21, [sp, #0x40]
  a3350c: a9054ff4     	stp	x20, x19, [sp, #0x50]
  a33510: a9067bfd     	stp	x29, x30, [sp, #0x60]
  a33514: 910183fd     	add	x29, sp, #0x60
  a33518: 1e604008     	fmov	d8, d0
  a3351c: 94003680     	bl	0xa40f1c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15b03c>
  a33520: b940000a     	ldr	w10, [x0]
  a33524: 53032d48     	ubfx	w8, w10, #3, #9
  a33528: 11000515     	add	w21, w8, #0x1
  a3352c: 7100005f     	cmp	w2, #0x0
  a33530: 1a82b148     	csel	w8, w10, w2, lt
  a33534: 12000908     	and	w8, w8, #0x7
  a33538: 331d26a8     	bfi	w8, w21, #3, #10
  a3353c: 51002116     	sub	w22, w8, #0x8
  a33540: f9400408     	ldr	x8, [x0, #0x8]
  a33544: f9400429     	ldr	x9, [x1, #0x8]
  a33548: 12002d4a     	and	w10, w10, #0xfff
  a3354c: eb09011f     	cmp	x8, x9
  a33550: 7a4a02c4     	ccmp	w22, w10, #0x4, eq
  a33554: 540003a1     	b.ne	0xa335c8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d6e8>
  a33558: b50001c8     	cbnz	x8, 0xa33590 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d6b0>
  a3355c: d0014221     	adrp	x1, 0x3279000 <dyld_stub_binder+0x3279000>
  a33560: 912e0821     	add	x1, x1, #0xb82
  a33564: 940033f8     	bl	0xa40544 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a664>
  a33568: d0014142     	adrp	x2, 0x325d000 <dyld_stub_binder+0x325d000>
  a3356c: 9132bc42     	add	x2, x2, #0xcaf
  a33570: b0014223     	adrp	x3, 0x3278000 <dyld_stub_binder+0x3278000>
  a33574: 911ff463     	add	x3, x3, #0x7fd
  a33578: 94003456     	bl	0xa406d0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a7f0>
  a3357c: 5282a204     	mov	w4, #0x1510             ; =5392
  a33580: 94027b1d     	bl	0xad21f4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1ec314>
  a33584: 940033af     	bl	0xa40440 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a560>
  a33588: f9400688     	ldr	x8, [x20, #0x8]
  a3358c: f9400669     	ldr	x9, [x19, #0x8]
  a33590: eb09011f     	cmp	x8, x9
  a33594: 540000c0     	b.eq	0xa335ac <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d6cc>
  a33598: b9400501     	ldr	w1, [x8, #0x4]
  a3359c: 91016102     	add	x2, x8, #0x58
  a335a0: aa1303e0     	mov	x0, x19
  a335a4: aa1603e3     	mov	x3, x22
  a335a8: 97fffdfa     	bl	0xa32d90 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14ceb0>
  a335ac: 910023e0     	add	x0, sp, #0x8
  a335b0: aa1403e1     	mov	x1, x20
  a335b4: 9400031e     	bl	0xa3422c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14e34c>
  a335b8: f9400688     	ldr	x8, [x20, #0x8]
  a335bc: b4000228     	cbz	x8, 0xa33600 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d720>
  a335c0: f9400d17     	ldr	x23, [x8, #0x18]
  a335c4: 14000010     	b	0xa33604 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d724>
  a335c8: 52a85fa8     	mov	w8, #0x42fd0000         ; =1123876864
  a335cc: b9000be8     	str	w8, [sp, #0x8]
  a335d0: f9000bff     	str	xzr, [sp, #0x10]
  a335d4: 910023e1     	add	x1, sp, #0x8
  a335d8: aa1403e0     	mov	x0, x20
  a335dc: aa1603e2     	mov	x2, x22
  a335e0: 1e604100     	fmov	d0, d8
  a335e4: 97ffffc6     	bl	0xa334fc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d61c>
  a335e8: 94003839     	bl	0xa416cc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15b7ec>
  a335ec: 94000040     	bl	0xa336ec <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d80c>
  a335f0: 910023e0     	add	x0, sp, #0x8
  a335f4: 97fffef1     	bl	0xa331b8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d2d8>
  a335f8: a9467bfd     	ldp	x29, x30, [sp, #0x60]
  a335fc: 1400367d     	b	0xa40ff0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15b110>
  a33600: d2800017     	mov	x23, #0x0               ; =0
  a33604: b9400288     	ldr	w8, [x20]
  a33608: 12002d00     	and	w0, w8, #0xfff
  a3360c: 1e6e1000     	fmov	d0, #1.00000000
  a33610: aa1603e1     	mov	x1, x22
  a33614: 1e602100     	fcmp	d8, d0
  a33618: 540002e1     	b.ne	0xa33674 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d794>
  a3361c: 94000049     	bl	0xa33740 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d860>
  a33620: aa0003f6     	mov	x22, x0
  a33624: b4fffeb7     	cbz	x23, 0xa335f8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d718>
  a33628: 910023e0     	add	x0, sp, #0x8
  a3362c: 97ffff31     	bl	0xa332f0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d410>
  a33630: f9400688     	ldr	x8, [x20, #0x8]
  a33634: f9400669     	ldr	x9, [x19, #0x8]
  a33638: eb09011f     	cmp	x8, x9
  a3363c: 540000a0     	b.eq	0xa33650 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d770>
  a33640: 9400362a     	bl	0xa40ee8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15b008>
  a33644: aa0003e1     	mov	x1, x0
  a33648: f9400fe0     	ldr	x0, [sp, #0x18]
  a3364c: 14000003     	b	0xa33658 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d778>
  a33650: f9400fe0     	ldr	x0, [sp, #0x18]
  a33654: aa0003e1     	mov	x1, x0
  a33658: aa1503e2     	mov	x2, x21
  a3365c: d63f02c0     	blr	x22
  a33660: 910023e0     	add	x0, sp, #0x8
  a33664: 97ffff2e     	bl	0xa3331c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d43c>
  a33668: d10006f7     	sub	x23, x23, #0x1
  a3366c: b5fffdf7     	cbnz	x23, 0xa33628 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d748>
  a33670: 17ffffe2     	b	0xa335f8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d718>
  a33674: 9400004f     	bl	0xa337b0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d8d0>
  a33678: aa0003f6     	mov	x22, x0
  a3367c: b4fffbf7     	cbz	x23, 0xa335f8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d718>
  a33680: 910023e0     	add	x0, sp, #0x8
  a33684: 97ffff1b     	bl	0xa332f0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d410>
  a33688: f9400688     	ldr	x8, [x20, #0x8]
  a3368c: f9400669     	ldr	x9, [x19, #0x8]
  a33690: eb09011f     	cmp	x8, x9
  a33694: 540000a0     	b.eq	0xa336a8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d7c8>
  a33698: 94003614     	bl	0xa40ee8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15b008>
  a3369c: aa0003e1     	mov	x1, x0
  a336a0: f9400fe0     	ldr	x0, [sp, #0x18]
  a336a4: 14000003     	b	0xa336b0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d7d0>
  a336a8: f9400fe0     	ldr	x0, [sp, #0x18]
  a336ac: aa0003e1     	mov	x1, x0
  a336b0: 2f00e401     	movi	d1, #0000000000000000
  a336b4: aa1503e2     	mov	x2, x21
  a336b8: 1e604100     	fmov	d0, d8
  a336bc: d63f02c0     	blr	x22
  a336c0: 910023e0     	add	x0, sp, #0x8
  a336c4: 97ffff16     	bl	0xa3331c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d43c>
  a336c8: d10006f7     	sub	x23, x23, #0x1
  a336cc: b5fffdb7     	cbnz	x23, 0xa33680 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d7a0>
  a336d0: 17ffffca     	b	0xa335f8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d718>
  a336d4: aa0003f3     	mov	x19, x0
  a336d8: 9400335a     	bl	0xa40440 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a560>
  a336dc: 14000003     	b	0xa336e8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d808>
  a336e0: 940037b6     	bl	0xa415b8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15b6d8>
  a336e4: 97fffeb5     	bl	0xa331b8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d2d8>
  a336e8: 940032ba     	bl	0xa401d0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a2f0>
  a336ec: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
  a336f0: a9017bfd     	stp	x29, x30, [sp, #0x10]
  a336f4: 910043fd     	add	x29, sp, #0x10
  a336f8: aa0003f3     	mov	x19, x0
  a336fc: eb01001f     	cmp	x0, x1
  a33700: 54000180     	b.eq	0xa33730 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d850>
  a33704: aa0103f4     	mov	x20, x1
  a33708: f9400428     	ldr	x8, [x1, #0x8]
  a3370c: b4000068     	cbz	x8, 0xa33718 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d838>
  a33710: 52800029     	mov	w9, #0x1                ; =1
  a33714: b8e90108     	ldaddal	w9, w8, [x8]
  a33718: aa1303e0     	mov	x0, x19
  a3371c: 97fffea7     	bl	0xa331b8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d2d8>
  a33720: b9400288     	ldr	w8, [x20]
  a33724: b9000268     	str	w8, [x19]
  a33728: f9400688     	ldr	x8, [x20, #0x8]
  a3372c: f9000668     	str	x8, [x19, #0x8]
  a33730: aa1303e0     	mov	x0, x19
  a33734: a9417bfd     	ldp	x29, x30, [sp, #0x10]
  a33738: a8c24ff4     	ldp	x20, x19, [sp], #0x20
  a3373c: d65f03c0     	ret
  a33740: d100c3ff     	sub	sp, sp, #0x30
  a33744: a9014ff4     	stp	x20, x19, [sp, #0x10]
  a33748: a9027bfd     	stp	x29, x30, [sp, #0x20]
  a3374c: 910083fd     	add	x29, sp, #0x20
  a33750: 12000808     	and	w8, w0, #0x7
  a33754: 12000829     	and	w9, w1, #0x7
  a33758: d00157aa     	adrp	x10, 0x3529000 <__ZTIN3BRC13MessageSenderE+0x9288>
  a3375c: 9107814a     	add	x10, x10, #0x1e0
  a33760: 8b081948     	add	x8, x10, x8, lsl #6
  a33764: f8695913     	ldr	x19, [x8, w9, uxtw #3]
  a33768: b5000193     	cbnz	x19, 0xa33798 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d8b8>
  a3376c: d0014141     	adrp	x1, 0x325d000 <dyld_stub_binder+0x325d000>
  a33770: 9128d021     	add	x1, x1, #0xa34
  a33774: 94003299     	bl	0xa401d8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a2f8>
  a33778: d0014222     	adrp	x2, 0x3279000 <dyld_stub_binder+0x3279000>
  a3377c: 91369c42     	add	x2, x2, #0xda7
  a33780: b0014223     	adrp	x3, 0x3278000 <dyld_stub_binder+0x3278000>
  a33784: 911ff463     	add	x3, x3, #0x7fd
  a33788: 9400329c     	bl	0xa401f8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a318>
  a3378c: 52828724     	mov	w4, #0x1439             ; =5177
  a33790: 94027a99     	bl	0xad21f4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1ec314>
  a33794: 9400328d     	bl	0xa401c8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a2e8>
  a33798: aa1303e0     	mov	x0, x19
  a3379c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  a337a0: 1400347e     	b	0xa40998 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15aab8>
  a337a4: aa0003f3     	mov	x19, x0
  a337a8: 94003288     	bl	0xa401c8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a2e8>
  a337ac: 94003289     	bl	0xa401d0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a2f0>
  a337b0: d100c3ff     	sub	sp, sp, #0x30
  a337b4: a9014ff4     	stp	x20, x19, [sp, #0x10]
  a337b8: a9027bfd     	stp	x29, x30, [sp, #0x20]
  a337bc: 910083fd     	add	x29, sp, #0x20
  a337c0: 12000808     	and	w8, w0, #0x7
  a337c4: 12000829     	and	w9, w1, #0x7
  a337c8: d00157aa     	adrp	x10, 0x3529000 <__ZTIN3BRC13MessageSenderE+0x9288>
  a337cc: 910f814a     	add	x10, x10, #0x3e0
  a337d0: 8b081948     	add	x8, x10, x8, lsl #6
  a337d4: f8695913     	ldr	x19, [x8, w9, uxtw #3]
  a337d8: b5000193     	cbnz	x19, 0xa33808 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d928>
  a337dc: d0014141     	adrp	x1, 0x325d000 <dyld_stub_binder+0x325d000>
  a337e0: 9128d021     	add	x1, x1, #0xa34
  a337e4: 9400327d     	bl	0xa401d8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a2f8>
  a337e8: d0014222     	adrp	x2, 0x3279000 <dyld_stub_binder+0x3279000>
  a337ec: 9136d842     	add	x2, x2, #0xdb6
  a337f0: b0014223     	adrp	x3, 0x3278000 <dyld_stub_binder+0x3278000>
  a337f4: 911ff463     	add	x3, x3, #0x7fd
  a337f8: 94003280     	bl	0xa401f8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a318>
  a337fc: 52828cc4     	mov	w4, #0x1466             ; =5222
  a33800: 94027a7d     	bl	0xad21f4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1ec314>
  a33804: 94003271     	bl	0xa401c8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a2e8>
  a33808: aa1303e0     	mov	x0, x19
  a3380c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
  a33810: 14003462     	b	0xa40998 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15aab8>
  a33814: aa0003f3     	mov	x19, x0
  a33818: 9400326c     	bl	0xa401c8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a2e8>
  a3381c: 9400326d     	bl	0xa401d0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a2f0>
  a33820: d101c3ff     	sub	sp, sp, #0x70
  a33824: 6d0223e9     	stp	d9, d8, [sp, #0x20]
  a33828: a9035ff8     	stp	x24, x23, [sp, #0x30]
  a3382c: a90457f6     	stp	x22, x21, [sp, #0x40]
  a33830: a9054ff4     	stp	x20, x19, [sp, #0x50]
  a33834: a9067bfd     	stp	x29, x30, [sp, #0x60]
  a33838: 910183fd     	add	x29, sp, #0x60
  a3383c: 1e604028     	fmov	d8, d1
  a33840: 1e604009     	fmov	d9, d0
  a33844: aa0103f3     	mov	x19, x1
  a33848: aa0003f5     	mov	x21, x0
  a3384c: b9400014     	ldr	w20, [x0]
  a33850: 7100005f     	cmp	w2, #0x0
  a33854: 1a82b296     	csel	w22, w20, w2, lt
  a33858: f9400408     	ldr	x8, [x0, #0x8]
  a3385c: b50001c8     	cbnz	x8, 0xa33894 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14d9b4>
  a33860: d0014221     	adrp	x1, 0x3279000 <dyld_stub_binder+0x3279000>
  a33864: 912df821     	add	x1, x1, #0xb7e
  a33868: 9400325c     	bl	0xa401d8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a2f8>
  a3386c: d0014142     	adrp	x2, 0x325d000 <dyld_stub_binder+0x325d000>
  a33870: 9132bc42     	add	x2, x2, #0xcaf
  a33874: b0014223     	adrp	x3, 0x3278000 <dyld_stub_binder+0x3278000>
  a33878: 911ff463     	add	x3, x3, #0x7fd
  a3387c: 9400325f     	bl	0xa401f8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a318>
  a33880: 5282a6a4     	mov	w4, #0x1535             ; =5429
  a33884: 94027a5c     	bl	0xad21f4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1ec314>
  a33888: 94003250     	bl	0xa401c8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15a2e8>
  a3388c: f94006a8     	ldr	x8, [x21, #0x8]
  a33890: b4000728     	cbz	x8, 0xa33974 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14da94>
  a33894: b9400501     	ldr	w1, [x8, #0x4]
  a33898: 53032e89     	ubfx	w9, w20, #3, #9
  a3389c: 11000534     	add	w20, w9, #0x1
  a338a0: 12000ac9     	and	w9, w22, #0x7
  a338a4: 331d2689     	bfi	w9, w20, #3, #10
  a338a8: 51002136     	sub	w22, w9, #0x8
  a338ac: 91016102     	add	x2, x8, #0x58
  a338b0: aa1303e0     	mov	x0, x19
  a338b4: aa1603e3     	mov	x3, x22
  a338b8: 97ffc15a     	bl	0xa23e20 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13df40>
  a338bc: 910003e0     	mov	x0, sp
  a338c0: 1e604100     	fmov	d0, d8
  a338c4: 9476d46f     	bl	0x27e8a80 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x10bd00>
  a338c8: 940037b5     	bl	0xa4179c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x15b8bc>
  a338cc: 910003e0     	mov	x0, sp
  a338d0: aa1503e1     	mov	x1, x21
  a338d4: 94000256     	bl	0xa3422c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14e34c>
  a338d8: f94006a8     	ldr	x8, [x21, #0x8]
  a338dc: b4000068     	cbz	x8, 0xa338e8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14da08>
  a338e0: f9400d17     	ldr	x23, [x8, #0x18]
  a338e4: 14000002     	b	0xa338ec <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14da0c>
  a338e8: d2800017     	mov	x23, #0x0               ; =0
  a338ec: b94002a8     	ldr	w8, [x21]
  a338f0: 12002d00     	and	w0, w8, #0xfff
  a338f4: 1e6e1000     	fmov	d0, #1.00000000
  a338f8: 1e602120     	fcmp	d9, d0
  a338fc: 54000201     	b.ne	0xa3393c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x14da5c>
