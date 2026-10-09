
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000002845fe0 <__ZN5smash13private_utils3ssd8Detector6DetectEN9mobilecv23MatERNSt3__16vectorINS3_5Rect_IfEENS5_9allocatorIS8_EEEERNS6_IfNS9_IfEEEE>:
 2846000: aa0103f6     	mov	x22, x1
 2846004: aa0003f5     	mov	x21, x0
 2846008: 9400059b     	bl	0x2847674 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x1090>
 284600c: 94000590     	bl	0x284764c <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x1068>
 2846010: 54000061     	b.ne	0x284601c <__ZN5smash13private_utils3ssd8Detector6DetectEN9mobilecv23MatERNSt3__16vectorINS3_5Rect_IfEENS5_9allocatorIS8_EEEERNS6_IfNS9_IfEEEE+0x3c>
 2846014: 9400003d     	bl	0x2846108 <__ZN5smash13private_utils3ssd8Detector14MinSideSettingEv>
 2846018: 14000002     	b	0x2846020 <__ZN5smash13private_utils3ssd8Detector6DetectEN9mobilecv23MatERNSt3__16vectorINS3_5Rect_IfEENS5_9allocatorIS8_EEEERNS6_IfNS9_IfEEEE+0x40>
 284601c: 94000058     	bl	0x284617c <__ZN5smash13private_utils3ssd8Detector14MaxSideSettingEv>
 2846020: a93c7fb6     	stp	x22, xzr, [x29, #-0x40]
 2846024: 52a02028     	mov	w8, #0x1010000          ; =16842752
 2846028: b81b83a8     	stur	w8, [x29, #-0x48]
 284602c: 910102b6     	add	x22, x21, #0x40
 2846030: 52a04028     	mov	w8, #0x2010000          ; =33619968
 2846034: b81a03a8     	stur	w8, [x29, #-0x60]
 2846038: a93affb6     	stp	x22, xzr, [x29, #-0x58]
 284603c: fc4242a0     	ldur	d0, [x21, #0x24]
 2846040: fd0037e0     	str	d0, [sp, #0x68]
 2846044: d10123a0     	sub	x0, x29, #0x48
 2846048: d10183a1     	sub	x1, x29, #0x60
 284604c: 9400057b     	bl	0x2847638 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x1054>
 2846050: a93bffbf     	stp	xzr, xzr, [x29, #-0x48]
 2846054: f81c83bf     	stur	xzr, [x29, #-0x38]
 2846058: 910023e0     	add	x0, sp, #0x8
 284605c: aa1603e1     	mov	x1, x22
 2846060: 97877bd7     	bl	0xa24fbc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13f0dc>
 2846064: 910023e1     	add	x1, sp, #0x8
 2846068: aa1503e0     	mov	x0, x21
 284606c: 94000061     	bl	0x28461f0 <__ZN5smash13private_utils3ssd8Detector9InferenceEN9mobilecv23MatERNSt3__16vectorI6AIRectNS5_9allocatorIS7_EEEERNS6_IfNS8_IfEEEE>
 2846070: 9400057d     	bl	0x2847664 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x1080>
 2846074: d10123a1     	sub	x1, x29, #0x48
 2846078: aa1503e0     	mov	x0, x21
 284607c: aa1403e2     	mov	x2, x20
 2846080: 94000070     	bl	0x2846240 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE>
 2846084: d2800014     	mov	x20, #0x0               ; =0
 2846088: d2800015     	mov	x21, #0x0               ; =0
 284608c: 0f000428     	movi.2s	v8, #0x1
 2846090: a97ba7a8     	ldp	x8, x9, [x29, #-0x48]
 2846094: cb080129     	sub	x9, x9, x8
 2846098: eb8912bf     	cmp	x21, x9, asr #4
 284609c: 54000142     	b.hs	0x28460c4 <__ZN5smash13private_utils3ssd8Detector6DetectEN9mobilecv23MatERNSt3__16vectorINS3_5Rect_IfEENS5_9allocatorIS8_EEEERNS6_IfNS9_IfEEEE+0xe4>
 28460a0: 94000530     	bl	0x2847560 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xf7c>
 28460a4: 2d340ba0     	stp	s0, s2, [x29, #-0x60]
 28460a8: fc1a83a1     	stur	d1, [x29, #-0x58]
 28460ac: d10183a1     	sub	x1, x29, #0x60
 28460b0: aa1303e0     	mov	x0, x19
 28460b4: 940000f8     	bl	0x2846494 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x254>
 28460b8: 910006b5     	add	x21, x21, #0x1
 28460bc: 91004294     	add	x20, x20, #0x10
 28460c0: 17fffff4     	b	0x2846090 <__ZN5smash13private_utils3ssd8Detector6DetectEN9mobilecv23MatERNSt3__16vectorINS3_5Rect_IfEENS5_9allocatorIS8_EEEERNS6_IfNS9_IfEEEE+0xb0>
 28460c4: d10123a0     	sub	x0, x29, #0x48
 28460c8: 94000348     	bl	0x2846de8 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x804>
 28460cc: 52800000     	mov	w0, #0x0                ; =0
 28460d0: a94d7bfd     	ldp	x29, x30, [sp, #0xd0]
 28460d4: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
 28460d8: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
 28460dc: 6d4a23e9     	ldp	d9, d8, [sp, #0xa0]
 28460e0: 910383ff     	add	sp, sp, #0xe0
 28460e4: d65f03c0     	ret
 28460e8: aa0003f3     	mov	x19, x0
 28460ec: 9400055e     	bl	0x2847664 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x1080>
 28460f0: 14000003     	b	0x28460fc <__ZN5smash13private_utils3ssd8Detector6DetectEN9mobilecv23MatERNSt3__16vectorINS3_5Rect_IfEENS5_9allocatorIS8_EEEERNS6_IfNS9_IfEEEE+0x11c>
 28460f4: 14000001     	b	0x28460f8 <__ZN5smash13private_utils3ssd8Detector6DetectEN9mobilecv23MatERNSt3__16vectorINS3_5Rect_IfEENS5_9allocatorIS8_EEEERNS6_IfNS9_IfEEEE+0x118>
 28460f8: aa0003f3     	mov	x19, x0
 28460fc: d10123a0     	sub	x0, x29, #0x48
 2846100: 9400033a     	bl	0x2846de8 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x804>
 2846104: 94000541     	bl	0x2847608 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x1024>

0000000002846108 <__ZN5smash13private_utils3ssd8Detector14MinSideSettingEv>:
 2846108: 2943a009     	ldp	w9, w8, [x0, #0x1c]
 284610c: b940180a     	ldr	w10, [x0, #0x18]
 2846110: 1e620140     	scvtf	d0, w10
 2846114: 6b09011f     	cmp	w8, w9
 2846118: 540001ad     	b.le	0x284614c <__ZN5smash13private_utils3ssd8Detector14MinSideSettingEv+0x44>
 284611c: aa1e03e1     	mov	x1, x30
 2846120: 9400051a     	bl	0x2847588 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xfa4>
 2846124: aa0103fe     	mov	x30, x1
 2846128: 3400010b     	cbz	w11, 0x2846148 <__ZN5smash13private_utils3ssd8Detector14MinSideSettingEv+0x40>
 284612c: 5280004d     	mov	w13, #0x2               ; =2
 2846130: 1acd0d4d     	sdiv	w13, w10, w13
 2846134: 1b0c294a     	madd	w10, w10, w12, w10
 2846138: 4b0b0129     	sub	w9, w9, w11
 284613c: 6b0d017f     	cmp	w11, w13
 2846140: 1a89c149     	csel	w9, w10, w9, gt
 2846144: b9002809     	str	w9, [x0, #0x28]
 2846148: 14000536     	b	0x2847620 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x103c>
 284614c: aa1e03e1     	mov	x1, x30
 2846150: 9400051b     	bl	0x28475bc <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xfd8>
 2846154: aa0103fe     	mov	x30, x1
 2846158: 3400010b     	cbz	w11, 0x2846178 <__ZN5smash13private_utils3ssd8Detector14MinSideSettingEv+0x70>
 284615c: 5280004d     	mov	w13, #0x2               ; =2
 2846160: 1acd0d4d     	sdiv	w13, w10, w13
 2846164: 1b0c294a     	madd	w10, w10, w12, w10
 2846168: 4b0b0108     	sub	w8, w8, w11
 284616c: 6b0d017f     	cmp	w11, w13
 2846170: 1a88c148     	csel	w8, w10, w8, gt
 2846174: b9002408     	str	w8, [x0, #0x24]
 2846178: 1400051e     	b	0x28475f0 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x100c>

000000000284617c <__ZN5smash13private_utils3ssd8Detector14MaxSideSettingEv>:
 284617c: 2943a009     	ldp	w9, w8, [x0, #0x1c]
 2846180: b940140a     	ldr	w10, [x0, #0x14]
 2846184: 1e620140     	scvtf	d0, w10
 2846188: 6b09011f     	cmp	w8, w9
 284618c: 540001ad     	b.le	0x28461c0 <__ZN5smash13private_utils3ssd8Detector14MaxSideSettingEv+0x44>
 2846190: aa1e03e1     	mov	x1, x30
 2846194: 9400050a     	bl	0x28475bc <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xfd8>
 2846198: aa0103fe     	mov	x30, x1
 284619c: 3400010b     	cbz	w11, 0x28461bc <__ZN5smash13private_utils3ssd8Detector14MaxSideSettingEv+0x40>
 28461a0: 5280004d     	mov	w13, #0x2               ; =2
 28461a4: 1acd0d4d     	sdiv	w13, w10, w13
 28461a8: 1b0c294a     	madd	w10, w10, w12, w10
 28461ac: 4b0b0108     	sub	w8, w8, w11
 28461b0: 6b0d017f     	cmp	w11, w13
 28461b4: 1a88c148     	csel	w8, w10, w8, gt
 28461b8: b9002408     	str	w8, [x0, #0x24]
 28461bc: 1400050d     	b	0x28475f0 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x100c>
 28461c0: aa1e03e1     	mov	x1, x30
 28461c4: 940004f1     	bl	0x2847588 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xfa4>
 28461c8: aa0103fe     	mov	x30, x1
 28461cc: 3400010b     	cbz	w11, 0x28461ec <__ZN5smash13private_utils3ssd8Detector14MaxSideSettingEv+0x70>
 28461d0: 5280004d     	mov	w13, #0x2               ; =2
 28461d4: 1acd0d4d     	sdiv	w13, w10, w13
 28461d8: 1b0c294a     	madd	w10, w10, w12, w10
 28461dc: 4b0b0129     	sub	w9, w9, w11
 28461e0: 6b0d017f     	cmp	w11, w13
 28461e4: 1a89c149     	csel	w9, w10, w9, gt
 28461e8: b9002809     	str	w9, [x0, #0x28]
 28461ec: 1400050d     	b	0x2847620 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x103c>

00000000028461f0 <__ZN5smash13private_utils3ssd8Detector9InferenceEN9mobilecv23MatERNSt3__16vectorI6AIRectNS5_9allocatorIS7_EEEERNS6_IfNS8_IfEEEE>:
 28461f0: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 28461f4: a9017bfd     	stp	x29, x30, [sp, #0x10]
 28461f8: 910043fd     	add	x29, sp, #0x10
 28461fc: aa0103f3     	mov	x19, x1
 2846200: aa0003f4     	mov	x20, x0
 2846204: aa0103e0     	mov	x0, x1
 2846208: 9783b0a7     	bl	0x9324a4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x4c5c4>
 284620c: 360000a0     	tbz	w0, #0x0, 0x2846220 <__ZN5smash13private_utils3ssd8Detector9InferenceEN9mobilecv23MatERNSt3__16vectorI6AIRectNS5_9allocatorIS7_EEEERNS6_IfNS8_IfEEEE+0x30>
 2846210: 12800c80     	mov	w0, #-0x65              ; =-101
 2846214: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2846218: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 284621c: d65f03c0     	ret
 2846220: f9406a80     	ldr	x0, [x20, #0xd0]
 2846224: 29448a81     	ldp	w1, w2, [x20, #0x24]
 2846228: 97fff74c     	bl	0x2843f58 <__ZN5smash13private_utils7predict9Predictor10NetReshapeEii>
 284622c: f9406a80     	ldr	x0, [x20, #0xd0]
 2846230: aa1303e1     	mov	x1, x19
 2846234: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 2846238: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 284623c: 17fff6e1     	b	0x2843dc0 <__ZN5smash13private_utils7predict9Predictor7PredictERKN9mobilecv23MatE>

0000000002846240 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE>:
 2846240: d103c3ff     	sub	sp, sp, #0xf0
 2846244: a90a67fa     	stp	x26, x25, [sp, #0xa0]
 2846248: a90b5ff8     	stp	x24, x23, [sp, #0xb0]
 284624c: a90c57f6     	stp	x22, x21, [sp, #0xc0]
 2846250: a90d4ff4     	stp	x20, x19, [sp, #0xd0]
 2846254: a90e7bfd     	stp	x29, x30, [sp, #0xe0]
 2846258: 910383fd     	add	x29, sp, #0xe0
 284625c: aa0203f3     	mov	x19, x2
 2846260: aa0103f4     	mov	x20, x1
 2846264: aa0003f5     	mov	x21, x0
 2846268: a94a2009     	ldp	x9, x8, [x0, #0xa0]
 284626c: cb090108     	sub	x8, x8, x9
 2846270: 52800316     	mov	w22, #0x18              ; =24
 2846274: a94be019     	ldp	x25, x24, [x0, #0xb8]
 2846278: a93affbf     	stp	xzr, xzr, [x29, #-0x58]
 284627c: f81b83bf     	stur	xzr, [x29, #-0x48]
 2846280: a9077fff     	stp	xzr, xzr, [sp, #0x70]
 2846284: f90043ff     	str	xzr, [sp, #0x80]
 2846288: 9ad60d17     	sdiv	x23, x8, x22
 284628c: 910163e0     	add	x0, sp, #0x58
 2846290: aa1703e1     	mov	x1, x23
 2846294: 940002fb     	bl	0x2846e80 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x89c>
 2846298: cb190308     	sub	x8, x24, x25
 284629c: 9ad60d16     	sdiv	x22, x8, x22
 28462a0: 910103e0     	add	x0, sp, #0x40
 28462a4: aa1603e1     	mov	x1, x22
 28462a8: 940002f6     	bl	0x2846e80 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x89c>
 28462ac: d2800018     	mov	x24, #0x0               ; =0
 28462b0: aa1703f9     	mov	x25, x23
 28462b4: b4000199     	cbz	x25, 0x28462e4 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0xa4>
 28462b8: f9406aa0     	ldr	x0, [x21, #0xd0]
 28462bc: f94052a8     	ldr	x8, [x21, #0xa0]
 28462c0: 8b180101     	add	x1, x8, x24
 28462c4: 910083e8     	add	x8, sp, #0x20
 28462c8: 97fff731     	bl	0x2843f8c <__ZN5smash13private_utils7predict9Predictor12GetRawOutputERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE>
 28462cc: d10163a0     	sub	x0, x29, #0x58
 28462d0: 910083e1     	add	x1, sp, #0x20
 28462d4: 9400016c     	bl	0x2846884 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x2a0>
 28462d8: d1000739     	sub	x25, x25, #0x1
 28462dc: 91006318     	add	x24, x24, #0x18
 28462e0: b5fffed9     	cbnz	x25, 0x28462b8 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x78>
 28462e4: 940004f1     	bl	0x28476a8 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x10c4>
 28462e8: eb0902ff     	cmp	x23, x9
 28462ec: 540000c0     	b.eq	0x2846304 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0xc4>
 28462f0: f85a83aa     	ldur	x10, [x29, #-0x58]
 28462f4: 8b08014a     	add	x10, x10, x8
 28462f8: f9402feb     	ldr	x11, [sp, #0x58]
 28462fc: 940004c5     	bl	0x2847610 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x102c>
 2846300: 17fffffa     	b	0x28462e8 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0xa8>
 2846304: d2800017     	mov	x23, #0x0               ; =0
 2846308: aa1603f8     	mov	x24, x22
 284630c: b4000198     	cbz	x24, 0x284633c <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0xfc>
 2846310: f9406aa0     	ldr	x0, [x21, #0xd0]
 2846314: f9405ea8     	ldr	x8, [x21, #0xb8]
 2846318: 8b170101     	add	x1, x8, x23
 284631c: 910083e8     	add	x8, sp, #0x20
 2846320: 97fff71b     	bl	0x2843f8c <__ZN5smash13private_utils7predict9Predictor12GetRawOutputERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE>
 2846324: 9101c3e0     	add	x0, sp, #0x70
 2846328: 910083e1     	add	x1, sp, #0x20
 284632c: 94000156     	bl	0x2846884 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x2a0>
 2846330: d1000718     	sub	x24, x24, #0x1
 2846334: 910062f7     	add	x23, x23, #0x18
 2846338: b5fffed8     	cbnz	x24, 0x2846310 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0xd0>
 284633c: 940004db     	bl	0x28476a8 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x10c4>
 2846340: eb0902df     	cmp	x22, x9
 2846344: 540000c0     	b.eq	0x284635c <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x11c>
 2846348: f9403bea     	ldr	x10, [sp, #0x70]
 284634c: 8b08014a     	add	x10, x10, x8
 2846350: f94023eb     	ldr	x11, [sp, #0x40]
 2846354: 940004af     	bl	0x2847610 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x102c>
 2846358: 17fffffa     	b	0x2846340 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x100>
 284635c: a9027fff     	stp	xzr, xzr, [sp, #0x20]
 2846360: f9001bff     	str	xzr, [sp, #0x30]
 2846364: f9406ea0     	ldr	x0, [x21, #0xd8]
 2846368: 294492a3     	ldp	w3, w4, [x21, #0x24]
 284636c: f9400008     	ldr	x8, [x0]
 2846370: f9400909     	ldr	x9, [x8, #0x10]
 2846374: 910023e8     	add	x8, sp, #0x8
 2846378: 910163e1     	add	x1, sp, #0x58
 284637c: 910103e2     	add	x2, sp, #0x40
 2846380: d63f0120     	blr	x9
 2846384: 910083e0     	add	x0, sp, #0x20
 2846388: 910023e1     	add	x1, sp, #0x8
 284638c: 94000415     	bl	0x28473e0 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdfc>
 2846390: 910023e0     	add	x0, sp, #0x8
 2846394: 94000400     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 2846398: 940004bf     	bl	0x2847694 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x10b0>
 284639c: aa1403e0     	mov	x0, x20
 28463a0: 94000149     	bl	0x28468c4 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x2e0>
 28463a4: 940004bc     	bl	0x2847694 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x10b0>
 28463a8: aa1303e0     	mov	x0, x19
 28463ac: 97fe69ef     	bl	0x27e0b68 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x103de8>
 28463b0: fc4342a0     	ldur	d0, [x21, #0x34]
 28463b4: 0f03f601     	fmov.2s	v1, #1.00000000
 28463b8: 2e20fc20     	fdiv.2s	v0, v1, v0
 28463bc: 6e180400     	mov.d	v0[1], v0[0]
 28463c0: a94223ea     	ldp	x10, x8, [sp, #0x20]
 28463c4: cb0a010b     	sub	x11, x8, x10
 28463c8: 5280028c     	mov	w12, #0x14              ; =20
 28463cc: f9400288     	ldr	x8, [x20]
 28463d0: f9400269     	ldr	x9, [x19]
 28463d4: 9100414a     	add	x10, x10, #0x10
 28463d8: 9acc0d6b     	sdiv	x11, x11, x12
 28463dc: b400012b     	cbz	x11, 0x2846400 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x1c0>
 28463e0: 3cdf0141     	ldur	q1, [x10, #-0x10]
 28463e4: 6e20dc21     	fmul.4s	v1, v1, v0
 28463e8: 4ea1b821     	fcvtzs.4s	v1, v1
 28463ec: 3c810501     	str	q1, [x8], #0x10
 28463f0: bc414541     	ldr	s1, [x10], #0x14
 28463f4: bc004521     	str	s1, [x9], #0x4
 28463f8: d100056b     	sub	x11, x11, #0x1
 28463fc: b5ffff2b     	cbnz	x11, 0x28463e0 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x1a0>
 2846400: 910083e0     	add	x0, sp, #0x20
 2846404: 940003e4     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 2846408: 910103e0     	add	x0, sp, #0x40
 284640c: 940002fb     	bl	0x2846ff8 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xa14>
 2846410: 910163e0     	add	x0, sp, #0x58
 2846414: 940002f9     	bl	0x2846ff8 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xa14>
 2846418: 9101c3e0     	add	x0, sp, #0x70
 284641c: 94000286     	bl	0x2846e34 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x850>
 2846420: d10163a0     	sub	x0, x29, #0x58
 2846424: 94000284     	bl	0x2846e34 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x850>
 2846428: 52800000     	mov	w0, #0x0                ; =0
 284642c: a94e7bfd     	ldp	x29, x30, [sp, #0xe0]
 2846430: a94d4ff4     	ldp	x20, x19, [sp, #0xd0]
 2846434: a94c57f6     	ldp	x22, x21, [sp, #0xc0]
 2846438: a94b5ff8     	ldp	x24, x23, [sp, #0xb0]
 284643c: a94a67fa     	ldp	x26, x25, [sp, #0xa0]
 2846440: 1400048b     	b	0x284766c <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x1088>
 2846444: 14000005     	b	0x2846458 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x218>
 2846448: aa0003f3     	mov	x19, x0
 284644c: 1400000b     	b	0x2846478 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x238>
 2846450: aa0003f3     	mov	x19, x0
 2846454: 1400000b     	b	0x2846480 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x240>
 2846458: aa0003f3     	mov	x19, x0
 284645c: 910083e0     	add	x0, sp, #0x20
 2846460: 940003cd     	bl	0x2847394 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xdb0>
 2846464: 14000003     	b	0x2846470 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x230>
 2846468: 14000001     	b	0x284646c <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x22c>
 284646c: aa0003f3     	mov	x19, x0
 2846470: 910103e0     	add	x0, sp, #0x40
 2846474: 940002e1     	bl	0x2846ff8 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xa14>
 2846478: 910163e0     	add	x0, sp, #0x58
 284647c: 940002df     	bl	0x2846ff8 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xa14>
 2846480: 9101c3e0     	add	x0, sp, #0x70
 2846484: 9400026c     	bl	0x2846e34 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x850>
 2846488: d10163a0     	sub	x0, x29, #0x58
 284648c: 9400026a     	bl	0x2846e34 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x850>
 2846490: 9400045e     	bl	0x2847608 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x1024>
 2846494: a940a408     	ldp	x8, x9, [x0, #0x8]
 2846498: eb09011f     	cmp	x8, x9
 284649c: 54000042     	b.hs	0x28464a4 <__ZN5smash13private_utils3ssd8Detector6GetBoxERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IfNS6_IfEEEE+0x264>
 28464a0: 17fc89bc     	b	0x2768b90 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8be10>
 28464a4: 17fc89c0     	b	0x2768ba4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8be24>

00000000028464a8 <__ZN5smash13private_utils3ssd8Detector16DetectMultiLabelEN9mobilecv23MatERNSt3__16vectorINS3_5Rect_IfEENS5_9allocatorIS8_EEEERNS6_IiNS9_IiEEEERNS6_IfNS9_IfEEEE>:
 28464a8: d103c3ff     	sub	sp, sp, #0xf0
 28464ac: 6d0a23e9     	stp	d9, d8, [sp, #0xa0]
 28464b0: a90b5ff8     	stp	x24, x23, [sp, #0xb0]
 28464b4: a90c57f6     	stp	x22, x21, [sp, #0xc0]
 28464b8: a90d4ff4     	stp	x20, x19, [sp, #0xd0]
 28464bc: a90e7bfd     	stp	x29, x30, [sp, #0xe0]
 28464c0: 910383fd     	add	x29, sp, #0xe0
 28464c4: aa0403f4     	mov	x20, x4
 28464c8: aa0303f5     	mov	x21, x3
 28464cc: aa0203f3     	mov	x19, x2
 28464d0: aa0103f7     	mov	x23, x1
 28464d4: aa0003f6     	mov	x22, x0
 28464d8: 94000467     	bl	0x2847674 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x1090>
 28464dc: f9400088     	ldr	x8, [x4]
 28464e0: f9000488     	str	x8, [x4, #0x8]
 28464e4: 9400045a     	bl	0x284764c <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x1068>
 28464e8: 54000061     	b.ne	0x28464f4 <__ZN5smash13private_utils3ssd8Detector16DetectMultiLabelEN9mobilecv23MatERNSt3__16vectorINS3_5Rect_IfEENS5_9allocatorIS8_EEEERNS6_IiNS9_IiEEEERNS6_IfNS9_IfEEEE+0x4c>
 28464ec: 97ffff07     	bl	0x2846108 <__ZN5smash13private_utils3ssd8Detector14MinSideSettingEv>
 28464f0: 14000002     	b	0x28464f8 <__ZN5smash13private_utils3ssd8Detector16DetectMultiLabelEN9mobilecv23MatERNSt3__16vectorINS3_5Rect_IfEENS5_9allocatorIS8_EEEERNS6_IiNS9_IiEEEERNS6_IfNS9_IfEEEE+0x50>
 28464f4: 97ffff22     	bl	0x284617c <__ZN5smash13private_utils3ssd8Detector14MaxSideSettingEv>
 28464f8: a93b7fb7     	stp	x23, xzr, [x29, #-0x50]
 28464fc: 52a02028     	mov	w8, #0x1010000          ; =16842752
 2846500: b81a83a8     	stur	w8, [x29, #-0x58]
 2846504: 910102d7     	add	x23, x22, #0x40
 2846508: 52a04028     	mov	w8, #0x2010000          ; =33619968
 284650c: b90073e8     	str	w8, [sp, #0x70]
 2846510: a907fff7     	stp	x23, xzr, [sp, #0x78]
 2846514: fc4242c0     	ldur	d0, [x22, #0x24]
 2846518: fd0037e0     	str	d0, [sp, #0x68]
 284651c: d10163a0     	sub	x0, x29, #0x58
 2846520: 9101c3e1     	add	x1, sp, #0x70
 2846524: 94000445     	bl	0x2847638 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x1054>
 2846528: a93affbf     	stp	xzr, xzr, [x29, #-0x58]
 284652c: f81b83bf     	stur	xzr, [x29, #-0x48]
 2846530: 910023e0     	add	x0, sp, #0x8
 2846534: aa1703e1     	mov	x1, x23
 2846538: 97877aa1     	bl	0xa24fbc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13f0dc>
 284653c: 910023e1     	add	x1, sp, #0x8
 2846540: aa1603e0     	mov	x0, x22
 2846544: 97ffff2b     	bl	0x28461f0 <__ZN5smash13private_utils3ssd8Detector9InferenceEN9mobilecv23MatERNSt3__16vectorI6AIRectNS5_9allocatorIS7_EEEERNS6_IfNS8_IfEEEE>
 2846548: 94000447     	bl	0x2847664 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x1080>
 284654c: d10163a1     	sub	x1, x29, #0x58
 2846550: aa1603e0     	mov	x0, x22
 2846554: aa1503e2     	mov	x2, x21
 2846558: aa1403e3     	mov	x3, x20
 284655c: 94000022     	bl	0x28465e4 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE>
 2846560: d2800014     	mov	x20, #0x0               ; =0
 2846564: d2800015     	mov	x21, #0x0               ; =0
 2846568: 0f000428     	movi.2s	v8, #0x1
 284656c: a97aa7a8     	ldp	x8, x9, [x29, #-0x58]
 2846570: cb080129     	sub	x9, x9, x8
 2846574: eb8912bf     	cmp	x21, x9, asr #4
 2846578: 54000142     	b.hs	0x28465a0 <__ZN5smash13private_utils3ssd8Detector16DetectMultiLabelEN9mobilecv23MatERNSt3__16vectorINS3_5Rect_IfEENS5_9allocatorIS8_EEEERNS6_IiNS9_IiEEEERNS6_IfNS9_IfEEEE+0xf8>
 284657c: 940003f9     	bl	0x2847560 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0xf7c>
 2846580: 2d0e0be0     	stp	s0, s2, [sp, #0x70]
 2846584: fd003fe1     	str	d1, [sp, #0x78]
 2846588: 9101c3e1     	add	x1, sp, #0x70
 284658c: aa1303e0     	mov	x0, x19
