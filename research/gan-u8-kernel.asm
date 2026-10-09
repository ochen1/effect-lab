
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

00000000008e5ee0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE>:
  937350: aa1e03e2     	mov	x2, x30
  937354: 94000c88     	bl	0x93a574 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x54694>
  937358: aa0203fe     	mov	x30, x2
  93735c: 34000729     	cbz	w9, 0x937440 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x51560>
  937360: aa1e03e2     	mov	x2, x30
  937364: 94000c57     	bl	0x93a4c0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x545e0>
  937368: aa0203fe     	mov	x30, x2
  93736c: eb0b023f     	cmp	x17, x11
  937370: 540005cc     	b.gt	0x937428 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x51548>
  937374: 2d7f1424     	ldp	s4, s5, [x1, #-0x8]
  937378: 1f000484     	fmadd	s4, s4, s0, s1
  93737c: 1e274084     	frintx	s4, s4
  937380: 9e380082     	fcvtzs	x2, s4
  937384: 1f0004a4     	fmadd	s4, s5, s0, s1
  937388: 1e274084     	frintx	s4, s4
  93738c: 9e380083     	fcvtzs	x3, s4
  937390: 1e270044     	fmov	s4, w2
  937394: 4e0c1c64     	mov.s	v4[1], w3
  937398: 0ea26484     	smax.2s	v4, v4, v2
  93739c: 0ea36c84     	smin.2s	v4, v4, v3
  9373a0: 8b110082     	add	x2, x4, x17
  9373a4: 0e0c3c83     	mov.s	w3, v4[1]
  9373a8: 39000443     	strb	w3, [x2, #0x1]
  9373ac: 1e260083     	fmov	w3, s4
  9373b0: 39000043     	strb	w3, [x2]
  9373b4: 2cc21424     	ldp	s4, s5, [x1], #0x10
  9373b8: 1f000484     	fmadd	s4, s4, s0, s1
  9373bc: 1e274084     	frintx	s4, s4
  9373c0: 9e380083     	fcvtzs	x3, s4
  9373c4: 1f0004a4     	fmadd	s4, s5, s0, s1
  9373c8: 1e274084     	frintx	s4, s4
  9373cc: 9e380086     	fcvtzs	x6, s4
  9373d0: 1e270064     	fmov	s4, w3
  9373d4: 4e0c1cc4     	mov.s	v4[1], w6
  9373d8: 0ea26484     	smax.2s	v4, v4, v2
  9373dc: 0ea36c84     	smin.2s	v4, v4, v3
  9373e0: 0e0c3c83     	mov.s	w3, v4[1]
  9373e4: 1e260086     	fmov	w6, s4
  9373e8: 91001231     	add	x17, x17, #0x4
  9373ec: 39000c43     	strb	w3, [x2, #0x3]
  9373f0: 39000846     	strb	w6, [x2, #0x2]
  9373f4: 91001210     	add	x16, x16, #0x4
  9373f8: 910041ef     	add	x15, x15, #0x10
  9373fc: 110011ce     	add	w14, w14, #0x4
  937400: 17ffffdb     	b	0x93736c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x5148c>
  937404: bc4045e4     	ldr	s4, [x15], #0x4
  937408: 1f000484     	fmadd	s4, s4, s0, s1
  93740c: 1e274084     	frintx	s4, s4
  937410: 9e380091     	fcvtzs	x17, s4
  937414: 0ab17e31     	bic	w17, w17, w17, asr #31
  937418: 7103fe3f     	cmp	w17, #0xff
  93741c: 1a8db231     	csel	w17, w17, w13, lt
  937420: 38001611     	strb	w17, [x16], #0x1
  937424: 110005ce     	add	w14, w14, #0x1
  937428: 6b0e011f     	cmp	w8, w14
  93742c: 54fffecc     	b.gt	0x937404 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x51524>
  937430: 8b050084     	add	x4, x4, x5
  937434: 8b0a018c     	add	x12, x12, x10
  937438: 8b0a0000     	add	x0, x0, x10
  93743c: 35fff929     	cbnz	w9, 0x937360 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x51480>
  937440: d65f03c0     	ret
  937444: aa1e03e2     	mov	x2, x30
  937448: 94000c95     	bl	0x93a69c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x547bc>
  93744c: aa0203fe     	mov	x30, x2
  937450: 34000729     	cbz	w9, 0x937534 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x51654>
  937454: aa1e03e2     	mov	x2, x30
  937458: 94000c1a     	bl	0x93a4c0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x545e0>
  93745c: aa0203fe     	mov	x30, x2
  937460: eb0b023f     	cmp	x17, x11
  937464: 540005cc     	b.gt	0x93751c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x5163c>
  937468: 6d7f1424     	ldp	d4, d5, [x1, #-0x10]
  93746c: 1f400484     	fmadd	d4, d4, d0, d1
  937470: 1e674084     	frintx	d4, d4
  937474: 9e780082     	fcvtzs	x2, d4
  937478: 1f4004a4     	fmadd	d4, d5, d0, d1
  93747c: 1e674084     	frintx	d4, d4
  937480: 9e780083     	fcvtzs	x3, d4
  937484: 1e270044     	fmov	s4, w2
  937488: 4e0c1c64     	mov.s	v4[1], w3
  93748c: 0ea26484     	smax.2s	v4, v4, v2
  937490: 0ea36c84     	smin.2s	v4, v4, v3
  937494: 8b110082     	add	x2, x4, x17
  937498: 0e0c3c83     	mov.s	w3, v4[1]
  93749c: 39000443     	strb	w3, [x2, #0x1]
  9374a0: 1e260083     	fmov	w3, s4
  9374a4: 39000043     	strb	w3, [x2]
  9374a8: 6cc21424     	ldp	d4, d5, [x1], #0x20
  9374ac: 1f400484     	fmadd	d4, d4, d0, d1
  9374b0: 1e674084     	frintx	d4, d4
  9374b4: 9e780083     	fcvtzs	x3, d4
  9374b8: 1f4004a4     	fmadd	d4, d5, d0, d1
  9374bc: 1e674084     	frintx	d4, d4
  9374c0: 9e780086     	fcvtzs	x6, d4
  9374c4: 1e270064     	fmov	s4, w3
  9374c8: 4e0c1cc4     	mov.s	v4[1], w6
  9374cc: 0ea26484     	smax.2s	v4, v4, v2
  9374d0: 0ea36c84     	smin.2s	v4, v4, v3
  9374d4: 0e0c3c83     	mov.s	w3, v4[1]
  9374d8: 1e260086     	fmov	w6, s4
  9374dc: 91001231     	add	x17, x17, #0x4
  9374e0: 39000c43     	strb	w3, [x2, #0x3]
  9374e4: 39000846     	strb	w6, [x2, #0x2]
  9374e8: 91001210     	add	x16, x16, #0x4
  9374ec: 910081ef     	add	x15, x15, #0x20
  9374f0: 110011ce     	add	w14, w14, #0x4
  9374f4: 17ffffdb     	b	0x937460 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x51580>
  9374f8: fc4085e4     	ldr	d4, [x15], #0x8
  9374fc: 1f400484     	fmadd	d4, d4, d0, d1
  937500: 1e674084     	frintx	d4, d4
  937504: 9e780091     	fcvtzs	x17, d4
  937508: 0ab17e31     	bic	w17, w17, w17, asr #31
  93750c: 7103fe3f     	cmp	w17, #0xff
  937510: 1a8db231     	csel	w17, w17, w13, lt
  937514: 38001611     	strb	w17, [x16], #0x1
  937518: 110005ce     	add	w14, w14, #0x1
  93751c: 6b0e011f     	cmp	w8, w14
  937520: 54fffecc     	b.gt	0x9374f8 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x51618>
  937524: 8b050084     	add	x4, x4, x5
  937528: 8b0a018c     	add	x12, x12, x10
  93752c: 8b0a0000     	add	x0, x0, x10
  937530: 35fff929     	cbnz	w9, 0x937454 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x51574>
  937534: d65f03c0     	ret
  937538: aa1e03e2     	mov	x2, x30
  93753c: 94000d38     	bl	0x93aa1c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x54b3c>
  937540: aa0203fe     	mov	x30, x2
  937544: 340007a9     	cbz	w9, 0x937638 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x51758>
  937548: 5280000d     	mov	w13, #0x0               ; =0
  93754c: d2800010     	mov	x16, #0x0               ; =0
  937550: 51000529     	sub	w9, w9, #0x1
  937554: aa0003ee     	mov	x14, x0
  937558: aa0403ef     	mov	x15, x4
  93755c: eb0a021f     	cmp	x16, x10
  937560: 5400062c     	b.gt	0x937624 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x51744>
  937564: 8b100011     	add	x17, x0, x16
  937568: 3d400224     	ldr	b4, [x17]
  93756c: 7e21d884     	ucvtf	s4, s4
  937570: 1f000484     	fmadd	s4, s4, s0, s1
  937574: 1e274084     	frintx	s4, s4
  937578: 9e380082     	fcvtzs	x2, s4
  93757c: 3d400624     	ldr	b4, [x17, #0x1]
  937580: 7e21d884     	ucvtf	s4, s4
  937584: 1f000484     	fmadd	s4, s4, s0, s1
  937588: 1e274084     	frintx	s4, s4
  93758c: 9e380083     	fcvtzs	x3, s4
  937590: 1e270044     	fmov	s4, w2
  937594: 4e0c1c64     	mov.s	v4[1], w3
  937598: 0ea26484     	smax.2s	v4, v4, v2
  93759c: 0ea36c84     	smin.2s	v4, v4, v3
  9375a0: 8b100082     	add	x2, x4, x16
  9375a4: 0e0c3c83     	mov.s	w3, v4[1]
  9375a8: 39000443     	strb	w3, [x2, #0x1]
  9375ac: 1e260083     	fmov	w3, s4
  9375b0: 39000043     	strb	w3, [x2]
  9375b4: 3d400a24     	ldr	b4, [x17, #0x2]
  9375b8: 7e21d884     	ucvtf	s4, s4
  9375bc: 1f000484     	fmadd	s4, s4, s0, s1
  9375c0: 1e274084     	frintx	s4, s4
  9375c4: 9e380083     	fcvtzs	x3, s4
  9375c8: 3d400e24     	ldr	b4, [x17, #0x3]
  9375cc: 7e21d884     	ucvtf	s4, s4
  9375d0: 1f000484     	fmadd	s4, s4, s0, s1
  9375d4: 1e274084     	frintx	s4, s4
  9375d8: 9e380091     	fcvtzs	x17, s4
  9375dc: 1e270064     	fmov	s4, w3
  9375e0: 4e0c1e24     	mov.s	v4[1], w17
  9375e4: 0ea26484     	smax.2s	v4, v4, v2
  9375e8: 0ea36c84     	smin.2s	v4, v4, v3
  9375ec: 0e0c3c91     	mov.s	w17, v4[1]
  9375f0: 1e260083     	fmov	w3, s4
  9375f4: 39000c51     	strb	w17, [x2, #0x3]
  9375f8: 39000843     	strb	w3, [x2, #0x2]
  9375fc: 91001210     	add	x16, x16, #0x4
