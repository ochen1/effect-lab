
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

000000000036524c <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb>:
  36524c:      	sub	sp, sp, #0x80
  365250:      	stp	x26, x25, [sp, #0x30]
  365254:      	stp	x24, x23, [sp, #0x40]
  365258:      	stp	x22, x21, [sp, #0x50]
  36525c:      	stp	x20, x19, [sp, #0x60]
  365260:      	stp	x29, x30, [sp, #0x70]
  365264:      	add	x29, sp, #0x70
  365268:      	mov	x21, x4
  36526c:      	mov	x22, x3
  365270:      	mov	x23, x2
  365274:      	mov	x19, x1
  365278:      	mov	x20, x0
  36527c:      	ldp	x8, x9, [x0]
  365280:      	sub	x8, x9, x8
  365284:      	cmp	x8, #0x350
  365288:      	cset	w9, ne
  36528c:      	orr	w9, w9, w2
  365290:      	orr	w9, w9, w3
  365294:      	orr	w9, w9, w4
  365298:      	cmp	w9, #0x1
  36529c:      	b.ne	0x36531c <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0xd0>
  3652a0:      	asr	x8, x8, #3
  3652a4:      	cmp	x8, #0xf0
  3652a8:      	b.eq	0x36531c <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0xd0>
  3652ac:      	cmp	x8, #0x118
  3652b0:      	b.eq	0x36531c <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0xd0>
  3652b4:      	stp	xzr, xzr, [sp, #0x18]
  3652b8:      	add	x0, sp, #0x18
  3652bc:      	mov	w1, #0x76               ; =118
  3652c0:      	bl	0xac9b40 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1e3c60>
  3652c4:      	adrp	x8, 0x31f0000 <dyld_stub_binder+0x31f0000>
  3652c8:      	add	x8, x8, #0x157
  3652cc:      	ldp	q0, q1, [x8, #0x20]
  3652d0:      	ldp	q3, q2, [x8]
  3652d4:      	stp	q0, q1, [x0, #0x20]
  3652d8:      	stp	q3, q2, [x0]
  3652dc:      	ldp	q1, q0, [x8, #0x50]
  3652e0:      	ldur	x9, [x8, #0x6e]
  3652e4:      	ldr	q2, [x8, #0x40]
  3652e8:      	stur	x9, [x0, #0x6e]
  3652ec:      	stp	q1, q0, [x0, #0x50]
  3652f0:      	str	q2, [x0, #0x40]
  3652f4:      	adrp	x2, 0x31f0000 <dyld_stub_binder+0x31f0000>
  3652f8:      	add	x2, x2, #0x1ce
  3652fc:      	adrp	x3, 0x31f0000 <dyld_stub_binder+0x31f0000>
  365300:      	add	x3, x3, #0xd1
  365304:      	add	x1, sp, #0x18
  365308:      	mov	w0, #-0xd7              ; =-215
  36530c:      	mov	w4, #0x410              ; =1040
  365310:      	bl	0xad21f4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1ec314>
  365314:      	add	x0, sp, #0x18
  365318:      	bl	0xac9b80 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x1e3ca0>
  36531c:      	ldp	x8, x0, [x19]
  365320:      	sub	x10, x0, x8
  365324:      	asr	x9, x10, #3
  365328:      	cmp	x9, #0xb3
  36532c:      	b.hi	0x365344 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0xf8>
  365330:      	mov	w8, #0xb4               ; =180
  365334:      	sub	x1, x8, x9
  365338:      	mov	x0, x19
  36533c:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  365340:      	b	0x36536c <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x120>
  365344:      	cmp	x10, #0x5a0
  365348:      	b.eq	0x36536c <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x120>
  36534c:      	add	x24, x8, #0x5a0
  365350:      	cmp	x0, x24
  365354:      	b.eq	0x365368 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x11c>
  365358:      	sub	x0, x0, #0x8
  36535c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  365360:      	cmp	x0, x24
  365364:      	b.ne	0x365358 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x10c>
  365368:      	str	x24, [x19, #0x8]
  36536c:      	ldr	x8, [x20]
  365370:      	ldr	x9, [x19]
  365374:      	ldr	d0, [x8]
  365378:      	str	d0, [x9]
  36537c:      	ldr	d0, [x8, #0x8]
  365380:      	str	d0, [x9, #0x8]
  365384:      	ldr	d0, [x8, #0x10]
  365388:      	str	d0, [x9, #0x10]
  36538c:      	ldr	d0, [x8, #0x18]
  365390:      	str	d0, [x9, #0x18]
  365394:      	ldr	d0, [x8, #0x20]
  365398:      	str	d0, [x9, #0x20]
  36539c:      	ldr	d0, [x8, #0x28]
  3653a0:      	str	d0, [x9, #0x28]
  3653a4:      	ldr	d0, [x8, #0x30]
  3653a8:      	str	d0, [x9, #0x30]
  3653ac:      	ldr	d0, [x8, #0x38]
  3653b0:      	str	d0, [x9, #0x38]
  3653b4:      	ldr	d0, [x8, #0x40]
  3653b8:      	str	d0, [x9, #0x40]
  3653bc:      	ldr	d0, [x8, #0x48]
  3653c0:      	str	d0, [x9, #0x48]
  3653c4:      	ldr	d0, [x8, #0x50]
  3653c8:      	str	d0, [x9, #0x50]
  3653cc:      	ldr	d0, [x8, #0x58]
  3653d0:      	str	d0, [x9, #0x58]
  3653d4:      	ldr	d0, [x8, #0x60]
  3653d8:      	str	d0, [x9, #0x60]
  3653dc:      	ldr	d0, [x8, #0x68]
  3653e0:      	str	d0, [x9, #0x68]
  3653e4:      	ldr	d0, [x8, #0x70]
  3653e8:      	str	d0, [x9, #0x70]
  3653ec:      	ldr	d0, [x8, #0x78]
  3653f0:      	str	d0, [x9, #0x78]
  3653f4:      	ldr	d0, [x8, #0x80]
  3653f8:      	str	d0, [x9, #0x80]
  3653fc:      	ldr	d0, [x8, #0x88]
  365400:      	str	d0, [x9, #0x88]
  365404:      	ldr	d0, [x8, #0x90]
  365408:      	str	d0, [x9, #0x90]
  36540c:      	ldr	d0, [x8, #0x98]
  365410:      	str	d0, [x9, #0x98]
  365414:      	ldr	d0, [x8, #0xa0]
  365418:      	str	d0, [x9, #0xa0]
  36541c:      	ldr	d0, [x8, #0xa8]
  365420:      	str	d0, [x9, #0xa8]
  365424:      	ldr	d0, [x8, #0xb0]
  365428:      	str	d0, [x9, #0xb0]
  36542c:      	ldr	d0, [x8, #0xb8]
  365430:      	str	d0, [x9, #0xb8]
  365434:      	ldr	d0, [x8, #0xc0]
  365438:      	str	d0, [x9, #0xc0]
  36543c:      	ldr	d0, [x8, #0xc8]
  365440:      	str	d0, [x9, #0xc8]
  365444:      	ldr	d0, [x8, #0xd0]
  365448:      	str	d0, [x9, #0xd0]
  36544c:      	ldr	d0, [x8, #0xd8]
  365450:      	str	d0, [x9, #0xd8]
  365454:      	ldr	d0, [x8, #0xe0]
  365458:      	str	d0, [x9, #0xe0]
  36545c:      	ldr	d0, [x8, #0xe8]
  365460:      	str	d0, [x9, #0xe8]
  365464:      	ldr	d0, [x8, #0xf0]
  365468:      	str	d0, [x9, #0xf0]
  36546c:      	ldr	d0, [x8, #0xf8]
  365470:      	str	d0, [x9, #0xf8]
  365474:      	ldr	d0, [x8, #0x100]
  365478:      	str	d0, [x9, #0x100]
  36547c:      	mov	w0, #0x34               ; =52
  365480:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  365484:      	add	x8, x0, #0x34
  365488:      	stp	x8, x8, [sp, #0x8]
  36548c:      	adrp	x9, 0x2c47000 <__ZTSN3BEF16FaceBrowV2FilterE+0x40>
  365490:      	add	x9, x9, #0xba0
  365494:      	ldp	q0, q1, [x9]
  365498:      	stp	q0, q1, [x0]
  36549c:      	ldr	q0, [x9, #0x20]
  3654a0:      	str	q0, [x0, #0x20]
  3654a4:      	ldr	w9, [x9, #0x30]
  3654a8:      	str	w9, [x0, #0x30]
  3654ac:      	str	x0, [sp]
  3654b0:      	add	x8, sp, #0x18
  3654b4:      	mov	x1, sp
  3654b8:      	mov	x0, x20
  3654bc:      	bl	0x365c44 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x9f8>
  3654c0:      	ldr	x0, [sp]
  3654c4:      	cbz	x0, 0x3654d0 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x284>
  3654c8:      	str	x0, [sp, #0x8]
  3654cc:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3654d0:      	ldp	x24, x0, [sp, #0x18]
  3654d4:      	cmp	x24, x0
  3654d8:      	b.eq	0x365528 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x2dc>
  3654dc:      	ldr	x13, [x19]
  3654e0:      	add	x8, x13, #0x108
  3654e4:      	sub	x9, x0, x24
  3654e8:      	sub	x10, x9, #0x8
  3654ec:      	cmp	x10, #0x78
  3654f0:      	b.hs	0x3655f4 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x3a8>
  3654f4:      	mov	x11, x24
  3654f8:      	ldr	d0, [x11], #0x8
  3654fc:      	str	d0, [x8], #0x8
  365500:      	cmp	x11, x0
  365504:      	b.ne	0x3654f8 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x2ac>
  365508:      	asr	x25, x9, #3
  36550c:      	cbz	x24, 0x36553c <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x2f0>
  365510:      	sub	x0, x0, #0x8
  365514:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  365518:      	cmp	x0, x24
  36551c:      	b.ne	0x365510 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x2c4>
  365520:      	ldr	x0, [sp, #0x18]
  365524:      	b	0x365534 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x2e8>
  365528:      	mov	x25, #0x0               ; =0
  36552c:      	cbz	x24, 0x36553c <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x2f0>
  365530:      	mov	x0, x24
  365534:      	str	x24, [sp, #0x20]
  365538:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  36553c:      	stp	xzr, xzr, [sp, #0x18]
  365540:      	str	xzr, [sp, #0x28]
  365544:      	cbz	w23, 0x3655bc <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x370>
  365548:      	ldr	x8, [x20]
  36554c:      	add	x1, x8, #0x350
  365550:      	add	x2, x8, #0x4b0
  365554:      	add	x0, sp, #0x18
  365558:      	bl	0x307e08 <__ZN3BEF21FaceBrowLiquifyFilter13drawSucaiBrowERKN3BRC7CBundleEPKNS_8MakeupV217makeup_base_paramEPNS_15FaceBaseV2ParamEPNS_17BufferedTextureV2Ei+0x700>
  36555c:      	ldp	x24, x0, [sp, #0x18]
  365560:      	add	w8, w25, #0x21
  365564:      	sxtw	x23, w8
  365568:      	cmp	x24, x0
  36556c:      	b.eq	0x365794 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x548>
  365570:      	ldr	x13, [x19]
  365574:      	add	x8, x13, x23, lsl #3
  365578:      	sub	x9, x0, x24
  36557c:      	sub	x10, x9, #0x8
  365580:      	cmp	x10, #0x78
  365584:      	b.hs	0x3656ac <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x460>
  365588:      	mov	x11, x24
  36558c:      	ldr	d0, [x11], #0x8
  365590:      	str	d0, [x8], #0x8
  365594:      	cmp	x11, x0
  365598:      	b.ne	0x36558c <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x340>
  36559c:      	add	x23, x23, x9, asr #3
  3655a0:      	cbz	x24, 0x3657a0 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x554>
  3655a4:      	sub	x0, x0, #0x8
  3655a8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3655ac:      	cmp	x0, x24
  3655b0:      	b.ne	0x3655a4 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x358>
  3655b4:      	ldr	x0, [sp, #0x18]
  3655b8:      	b	0x365798 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x54c>
  3655bc:      	mov	x8, sp
  3655c0:      	mov	x0, x20
  3655c4:      	bl	0x362fcc <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE>
  3655c8:      	ldr	x23, [sp, #0x18]
  3655cc:      	cbz	x23, 0x365774 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x528>
  3655d0:      	ldr	x0, [sp, #0x20]
  3655d4:      	cmp	x0, x23
  3655d8:      	b.eq	0x365768 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x51c>
  3655dc:      	sub	x0, x0, #0x8
  3655e0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3655e4:      	cmp	x0, x23
  3655e8:      	b.ne	0x3655dc <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x390>
  3655ec:      	ldr	x0, [sp, #0x18]
  3655f0:      	b	0x36576c <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x520>
  3655f4:      	lsr	x11, x10, #3
  3655f8:      	add	x10, x11, #0x1
  3655fc:      	lsl	x11, x11, #3
  365600:      	add	x12, x11, x13
  365604:      	add	x14, x12, #0x10c
  365608:      	add	x11, x24, x11
  36560c:      	add	x11, x11, #0x4
  365610:      	add	x15, x13, #0x10c
  365614:      	add	x16, x24, #0x4
  365618:      	cmp	x8, x11
  36561c:      	cset	w11, lo
  365620:      	cmp	x24, x14
  365624:      	cset	w14, lo
  365628:      	and	w14, w11, w14
  36562c:      	add	x11, x24, x10, lsl #3
  365630:      	cmp	x15, x11
  365634:      	cset	w11, lo
  365638:      	add	x12, x12, #0x110
  36563c:      	cmp	x16, x12
  365640:      	cset	w12, lo
  365644:      	tbnz	w14, #0x0, 0x365b44 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x8f8>
  365648:      	and	w12, w11, w12
  36564c:      	mov	x11, x24
  365650:      	tbnz	w12, #0x0, 0x3654f8 <__ZN3BEF8MakeupV214convertToBE180ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERS7_bbb+0x2ac>
  365654:      	and	x12, x10, #0x3ffffffffffffff0
  365658:      	lsl	x11, x12, #3
  36565c:      	add	x8, x8, x11
