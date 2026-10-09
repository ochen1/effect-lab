
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

000000000243a29c <_BlockGetResult>:
 245c000: f9400668     	ldr	x8, [x19, #0x8]
 245c004: f90027e8     	str	x8, [sp, #0x48]
 245c008: d10143a0     	sub	x0, x29, #0x50
 245c00c: 910123e1     	add	x1, sp, #0x48
 245c010: 97ffa0a5     	bl	0x24442a4 <_BlockGetResult+0xa008>
 245c014: 390123ff     	strb	wzr, [sp, #0x48]
 245c018: d10143a0     	sub	x0, x29, #0x50
 245c01c: 910123e1     	add	x1, sp, #0x48
 245c020: 97ffa0d8     	bl	0x2444380 <_BlockGetResult+0xa0e4>
 245c024: d2800015     	mov	x21, #0x0               ; =0
 245c028: 52800096     	mov	w22, #0x4               ; =4
 245c02c: 52800037     	mov	w23, #0x1               ; =1
 245c030: f0003ea8     	adrp	x8, 0x2c33000 <__ZTSN3BEF25Sticker2DV3TrackingPointsE+0x8c>
 245c034: 3dc01100     	ldr	q0, [x8, #0x40]
 245c038: 3d8003e0     	str	q0, [sp]
 245c03c: f9400668     	ldr	x8, [x19, #0x8]
 245c040: f85b03a0     	ldur	x0, [x29, #-0x50]
 245c044: eb0802bf     	cmp	x21, x8
 245c048: 540004aa     	b.ge	0x245c0dc <_BlockGetResult+0x21e40>
 245c04c: cb150ac9     	sub	x9, x22, x21, lsl #2
 245c050: eb0802bf     	cmp	x21, x8
 245c054: 5400044a     	b.ge	0x245c0dc <_BlockGetResult+0x21e40>
 245c058: 3875680a     	ldrb	w10, [x0, x21]
 245c05c: 910006b5     	add	x21, x21, #0x1
 245c060: d1001129     	sub	x9, x9, #0x4
 245c064: 35ffff6a     	cbnz	w10, 0x245c050 <_BlockGetResult+0x21db4>
 245c068: d10006b8     	sub	x24, x21, #0x1
 245c06c: 8b000308     	add	x8, x24, x0
 245c070: cb0903f9     	neg	x25, x9
 245c074: aa1803fa     	mov	x26, x24
 245c078: 39000117     	strb	w23, [x8]
 245c07c: f9400268     	ldr	x8, [x19]
 245c080: b8ba791a     	ldrsw	x26, [x8, x26, lsl #2]
 245c084: 91000748     	add	x8, x26, #0x1
 245c088: eb15011f     	cmp	x8, x21
 245c08c: 54fffd80     	b.eq	0x245c03c <_BlockGetResult+0x21da0>
 245c090: f9400288     	ldr	x8, [x20]
 245c094: f9400a89     	ldr	x9, [x20, #0x10]
 245c098: 8b1a090a     	add	x10, x8, x26, lsl #2
 245c09c: f90027ea     	str	x10, [sp, #0x48]
 245c0a0: a905d3e9     	stp	x9, x20, [sp, #0x58]
 245c0a4: f90037fa     	str	x26, [sp, #0x68]
 245c0a8: 3dc003e0     	ldr	q0, [sp]
 245c0ac: 3c8703e0     	stur	q0, [sp, #0x70]
 245c0b0: 8b190108     	add	x8, x8, x25
 245c0b4: f9000be8     	str	x8, [sp, #0x10]
 245c0b8: a90253e9     	stp	x9, x20, [sp, #0x20]
 245c0bc: f9001bf8     	str	x24, [sp, #0x30]
 245c0c0: 3c8383e0     	stur	q0, [sp, #0x38]
 245c0c4: 910123e0     	add	x0, sp, #0x48
 245c0c8: 910043e1     	add	x1, sp, #0x10
 245c0cc: 97fffdc1     	bl	0x245b7d0 <_BlockGetResult+0x21534>
 245c0d0: f85b03a8     	ldur	x8, [x29, #-0x50]
 245c0d4: 8b1a0108     	add	x8, x8, x26
 245c0d8: 17ffffe8     	b	0x245c078 <_BlockGetResult+0x21ddc>
 245c0dc: 941522be     	bl	0x29a4bd4 <dyld_stub_binder+0x29a4bd4>
 245c0e0: a94d7bfd     	ldp	x29, x30, [sp, #0xd0]
 245c0e4: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
 245c0e8: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
 245c0ec: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
 245c0f0: a94967fa     	ldp	x26, x25, [sp, #0x90]
 245c0f4: 910383ff     	add	sp, sp, #0xe0
 245c0f8: d65f03c0     	ret
 245c0fc: 14000001     	b	0x245c100 <_BlockGetResult+0x21e64>
 245c100: aa0003f3     	mov	x19, x0
 245c104: f85b03a0     	ldur	x0, [x29, #-0x50]
 245c108: 941522b3     	bl	0x29a4bd4 <dyld_stub_binder+0x29a4bd4>
 245c10c: aa1303e0     	mov	x0, x19
 245c110: 94151c18     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 245c114: 910783e0     	add	x0, sp, #0x1e0
 245c118: 910f43e1     	add	x1, sp, #0x3d0
 245c11c: 17ffb4fb     	b	0x2449508 <_BlockGetResult+0xf26c>
 245c120: b903d3e9     	str	w9, [sp, #0x3d0]
 245c124: b903d7e8     	str	w8, [sp, #0x3d4]
 245c128: bd03dbe0     	str	s0, [sp, #0x3d8]
 245c12c: d65f03c0     	ret
 245c130: 8b1b012b     	add	x11, x9, x27
 245c134: f901ebeb     	str	x11, [sp, #0x3d0]
 245c138: f901f3ea     	str	x10, [sp, #0x3e0]
 245c13c: 9105a3ea     	add	x10, sp, #0x168
 245c140: f901f7ea     	str	x10, [sp, #0x3e8]
 245c144: f901fbe8     	str	x8, [sp, #0x3f0]
 245c148: 910e83e8     	add	x8, sp, #0x3a0
 245c14c: 3dc02fe0     	ldr	q0, [sp, #0xb0]
 245c150: 3c858100     	stur	q0, [x8, #0x58]
 245c154: a942aa68     	ldp	x8, x10, [x19, #0x28]
 245c158: d65f03c0     	ret
 245c15c: b903d7e8     	str	w8, [sp, #0x3d4]
 245c160: bd03dbe0     	str	s0, [sp, #0x3d8]
 245c164: d65f03c0     	ret
 245c168: bc697900     	ldr	s0, [x8, x9, lsl #2]
 245c16c: f9017beb     	str	x11, [sp, #0x2f0]
 245c170: bd02fbe0     	str	s0, [sp, #0x2f8]
 245c174: f90183ea     	str	x10, [sp, #0x300]
 245c178: f9018beb     	str	x11, [sp, #0x310]
 245c17c: a9007f9f     	stp	xzr, xzr, [x28]
 245c180: f9018ff8     	str	x24, [sp, #0x318]
 245c184: f9019bf5     	str	x21, [sp, #0x330]
 245c188: d65f03c0     	ret
 245c18c: 910843eb     	add	x11, sp, #0x210
 245c190: 3c808160     	stur	q0, [x11, #0x8]
 245c194: f9010bfc     	str	x28, [sp, #0x210]
 245c198: f90117f7     	str	x23, [sp, #0x228]
 245c19c: bc6a7900     	ldr	s0, [x8, x10, lsl #2]
 245c1a0: bc3b6920     	str	s0, [x9, x27]
 245c1a4: a942a668     	ldp	x8, x9, [x19, #0x28]
 245c1a8: d65f03c0     	ret
 245c1ac: 3d80ffe0     	str	q0, [sp, #0x3f0]
 245c1b0: f90203f5     	str	x21, [sp, #0x400]
 245c1b4: f94093e8     	ldr	x8, [sp, #0x120]
 245c1b8: f9409be9     	ldr	x9, [sp, #0x130]
 245c1bc: d65f03c0     	ret
 245c1c0: 927ced29     	and	x9, x9, #0xfffffffffffffff0
 245c1c4: cb090108     	sub	x8, x8, x9
 245c1c8: 9100011f     	mov	sp, x8
 245c1cc: 91003d08     	add	x8, x8, #0xf
 245c1d0: d65f03c0     	ret
 245c1d4: bd400661     	ldr	s1, [x19, #0x4]
 245c1d8: 1e200820     	fmul	s0, s1, s0
 245c1dc: bc28daa0     	str	s0, [x21, w8, sxtw #2]
 245c1e0: b940ba76     	ldr	w22, [x19, #0xb8]
 245c1e4: f940b675     	ldr	x21, [x19, #0x168]
 245c1e8: f9400348     	ldr	x8, [x26]
 245c1ec: b8747901     	ldr	w1, [x8, x20, lsl #2]
 245c1f0: d65f03c0     	ret
 245c1f4: 910107e8     	add	x8, sp, #0x41
 245c1f8: 3ccff101     	ldur	q1, [x8, #0xff]
 245c1fc: 910e83e8     	add	x8, sp, #0x3a0
 245c200: 3c808101     	stur	q1, [x8, #0x8]
 245c204: bd03bbe0     	str	s0, [sp, #0x3b8]
 245c208: f901e3f7     	str	x23, [sp, #0x3c0]
 245c20c: d65f03c0     	ret
 245c210: 910f43e8     	add	x8, sp, #0x3d0
 245c214: aa1b03e0     	mov	x0, x27
 245c218: 17ffb52e     	b	0x24496d0 <_BlockGetResult+0xf434>
 245c21c: 910843e0     	add	x0, sp, #0x210
 245c220: 910f43e1     	add	x1, sp, #0x3d0
 245c224: 17fff6e9     	b	0x2459dc8 <_BlockGetResult+0x1fb2c>
 245c228: f901ebe8     	str	x8, [sp, #0x3d0]
 245c22c: f901f3e9     	str	x9, [sp, #0x3e0]
 245c230: f901f7f4     	str	x20, [sp, #0x3e8]
 245c234: d65f03c0     	ret
 245c238: f9404fe8     	ldr	x8, [sp, #0x98]
 245c23c: f9400108     	ldr	x8, [x8]
 245c240: 52800309     	mov	w9, #0x18               ; =24
 245c244: 9b097ec9     	mul	x9, x22, x9
 245c248: f8696908     	ldr	x8, [x8, x9]
 245c24c: d65f03c0     	ret
 245c250: aa1303e0     	mov	x0, x19
 245c254: 14151bc7     	b	0x29a3170 <dyld_stub_binder+0x29a3170>
 245c258: a95827e8     	ldp	x8, x9, [sp, #0x180]
 245c25c: 8b0906c9     	add	x9, x22, x9, lsl #1
 245c260: f94093ea     	ldr	x10, [sp, #0x120]
 245c264: f9409beb     	ldr	x11, [sp, #0x130]
 245c268: d65f03c0     	ret
 245c26c: f940b66d     	ldr	x13, [x19, #0x168]
 245c270: bd400a60     	ldr	s0, [x19, #0x8]
 245c274: f940002e     	ldr	x14, [x1]
 245c278: 8b0901ce     	add	x14, x14, x9
 245c27c: d65f03c0     	ret
 245c280: b903d3e9     	str	w9, [sp, #0x3d0]
 245c284: b903d7e8     	str	w8, [sp, #0x3d4]
 245c288: bd400660     	ldr	s0, [x19, #0x4]
 245c28c: bd03dbe0     	str	s0, [sp, #0x3d8]
 245c290: d65f03c0     	ret
 245c294: b903d3e9     	str	w9, [sp, #0x3d0]
 245c298: b903d7e8     	str	w8, [sp, #0x3d4]
 245c29c: bd400a60     	ldr	s0, [x19, #0x8]
 245c2a0: bd03dbe0     	str	s0, [sp, #0x3d8]
 245c2a4: d65f03c0     	ret
 245c2a8: 2957366c     	ldp	w12, w13, [x19, #0xb8]
 245c2ac: 0b0d018c     	add	w12, w12, w13
 245c2b0: 0b0c014c     	add	w12, w10, w12
 245c2b4: 0b0c058c     	add	w12, w12, w12, lsl #1
 245c2b8: d65f03c0     	ret
 245c2bc: 910543e1     	add	x1, sp, #0x150
 245c2c0: 17ffb4a8     	b	0x2449560 <_BlockGetResult+0xf2c4>
 245c2c4: 1e214000     	fneg	s0, s0
 245c2c8: b903d3e8     	str	w8, [sp, #0x3d0]
 245c2cc: b903d7f5     	str	w21, [sp, #0x3d4]
 245c2d0: bd03dbe0     	str	s0, [sp, #0x3d8]
 245c2d4: d65f03c0     	ret
 245c2d8: 52800061     	mov	w1, #0x3                ; =3
 245c2dc: aa1a03e2     	mov	x2, x26
 245c2e0: 17ff84b5     	b	0x243d5b4 <_BlockGetResult+0x3318>
 245c2e4: 910e83e1     	add	x1, sp, #0x3a0
 245c2e8: 17ffb49e     	b	0x2449560 <_BlockGetResult+0xf2c4>
 245c2ec: 910343e1     	add	x1, sp, #0xd0
 245c2f0: 17ffb49c     	b	0x2449560 <_BlockGetResult+0xf2c4>
 245c2f4: 910b83e1     	add	x1, sp, #0x2e0
 245c2f8: 17ffb49a     	b	0x2449560 <_BlockGetResult+0xf2c4>
 245c2fc: b903d3e8     	str	w8, [sp, #0x3d0]
 245c300: b903d7e8     	str	w8, [sp, #0x3d4]
 245c304: bd400260     	ldr	s0, [x19]
 245c308: bd03dbe0     	str	s0, [sp, #0x3d8]
 245c30c: d65f03c0     	ret
 245c310: b940ba68     	ldr	w8, [x19, #0xb8]
 245c314: 0b1402e9     	add	w9, w23, w20
 245c318: 0b080129     	add	w9, w9, w8
 245c31c: 0b090529     	add	w9, w9, w9, lsl #1
 245c320: d65f03c0     	ret
 245c324: 910d03e1     	add	x1, sp, #0x340
 245c328: 17ffb48e     	b	0x2449560 <_BlockGetResult+0xf2c4>
 245c32c: 9107e3e0     	add	x0, sp, #0x1f8
 245c330: 910f43e1     	add	x1, sp, #0x3d0
 245c334: 17ffb475     	b	0x2449508 <_BlockGetResult+0xf26c>
 245c338: f940abe8     	ldr	x8, [sp, #0x150]
 245c33c: f940b3e9     	ldr	x9, [sp, #0x160]
 245c340: d65f03c0     	ret
 245c344: 0b0806a8     	add	w8, w21, w8, lsl #1
 245c348: a950afea     	ldp	x10, x11, [sp, #0x108]
 245c34c: 9b187d6b     	mul	x11, x11, x24
 245c350: 8b0b094a     	add	x10, x10, x11, lsl #2
 245c354: d65f03c0     	ret
 245c358: f94017eb     	ldr	x11, [sp, #0x28]
 245c35c: bc6a7960     	ldr	s0, [x11, x10, lsl #2]
 245c360: f9400a6a     	ldr	x10, [x19, #0x10]
 245c364: 8b08014a     	add	x10, x10, x8
 245c368: d65f03c0     	ret
 245c36c: b903d3f4     	str	w20, [sp, #0x3d0]
 245c370: b903d7f4     	str	w20, [sp, #0x3d4]
 245c374: bd400260     	ldr	s0, [x19]
 245c378: bd03dbe0     	str	s0, [sp, #0x3d8]
 245c37c: d65f03c0     	ret
 245c380: f901bff8     	str	x24, [sp, #0x378]
 245c384: 3dc01fe0     	ldr	q0, [sp, #0x70]
 245c388: 3d80e3e0     	str	q0, [sp, #0x380]
 245c38c: f901cbf5     	str	x21, [sp, #0x390]
 245c390: d65f03c0     	ret
 245c394: 0b150108     	add	w8, w8, w21
 245c398: a950afea     	ldp	x10, x11, [sp, #0x108]
 245c39c: 9b197d6b     	mul	x11, x11, x25
 245c3a0: 8b0b094a     	add	x10, x10, x11, lsl #2
 245c3a4: d65f03c0     	ret
 245c3a8: d00091a8     	adrp	x8, 0x3692000 <__ZZN4YAML3Exp4WordEvE1e+0x8>
 245c3ac: 39516109     	ldrb	w9, [x8, #0x458]
 245c3b0: 37000069     	tbnz	w9, #0x0, 0x245c3bc <_BlockGetResult+0x22120>
 245c3b4: 52800029     	mov	w9, #0x1                ; =1
 245c3b8: 39116109     	strb	w9, [x8, #0x458]
 245c3bc: d65f03c0     	ret
 245c3c0: d00091a8     	adrp	x8, 0x3692000 <__ZZN4YAML3Exp4WordEvE1e+0x8>
 245c3c4: 39518109     	ldrb	w9, [x8, #0x460]
 245c3c8: 37000069     	tbnz	w9, #0x0, 0x245c3d4 <_BlockGetResult+0x22138>
 245c3cc: 52800029     	mov	w9, #0x1                ; =1
 245c3d0: 39118109     	strb	w9, [x8, #0x460]
 245c3d4: d65f03c0     	ret
 245c3d8: d00091a8     	adrp	x8, 0x3692000 <__ZZN4YAML3Exp4WordEvE1e+0x8>
 245c3dc: 3951a109     	ldrb	w9, [x8, #0x468]
 245c3e0: 37000069     	tbnz	w9, #0x0, 0x245c3ec <_BlockGetResult+0x22150>
 245c3e4: 52800029     	mov	w9, #0x1                ; =1
 245c3e8: 3911a109     	strb	w9, [x8, #0x468]
 245c3ec: d65f03c0     	ret
 245c3f0: d00091a8     	adrp	x8, 0x3692000 <__ZZN4YAML3Exp4WordEvE1e+0x8>
 245c3f4: 3951c109     	ldrb	w9, [x8, #0x470]
 245c3f8: 37000069     	tbnz	w9, #0x0, 0x245c404 <_BlockGetResult+0x22168>
 245c3fc: 52800029     	mov	w9, #0x1                ; =1
 245c400: 3911c109     	strb	w9, [x8, #0x470]
 245c404: d65f03c0     	ret
 245c408: d00091a8     	adrp	x8, 0x3692000 <__ZZN4YAML3Exp4WordEvE1e+0x8>
 245c40c: 3951e109     	ldrb	w9, [x8, #0x478]
 245c410: 37000069     	tbnz	w9, #0x0, 0x245c41c <_BlockGetResult+0x22180>
 245c414: 52800029     	mov	w9, #0x1                ; =1
 245c418: 3911e109     	strb	w9, [x8, #0x478]
 245c41c: d65f03c0     	ret
 245c420: d00091a8     	adrp	x8, 0x3692000 <__ZZN4YAML3Exp4WordEvE1e+0x8>
 245c424: 39520109     	ldrb	w9, [x8, #0x480]
 245c428: 37000069     	tbnz	w9, #0x0, 0x245c434 <_BlockGetResult+0x22198>
 245c42c: 52800029     	mov	w9, #0x1                ; =1
 245c430: 39120109     	strb	w9, [x8, #0x480]
 245c434: d65f03c0     	ret
 245c438: d00091a8     	adrp	x8, 0x3692000 <__ZZN4YAML3Exp4WordEvE1e+0x8>
 245c43c: 39522109     	ldrb	w9, [x8, #0x488]
 245c440: 37000069     	tbnz	w9, #0x0, 0x245c44c <_BlockGetResult+0x221b0>
 245c444: 52800029     	mov	w9, #0x1                ; =1
 245c448: 39122109     	strb	w9, [x8, #0x488]
 245c44c: d65f03c0     	ret
 245c450: d00091a8     	adrp	x8, 0x3692000 <__ZZN4YAML3Exp4WordEvE1e+0x8>
 245c454: 39524109     	ldrb	w9, [x8, #0x490]
 245c458: 37000069     	tbnz	w9, #0x0, 0x245c464 <_BlockGetResult+0x221c8>
 245c45c: 52800029     	mov	w9, #0x1                ; =1
 245c460: 39124109     	strb	w9, [x8, #0x490]
 245c464: d65f03c0     	ret
 245c468: d00091a8     	adrp	x8, 0x3692000 <__ZZN4YAML3Exp4WordEvE1e+0x8>
 245c46c: 39526109     	ldrb	w9, [x8, #0x498]
 245c470: 37000069     	tbnz	w9, #0x0, 0x245c47c <_BlockGetResult+0x221e0>
 245c474: 52800029     	mov	w9, #0x1                ; =1
 245c478: 39126109     	strb	w9, [x8, #0x498]
 245c47c: d65f03c0     	ret
 245c480: b9801408     	ldrsw	x8, [x0, #0x14]
 245c484: 7100191f     	cmp	w8, #0x6
 245c488: 540000a8     	b.hi	0x245c49c <_BlockGetResult+0x22200>
 245c48c: b0006909     	adrp	x9, 0x317d000 <__ZTSN13AmazingEngine19GeneralDeviceSensorE+0xb1d>
 245c490: 913c2129     	add	x9, x9, #0xf08
 245c494: b8687928     	ldr	w8, [x9, x8, lsl #2]
 245c498: 14000002     	b	0x245c4a0 <_BlockGetResult+0x22204>
 245c49c: 52800008     	mov	w8, #0x0                ; =0
 245c4a0: 29412809     	ldp	w9, w10, [x0, #0x8]
 245c4a4: b940100b     	ldr	w11, [x0, #0x10]
 245c4a8: 1b087d28     	mul	w8, w9, w8
 245c4ac: 1b0a7d08     	mul	w8, w8, w10
 245c4b0: 1b0b7d00     	mul	w0, w8, w11
 245c4b4: d65f03c0     	ret
 245c4b8: d100c3ff     	sub	sp, sp, #0x30
 245c4bc: a9014ff4     	stp	x20, x19, [sp, #0x10]
 245c4c0: a9027bfd     	stp	x29, x30, [sp, #0x20]
 245c4c4: 910083fd     	add	x29, sp, #0x20
 245c4c8: aa0003f3     	mov	x19, x0
 245c4cc: 90008f48     	adrp	x8, 0x3644000 <__ZTIN13AmazingEngine19GeneralDeviceSensorE+0x5c0>
 245c4d0: 91186108     	add	x8, x8, #0x618
 245c4d4: f9000008     	str	x8, [x0]
 245c4d8: aa0003f4     	mov	x20, x0
 245c4dc: f8008e9f     	str	xzr, [x20, #0x8]!
 245c4e0: f900081f     	str	xzr, [x0, #0x10]
 245c4e4: 52800900     	mov	w0, #0x48               ; =72
 245c4e8: 9415201a     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 245c4ec: aa0003e1     	mov	x1, x0
 245c4f0: f900203f     	str	xzr, [x1, #0x40]
 245c4f4: 6f00e400     	movi.2d	v0, #0000000000000000
 245c4f8: ad000020     	stp	q0, q0, [x1]
 245c4fc: 52a7f008     	mov	w8, #0x3f800000         ; =1065353216
 245c500: b9004028     	str	w8, [x1, #0x40]
 245c504: b0006908     	adrp	x8, 0x317d000 <__ZTSN13AmazingEngine19GeneralDeviceSensorE+0xb1d>
 245c508: 91329108     	add	x8, x8, #0xca4
 245c50c: ad400500     	ldp	q0, q1, [x8]
 245c510: ad010420     	stp	q0, q1, [x1, #0x20]
 245c514: 910003e0     	mov	x0, sp
 245c518: 94000940     	bl	0x245ea18 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x6f8>
 245c51c: 910003e1     	mov	x1, sp
 245c520: aa1403e0     	mov	x0, x20
 245c524: 9400000c     	bl	0x245c554 <_BlockGetResult+0x222b8>
 245c528: 910003e0     	mov	x0, sp
 245c52c: 94000925     	bl	0x245e9c0 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x6a0>
 245c530: aa1303e0     	mov	x0, x19
 245c534: a9427bfd     	ldp	x29, x30, [sp, #0x20]
 245c538: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 245c53c: 9100c3ff     	add	sp, sp, #0x30
 245c540: d65f03c0     	ret
 245c544: aa0003f3     	mov	x19, x0
 245c548: aa1403e0     	mov	x0, x20
 245c54c: 9400091d     	bl	0x245e9c0 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x6a0>
 245c550: 940009f7     	bl	0x245ed2c <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0xa0c>
 245c554: d100c3ff     	sub	sp, sp, #0x30
 245c558: a9014ff4     	stp	x20, x19, [sp, #0x10]
 245c55c: a9027bfd     	stp	x29, x30, [sp, #0x20]
 245c560: 910083fd     	add	x29, sp, #0x20
 245c564: aa0003f3     	mov	x19, x0
 245c568: a9402428     	ldp	x8, x9, [x1]
 245c56c: a9007c3f     	stp	xzr, xzr, [x1]
 245c570: a9402c0a     	ldp	x10, x11, [x0]
 245c574: a9002fea     	stp	x10, x11, [sp]
 245c578: a9002408     	stp	x8, x9, [x0]
 245c57c: 910003e0     	mov	x0, sp
 245c580: 94000910     	bl	0x245e9c0 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x6a0>
 245c584: aa1303e0     	mov	x0, x19
 245c588: a9427bfd     	ldp	x29, x30, [sp, #0x20]
 245c58c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 245c590: 9100c3ff     	add	sp, sp, #0x30
 245c594: d65f03c0     	ret
 245c598: 17ffffc8     	b	0x245c4b8 <_BlockGetResult+0x2221c>
 245c59c: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 245c5a0: a9017bfd     	stp	x29, x30, [sp, #0x10]
 245c5a4: 910043fd     	add	x29, sp, #0x10
 245c5a8: aa0003f3     	mov	x19, x0
 245c5ac: 90008f48     	adrp	x8, 0x3644000 <__ZTIN13AmazingEngine19GeneralDeviceSensorE+0x5c0>
 245c5b0: 91186108     	add	x8, x8, #0x618
 245c5b4: f8008408     	str	x8, [x0], #0x8
 245c5b8: 94000902     	bl	0x245e9c0 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x6a0>
 245c5bc: aa1303e0     	mov	x0, x19
 245c5c0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 245c5c4: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 245c5c8: d65f03c0     	ret
 245c5cc: 17fffff4     	b	0x245c59c <_BlockGetResult+0x22300>
 245c5d0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 245c5d4: 910003fd     	mov	x29, sp
 245c5d8: 97fffff1     	bl	0x245c59c <_BlockGetResult+0x22300>
 245c5dc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 245c5e0: 14151fd0     	b	0x29a4520 <dyld_stub_binder+0x29a4520>
 245c5e4: f9400408     	ldr	x8, [x0, #0x8]
 245c5e8: 91002100     	add	x0, x8, #0x8
 245c5ec: d65f03c0     	ret
 245c5f0: f9400408     	ldr	x8, [x0, #0x8]
 245c5f4: 91008100     	add	x0, x8, #0x20
 245c5f8: d65f03c0     	ret

000000000245c5fc <__ZN6apollo16FceAlignmentNodeC2Ev>:
 245c5fc: d10103ff     	sub	sp, sp, #0x40
 245c600: a90157f6     	stp	x22, x21, [sp, #0x10]
 245c604: a9024ff4     	stp	x20, x19, [sp, #0x20]
 245c608: a9037bfd     	stp	x29, x30, [sp, #0x30]
 245c60c: 9100c3fd     	add	x29, sp, #0x30
 245c610: aa0003f3     	mov	x19, x0
 245c614: 97ffffa9     	bl	0x245c4b8 <_BlockGetResult+0x2221c>
 245c618: 90008f48     	adrp	x8, 0x3644000 <__ZTIN13AmazingEngine19GeneralDeviceSensorE+0x5c0>
 245c61c: 91190108     	add	x8, x8, #0x640
 245c620: f9000008     	str	x8, [x0]
 245c624: aa0003f4     	mov	x20, x0
 245c628: f8018e9f     	str	xzr, [x20, #0x18]!
 245c62c: f900101f     	str	xzr, [x0, #0x20]
 245c630: 52801a00     	mov	w0, #0xd0               ; =208
 245c634: 94151fc7     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 245c638: aa0003f5     	mov	x21, x0
 245c63c: 52801a01     	mov	w1, #0xd0               ; =208
 245c640: 941520b4     	bl	0x29a4910 <dyld_stub_binder+0x29a4910>
 245c644: aa1503e0     	mov	x0, x21
 245c648: 9400088c     	bl	0x245e878 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x558>
 245c64c: 910003e0     	mov	x0, sp
 245c650: aa1503e1     	mov	x1, x21
 245c654: 94000935     	bl	0x245eb28 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x808>
 245c658: 910003e1     	mov	x1, sp
 245c65c: aa1403e0     	mov	x0, x20
 245c660: 94000014     	bl	0x245c6b0 <__ZN6apollo16FceAlignmentNodeC2Ev+0xb4>
 245c664: 910003e0     	mov	x0, sp
 245c668: 940008e1     	bl	0x245e9ec <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x6cc>
 245c66c: aa1303e0     	mov	x0, x19
 245c670: a9437bfd     	ldp	x29, x30, [sp, #0x30]
 245c674: a9424ff4     	ldp	x20, x19, [sp, #0x20]
 245c678: a94157f6     	ldp	x22, x21, [sp, #0x10]
 245c67c: 910103ff     	add	sp, sp, #0x40
 245c680: d65f03c0     	ret
 245c684: aa0003f6     	mov	x22, x0
 245c688: aa1503e0     	mov	x0, x21
 245c68c: 94151fa5     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 245c690: 14000002     	b	0x245c698 <__ZN6apollo16FceAlignmentNodeC2Ev+0x9c>
 245c694: aa0003f6     	mov	x22, x0
 245c698: aa1403e0     	mov	x0, x20
 245c69c: 940008d4     	bl	0x245e9ec <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x6cc>
 245c6a0: aa1303e0     	mov	x0, x19
 245c6a4: 97ffffbe     	bl	0x245c59c <_BlockGetResult+0x22300>
 245c6a8: aa1603e0     	mov	x0, x22
 245c6ac: 94151ab1     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 245c6b0: d100c3ff     	sub	sp, sp, #0x30
 245c6b4: a9014ff4     	stp	x20, x19, [sp, #0x10]
 245c6b8: a9027bfd     	stp	x29, x30, [sp, #0x20]
 245c6bc: 910083fd     	add	x29, sp, #0x20
 245c6c0: aa0003f3     	mov	x19, x0
 245c6c4: a9402428     	ldp	x8, x9, [x1]
 245c6c8: a9007c3f     	stp	xzr, xzr, [x1]
 245c6cc: a9402c0a     	ldp	x10, x11, [x0]
 245c6d0: a9002fea     	stp	x10, x11, [sp]
 245c6d4: a9002408     	stp	x8, x9, [x0]
 245c6d8: 910003e0     	mov	x0, sp
 245c6dc: 940008c4     	bl	0x245e9ec <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x6cc>
 245c6e0: aa1303e0     	mov	x0, x19
 245c6e4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
 245c6e8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 245c6ec: 9100c3ff     	add	sp, sp, #0x30
 245c6f0: d65f03c0     	ret

000000000245c6f4 <__ZN6apollo16FceAlignmentNodeC1Ev>:
 245c6f4: 17ffffc2     	b	0x245c5fc <__ZN6apollo16FceAlignmentNodeC2Ev>

000000000245c6f8 <__ZN6apollo16FceAlignmentNodeD2Ev>:
 245c6f8: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 245c6fc: a9017bfd     	stp	x29, x30, [sp, #0x10]
 245c700: 910043fd     	add	x29, sp, #0x10
 245c704: aa0003f3     	mov	x19, x0
 245c708: 90008f48     	adrp	x8, 0x3644000 <__ZTIN13AmazingEngine19GeneralDeviceSensorE+0x5c0>
 245c70c: 91190108     	add	x8, x8, #0x640
 245c710: f8018408     	str	x8, [x0], #0x18
 245c714: 940008b6     	bl	0x245e9ec <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE+0x6cc>
 245c718: aa1303e0     	mov	x0, x19
 245c71c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 245c720: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 245c724: 17ffff9e     	b	0x245c59c <_BlockGetResult+0x22300>

000000000245c728 <__ZN6apollo16FceAlignmentNodeD1Ev>:
 245c728: 17fffff4     	b	0x245c6f8 <__ZN6apollo16FceAlignmentNodeD2Ev>

000000000245c72c <__ZN6apollo16FceAlignmentNodeD0Ev>:
 245c72c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 245c730: 910003fd     	mov	x29, sp
 245c734: 97fffff1     	bl	0x245c6f8 <__ZN6apollo16FceAlignmentNodeD2Ev>
 245c738: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 245c73c: 14151f79     	b	0x29a4520 <dyld_stub_binder+0x29a4520>

000000000245c740 <__ZN6apollo16FceAlignmentNode12setAttributeERKNS_17FceAlignAttributeE>:
 245c740: f9400c00     	ldr	x0, [x0, #0x18]
 245c744: 52800d82     	mov	w2, #0x6c               ; =108
 245c748: 141523f3     	b	0x29a5714 <dyld_stub_binder+0x29a5714>

000000000245c74c <__ZN6apollo16FceAlignmentNode7executeERKNS_5ImageE>:
 245c74c: f9400c08     	ldr	x8, [x0, #0x18]
 245c750: b9404108     	ldr	w8, [x8, #0x40]
 245c754: 51000508     	sub	w8, w8, #0x1
 245c758: 71000d1f     	cmp	w8, #0x3
 245c75c: 54000108     	b.hi	0x245c77c <__ZN6apollo16FceAlignmentNode7executeERKNS_5ImageE+0x30>
 245c760: b0006909     	adrp	x9, 0x317d000 <__ZTSN13AmazingEngine19GeneralDeviceSensorE+0xb1d>
 245c764: 91315129     	add	x9, x9, #0xc54
 245c768: 1000008a     	adr	x10, 0x245c778 <__ZN6apollo16FceAlignmentNode7executeERKNS_5ImageE+0x2c>
 245c76c: 3868692b     	ldrb	w11, [x9, x8]
 245c770: 8b0b094a     	add	x10, x10, x11, lsl #2
 245c774: d61f0140     	br	x10
 245c778: 14000005     	b	0x245c78c <__ZN6apollo16FceAlignmentNode18executeWithFace106ERKNS_5ImageE>
 245c77c: 140006e9     	b	0x245e320 <__ZN6apollo16FceAlignmentNode15executeWithRollERKNS_5ImageE>
 245c780: 140001a5     	b	0x245ce14 <__ZN6apollo16FceAlignmentNode15executeWithFFHQERKNS_5ImageE>
 245c784: 140004dc     	b	0x245daf4 <__ZN6apollo16FceAlignmentNode16executeWithMouthERKNS_5ImageE>
 245c788: 1400067c     	b	0x245e178 <__ZN6apollo16FceAlignmentNode16executeWithScaleERKNS_5ImageE>
