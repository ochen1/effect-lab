
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000362fcc <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE>:
  362fcc:      	sub	sp, sp, #0xa0
  362fd0:      	stp	x26, x25, [sp, #0x50]
  362fd4:      	stp	x24, x23, [sp, #0x60]
  362fd8:      	stp	x22, x21, [sp, #0x70]
  362fdc:      	stp	x20, x19, [sp, #0x80]
  362fe0:      	stp	x29, x30, [sp, #0x90]
  362fe4:      	add	x29, sp, #0x90
  362fe8:      	mov	x20, x0
  362fec:      	mov	x19, x8
  362ff0:      	stp	xzr, xzr, [x8]
  362ff4:      	str	xzr, [x8, #0x10]
  362ff8:      	mov	x0, x8
  362ffc:      	mov	w1, #0x2c               ; =44
  363000:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  363004:      	movi.4s	v0, #0xb
  363008:      	str	q0, [sp, #0x20]
  36300c:      	mov	w0, #0x10               ; =16
  363010:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  363014:      	add	x8, x0, #0x10
  363018:      	stp	x8, x8, [sp, #0x40]
  36301c:      	ldr	q0, [sp, #0x20]
  363020:      	str	q0, [x0]
  363024:      	str	x0, [sp, #0x38]
  363028:      	mov	w0, #0x28               ; =40
  36302c:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  363030:      	mov	x22, x0
  363034:      	stp	x0, x0, [sp, #0x20]
  363038:      	add	x23, x0, #0x28
  36303c:      	str	x23, [sp, #0x30]
  363040:      	mov	x21, x0
  363044:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  363048:      	add	x21, x22, #0x8
  36304c:      	mov	x0, x21
  363050:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  363054:      	add	x21, x22, #0x10
  363058:      	mov	x0, x21
  36305c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  363060:      	add	x21, x22, #0x18
  363064:      	mov	x0, x21
  363068:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  36306c:      	add	x21, x22, #0x20
  363070:      	mov	x0, x21
  363074:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  363078:      	str	x23, [sp, #0x28]
  36307c:      	mov	w0, #0x28               ; =40
  363080:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  363084:      	mov	x21, x0
  363088:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  36308c:      	add	x22, x21, #0x8
  363090:      	mov	x23, x22
  363094:      	mov	x0, x22
  363098:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  36309c:      	add	x24, x21, #0x10
  3630a0:      	mov	x23, x24
  3630a4:      	mov	x0, x24
  3630a8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3630ac:      	add	x25, x21, #0x18
  3630b0:      	mov	x23, x25
  3630b4:      	mov	x0, x25
  3630b8:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3630bc:      	add	x23, x21, #0x20
  3630c0:      	mov	x0, x23
  3630c4:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3630c8:      	ldr	x8, [x20]
  3630cc:      	ldr	x9, [sp, #0x20]
  3630d0:      	ldr	d0, [x8, #0x1a0]
  3630d4:      	str	d0, [x9]
  3630d8:      	ldr	d0, [x8, #0x1a8]
  3630dc:      	str	d0, [x9, #0x8]
  3630e0:      	ldr	d0, [x8, #0x240]
  3630e4:      	str	d0, [x9, #0x10]
  3630e8:      	ldr	d0, [x8, #0x1b0]
  3630ec:      	str	d0, [x9, #0x18]
  3630f0:      	ldr	d0, [x8, #0x1b8]
  3630f4:      	str	d0, [x9, #0x20]
  3630f8:      	add	x8, sp, #0x8
  3630fc:      	add	x0, sp, #0x20
  363100:      	add	x1, sp, #0x38
  363104:      	mov	w2, #0x1                ; =1
  363108:      	mov	w3, #0x0                ; =0
  36310c:      	bl	0x3807a8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb>
  363110:      	mov	x0, x23
  363114:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363118:      	mov	x0, x25
  36311c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363120:      	mov	x0, x24
  363124:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363128:      	mov	x0, x22
  36312c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363130:      	mov	x0, x21
  363134:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363138:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  36313c:      	ldp	x21, x23, [sp, #0x8]
  363140:      	ldr	x8, [x19]
  363144:      	ldp	x22, x0, [sp, #0x20]
  363148:      	ldr	d0, [x21]
  36314c:      	str	d0, [x8]
  363150:      	ldr	d0, [x21, #0x20]
  363154:      	str	d0, [x8, #0x8]
  363158:      	ldr	d0, [x21, #0x40]
  36315c:      	str	d0, [x8, #0x10]
  363160:      	ldr	d0, [x21, #0x60]
  363164:      	str	d0, [x8, #0x18]
  363168:      	ldr	d0, [x21, #0x80]
  36316c:      	str	d0, [x8, #0x20]
  363170:      	ldr	d0, [x21, #0xa0]
  363174:      	str	d0, [x8, #0x28]
  363178:      	ldr	d0, [x21, #0xc0]
  36317c:      	str	d0, [x8, #0x30]
  363180:      	ldr	d0, [x21, #0xe0]
  363184:      	str	d0, [x8, #0x38]
  363188:      	ldr	d0, [x21, #0x100]
  36318c:      	str	d0, [x8, #0x40]
  363190:      	ldr	d0, [x21, #0x120]
  363194:      	str	d0, [x8, #0x48]
  363198:      	ldr	d0, [x21, #0x140]
  36319c:      	str	d0, [x8, #0x50]
  3631a0:      	cmp	x0, x22
  3631a4:      	b.eq	0x3631b8 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x1ec>
  3631a8:      	sub	x0, x0, #0x8
  3631ac:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3631b0:      	cmp	x0, x22
  3631b4:      	b.ne	0x3631a8 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x1dc>
  3631b8:      	str	x22, [sp, #0x28]
  3631bc:      	cmp	x23, x21
  3631c0:      	b.eq	0x3631dc <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x210>
  3631c4:      	sub	x23, x23, #0x8
  3631c8:      	mov	x0, x23
  3631cc:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3631d0:      	cmp	x23, x21
  3631d4:      	b.ne	0x3631c4 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x1f8>
  3631d8:      	ldr	x22, [sp, #0x28]
  3631dc:      	ldr	x8, [sp, #0x20]
  3631e0:      	sub	x10, x22, x8
  3631e4:      	asr	x9, x10, #3
  3631e8:      	cmp	x9, #0x4
  3631ec:      	b.hi	0x363204 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x238>
  3631f0:      	mov	w8, #0x5                ; =5
  3631f4:      	sub	x1, x8, x9
  3631f8:      	add	x0, sp, #0x20
  3631fc:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  363200:      	b	0x363230 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x264>
  363204:      	cmp	x10, #0x28
  363208:      	b.eq	0x363230 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x264>
  36320c:      	add	x23, x8, #0x28
  363210:      	cmp	x22, x23
  363214:      	b.eq	0x36322c <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x260>
  363218:      	sub	x22, x22, #0x8
  36321c:      	mov	x0, x22
  363220:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363224:      	cmp	x22, x23
  363228:      	b.ne	0x363218 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x24c>
  36322c:      	str	x23, [sp, #0x28]
  363230:      	ldr	x8, [x20]
  363234:      	ldr	x9, [sp, #0x20]
  363238:      	ldr	d0, [x8, #0x1a0]
  36323c:      	str	d0, [x9]
  363240:      	ldr	d0, [x8, #0x1c8]
  363244:      	str	d0, [x9, #0x8]
  363248:      	ldr	d0, [x8, #0x248]
  36324c:      	str	d0, [x9, #0x10]
  363250:      	ldr	d0, [x8, #0x1c0]
  363254:      	str	d0, [x9, #0x18]
  363258:      	ldr	d0, [x8, #0x1b8]
  36325c:      	str	d0, [x9, #0x20]
  363260:      	add	x8, sp, #0x8
  363264:      	add	x0, sp, #0x20
  363268:      	add	x1, sp, #0x38
  36326c:      	mov	w2, #0x1                ; =1
  363270:      	mov	w3, #0x0                ; =0
  363274:      	bl	0x3807a8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb>
  363278:      	cbz	x21, 0x363284 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x2b8>
  36327c:      	mov	x0, x21
  363280:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  363284:      	ldp	x21, x0, [sp, #0x8]
  363288:      	ldr	x8, [x19]
  36328c:      	ldr	d0, [x21, #0x160]
  363290:      	str	d0, [x8, #0x58]
  363294:      	ldr	d0, [x21, #0x140]
  363298:      	str	d0, [x8, #0x60]
  36329c:      	ldr	d0, [x21, #0x120]
  3632a0:      	str	d0, [x8, #0x68]
  3632a4:      	ldr	d0, [x21, #0x100]
  3632a8:      	str	d0, [x8, #0x70]
  3632ac:      	ldr	d0, [x21, #0xe0]
  3632b0:      	str	d0, [x8, #0x78]
  3632b4:      	ldr	d0, [x21, #0xc0]
  3632b8:      	str	d0, [x8, #0x80]
  3632bc:      	ldr	d0, [x21, #0xa0]
  3632c0:      	str	d0, [x8, #0x88]
  3632c4:      	ldr	d0, [x21, #0x80]
  3632c8:      	str	d0, [x8, #0x90]
  3632cc:      	ldr	d0, [x21, #0x60]
  3632d0:      	str	d0, [x8, #0x98]
  3632d4:      	ldr	d0, [x21, #0x40]
  3632d8:      	str	d0, [x8, #0xa0]
  3632dc:      	ldr	d0, [x21, #0x20]
  3632e0:      	str	d0, [x8, #0xa8]
  3632e4:      	cmp	x0, x21
  3632e8:      	b.eq	0x3632fc <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x330>
  3632ec:      	sub	x0, x0, #0x8
  3632f0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3632f4:      	cmp	x0, x21
  3632f8:      	b.ne	0x3632ec <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x320>
  3632fc:      	mov	x0, x21
  363300:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  363304:      	ldr	x21, [sp, #0x20]
  363308:      	cbz	x21, 0x36333c <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x370>
  36330c:      	ldr	x0, [sp, #0x28]
  363310:      	cmp	x0, x21
  363314:      	b.eq	0x363330 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x364>
  363318:      	sub	x0, x0, #0x8
  36331c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363320:      	cmp	x0, x21
  363324:      	b.ne	0x363318 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x34c>
  363328:      	ldr	x0, [sp, #0x20]
  36332c:      	b	0x363334 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x368>
  363330:      	mov	x0, x21
  363334:      	str	x21, [sp, #0x28]
  363338:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  36333c:      	ldr	x0, [sp, #0x38]
  363340:      	cbz	x0, 0x36334c <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x380>
  363344:      	str	x0, [sp, #0x40]
  363348:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  36334c:      	movi.4s	v0, #0xb
  363350:      	str	q0, [sp, #0x20]
  363354:      	mov	w0, #0x10               ; =16
  363358:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  36335c:      	add	x8, x0, #0x10
  363360:      	stp	x8, x8, [sp, #0x40]
  363364:      	ldr	q0, [sp, #0x20]
  363368:      	str	q0, [x0]
  36336c:      	str	x0, [sp, #0x38]
  363370:      	mov	w0, #0x28               ; =40
  363374:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  363378:      	mov	x22, x0
  36337c:      	stp	x0, x0, [sp, #0x20]
  363380:      	add	x23, x0, #0x28
  363384:      	str	x23, [sp, #0x30]
  363388:      	mov	x21, x0
  36338c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  363390:      	add	x21, x22, #0x8
  363394:      	mov	x0, x21
  363398:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  36339c:      	add	x21, x22, #0x10
  3633a0:      	mov	x0, x21
  3633a4:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3633a8:      	add	x21, x22, #0x18
  3633ac:      	mov	x0, x21
  3633b0:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3633b4:      	add	x21, x22, #0x20
  3633b8:      	mov	x0, x21
  3633bc:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  3633c0:      	str	x23, [sp, #0x28]
  3633c4:      	ldr	x8, [x20]
  3633c8:      	ldr	x9, [sp, #0x20]
  3633cc:      	ldr	d0, [x8, #0x1d0]
  3633d0:      	str	d0, [x9]
  3633d4:      	ldr	d0, [x8, #0x1d8]
  3633d8:      	str	d0, [x9, #0x8]
  3633dc:      	ldr	d0, [x8, #0x258]
  3633e0:      	str	d0, [x9, #0x10]
  3633e4:      	ldr	d0, [x8, #0x1e0]
  3633e8:      	str	d0, [x9, #0x18]
  3633ec:      	ldr	d0, [x8, #0x1e8]
  3633f0:      	str	d0, [x9, #0x20]
  3633f4:      	add	x8, sp, #0x8
  3633f8:      	add	x0, sp, #0x20
  3633fc:      	add	x1, sp, #0x38
  363400:      	mov	w2, #0x1                ; =1
  363404:      	mov	w3, #0x0                ; =0
  363408:      	bl	0x3807a8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb>
  36340c:      	ldp	x21, x23, [sp, #0x8]
  363410:      	ldr	x8, [x19]
  363414:      	ldr	d0, [x21, #0x160]
  363418:      	ldp	x22, x0, [sp, #0x20]
  36341c:      	str	d0, [x8, #0xb0]
  363420:      	ldr	d0, [x21, #0x140]
  363424:      	str	d0, [x8, #0xb8]
  363428:      	ldr	d0, [x21, #0x120]
  36342c:      	str	d0, [x8, #0xc0]
  363430:      	ldr	d0, [x21, #0x100]
  363434:      	str	d0, [x8, #0xc8]
  363438:      	ldr	d0, [x21, #0xe0]
  36343c:      	str	d0, [x8, #0xd0]
  363440:      	ldr	d0, [x21, #0xc0]
  363444:      	str	d0, [x8, #0xd8]
  363448:      	ldr	d0, [x21, #0xa0]
  36344c:      	str	d0, [x8, #0xe0]
  363450:      	ldr	d0, [x21, #0x80]
  363454:      	str	d0, [x8, #0xe8]
  363458:      	ldr	d0, [x21, #0x60]
  36345c:      	str	d0, [x8, #0xf0]
  363460:      	ldr	d0, [x21, #0x40]
  363464:      	str	d0, [x8, #0xf8]
  363468:      	ldr	d0, [x21, #0x20]
  36346c:      	str	d0, [x8, #0x100]
  363470:      	cmp	x0, x22
  363474:      	b.eq	0x363488 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x4bc>
  363478:      	sub	x0, x0, #0x8
  36347c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363480:      	cmp	x0, x22
  363484:      	b.ne	0x363478 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x4ac>
  363488:      	str	x22, [sp, #0x28]
  36348c:      	cmp	x23, x21
  363490:      	b.eq	0x3634ac <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x4e0>
  363494:      	sub	x23, x23, #0x8
  363498:      	mov	x0, x23
  36349c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3634a0:      	cmp	x23, x21
  3634a4:      	b.ne	0x363494 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x4c8>
  3634a8:      	ldr	x22, [sp, #0x28]
  3634ac:      	ldr	x8, [sp, #0x20]
  3634b0:      	sub	x10, x22, x8
  3634b4:      	asr	x9, x10, #3
  3634b8:      	cmp	x9, #0x4
  3634bc:      	b.hi	0x3634d4 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x508>
  3634c0:      	mov	w8, #0x5                ; =5
  3634c4:      	sub	x1, x8, x9
  3634c8:      	add	x0, sp, #0x20
  3634cc:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  3634d0:      	b	0x363500 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x534>
  3634d4:      	cmp	x10, #0x28
  3634d8:      	b.eq	0x363500 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x534>
  3634dc:      	add	x23, x8, #0x28
  3634e0:      	cmp	x22, x23
  3634e4:      	b.eq	0x3634fc <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x530>
  3634e8:      	sub	x22, x22, #0x8
  3634ec:      	mov	x0, x22
  3634f0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3634f4:      	cmp	x22, x23
  3634f8:      	b.ne	0x3634e8 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x51c>
  3634fc:      	str	x23, [sp, #0x28]
  363500:      	ldr	x8, [x20]
  363504:      	ldr	x9, [sp, #0x20]
  363508:      	ldr	d0, [x8, #0x1d0]
  36350c:      	str	d0, [x9]
  363510:      	ldr	d0, [x8, #0x1f8]
  363514:      	str	d0, [x9, #0x8]
  363518:      	ldr	d0, [x8, #0x260]
  36351c:      	str	d0, [x9, #0x10]
  363520:      	ldr	d0, [x8, #0x1f0]
  363524:      	str	d0, [x9, #0x18]
  363528:      	ldr	d0, [x8, #0x1e8]
  36352c:      	str	d0, [x9, #0x20]
  363530:      	add	x8, sp, #0x8
  363534:      	add	x0, sp, #0x20
  363538:      	add	x1, sp, #0x38
  36353c:      	mov	w2, #0x1                ; =1
  363540:      	mov	w3, #0x0                ; =0
  363544:      	bl	0x3807a8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb>
  363548:      	cbz	x21, 0x363554 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x588>
  36354c:      	mov	x0, x21
  363550:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  363554:      	ldp	x20, x0, [sp, #0x8]
  363558:      	ldr	x8, [x19]
  36355c:      	ldr	d0, [x20]
  363560:      	str	d0, [x8, #0x108]
  363564:      	ldr	d0, [x20, #0x20]
  363568:      	str	d0, [x8, #0x110]
  36356c:      	ldr	d0, [x20, #0x40]
  363570:      	str	d0, [x8, #0x118]
  363574:      	ldr	d0, [x20, #0x60]
  363578:      	str	d0, [x8, #0x120]
  36357c:      	ldr	d0, [x20, #0x80]
  363580:      	str	d0, [x8, #0x128]
  363584:      	ldr	d0, [x20, #0xa0]
  363588:      	str	d0, [x8, #0x130]
  36358c:      	ldr	d0, [x20, #0xc0]
  363590:      	str	d0, [x8, #0x138]
  363594:      	ldr	d0, [x20, #0xe0]
  363598:      	str	d0, [x8, #0x140]
  36359c:      	ldr	d0, [x20, #0x100]
  3635a0:      	str	d0, [x8, #0x148]
  3635a4:      	ldr	d0, [x20, #0x120]
  3635a8:      	str	d0, [x8, #0x150]
  3635ac:      	ldr	d0, [x20, #0x140]
  3635b0:      	str	d0, [x8, #0x158]
  3635b4:      	cmp	x0, x20
  3635b8:      	b.eq	0x3635cc <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x600>
  3635bc:      	sub	x0, x0, #0x8
  3635c0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3635c4:      	cmp	x0, x20
  3635c8:      	b.ne	0x3635bc <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x5f0>
  3635cc:      	mov	x0, x20
  3635d0:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3635d4:      	ldr	x19, [sp, #0x20]
  3635d8:      	cbz	x19, 0x36360c <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x640>
  3635dc:      	ldr	x0, [sp, #0x28]
  3635e0:      	cmp	x0, x19
  3635e4:      	b.eq	0x363600 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x634>
  3635e8:      	sub	x0, x0, #0x8
  3635ec:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3635f0:      	cmp	x0, x19
  3635f4:      	b.ne	0x3635e8 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x61c>
  3635f8:      	ldr	x0, [sp, #0x20]
  3635fc:      	b	0x363604 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x638>
  363600:      	mov	x0, x19
  363604:      	str	x19, [sp, #0x28]
  363608:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  36360c:      	ldr	x0, [sp, #0x38]
  363610:      	cbz	x0, 0x36361c <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x650>
  363614:      	str	x0, [sp, #0x40]
  363618:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  36361c:      	ldp	x29, x30, [sp, #0x90]
  363620:      	ldp	x20, x19, [sp, #0x80]
  363624:      	ldp	x22, x21, [sp, #0x70]
  363628:      	ldp	x24, x23, [sp, #0x60]
  36362c:      	ldp	x26, x25, [sp, #0x50]
  363630:      	add	sp, sp, #0xa0
  363634:      	ret
  363638:      	b	0x363640 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x674>
  36363c:      	b	0x363690 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x6c4>
  363640:      	mov	x20, x0
  363644:      	cbz	x21, 0x363658 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x68c>
  363648:      	mov	x0, x21
  36364c:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  363650:      	b	0x363658 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x68c>
  363654:      	mov	x20, x0
  363658:      	ldr	x21, [sp, #0x20]
  36365c:      	cbz	x21, 0x36379c <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7d0>
  363660:      	ldr	x0, [sp, #0x28]
  363664:      	mov	x8, x21
  363668:      	cmp	x0, x21
  36366c:      	b.eq	0x363724 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x758>
  363670:      	sub	x0, x0, #0x8
  363674:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363678:      	cmp	x0, x21
  36367c:      	b.ne	0x363670 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x6a4>
  363680:      	b	0x363720 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x754>
  363684:      	mov	x20, x0
  363688:      	b	0x36379c <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7d0>
  36368c:      	b	0x3636c8 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x6fc>
  363690:      	mov	x20, x0
  363694:      	cbnz	x21, 0x3636f0 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x724>
  363698:      	b	0x3636f8 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x72c>
  36369c:      	mov	x20, x0
  3636a0:      	mov	x0, x21
  3636a4:      	bl	0x28fafa0 <__ZN5smash15CvtInputAsFloatEPhPfif+0x192ac>
  3636a8:      	b	0x3636f0 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x724>
  3636ac:      	mov	x20, x0
  3636b0:      	b	0x3636f0 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x724>
  3636b4:      	mov	x20, x0
  3636b8:      	b	0x3636f8 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x72c>
  3636bc:      	mov	x20, x0
  3636c0:      	b	0x36379c <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7d0>
  3636c4:      	b	0x3636c8 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x6fc>
  3636c8:      	mov	x20, x0
  3636cc:      	ldr	x21, [x19]
  3636d0:      	cbz	x21, 0x3637ac <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7e0>
  3636d4:      	b	0x3637c4 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7f8>
  3636d8:      	mov	x20, x0
  3636dc:      	sub	x23, x23, #0x8
  3636e0:      	mov	x0, x23
  3636e4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3636e8:      	cmp	x23, x21
  3636ec:      	b.ne	0x3636dc <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x710>
  3636f0:      	mov	x0, x21
  3636f4:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3636f8:      	ldr	x21, [sp, #0x20]
  3636fc:      	cbz	x21, 0x36379c <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7d0>
  363700:      	ldr	x0, [sp, #0x28]
  363704:      	mov	x8, x21
  363708:      	cmp	x0, x21
  36370c:      	b.eq	0x363724 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x758>
  363710:      	sub	x0, x0, #0x8
  363714:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363718:      	cmp	x0, x21
  36371c:      	b.ne	0x363710 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x744>
  363720:      	ldr	x8, [sp, #0x20]
  363724:      	str	x21, [sp, #0x28]
  363728:      	mov	x0, x8
  36372c:      	b	0x363798 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7cc>
  363730:      	mov	x20, x0
  363734:      	str	x21, [sp, #0x28]
  363738:      	ldr	x22, [sp, #0x20]
  36373c:      	cbz	x22, 0x36379c <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7d0>
  363740:      	mov	x0, x22
  363744:      	cmp	x21, x22
  363748:      	b.eq	0x363764 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x798>
  36374c:      	sub	x21, x21, #0x8
  363750:      	mov	x0, x21
  363754:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363758:      	cmp	x21, x22
  36375c:      	b.ne	0x36374c <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x780>
  363760:      	ldr	x0, [sp, #0x20]
  363764:      	str	x22, [sp, #0x28]
  363768:      	b	0x363798 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7cc>
  36376c:      	mov	x20, x0
  363770:      	ldr	x22, [sp, #0x20]
  363774:      	cbz	x22, 0x36379c <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7d0>
  363778:      	cmp	x21, x22
  36377c:      	b.eq	0x363794 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7c8>
  363780:      	sub	x21, x21, #0x8
  363784:      	mov	x0, x21
  363788:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  36378c:      	cmp	x21, x22
  363790:      	b.ne	0x363780 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7b4>
  363794:      	mov	x0, x22
  363798:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  36379c:      	ldr	x0, [sp, #0x38]
  3637a0:      	cbnz	x0, 0x3637b4 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7e8>
  3637a4:      	ldr	x21, [x19]
  3637a8:      	cbnz	x21, 0x3637c4 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7f8>
  3637ac:      	mov	x0, x20
  3637b0:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  3637b4:      	str	x0, [sp, #0x40]
  3637b8:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3637bc:      	ldr	x21, [x19]
  3637c0:      	cbz	x21, 0x3637ac <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7e0>
  3637c4:      	ldr	x0, [x19, #0x8]
  3637c8:      	mov	x8, x21
  3637cc:      	cmp	x0, x21
  3637d0:      	b.eq	0x3637e8 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x81c>
  3637d4:      	sub	x0, x0, #0x8
  3637d8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3637dc:      	cmp	x0, x21
  3637e0:      	b.ne	0x3637d4 <__ZN3BEF8MakeupV214cvtEye106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x808>
  3637e4:      	ldr	x8, [x19]
  3637e8:      	str	x21, [x19, #0x8]
  3637ec:      	mov	x0, x8
  3637f0:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3637f4:      	mov	x0, x20
  3637f8:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

00000000003637fc <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE>:
  3637fc:      	sub	sp, sp, #0x90
  363800:      	stp	x24, x23, [sp, #0x50]
  363804:      	stp	x22, x21, [sp, #0x60]
  363808:      	stp	x20, x19, [sp, #0x70]
  36380c:      	stp	x29, x30, [sp, #0x80]
  363810:      	add	x29, sp, #0x80
  363814:      	mov	x20, x0
  363818:      	mov	x19, x8
  36381c:      	stp	xzr, xzr, [x8]
  363820:      	str	xzr, [x8, #0x10]
  363824:      	mov	x0, x8
  363828:      	mov	w1, #0x1a               ; =26
  36382c:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  363830:      	movi.2s	v0, #0x3
  363834:      	str	d0, [sp, #0x20]
  363838:      	mov	w0, #0x8                ; =8
  36383c:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  363840:      	str	x0, [sp, #0x38]
  363844:      	ldr	x8, [sp, #0x20]
  363848:      	str	x8, [x0], #0x8
  36384c:      	stp	x0, x0, [sp, #0x40]
  363850:      	mov	w0, #0x18               ; =24
  363854:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  363858:      	mov	x22, x0
  36385c:      	stp	x0, x0, [sp, #0x20]
  363860:      	add	x23, x0, #0x18
  363864:      	str	x23, [sp, #0x30]
  363868:      	mov	x21, x0
  36386c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  363870:      	add	x21, x22, #0x8
  363874:      	mov	x0, x21
  363878:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  36387c:      	add	x21, x22, #0x10
  363880:      	mov	x0, x21
  363884:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  363888:      	str	x23, [sp, #0x28]
  36388c:      	ldr	x8, [x20]
  363890:      	ldr	x9, [sp, #0x20]
  363894:      	ldr	d0, [x8, #0x108]
  363898:      	str	d0, [x9]
  36389c:      	ldr	d0, [x8, #0x110]
  3638a0:      	str	d0, [x9, #0x8]
  3638a4:      	ldr	d0, [x8, #0x118]
  3638a8:      	str	d0, [x9, #0x10]
  3638ac:      	add	x8, sp, #0x8
  3638b0:      	add	x0, sp, #0x20
  3638b4:      	add	x1, sp, #0x38
  3638b8:      	mov	w2, #0x1                ; =1
  3638bc:      	mov	w3, #0x0                ; =0
  3638c0:      	bl	0x3807a8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb>
  3638c4:      	ldp	x21, x0, [sp, #0x8]
  3638c8:      	ldr	x8, [x19]
  3638cc:      	ldr	d0, [x21]
  3638d0:      	str	d0, [x8]
  3638d4:      	ldr	d0, [x21, #0x10]
  3638d8:      	str	d0, [x8, #0x8]
  3638dc:      	ldr	d0, [x21, #0x20]
  3638e0:      	str	d0, [x8, #0x10]
  3638e4:      	ldr	d0, [x21, #0x30]
  3638e8:      	str	d0, [x8, #0x18]
  3638ec:      	cmp	x0, x21
  3638f0:      	b.eq	0x363904 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x108>
  3638f4:      	sub	x0, x0, #0x8
  3638f8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3638fc:      	cmp	x0, x21
  363900:      	b.ne	0x3638f4 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0xf8>
  363904:      	ldp	x22, x0, [sp, #0x20]
  363908:      	mov	x8, x22
  36390c:      	cmp	x0, x22
  363910:      	b.eq	0x363928 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x12c>
  363914:      	sub	x0, x0, #0x8
  363918:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  36391c:      	cmp	x0, x22
  363920:      	b.ne	0x363914 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x118>
  363924:      	ldr	x8, [sp, #0x20]
  363928:      	str	x22, [sp, #0x28]
  36392c:      	sub	x10, x22, x8
  363930:      	asr	x9, x10, #3
  363934:      	cmp	x9, #0x2
  363938:      	b.hi	0x363950 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x154>
  36393c:      	mov	w8, #0x3                ; =3
  363940:      	sub	x1, x8, x9
  363944:      	add	x0, sp, #0x20
  363948:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  36394c:      	b	0x36397c <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x180>
  363950:      	cmp	x10, #0x18
  363954:      	b.eq	0x36397c <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x180>
  363958:      	add	x23, x8, #0x18
  36395c:      	cmp	x22, x23
  363960:      	b.eq	0x363978 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x17c>
  363964:      	sub	x22, x22, #0x8
  363968:      	mov	x0, x22
  36396c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363970:      	cmp	x22, x23
  363974:      	b.ne	0x363964 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x168>
  363978:      	str	x23, [sp, #0x28]
  36397c:      	ldr	x8, [x20]
  363980:      	ldr	x9, [sp, #0x20]
  363984:      	ldr	d0, [x8, #0x118]
  363988:      	str	d0, [x9]
  36398c:      	ldr	d0, [x8, #0x120]
  363990:      	str	d0, [x9, #0x8]
  363994:      	ldr	d0, [x8, #0x128]
  363998:      	str	d0, [x9, #0x10]
  36399c:      	add	x8, sp, #0x8
  3639a0:      	add	x0, sp, #0x20
  3639a4:      	add	x1, sp, #0x38
  3639a8:      	mov	w2, #0x1                ; =1
  3639ac:      	mov	w3, #0x0                ; =0
  3639b0:      	bl	0x3807a8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb>
  3639b4:      	cbz	x21, 0x3639c0 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x1c4>
  3639b8:      	mov	x0, x21
  3639bc:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3639c0:      	ldp	x21, x0, [sp, #0x8]
  3639c4:      	ldr	x8, [x19]
  3639c8:      	ldr	d0, [x21, #0x10]
  3639cc:      	str	d0, [x8, #0x20]
  3639d0:      	ldr	d0, [x21, #0x20]
  3639d4:      	str	d0, [x8, #0x28]
  3639d8:      	ldr	d0, [x21, #0x30]
  3639dc:      	str	d0, [x8, #0x30]
  3639e0:      	cmp	x0, x21
  3639e4:      	b.eq	0x3639f8 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x1fc>
  3639e8:      	sub	x0, x0, #0x8
  3639ec:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3639f0:      	cmp	x0, x21
  3639f4:      	b.ne	0x3639e8 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x1ec>
  3639f8:      	ldp	x22, x0, [sp, #0x20]
  3639fc:      	mov	x8, x22
  363a00:      	cmp	x0, x22
  363a04:      	b.eq	0x363a1c <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x220>
  363a08:      	sub	x0, x0, #0x8
  363a0c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363a10:      	cmp	x0, x22
  363a14:      	b.ne	0x363a08 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x20c>
  363a18:      	ldr	x8, [sp, #0x20]
  363a1c:      	str	x22, [sp, #0x28]
  363a20:      	sub	x10, x22, x8
  363a24:      	asr	x9, x10, #3
  363a28:      	cmp	x9, #0x2
  363a2c:      	b.hi	0x363a44 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x248>
  363a30:      	mov	w8, #0x3                ; =3
  363a34:      	sub	x1, x8, x9
  363a38:      	add	x0, sp, #0x20
  363a3c:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  363a40:      	b	0x363a70 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x274>
  363a44:      	cmp	x10, #0x18
  363a48:      	b.eq	0x363a70 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x274>
  363a4c:      	add	x23, x8, #0x18
  363a50:      	cmp	x22, x23
  363a54:      	b.eq	0x363a6c <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x270>
  363a58:      	sub	x22, x22, #0x8
  363a5c:      	mov	x0, x22
  363a60:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363a64:      	cmp	x22, x23
  363a68:      	b.ne	0x363a58 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x25c>
  363a6c:      	str	x23, [sp, #0x28]
  363a70:      	ldr	x8, [x20]
  363a74:      	ldr	x9, [sp, #0x20]
  363a78:      	ldr	d0, [x8, #0x108]
  363a7c:      	str	d0, [x9]
  363a80:      	ldr	d0, [x8, #0x200]
  363a84:      	str	d0, [x9, #0x8]
  363a88:      	ldr	d0, [x8, #0x208]
  363a8c:      	str	d0, [x9, #0x10]
  363a90:      	add	x8, sp, #0x8
  363a94:      	add	x0, sp, #0x20
  363a98:      	add	x1, sp, #0x38
  363a9c:      	mov	w2, #0x1                ; =1
  363aa0:      	mov	w3, #0x0                ; =0
  363aa4:      	bl	0x3807a8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb>
  363aa8:      	cbz	x21, 0x363ab4 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x2b8>
  363aac:      	mov	x0, x21
  363ab0:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  363ab4:      	ldp	x21, x0, [sp, #0x8]
  363ab8:      	ldr	x8, [x19]
  363abc:      	ldr	d0, [x21, #0x10]
  363ac0:      	str	d0, [x8, #0x38]
  363ac4:      	ldr	d0, [x21, #0x20]
  363ac8:      	str	d0, [x8, #0x40]
  363acc:      	ldr	d0, [x21, #0x30]
  363ad0:      	str	d0, [x8, #0x48]
  363ad4:      	cmp	x0, x21
  363ad8:      	b.eq	0x363aec <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x2f0>
  363adc:      	sub	x0, x0, #0x8
  363ae0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363ae4:      	cmp	x0, x21
  363ae8:      	b.ne	0x363adc <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x2e0>
  363aec:      	ldp	x22, x0, [sp, #0x20]
  363af0:      	mov	x8, x22
  363af4:      	cmp	x0, x22
  363af8:      	b.eq	0x363b10 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x314>
  363afc:      	sub	x0, x0, #0x8
  363b00:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363b04:      	cmp	x0, x22
  363b08:      	b.ne	0x363afc <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x300>
  363b0c:      	ldr	x8, [sp, #0x20]
  363b10:      	str	x22, [sp, #0x28]
  363b14:      	sub	x10, x22, x8
  363b18:      	asr	x9, x10, #3
  363b1c:      	cmp	x9, #0x2
  363b20:      	b.hi	0x363b38 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x33c>
  363b24:      	mov	w8, #0x3                ; =3
  363b28:      	sub	x1, x8, x9
  363b2c:      	add	x0, sp, #0x20
  363b30:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  363b34:      	b	0x363b64 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x368>
  363b38:      	cmp	x10, #0x18
  363b3c:      	b.eq	0x363b64 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x368>
  363b40:      	add	x23, x8, #0x18
  363b44:      	cmp	x22, x23
  363b48:      	b.eq	0x363b60 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x364>
  363b4c:      	sub	x22, x22, #0x8
  363b50:      	mov	x0, x22
  363b54:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363b58:      	cmp	x22, x23
  363b5c:      	b.ne	0x363b4c <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x350>
  363b60:      	str	x23, [sp, #0x28]
  363b64:      	ldr	x8, [x20]
  363b68:      	ldr	x9, [sp, #0x20]
  363b6c:      	ldr	d0, [x8, #0x208]
  363b70:      	str	d0, [x9]
  363b74:      	ldr	d0, [x8, #0x210]
  363b78:      	str	d0, [x9, #0x8]
  363b7c:      	ldr	d0, [x8, #0x218]
  363b80:      	str	d0, [x9, #0x10]
  363b84:      	add	x8, sp, #0x8
  363b88:      	add	x0, sp, #0x20
  363b8c:      	add	x1, sp, #0x38
  363b90:      	mov	w2, #0x1                ; =1
  363b94:      	mov	w3, #0x0                ; =0
  363b98:      	bl	0x3807a8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb>
  363b9c:      	cbz	x21, 0x363ba8 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x3ac>
  363ba0:      	mov	x0, x21
  363ba4:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  363ba8:      	ldp	x21, x0, [sp, #0x8]
  363bac:      	ldr	x8, [x19]
  363bb0:      	ldr	d0, [x21, #0x10]
  363bb4:      	str	d0, [x8, #0x50]
  363bb8:      	ldr	d0, [x21, #0x20]
  363bbc:      	str	d0, [x8, #0x58]
  363bc0:      	ldr	d0, [x21, #0x30]
  363bc4:      	str	d0, [x8, #0x60]
  363bc8:      	cmp	x0, x21
  363bcc:      	b.eq	0x363be0 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x3e4>
  363bd0:      	sub	x0, x0, #0x8
  363bd4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363bd8:      	cmp	x0, x21
  363bdc:      	b.ne	0x363bd0 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x3d4>
  363be0:      	mov	x0, x21
  363be4:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  363be8:      	ldr	x21, [sp, #0x20]
  363bec:      	cbz	x21, 0x363c20 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x424>
  363bf0:      	ldr	x0, [sp, #0x28]
  363bf4:      	cmp	x0, x21
  363bf8:      	b.eq	0x363c14 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x418>
  363bfc:      	sub	x0, x0, #0x8
  363c00:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363c04:      	cmp	x0, x21
  363c08:      	b.ne	0x363bfc <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x400>
  363c0c:      	ldr	x0, [sp, #0x20]
  363c10:      	b	0x363c18 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x41c>
  363c14:      	mov	x0, x21
  363c18:      	str	x21, [sp, #0x28]
  363c1c:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  363c20:      	ldr	x0, [sp, #0x38]
  363c24:      	cbz	x0, 0x363c30 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x434>
  363c28:      	str	x0, [sp, #0x40]
  363c2c:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  363c30:      	movi.2s	v0, #0x3
  363c34:      	str	d0, [sp, #0x20]
  363c38:      	mov	w0, #0x8                ; =8
  363c3c:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  363c40:      	str	x0, [sp, #0x38]
  363c44:      	ldr	x8, [sp, #0x20]
  363c48:      	str	x8, [x0], #0x8
  363c4c:      	stp	x0, x0, [sp, #0x40]
  363c50:      	mov	w0, #0x18               ; =24
  363c54:      	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  363c58:      	mov	x22, x0
  363c5c:      	stp	x0, x0, [sp, #0x20]
  363c60:      	add	x23, x0, #0x18
  363c64:      	str	x23, [sp, #0x30]
  363c68:      	mov	x21, x0
  363c6c:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  363c70:      	add	x21, x22, #0x8
  363c74:      	mov	x0, x21
  363c78:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  363c7c:      	add	x21, x22, #0x10
  363c80:      	mov	x0, x21
  363c84:      	bl	0x8e2c98 <__ZN3BRC4Vec2C1Ev>
  363c88:      	str	x23, [sp, #0x28]
  363c8c:      	ldr	x8, [x20]
  363c90:      	ldr	x9, [sp, #0x20]
  363c94:      	ldr	d0, [x8, #0x150]
  363c98:      	str	d0, [x9]
  363c9c:      	ldr	d0, [x8, #0x148]
  363ca0:      	str	d0, [x9, #0x8]
  363ca4:      	ldr	d0, [x8, #0x140]
  363ca8:      	str	d0, [x9, #0x10]
  363cac:      	add	x8, sp, #0x8
  363cb0:      	add	x0, sp, #0x20
  363cb4:      	add	x1, sp, #0x38
  363cb8:      	mov	w2, #0x1                ; =1
  363cbc:      	mov	w3, #0x0                ; =0
  363cc0:      	bl	0x3807a8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb>
  363cc4:      	ldp	x21, x0, [sp, #0x8]
  363cc8:      	ldr	x8, [x19]
  363ccc:      	ldr	d0, [x21]
  363cd0:      	str	d0, [x8, #0x68]
  363cd4:      	ldr	d0, [x21, #0x10]
  363cd8:      	str	d0, [x8, #0x70]
  363cdc:      	ldr	d0, [x21, #0x20]
  363ce0:      	str	d0, [x8, #0x78]
  363ce4:      	ldr	d0, [x21, #0x30]
  363ce8:      	str	d0, [x8, #0x80]
  363cec:      	cmp	x0, x21
  363cf0:      	b.eq	0x363d04 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x508>
  363cf4:      	sub	x0, x0, #0x8
  363cf8:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363cfc:      	cmp	x0, x21
  363d00:      	b.ne	0x363cf4 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x4f8>
  363d04:      	ldp	x22, x0, [sp, #0x20]
  363d08:      	mov	x8, x22
  363d0c:      	cmp	x0, x22
  363d10:      	b.eq	0x363d28 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x52c>
  363d14:      	sub	x0, x0, #0x8
  363d18:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363d1c:      	cmp	x0, x22
  363d20:      	b.ne	0x363d14 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x518>
  363d24:      	ldr	x8, [sp, #0x20]
  363d28:      	str	x22, [sp, #0x28]
  363d2c:      	sub	x10, x22, x8
  363d30:      	asr	x9, x10, #3
  363d34:      	cmp	x9, #0x2
  363d38:      	b.hi	0x363d50 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x554>
  363d3c:      	mov	w8, #0x3                ; =3
  363d40:      	sub	x1, x8, x9
  363d44:      	add	x0, sp, #0x20
  363d48:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  363d4c:      	b	0x363d7c <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x580>
  363d50:      	cmp	x10, #0x18
  363d54:      	b.eq	0x363d7c <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x580>
  363d58:      	add	x23, x8, #0x18
  363d5c:      	cmp	x22, x23
  363d60:      	b.eq	0x363d78 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x57c>
  363d64:      	sub	x22, x22, #0x8
  363d68:      	mov	x0, x22
  363d6c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363d70:      	cmp	x22, x23
  363d74:      	b.ne	0x363d64 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x568>
  363d78:      	str	x23, [sp, #0x28]
  363d7c:      	ldr	x8, [x20]
  363d80:      	ldr	x9, [sp, #0x20]
  363d84:      	ldr	d0, [x8, #0x140]
  363d88:      	str	d0, [x9]
  363d8c:      	ldr	d0, [x8, #0x138]
  363d90:      	str	d0, [x9, #0x8]
  363d94:      	ldr	d0, [x8, #0x130]
  363d98:      	str	d0, [x9, #0x10]
  363d9c:      	add	x8, sp, #0x8
  363da0:      	add	x0, sp, #0x20
  363da4:      	add	x1, sp, #0x38
  363da8:      	mov	w2, #0x1                ; =1
  363dac:      	mov	w3, #0x0                ; =0
  363db0:      	bl	0x3807a8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb>
  363db4:      	cbz	x21, 0x363dc0 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x5c4>
  363db8:      	mov	x0, x21
  363dbc:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  363dc0:      	ldp	x21, x0, [sp, #0x8]
  363dc4:      	ldr	x8, [x19]
  363dc8:      	ldr	d0, [x21, #0x10]
  363dcc:      	str	d0, [x8, #0x88]
  363dd0:      	ldr	d0, [x21, #0x20]
  363dd4:      	str	d0, [x8, #0x90]
  363dd8:      	ldr	d0, [x21, #0x30]
  363ddc:      	str	d0, [x8, #0x98]
  363de0:      	cmp	x0, x21
  363de4:      	b.eq	0x363df8 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x5fc>
  363de8:      	sub	x0, x0, #0x8
  363dec:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363df0:      	cmp	x0, x21
  363df4:      	b.ne	0x363de8 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x5ec>
  363df8:      	ldp	x22, x0, [sp, #0x20]
  363dfc:      	mov	x8, x22
  363e00:      	cmp	x0, x22
  363e04:      	b.eq	0x363e1c <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x620>
  363e08:      	sub	x0, x0, #0x8
  363e0c:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363e10:      	cmp	x0, x22
  363e14:      	b.ne	0x363e08 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x60c>
  363e18:      	ldr	x8, [sp, #0x20]
  363e1c:      	str	x22, [sp, #0x28]
  363e20:      	sub	x10, x22, x8
  363e24:      	asr	x9, x10, #3
  363e28:      	cmp	x9, #0x2
  363e2c:      	b.hi	0x363e44 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x648>
  363e30:      	mov	w8, #0x3                ; =3
  363e34:      	sub	x1, x8, x9
  363e38:      	add	x0, sp, #0x20
  363e3c:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  363e40:      	b	0x363e70 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x674>
  363e44:      	cmp	x10, #0x18
  363e48:      	b.eq	0x363e70 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x674>
  363e4c:      	add	x23, x8, #0x18
  363e50:      	cmp	x22, x23
  363e54:      	b.eq	0x363e6c <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x670>
  363e58:      	sub	x22, x22, #0x8
  363e5c:      	mov	x0, x22
  363e60:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363e64:      	cmp	x22, x23
  363e68:      	b.ne	0x363e58 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x65c>
  363e6c:      	str	x23, [sp, #0x28]
  363e70:      	ldr	x8, [x20]
  363e74:      	ldr	x9, [sp, #0x20]
  363e78:      	ldr	d0, [x8, #0x150]
  363e7c:      	str	d0, [x9]
  363e80:      	ldr	d0, [x8, #0x238]
  363e84:      	str	d0, [x9, #0x8]
  363e88:      	ldr	d0, [x8, #0x230]
  363e8c:      	str	d0, [x9, #0x10]
  363e90:      	add	x8, sp, #0x8
  363e94:      	add	x0, sp, #0x20
  363e98:      	add	x1, sp, #0x38
  363e9c:      	mov	w2, #0x1                ; =1
  363ea0:      	mov	w3, #0x0                ; =0
  363ea4:      	bl	0x3807a8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb>
  363ea8:      	cbz	x21, 0x363eb4 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x6b8>
  363eac:      	mov	x0, x21
  363eb0:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  363eb4:      	ldp	x21, x0, [sp, #0x8]
  363eb8:      	ldr	x8, [x19]
  363ebc:      	ldr	d0, [x21, #0x10]
  363ec0:      	str	d0, [x8, #0xa0]
  363ec4:      	ldr	d0, [x21, #0x20]
  363ec8:      	str	d0, [x8, #0xa8]
  363ecc:      	ldr	d0, [x21, #0x30]
  363ed0:      	str	d0, [x8, #0xb0]
  363ed4:      	cmp	x0, x21
  363ed8:      	b.eq	0x363eec <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x6f0>
  363edc:      	sub	x0, x0, #0x8
  363ee0:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363ee4:      	cmp	x0, x21
  363ee8:      	b.ne	0x363edc <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x6e0>
  363eec:      	ldp	x22, x0, [sp, #0x20]
  363ef0:      	mov	x8, x22
  363ef4:      	cmp	x0, x22
  363ef8:      	b.eq	0x363f10 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x714>
  363efc:      	sub	x0, x0, #0x8
  363f00:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363f04:      	cmp	x0, x22
  363f08:      	b.ne	0x363efc <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x700>
  363f0c:      	ldr	x8, [sp, #0x20]
  363f10:      	str	x22, [sp, #0x28]
  363f14:      	sub	x10, x22, x8
  363f18:      	asr	x9, x10, #3
  363f1c:      	cmp	x9, #0x2
  363f20:      	b.hi	0x363f38 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x73c>
  363f24:      	mov	w8, #0x3                ; =3
  363f28:      	sub	x1, x8, x9
  363f2c:      	add	x0, sp, #0x20
  363f30:      	bl	0x28d294 <__ZN3BEF15MouthPickPolicy23registerPartsPickPolicyEv+0x4ec>
  363f34:      	b	0x363f64 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x768>
  363f38:      	cmp	x10, #0x18
  363f3c:      	b.eq	0x363f64 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x768>
  363f40:      	add	x23, x8, #0x18
  363f44:      	cmp	x22, x23
  363f48:      	b.eq	0x363f60 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x764>
  363f4c:      	sub	x22, x22, #0x8
  363f50:      	mov	x0, x22
  363f54:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363f58:      	cmp	x22, x23
  363f5c:      	b.ne	0x363f4c <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x750>
  363f60:      	str	x23, [sp, #0x28]
  363f64:      	ldr	x8, [x20]
  363f68:      	ldr	x9, [sp, #0x20]
  363f6c:      	ldr	d0, [x8, #0x230]
  363f70:      	str	d0, [x9]
  363f74:      	ldr	d0, [x8, #0x228]
  363f78:      	str	d0, [x9, #0x8]
  363f7c:      	ldr	d0, [x8, #0x220]
  363f80:      	str	d0, [x9, #0x10]
  363f84:      	add	x8, sp, #0x8
  363f88:      	add	x0, sp, #0x20
  363f8c:      	add	x1, sp, #0x38
  363f90:      	mov	w2, #0x1                ; =1
  363f94:      	mov	w3, #0x0                ; =0
  363f98:      	bl	0x3807a8 <__ZN3BEF8MakeupV221catmullromInterpolateERNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEERKNS2_IiNS5_IiEEEENS0_14CatmullRomTypeEb>
  363f9c:      	cbz	x21, 0x363fa8 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7ac>
  363fa0:      	mov	x0, x21
  363fa4:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  363fa8:      	ldp	x20, x0, [sp, #0x8]
  363fac:      	ldr	x8, [x19]
  363fb0:      	ldr	d0, [x20, #0x10]
  363fb4:      	str	d0, [x8, #0xb8]
  363fb8:      	ldr	d0, [x20, #0x20]
  363fbc:      	str	d0, [x8, #0xc0]
  363fc0:      	ldr	d0, [x20, #0x30]
  363fc4:      	str	d0, [x8, #0xc8]
  363fc8:      	cmp	x0, x20
  363fcc:      	b.eq	0x363fe0 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7e4>
  363fd0:      	sub	x0, x0, #0x8
  363fd4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  363fd8:      	cmp	x0, x20
  363fdc:      	b.ne	0x363fd0 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x7d4>
  363fe0:      	mov	x0, x20
  363fe4:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  363fe8:      	ldr	x19, [sp, #0x20]
  363fec:      	cbz	x19, 0x364020 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x824>
  363ff0:      	ldr	x0, [sp, #0x28]
  363ff4:      	cmp	x0, x19
  363ff8:      	b.eq	0x364014 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x818>
  363ffc:      	sub	x0, x0, #0x8
  364000:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  364004:      	cmp	x0, x19
  364008:      	b.ne	0x363ffc <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x800>
  36400c:      	ldr	x0, [sp, #0x20]
  364010:      	b	0x364018 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x81c>
  364014:      	mov	x0, x19
  364018:      	str	x19, [sp, #0x28]
  36401c:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  364020:      	ldr	x0, [sp, #0x38]
  364024:      	cbz	x0, 0x364030 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x834>
  364028:      	str	x0, [sp, #0x40]
  36402c:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  364030:      	ldp	x29, x30, [sp, #0x80]
  364034:      	ldp	x20, x19, [sp, #0x70]
  364038:      	ldp	x22, x21, [sp, #0x60]
  36403c:      	ldp	x24, x23, [sp, #0x50]
  364040:      	add	sp, sp, #0x90
  364044:      	ret
  364048:      	b	0x364098 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x89c>
  36404c:      	b	0x364098 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x89c>
  364050:      	b	0x364098 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x89c>
  364054:      	mov	x20, x0
  364058:      	b	0x3640a8 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x8ac>
  36405c:      	mov	x20, x0
  364060:      	b	0x364188 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x98c>
  364064:      	b	0x364088 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x88c>
  364068:      	b	0x3640d4 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x8d8>
  36406c:      	b	0x3640d4 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x8d8>
  364070:      	b	0x3640d4 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x8d8>
  364074:      	mov	x20, x0
  364078:      	b	0x3640e4 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x8e8>
  36407c:      	mov	x20, x0
  364080:      	b	0x364188 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x98c>
  364084:      	b	0x364088 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x88c>
  364088:      	mov	x20, x0
  36408c:      	ldr	x21, [x19]
  364090:      	cbz	x21, 0x364198 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x99c>
  364094:      	b	0x3641b0 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x9b4>
  364098:      	mov	x20, x0
  36409c:      	cbz	x21, 0x3640a8 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x8ac>
  3640a0:      	mov	x0, x21
  3640a4:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3640a8:      	ldr	x21, [sp, #0x20]
  3640ac:      	cbz	x21, 0x364188 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x98c>
  3640b0:      	ldr	x0, [sp, #0x28]
  3640b4:      	mov	x8, x21
  3640b8:      	cmp	x0, x21
  3640bc:      	b.eq	0x364110 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x914>
  3640c0:      	sub	x0, x0, #0x8
  3640c4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3640c8:      	cmp	x0, x21
  3640cc:      	b.ne	0x3640c0 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x8c4>
  3640d0:      	b	0x36410c <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x910>
  3640d4:      	mov	x20, x0
  3640d8:      	cbz	x21, 0x3640e4 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x8e8>
  3640dc:      	mov	x0, x21
  3640e0:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3640e4:      	ldr	x21, [sp, #0x20]
  3640e8:      	cbz	x21, 0x364188 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x98c>
  3640ec:      	ldr	x0, [sp, #0x28]
  3640f0:      	mov	x8, x21
  3640f4:      	cmp	x0, x21
  3640f8:      	b.eq	0x364110 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x914>
  3640fc:      	sub	x0, x0, #0x8
  364100:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  364104:      	cmp	x0, x21
  364108:      	b.ne	0x3640fc <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x900>
  36410c:      	ldr	x8, [sp, #0x20]
  364110:      	str	x21, [sp, #0x28]
  364114:      	mov	x0, x8
  364118:      	b	0x364184 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x988>
  36411c:      	mov	x20, x0
  364120:      	str	x21, [sp, #0x28]
  364124:      	ldr	x22, [sp, #0x20]
  364128:      	cbz	x22, 0x364188 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x98c>
  36412c:      	mov	x0, x22
  364130:      	cmp	x21, x22
  364134:      	b.eq	0x364150 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x954>
  364138:      	sub	x21, x21, #0x8
  36413c:      	mov	x0, x21
  364140:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  364144:      	cmp	x21, x22
  364148:      	b.ne	0x364138 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x93c>
  36414c:      	ldr	x0, [sp, #0x20]
  364150:      	str	x22, [sp, #0x28]
  364154:      	b	0x364184 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x988>
  364158:      	mov	x20, x0
  36415c:      	ldr	x22, [sp, #0x20]
  364160:      	cbz	x22, 0x364188 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x98c>
  364164:      	cmp	x21, x22
  364168:      	b.eq	0x364180 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x984>
  36416c:      	sub	x21, x21, #0x8
  364170:      	mov	x0, x21
  364174:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  364178:      	cmp	x21, x22
  36417c:      	b.ne	0x36416c <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x970>
  364180:      	mov	x0, x22
  364184:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  364188:      	ldr	x0, [sp, #0x38]
  36418c:      	cbnz	x0, 0x3641a0 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x9a4>
  364190:      	ldr	x21, [x19]
  364194:      	cbnz	x21, 0x3641b0 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x9b4>
  364198:      	mov	x0, x20
  36419c:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
  3641a0:      	str	x0, [sp, #0x40]
  3641a4:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3641a8:      	ldr	x21, [x19]
  3641ac:      	cbz	x21, 0x364198 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x99c>
  3641b0:      	ldr	x0, [x19, #0x8]
  3641b4:      	mov	x8, x21
  3641b8:      	cmp	x0, x21
  3641bc:      	b.eq	0x3641d4 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x9d8>
  3641c0:      	sub	x0, x0, #0x8
  3641c4:      	bl	0x8e2d34 <__ZN3BRC4Vec2D1Ev>
  3641c8:      	cmp	x0, x21
  3641cc:      	b.ne	0x3641c0 <__ZN3BEF8MakeupV215cvtBrow106to240ERKNSt3__16vectorIN3BRC4Vec2ENS1_9allocatorIS4_EEEE+0x9c4>
  3641d0:      	ldr	x8, [x19]
  3641d4:      	str	x21, [x19, #0x8]
  3641d8:      	mov	x0, x8
  3641dc:      	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  3641e0:      	mov	x0, x20
  3641e4:      	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
