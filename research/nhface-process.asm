
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000001eaac7c <_lepus_get_length32>:
 1f17800: 940006e2     	bl	0x1f19388 <_lepus_get_length32+0x6e70c>
 1f17804: 52800020     	mov	w0, #0x1                ; =1
 1f17808: a94a7bfd     	ldp	x29, x30, [sp, #0xa0]
 1f1780c: a9494ff4     	ldp	x20, x19, [sp, #0x90]
 1f17810: a94857f6     	ldp	x22, x21, [sp, #0x80]
 1f17814: 9102c3ff     	add	sp, sp, #0xb0
 1f17818: d65f03c0     	ret
 1f1781c: f941b669     	ldr	x9, [x19, #0x368]
 1f17820: 91128128     	add	x8, x9, #0x4a0
 1f17824: 39d2dd29     	ldrsb	w9, [x9, #0x4b7]
 1f17828: 36f80049     	tbz	w9, #0x1f, 0x1f17830 <_lepus_get_length32+0x6cbb4>
 1f1782c: f9400108     	ldr	x8, [x8]
 1f17830: f000a200     	adrp	x0, 0x335a000 <dyld_stub_binder+0x335a000>
 1f17834: 91175800     	add	x0, x0, #0x5d6
 1f17838: d00094e3     	adrp	x3, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f1783c: 91255c63     	add	x3, x3, #0x957
 1f17840: f000a204     	adrp	x4, 0x335a000 <dyld_stub_binder+0x335a000>
 1f17844: 91187484     	add	x4, x4, #0x61d
 1f17848: f90003e8     	str	x8, [sp]
 1f1784c: 528020e1     	mov	w1, #0x107              ; =263
 1f17850: 9400071a     	bl	0x1f194b8 <_lepus_get_length32+0x6e83c>
 1f17854: 94000726     	bl	0x1f194ec <_lepus_get_length32+0x6e870>
 1f17858: 52800000     	mov	w0, #0x0                ; =0
 1f1785c: 17ffffeb     	b	0x1f17808 <_lepus_get_length32+0x6cb8c>
 1f17860: 1400006a     	b	0x1f17a08 <_lepus_get_length32+0x6cd8c>
 1f17864: 14000034     	b	0x1f17934 <_lepus_get_length32+0x6ccb8>
 1f17868: 1400006b     	b	0x1f17a14 <_lepus_get_length32+0x6cd98>
 1f1786c: 1400006a     	b	0x1f17a14 <_lepus_get_length32+0x6cd98>
 1f17870: 14000063     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17874: 14000062     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17878: 14000061     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f1787c: 14000060     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17880: 1400005f     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17884: 1400005e     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17888: 1400005d     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f1788c: 1400005c     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17890: 1400005b     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17894: 1400005a     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17898: 14000059     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f1789c: 14000058     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178a0: 14000057     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178a4: 14000056     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178a8: 14000055     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178ac: 14000054     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178b0: 14000053     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178b4: 14000052     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178b8: 14000051     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178bc: 14000050     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178c0: 1400004f     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178c4: 1400004e     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178c8: 1400004d     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178cc: 1400004c     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178d0: 1400004b     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178d4: 1400004a     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178d8: 14000049     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178dc: 14000048     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178e0: 14000047     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178e4: 14000046     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178e8: 14000045     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178ec: 14000044     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178f0: 14000043     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178f4: 14000042     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178f8: 14000041     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f178fc: 14000040     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17900: 1400003f     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17904: 1400003e     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17908: 1400003d     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f1790c: 1400003c     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17910: 1400003b     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17914: 1400003a     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17918: 14000039     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f1791c: 14000038     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17920: 14000037     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17924: 14000036     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17928: 14000035     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f1792c: 14000034     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17930: 14000033     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17934: aa0003f3     	mov	x19, x0
 1f17938: 940006d8     	bl	0x1f19498 <_lepus_get_length32+0x6e81c>
 1f1793c: 14000037     	b	0x1f17a18 <_lepus_get_length32+0x6cd9c>
 1f17940: 1400002f     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17944: 1400002e     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17948: 1400002d     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f1794c: 1400002c     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17950: 1400002b     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17954: 1400002a     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17958: 14000029     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f1795c: 14000028     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17960: 14000027     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17964: 14000026     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17968: 14000025     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f1796c: 14000024     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17970: 14000023     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17974: 14000022     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17978: 14000021     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f1797c: 14000020     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17980: 1400001f     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17984: 1400001e     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17988: 1400001d     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f1798c: 1400001c     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17990: 1400001b     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17994: 1400001a     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f17998: 14000019     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f1799c: 14000018     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179a0: 14000017     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179a4: 14000016     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179a8: 14000015     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179ac: 14000014     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179b0: 14000013     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179b4: 14000012     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179b8: 14000011     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179bc: 14000010     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179c0: 1400000f     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179c4: 1400000e     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179c8: 1400000d     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179cc: 1400000c     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179d0: 1400000b     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179d4: 1400000a     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179d8: 14000009     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179dc: 14000008     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179e0: 14000007     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179e4: 14000006     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179e8: 14000005     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179ec: 14000004     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179f0: 14000003     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179f4: 14000002     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179f8: 14000001     	b	0x1f179fc <_lepus_get_length32+0x6cd80>
 1f179fc: aa0003f3     	mov	x19, x0
 1f17a00: 94000662     	bl	0x1f19388 <_lepus_get_length32+0x6e70c>
 1f17a04: 940006b1     	bl	0x1f194c8 <_lepus_get_length32+0x6e84c>
 1f17a08: aa0003f3     	mov	x19, x0
 1f17a0c: 940006b8     	bl	0x1f194ec <_lepus_get_length32+0x6e870>
 1f17a10: 17fffffd     	b	0x1f17a04 <_lepus_get_length32+0x6cd88>
 1f17a14: aa0003f3     	mov	x19, x0
 1f17a18: 910083e0     	add	x0, sp, #0x20
 1f17a1c: 9400929f     	bl	0x1f3c498 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x14bb4>
 1f17a20: 17fffff9     	b	0x1f17a04 <_lepus_get_length32+0x6cd88>
 1f17a24: 52800020     	mov	w0, #0x1                ; =1
 1f17a28: d65f03c0     	ret
 1f17a2c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 1f17a30: 910003fd     	mov	x29, sp
 1f17a34: 97fffc34     	bl	0x1f16b04 <_lepus_get_length32+0x6be88>
 1f17a38: 52800020     	mov	w0, #0x1                ; =1
 1f17a3c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 1f17a40: d65f03c0     	ret
 1f17a44: d106c3ff     	sub	sp, sp, #0x1b0
 1f17a48: 6d1233ed     	stp	d13, d12, [sp, #0x120]
 1f17a4c: 6d132beb     	stp	d11, d10, [sp, #0x130]
 1f17a50: 6d1423e9     	stp	d9, d8, [sp, #0x140]
 1f17a54: a9156ffc     	stp	x28, x27, [sp, #0x150]
 1f17a58: a91667fa     	stp	x26, x25, [sp, #0x160]
 1f17a5c: a9175ff8     	stp	x24, x23, [sp, #0x170]
 1f17a60: a91857f6     	stp	x22, x21, [sp, #0x180]
 1f17a64: a9194ff4     	stp	x20, x19, [sp, #0x190]
 1f17a68: a91a7bfd     	stp	x29, x30, [sp, #0x1a0]
 1f17a6c: 910683fd     	add	x29, sp, #0x1a0
 1f17a70: aa0103f6     	mov	x22, x1
 1f17a74: aa0003f7     	mov	x23, x0
 1f17a78: b000ad28     	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
 1f17a7c: f9435508     	ldr	x8, [x8, #0x6a8]
 1f17a80: f9400108     	ldr	x8, [x8]
 1f17a84: f81703a8     	stur	x8, [x29, #-0x90]
 1f17a88: f9400433     	ldr	x19, [x1, #0x8]
 1f17a8c: 91004034     	add	x20, x1, #0x10
 1f17a90: 52800001     	mov	w1, #0x0                ; =0
 1f17a94: 9406bcdd     	bl	0x20c6e08 <__ZN4Bach20BachAlgorithmFactory23CreateAlgorithmSystemGEEv+0x7548>
 1f17a98: aa0003e2     	mov	x2, x0
 1f17a9c: f90067ff     	str	xzr, [sp, #0xc8]
 1f17aa0: 9102c3e4     	add	x4, sp, #0xb0
 1f17aa4: aa1303e0     	mov	x0, x19
 1f17aa8: aa1403e1     	mov	x1, x20
 1f17aac: 52800003     	mov	w3, #0x0                ; =0
 1f17ab0: 9406f1fb     	bl	0x20d429c <__ZN4Bach15ToGeneralBufferEPKNS_10BachBufferEPS0_+0x1d4c>
 1f17ab4: aa0003fb     	mov	x27, x0
 1f17ab8: 9400069f     	bl	0x1f19534 <_lepus_get_length32+0x6e8b8>
 1f17abc: f94006d5     	ldr	x21, [x22, #0x8]
 1f17ac0: aa1703e0     	mov	x0, x23
 1f17ac4: 52800021     	mov	w1, #0x1                ; =1
 1f17ac8: 9406bcd0     	bl	0x20c6e08 <__ZN4Bach20BachAlgorithmFactory23CreateAlgorithmSystemGEEv+0x7548>
 1f17acc: aa0003e2     	mov	x2, x0
 1f17ad0: f90067ff     	str	xzr, [sp, #0xc8]
 1f17ad4: 9102c3e4     	add	x4, sp, #0xb0
 1f17ad8: aa1503e0     	mov	x0, x21
 1f17adc: aa1403e1     	mov	x1, x20
 1f17ae0: 52800023     	mov	w3, #0x1                ; =1
 1f17ae4: 9406f1ee     	bl	0x20d429c <__ZN4Bach15ToGeneralBufferEPKNS_10BachBufferEPS0_+0x1d4c>
 1f17ae8: aa0003f4     	mov	x20, x0
 1f17aec: 94000692     	bl	0x1f19534 <_lepus_get_length32+0x6e8b8>
 1f17af0: f941b6e8     	ldr	x8, [x23, #0x368]
 1f17af4: b9048d1f     	str	wzr, [x8, #0x48c]
 1f17af8: 9102c3e0     	add	x0, sp, #0xb0
 1f17afc: 97ac38a9     	bl	0xa25da0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec0>
 1f17b00: 9100e2d5     	add	x21, x22, #0x38
 1f17b04: f00073a1     	adrp	x1, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f17b08: 91383021     	add	x1, x1, #0xe0c
 1f17b0c: 94000661     	bl	0x1f19490 <_lepus_get_length32+0x6e814>
 1f17b10: b4000380     	cbz	x0, 0x1f17b80 <_lepus_get_length32+0x6cf04>
 1f17b14: f00073a1     	adrp	x1, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f17b18: 91383021     	add	x1, x1, #0xe0c
 1f17b1c: 9400065b     	bl	0x1f19488 <_lepus_get_length32+0x6e80c>
 1f17b20: f9400c18     	ldr	x24, [x0, #0x18]
 1f17b24: b40015d8     	cbz	x24, 0x1f17ddc <_lepus_get_length32+0x6d160>
 1f17b28: aa1803e0     	mov	x0, x24
 1f17b2c: 94089119     	bl	0x213bf90 <__ZN4Bach15BachTextureInfo10tensorNameEv+0x36ce0>
 1f17b30: b4000e20     	cbz	x0, 0x1f17cf4 <_lepus_get_length32+0x6d078>
 1f17b34: aa1803e0     	mov	x0, x24
 1f17b38: 94088d27     	bl	0x213afd4 <__ZN4Bach15BachTextureInfo10tensorNameEv+0x35d24>
 1f17b3c: aa0003f9     	mov	x25, x0
 1f17b40: aa1803e0     	mov	x0, x24
 1f17b44: 94088d22     	bl	0x213afcc <__ZN4Bach15BachTextureInfo10tensorNameEv+0x35d1c>
 1f17b48: aa0003fa     	mov	x26, x0
 1f17b4c: aa1803e0     	mov	x0, x24
 1f17b50: 94089110     	bl	0x213bf90 <__ZN4Bach15BachTextureInfo10tensorNameEv+0x36ce0>
 1f17b54: aa0003e4     	mov	x4, x0
 1f17b58: 910143e0     	add	x0, sp, #0x50
 1f17b5c: aa1903e1     	mov	x1, x25
 1f17b60: aa1a03e2     	mov	x2, x26
 1f17b64: 52800303     	mov	w3, #0x18               ; =24
 1f17b68: d2800005     	mov	x5, #0x0                ; =0
 1f17b6c: 97ac388e     	bl	0xa25da4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec4>
 1f17b70: 94000673     	bl	0x1f1953c <_lepus_get_length32+0x6e8c0>
 1f17b74: 94000668     	bl	0x1f19514 <_lepus_get_length32+0x6e898>
 1f17b78: 52800418     	mov	w24, #0x20              ; =32
 1f17b7c: 1400001b     	b	0x1f17be8 <_lepus_get_length32+0x6cf6c>
 1f17b80: f00073a1     	adrp	x1, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f17b84: 91384021     	add	x1, x1, #0xe10
 1f17b88: 94000642     	bl	0x1f19490 <_lepus_get_length32+0x6e814>
 1f17b8c: b4001280     	cbz	x0, 0x1f17ddc <_lepus_get_length32+0x6d160>
 1f17b90: f00073a1     	adrp	x1, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f17b94: 91384021     	add	x1, x1, #0xe10
 1f17b98: 9400063c     	bl	0x1f19488 <_lepus_get_length32+0x6e80c>
 1f17b9c: f9400c08     	ldr	x8, [x0, #0x18]
 1f17ba0: b4000dc8     	cbz	x8, 0x1f17d58 <_lepus_get_length32+0x6d0dc>
 1f17ba4: f9401d09     	ldr	x9, [x8, #0x38]
 1f17ba8: b4000d89     	cbz	x9, 0x1f17d58 <_lepus_get_length32+0x6d0dc>
 1f17bac: f9402108     	ldr	x8, [x8, #0x40]
 1f17bb0: 2944250a     	ldp	w10, w9, [x8, #0x20]
 1f17bb4: 29430502     	ldp	w2, w1, [x8, #0x18]
 1f17bb8: f9400908     	ldr	x8, [x8, #0x10]
 1f17bbc: a9412d08     	ldp	x8, x11, [x8, #0x10]
 1f17bc0: eb08017f     	cmp	x11, x8
 1f17bc4: 9a8803e4     	csel	x4, xzr, x8, eq
 1f17bc8: 331d7149     	bfi	w9, w10, #3, #29
 1f17bcc: 51002123     	sub	w3, w9, #0x8
 1f17bd0: 910143e0     	add	x0, sp, #0x50
 1f17bd4: d2800005     	mov	x5, #0x0                ; =0
 1f17bd8: 97ac3873     	bl	0xa25da4 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec4>
 1f17bdc: 94000658     	bl	0x1f1953c <_lepus_get_length32+0x6e8c0>
 1f17be0: 9400064d     	bl	0x1f19514 <_lepus_get_length32+0x6e898>
 1f17be4: 52800038     	mov	w24, #0x1               ; =1
 1f17be8: 910da2f9     	add	x25, x23, #0x368
 1f17bec: fd405fe0     	ldr	d0, [sp, #0xb8]
 1f17bf0: 3d8013e0     	str	q0, [sp, #0x40]
 1f17bf4: f9400328     	ldr	x8, [x25]
 1f17bf8: b9449108     	ldr	w8, [x8, #0x490]
 1f17bfc: 7100211f     	cmp	w8, #0x8
 1f17c00: 540010e1     	b.ne	0x1f17e1c <_lepus_get_length32+0x6d1a0>
 1f17c04: f00073a1     	adrp	x1, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f17c08: 91378021     	add	x1, x1, #0xde0
 1f17c0c: 94000621     	bl	0x1f19490 <_lepus_get_length32+0x6e814>
 1f17c10: b4001020     	cbz	x0, 0x1f17e14 <_lepus_get_length32+0x6d198>
 1f17c14: f00073a1     	adrp	x1, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f17c18: 91378021     	add	x1, x1, #0xde0
 1f17c1c: 9400061b     	bl	0x1f19488 <_lepus_get_length32+0x6e80c>
 1f17c20: f9400c08     	ldr	x8, [x0, #0x18]
 1f17c24: b4000dc8     	cbz	x8, 0x1f17ddc <_lepus_get_length32+0x6d160>
 1f17c28: f9401d00     	ldr	x0, [x8, #0x38]
 1f17c2c: f9002be0     	str	x0, [sp, #0x50]
 1f17c30: f9001ffb     	str	x27, [sp, #0x38]
 1f17c34: b4003040     	cbz	x0, 0x1f1823c <_lepus_get_length32+0x6d5c0>
 1f17c38: f9400008     	ldr	x8, [x0]
 1f17c3c: f9400108     	ldr	x8, [x8]
 1f17c40: d63f0100     	blr	x8
 1f17c44: f9402be8     	ldr	x8, [sp, #0x50]
 1f17c48: b4002fa8     	cbz	x8, 0x1f1823c <_lepus_get_length32+0x6d5c0>
 1f17c4c: f9400336     	ldr	x22, [x25]
 1f17c50: 52800033     	mov	w19, #0x1               ; =1
 1f17c54: b9048ed3     	str	w19, [x22, #0x48c]
 1f17c58: bd402500     	ldr	s0, [x8, #0x24]
 1f17c5c: 3dc013e1     	ldr	q1, [sp, #0x40]
 1f17c60: 0e21d821     	scvtf.2s	v1, v1
 1f17c64: 4e813822     	zip1.4s	v2, v1, v1
 1f17c68: 6e014042     	ext.16b	v2, v2, v1, #0x8
 1f17c6c: 6e012041     	ext.16b	v1, v2, v1, #0x4
 1f17c70: fd401502     	ldr	d2, [x8, #0x28]
 1f17c74: bd403103     	ldr	s3, [x8, #0x30]
 1f17c78: 6e0c0403     	mov.s	v3[1], v0[0]
 1f17c7c: 0e22d463     	fadd.2s	v3, v3, v2
 1f17c80: 6e002000     	ext.16b	v0, v0, v0, #0x4
 1f17c84: 6e036000     	ext.16b	v0, v0, v3, #0xc
 1f17c88: 6e1c0440     	mov.s	v0[3], v2[0]
 1f17c8c: 6e21dc00     	fmul.4s	v0, v0, v1
 1f17c90: 4ea1b800     	fcvtzs.4s	v0, v0
 1f17c94: 3d8002c0     	str	q0, [x22]
 1f17c98: 395562c8     	ldrb	w8, [x22, #0x558]
 1f17c9c: 34002d48     	cbz	w8, 0x1f18244 <_lepus_get_length32+0x6d5c8>
 1f17ca0: 9108c2d7     	add	x23, x22, #0x230
 1f17ca4: b9423ac9     	ldr	w9, [x22, #0x238]
 1f17ca8: 12b0000a     	mov	w10, #0x7fffffff        ; =2147483647
 1f17cac: aa1603e8     	mov	x8, x22
 1f17cb0: 6b0a013f     	cmp	w9, w10
 1f17cb4: 540000a1     	b.ne	0x1f17cc8 <_lepus_get_length32+0x6d04c>
 1f17cb8: aa1703e0     	mov	x0, x23
 1f17cbc: aa1603e1     	mov	x1, x22
 1f17cc0: 940002c6     	bl	0x1f187d8 <_lepus_get_length32+0x6db5c>
 1f17cc4: f9400328     	ldr	x8, [x25]
 1f17cc8: bd455d00     	ldr	s0, [x8, #0x55c]
 1f17ccc: 5e21d800     	scvtf	s0, s0
 1f17cd0: bd456101     	ldr	s1, [x8, #0x560]
 1f17cd4: aa1703e0     	mov	x0, x23
 1f17cd8: aa1603e1     	mov	x1, x22
 1f17cdc: 94004a5a     	bl	0x1f2a644 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x2d60>
 1f17ce0: 3dc002c0     	ldr	q0, [x22]
 1f17ce4: 3d8002e0     	str	q0, [x23]
 1f17ce8: a90006c0     	stp	x0, x1, [x22]
 1f17cec: 52800033     	mov	w19, #0x1               ; =1
 1f17cf0: 14000155     	b	0x1f18244 <_lepus_get_length32+0x6d5c8>
 1f17cf4: 940d65da     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
 1f17cf8: 34000540     	cbz	w0, 0x1f17da0 <_lepus_get_length32+0x6d124>
 1f17cfc: 940d65db     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
 1f17d00: 7100281f     	cmp	w0, #0xa
 1f17d04: 540006cb     	b.lt	0x1f17ddc <_lepus_get_length32+0x6d160>
 1f17d08: f000a213     	adrp	x19, 0x335a000 <dyld_stub_binder+0x335a000>
 1f17d0c: 91175a73     	add	x19, x19, #0x5d6
 1f17d10: 52802e14     	mov	w20, #0x170             ; =368
 1f17d14: aa1303e0     	mov	x0, x19
 1f17d18: 52802e01     	mov	w1, #0x170              ; =368
 1f17d1c: 940005be     	bl	0x1f19414 <_lepus_get_length32+0x6e798>
 1f17d20: f000a208     	adrp	x8, 0x335a000 <dyld_stub_binder+0x335a000>
 1f17d24: 91192108     	add	x8, x8, #0x648
 1f17d28: 9000a209     	adrp	x9, 0x3357000 <dyld_stub_binder+0x3357000>
 1f17d2c: 911f4d29     	add	x9, x9, #0x7d3
 1f17d30: a900d3e8     	stp	x8, x20, [sp, #0x8]
 1f17d34: f90003e9     	str	x9, [sp]
 1f17d38: f0009543     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
 1f17d3c: 9124e863     	add	x3, x3, #0x93a
 1f17d40: f0009545     	adrp	x5, 0x31c2000 <dyld_stub_binder+0x31c2000>
 1f17d44: 912518a5     	add	x5, x5, #0x946
 1f17d48: aa1303e0     	mov	x0, x19
 1f17d4c: 52802e01     	mov	w1, #0x170              ; =368
 1f17d50: 940005dc     	bl	0x1f194c0 <_lepus_get_length32+0x6e844>
 1f17d54: 14000022     	b	0x1f17ddc <_lepus_get_length32+0x6d160>
 1f17d58: 940d65c1     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
 1f17d5c: 34000440     	cbz	w0, 0x1f17de4 <_lepus_get_length32+0x6d168>
 1f17d60: 940d65c2     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
 1f17d64: 7100281f     	cmp	w0, #0xa
 1f17d68: 540004eb     	b.lt	0x1f17e04 <_lepus_get_length32+0x6d188>
 1f17d6c: f000a215     	adrp	x21, 0x335a000 <dyld_stub_binder+0x335a000>
 1f17d70: 91175ab5     	add	x21, x21, #0x5d6
 1f17d74: aa1503e0     	mov	x0, x21
 1f17d78: 52802fc1     	mov	w1, #0x17e              ; =382
 1f17d7c: 940005a6     	bl	0x1f19414 <_lepus_get_length32+0x6e798>
 1f17d80: d00094e3     	adrp	x3, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f17d84: 91255c63     	add	x3, x3, #0x957
 1f17d88: f000a205     	adrp	x5, 0x335a000 <dyld_stub_binder+0x335a000>
 1f17d8c: 911aeca5     	add	x5, x5, #0x6bb
 1f17d90: aa1503e0     	mov	x0, x21
 1f17d94: 52802fc1     	mov	w1, #0x17e              ; =382
 1f17d98: 940005ca     	bl	0x1f194c0 <_lepus_get_length32+0x6e844>
 1f17d9c: 1400001a     	b	0x1f17e04 <_lepus_get_length32+0x6d188>
 1f17da0: 52802e08     	mov	w8, #0x170              ; =368
 1f17da4: f000a209     	adrp	x9, 0x335a000 <dyld_stub_binder+0x335a000>
 1f17da8: 91192129     	add	x9, x9, #0x648
 1f17dac: 9000a20a     	adrp	x10, 0x3357000 <dyld_stub_binder+0x3357000>
 1f17db0: 911f4d4a     	add	x10, x10, #0x7d3
 1f17db4: f000a200     	adrp	x0, 0x335a000 <dyld_stub_binder+0x335a000>
 1f17db8: 91175800     	add	x0, x0, #0x5d6
 1f17dbc: a900a3e9     	stp	x9, x8, [sp, #0x8]
 1f17dc0: f0009543     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
 1f17dc4: 9124e863     	add	x3, x3, #0x93a
 1f17dc8: f0009544     	adrp	x4, 0x31c2000 <dyld_stub_binder+0x31c2000>
 1f17dcc: 91251884     	add	x4, x4, #0x946
 1f17dd0: f90003ea     	str	x10, [sp]
 1f17dd4: 52802e01     	mov	w1, #0x170              ; =368
 1f17dd8: 940005b8     	bl	0x1f194b8 <_lepus_get_length32+0x6e83c>
 1f17ddc: 52800418     	mov	w24, #0x20              ; =32
 1f17de0: 14000233     	b	0x1f186ac <_lepus_get_length32+0x6da30>
 1f17de4: f000a200     	adrp	x0, 0x335a000 <dyld_stub_binder+0x335a000>
 1f17de8: 91175800     	add	x0, x0, #0x5d6
 1f17dec: d00094e3     	adrp	x3, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f17df0: 91255c63     	add	x3, x3, #0x957
 1f17df4: f000a204     	adrp	x4, 0x335a000 <dyld_stub_binder+0x335a000>
 1f17df8: 911aec84     	add	x4, x4, #0x6bb
 1f17dfc: 52802fc1     	mov	w1, #0x17e              ; =382
 1f17e00: 940005ae     	bl	0x1f194b8 <_lepus_get_length32+0x6e83c>
 1f17e04: f9001f7f     	str	xzr, [x27, #0x38]
 1f17e08: f9001e9f     	str	xzr, [x20, #0x38]
 1f17e0c: 52800038     	mov	w24, #0x1               ; =1
 1f17e10: 14000227     	b	0x1f186ac <_lepus_get_length32+0x6da30>
 1f17e14: f9400328     	ldr	x8, [x25]
 1f17e18: b9449108     	ldr	w8, [x8, #0x490]
 1f17e1c: 7100111f     	cmp	w8, #0x4
 1f17e20: f9001ffb     	str	x27, [sp, #0x38]
 1f17e24: 540007e1     	b.ne	0x1f17f20 <_lepus_get_length32+0x6d2a4>
 1f17e28: f00073a1     	adrp	x1, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f17e2c: 91378021     	add	x1, x1, #0xde0
 1f17e30: 94000598     	bl	0x1f19490 <_lepus_get_length32+0x6e814>
 1f17e34: b4000760     	cbz	x0, 0x1f17f20 <_lepus_get_length32+0x6d2a4>
 1f17e38: f00073a1     	adrp	x1, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f17e3c: 91378021     	add	x1, x1, #0xde0
 1f17e40: 94000592     	bl	0x1f19488 <_lepus_get_length32+0x6e80c>
 1f17e44: f9400c13     	ldr	x19, [x0, #0x18]
 1f17e48: b4002ff3     	cbz	x19, 0x1f18444 <_lepus_get_length32+0x6d7c8>
 1f17e4c: aa1403fc     	mov	x28, x20
 1f17e50: d2800014     	mov	x20, #0x0               ; =0
 1f17e54: f9400328     	ldr	x8, [x25]
 1f17e58: 3dc013e0     	ldr	q0, [sp, #0x40]
 1f17e5c: 0e0c3c09     	mov.s	w9, v0[1]
 1f17e60: 1e220128     	scvtf	s8, w9
 1f17e64: b9848d17     	ldrsw	x23, [x8, #0x48c]
 1f17e68: 1e260009     	fmov	w9, s0
 1f17e6c: 1e220129     	scvtf	s9, w9
 1f17e70: 52800718     	mov	w24, #0x38              ; =56
 1f17e74: 5280007a     	mov	w26, #0x3               ; =3
 1f17e78: a943a67b     	ldp	x27, x9, [x19, #0x38]
 1f17e7c: cb1b0129     	sub	x9, x9, x27
 1f17e80: eb890e9f     	cmp	x20, x9, asr #3
 1f17e84: 54001ae2     	b.hs	0x1f181e0 <_lepus_get_length32+0x6d564>
 1f17e88: b9848909     	ldrsw	x9, [x8, #0x488]
 1f17e8c: eb0902ff     	cmp	x23, x9
 1f17e90: 54001a8a     	b.ge	0x1f181e0 <_lepus_get_length32+0x6d564>
 1f17e94: f8747b69     	ldr	x9, [x27, x20, lsl #3]
 1f17e98: bd401120     	ldr	s0, [x9, #0x10]
 1f17e9c: 1e280800     	fmul	s0, s0, s8
 1f17ea0: 1e38000a     	fcvtzs	w10, s0
 1f17ea4: 9b1822e8     	madd	x8, x23, x24, x8
 1f17ea8: 94000561     	bl	0x1f1942c <_lepus_get_length32+0x6e7b0>
 1f17eac: 91004116     	add	x22, x8, #0x10
 1f17eb0: aa1603e0     	mov	x0, x22
 1f17eb4: 52800241     	mov	w1, #0x12               ; =18
 1f17eb8: 9400025a     	bl	0x1f18820 <_lepus_get_length32+0x6dba4>
 1f17ebc: d2800008     	mov	x8, #0x0                ; =0
 1f17ec0: f8747b69     	ldr	x9, [x27, x20, lsl #3]
 1f17ec4: f9401129     	ldr	x9, [x9, #0x20]
 1f17ec8: f9400929     	ldr	x9, [x9, #0x10]
 1f17ecc: f94002ca     	ldr	x10, [x22]
 1f17ed0: f102411f     	cmp	x8, #0x90
 1f17ed4: 540001a0     	b.eq	0x1f17f08 <_lepus_get_length32+0x6d28c>
 1f17ed8: 8b08012b     	add	x11, x9, x8
 1f17edc: bd400160     	ldr	s0, [x11]
 1f17ee0: 1e280800     	fmul	s0, s0, s8
 1f17ee4: 1e25c000     	frintz	s0, s0
 1f17ee8: 8b08014c     	add	x12, x10, x8
 1f17eec: bd000180     	str	s0, [x12]
 1f17ef0: bd400560     	ldr	s0, [x11, #0x4]
 1f17ef4: 1f09a400     	fmsub	s0, s0, s9, s9
 1f17ef8: 1e25c000     	frintz	s0, s0
 1f17efc: bd000580     	str	s0, [x12, #0x4]
 1f17f00: 91002108     	add	x8, x8, #0x8
 1f17f04: 17fffff3     	b	0x1f17ed0 <_lepus_get_length32+0x6d254>
 1f17f08: f9400328     	ldr	x8, [x25]
 1f17f0c: 8b170909     	add	x9, x8, x23, lsl #2
 1f17f10: b904613a     	str	w26, [x9, #0x460]
 1f17f14: 910006f7     	add	x23, x23, #0x1
 1f17f18: 91000694     	add	x20, x20, #0x1
 1f17f1c: 17ffffd7     	b	0x1f17e78 <_lepus_get_length32+0x6d1fc>
 1f17f20: f00073a1     	adrp	x1, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f17f24: 91378021     	add	x1, x1, #0xde0
 1f17f28: 9400055a     	bl	0x1f19490 <_lepus_get_length32+0x6e814>
 1f17f2c: b40028c0     	cbz	x0, 0x1f18444 <_lepus_get_length32+0x6d7c8>
 1f17f30: f00073a1     	adrp	x1, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f17f34: 91378021     	add	x1, x1, #0xde0
 1f17f38: 94000554     	bl	0x1f19488 <_lepus_get_length32+0x6e80c>
 1f17f3c: f9400c1b     	ldr	x27, [x0, #0x18]
 1f17f40: b40018bb     	cbz	x27, 0x1f18254 <_lepus_get_length32+0x6d5d8>
 1f17f44: f9001bf4     	str	x20, [sp, #0x30]
 1f17f48: d280001c     	mov	x28, #0x0               ; =0
 1f17f4c: f9400328     	ldr	x8, [x25]
 1f17f50: b9448d18     	ldr	w24, [x8, #0x48c]
 1f17f54: 3dc013e0     	ldr	q0, [sp, #0x40]
 1f17f58: 0e0c3c08     	mov.s	w8, v0[1]
 1f17f5c: 1e220108     	scvtf	s8, w8
 1f17f60: 1e260008     	fmov	w8, s0
 1f17f64: 1e220109     	scvtf	s9, w8
 1f17f68: 5285dc08     	mov	w8, #0x2ee0             ; =12000
 1f17f6c: 72a84ca8     	movk	w8, #0x4265, lsl #16
 1f17f70: 0e040d0a     	dup.2s	v10, w8
 1f17f74: f0006b48     	adrp	x8, 0x2c82000 <__ZTSN3BRC13MessageSenderE+0x10589>
 1f17f78: bd49f90b     	ldr	s11, [x8, #0x9f8]
 1f17f7c: f000a216     	adrp	x22, 0x335a000 <dyld_stub_binder+0x335a000>
 1f17f80: 91175ad6     	add	x22, x22, #0x5d6
 1f17f84: f000a217     	adrp	x23, 0x335a000 <dyld_stub_binder+0x335a000>
 1f17f88: 911c26f7     	add	x23, x23, #0x709
 1f17f8c: d2c00033     	mov	x19, #0x100000000       ; =4294967296
 1f17f90: a943a374     	ldp	x20, x8, [x27, #0x38]
 1f17f94: cb140108     	sub	x8, x8, x20
 1f17f98: f9400329     	ldr	x9, [x25]
 1f17f9c: eb880f9f     	cmp	x28, x8, asr #3
 1f17fa0: 54000f42     	b.hs	0x1f18188 <_lepus_get_length32+0x6d50c>
 1f17fa4: b9448928     	ldr	w8, [x9, #0x488]
 1f17fa8: 6b08031f     	cmp	w24, w8
 1f17fac: 54000eea     	b.ge	0x1f18188 <_lepus_get_length32+0x6d50c>
 1f17fb0: f87c7a88     	ldr	x8, [x20, x28, lsl #3]
 1f17fb4: fd401900     	ldr	d0, [x8, #0x30]
 1f17fb8: 2e2adc03     	fmul.2s	v3, v0, v10
 1f17fbc: bd449520     	ldr	s0, [x9, #0x494]
 1f17fc0: 1e214001     	fneg	s1, s0
 1f17fc4: 1e202060     	fcmp	s3, s0
 1f17fc8: 1e21d468     	fccmp	s3, s1, #0x8, le
 1f17fcc: 540001cb     	b.lt	0x1f18004 <_lepus_get_length32+0x6d388>
 1f17fd0: bd449920     	ldr	s0, [x9, #0x498]
 1f17fd4: 5e0c0461     	mov	s1, v3[1]
 1f17fd8: 1e214002     	fneg	s2, s0
 1f17fdc: 1e202020     	fcmp	s1, s0
 1f17fe0: 1e22d428     	fccmp	s1, s2, #0x8, le
 1f17fe4: 5400010b     	b.lt	0x1f18004 <_lepus_get_length32+0x6d388>
 1f17fe8: bd403900     	ldr	s0, [x8, #0x38]
 1f17fec: 1e2b080c     	fmul	s12, s0, s11
 1f17ff0: bd449d20     	ldr	s0, [x9, #0x49c]
 1f17ff4: 1e214001     	fneg	s1, s0
 1f17ff8: 1e202180     	fcmp	s12, s0
 1f17ffc: 1e21d588     	fccmp	s12, s1, #0x8, le
 1f18000: 5400036a     	b.ge	0x1f1806c <_lepus_get_length32+0x6d3f0>
 1f18004: 940d6516     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
 1f18008: 34000200     	cbz	w0, 0x1f18048 <_lepus_get_length32+0x6d3cc>
 1f1800c: 940d6517     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
 1f18010: 7100c81f     	cmp	w0, #0x32
 1f18014: 54000b6b     	b.lt	0x1f18180 <_lepus_get_length32+0x6d504>
 1f18018: aa1603e0     	mov	x0, x22
 1f1801c: 52803ee1     	mov	w1, #0x1f7              ; =503
 1f18020: 940004fd     	bl	0x1f19414 <_lepus_get_length32+0x6e798>
 1f18024: f90003fc     	str	x28, [sp]
 1f18028: aa1603e0     	mov	x0, x22
 1f1802c: 52803ee1     	mov	w1, #0x1f7              ; =503
 1f18030: 52800022     	mov	w2, #0x1                ; =1
 1f18034: b00094e3     	adrp	x3, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f18038: 91255c63     	add	x3, x3, #0x957
 1f1803c: aa1703e5     	mov	x5, x23
 1f18040: 940d78ff     	bl	0x227643c <__ZN13AmazingEngine16g_spdLogWithHashEPKciiS1_yS1_z>
 1f18044: 1400004f     	b	0x1f18180 <_lepus_get_length32+0x6d504>
 1f18048: f90003fc     	str	x28, [sp]
 1f1804c: aa1603e0     	mov	x0, x22
 1f18050: 52803ee1     	mov	w1, #0x1f7              ; =503
 1f18054: 52800642     	mov	w2, #0x32               ; =50
 1f18058: b00094e3     	adrp	x3, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f1805c: 91255c63     	add	x3, x3, #0x957
 1f18060: aa1703e4     	mov	x4, x23
 1f18064: 940d6464     	bl	0x22711f4 <__ZN13AmazingEngine8g_aeLogTEPKciiS1_S1_z>
 1f18068: 14000046     	b	0x1f18180 <_lepus_get_length32+0x6d504>
 1f1806c: 3d800be3     	str	q3, [sp, #0x20]
 1f18070: bd400d00     	ldr	s0, [x8, #0xc]
 1f18074: 1e280801     	fmul	s1, s0, s8
 1f18078: 1e38002a     	fcvtzs	w10, s1
 1f1807c: 5280070b     	mov	w11, #0x38              ; =56
 1f18080: 9b2b2709     	smaddl	x9, w24, w11, x9
 1f18084: b900012a     	str	w10, [x9]
 1f18088: bd401501     	ldr	s1, [x8, #0x14]
 1f1808c: 1e202820     	fadd	s0, s1, s0
 1f18090: 1e280800     	fmul	s0, s0, s8
 1f18094: 1e38000a     	fcvtzs	w10, s0
 1f18098: b900092a     	str	w10, [x9, #0x8]
 1f1809c: bd401100     	ldr	s0, [x8, #0x10]
 1f180a0: 1f09a400     	fmsub	s0, s0, s9, s9
 1f180a4: 1e38000a     	fcvtzs	w10, s0
 1f180a8: b9000d2a     	str	w10, [x9, #0xc]
 1f180ac: 1e25c000     	frintz	s0, s0
 1f180b0: bd401901     	ldr	s1, [x8, #0x18]
 1f180b4: 1f098020     	fmsub	s0, s1, s9, s0
 1f180b8: 1e38000a     	fcvtzs	w10, s0
 1f180bc: b900052a     	str	w10, [x9, #0x4]
 1f180c0: f9401108     	ldr	x8, [x8, #0x20]
 1f180c4: a9412508     	ldp	x8, x9, [x8, #0x10]
 1f180c8: cb080128     	sub	x8, x9, x8
 1f180cc: 93438901     	sbfx	x1, x8, #3, #32
 1f180d0: 910143e0     	add	x0, sp, #0x50
 1f180d4: 94000497     	bl	0x1f19330 <_lepus_get_length32+0x6e6b4>
 1f180d8: d2800008     	mov	x8, #0x0                ; =0
 1f180dc: 93407f1a     	sxtw	x26, w24
 1f180e0: f87c7a89     	ldr	x9, [x20, x28, lsl #3]
 1f180e4: f9401129     	ldr	x9, [x9, #0x20]
 1f180e8: a9412929     	ldp	x9, x10, [x9, #0x10]
 1f180ec: cb09014a     	sub	x10, x10, x9
 1f180f0: 9343894a     	sbfx	x10, x10, #3, #32
 1f180f4: f9402beb     	ldr	x11, [sp, #0x50]
 1f180f8: 9100116b     	add	x11, x11, #0x4
 1f180fc: b400016a     	cbz	x10, 0x1f18128 <_lepus_get_length32+0x6d4ac>
 1f18100: 8b88752c     	add	x12, x9, x8, asr #29
 1f18104: bd400180     	ldr	s0, [x12]
 1f18108: 1e280800     	fmul	s0, s0, s8
 1f1810c: bc1fc160     	stur	s0, [x11, #-0x4]
 1f18110: bd400580     	ldr	s0, [x12, #0x4]
 1f18114: 1f09a400     	fmsub	s0, s0, s9, s9
 1f18118: bc008560     	str	s0, [x11], #0x8
 1f1811c: d100054a     	sub	x10, x10, #0x1
 1f18120: 8b130108     	add	x8, x8, x19
 1f18124: b5fffeea     	cbnz	x10, 0x1f18100 <_lepus_get_length32+0x6d484>
 1f18128: f9400328     	ldr	x8, [x25]
 1f1812c: f9000ff8     	str	x24, [sp, #0x18]
 1f18130: 52800709     	mov	w9, #0x38               ; =56
 1f18134: 9b097f58     	mul	x24, x26, x9
 1f18138: 8b180108     	add	x8, x8, x24
 1f1813c: 940004fb     	bl	0x1f19528 <_lepus_get_length32+0x6e8ac>
 1f18140: f9400328     	ldr	x8, [x25]
 1f18144: 8b180109     	add	x9, x8, x24
 1f18148: d000a217     	adrp	x23, 0x335a000 <dyld_stub_binder+0x335a000>
 1f1814c: 911c26f7     	add	x23, x23, #0x709
 1f18150: f9400ff8     	ldr	x24, [sp, #0x18]
 1f18154: 3dc00be0     	ldr	q0, [sp, #0x20]
 1f18158: fd001520     	str	d0, [x9, #0x28]
 1f1815c: bd00312c     	str	s12, [x9, #0x30]
 1f18160: f87c7a8a     	ldr	x10, [x20, x28, lsl #3]
 1f18164: b940414a     	ldr	w10, [x10, #0x40]
 1f18168: b900352a     	str	w10, [x9, #0x34]
 1f1816c: 8b1a0908     	add	x8, x8, x26, lsl #2
 1f18170: b904611f     	str	wzr, [x8, #0x460]
 1f18174: 11000718     	add	w24, w24, #0x1
 1f18178: 910143e0     	add	x0, sp, #0x50
 1f1817c: 94006dc6     	bl	0x1f33894 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xbfb0>
 1f18180: 9100079c     	add	x28, x28, #0x1
 1f18184: 17ffff83     	b	0x1f17f90 <_lepus_get_length32+0x6d314>
 1f18188: b9048d38     	str	w24, [x9, #0x48c]
 1f1818c: 940d64b4     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
 1f18190: f9401bf4     	ldr	x20, [sp, #0x30]
 1f18194: 340012c0     	cbz	w0, 0x1f183ec <_lepus_get_length32+0x6d770>
 1f18198: 940d64b4     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
 1f1819c: 7100c81f     	cmp	w0, #0x32
 1f181a0: 5400152b     	b.lt	0x1f18444 <_lepus_get_length32+0x6d7c8>
 1f181a4: d000a216     	adrp	x22, 0x335a000 <dyld_stub_binder+0x335a000>
 1f181a8: 91175ad6     	add	x22, x22, #0x5d6
 1f181ac: aa1603e0     	mov	x0, x22
 1f181b0: 528041e1     	mov	w1, #0x20f              ; =527
 1f181b4: 94000498     	bl	0x1f19414 <_lepus_get_length32+0x6e798>
 1f181b8: aa1803fa     	mov	x26, x24
 1f181bc: f90003fa     	str	x26, [sp]
 1f181c0: b00094e3     	adrp	x3, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f181c4: 91255c63     	add	x3, x3, #0x957
 1f181c8: d000a205     	adrp	x5, 0x335a000 <dyld_stub_binder+0x335a000>
 1f181cc: 911d08a5     	add	x5, x5, #0x742
 1f181d0: aa1603e0     	mov	x0, x22
 1f181d4: 528041e1     	mov	w1, #0x20f              ; =527
 1f181d8: 940004cb     	bl	0x1f19504 <_lepus_get_length32+0x6e888>
 1f181dc: 1400009a     	b	0x1f18444 <_lepus_get_length32+0x6d7c8>
 1f181e0: b9048d17     	str	w23, [x8, #0x48c]
 1f181e4: 940d649e     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
 1f181e8: aa1c03f4     	mov	x20, x28
 1f181ec: 34001160     	cbz	w0, 0x1f18418 <_lepus_get_length32+0x6d79c>
 1f181f0: 940d649e     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
 1f181f4: 7100c81f     	cmp	w0, #0x32
 1f181f8: 5400126b     	b.lt	0x1f18444 <_lepus_get_length32+0x6d7c8>
 1f181fc: d000a216     	adrp	x22, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18200: 91175ad6     	add	x22, x22, #0x5d6
 1f18204: aa1603e0     	mov	x0, x22
 1f18208: 52803b01     	mov	w1, #0x1d8              ; =472
 1f1820c: 94000482     	bl	0x1f19414 <_lepus_get_length32+0x6e798>
 1f18210: f9400328     	ldr	x8, [x25]
 1f18214: b9448d08     	ldr	w8, [x8, #0x48c]
 1f18218: f90003e8     	str	x8, [sp]
 1f1821c: b00094e3     	adrp	x3, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f18220: 91255c63     	add	x3, x3, #0x957
 1f18224: d000a205     	adrp	x5, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18228: 911b9ca5     	add	x5, x5, #0x6e7
 1f1822c: aa1603e0     	mov	x0, x22
 1f18230: 52803b01     	mov	w1, #0x1d8              ; =472
 1f18234: 940004b4     	bl	0x1f19504 <_lepus_get_length32+0x6e888>
 1f18238: 14000083     	b	0x1f18444 <_lepus_get_length32+0x6d7c8>
 1f1823c: 52800013     	mov	w19, #0x0               ; =0
 1f18240: 52800418     	mov	w24, #0x20              ; =32
 1f18244: 910143e0     	add	x0, sp, #0x50
 1f18248: 940912e6     	bl	0x215cde0 <__ZN4Bach15BachTextureInfo10tensorNameEv+0x57b30>
 1f1824c: 37000fd3     	tbnz	w19, #0x0, 0x1f18444 <_lepus_get_length32+0x6d7c8>
 1f18250: 14000117     	b	0x1f186ac <_lepus_get_length32+0x6da30>
 1f18254: 910182c0     	add	x0, x22, #0x60
 1f18258: d00073a1     	adrp	x1, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f1825c: 91378021     	add	x1, x1, #0xde0
 1f18260: 9403e7d2     	bl	0x20121a8 <__ZNK4Bach13HeadSegBuffer6_cloneEv+0x10a4c>
 1f18264: f9400c08     	ldr	x8, [x0, #0x18]
 1f18268: b4000ee8     	cbz	x8, 0x1f18444 <_lepus_get_length32+0x6d7c8>
 1f1826c: d2800013     	mov	x19, #0x0               ; =0
 1f18270: f9400329     	ldr	x9, [x25]
 1f18274: 528d5a0a     	mov	w10, #0x6ad0            ; =27344
 1f18278: 8b0a0118     	add	x24, x8, x10
 1f1827c: b9448d3b     	ldr	w27, [x9, #0x48c]
 1f18280: d000a216     	adrp	x22, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18284: 91175ad6     	add	x22, x22, #0x5d6
 1f18288: 9114d11c     	add	x28, x8, #0x534
 1f1828c: b00094f7     	adrp	x23, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f18290: 91255ef7     	add	x23, x23, #0x957
 1f18294: d000a21a     	adrp	x26, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18298: 911c275a     	add	x26, x26, #0x709
 1f1829c: f9001bf8     	str	x24, [sp, #0x30]
 1f182a0: b9800308     	ldrsw	x8, [x24]
 1f182a4: eb08027f     	cmp	x19, x8
 1f182a8: 54000cea     	b.ge	0x1f18444 <_lepus_get_length32+0x6d7c8>
 1f182ac: f9400328     	ldr	x8, [x25]
 1f182b0: b9448909     	ldr	w9, [x8, #0x488]
 1f182b4: 6b09037f     	cmp	w27, w9
 1f182b8: 54000c6a     	b.ge	0x1f18444 <_lepus_get_length32+0x6d7c8>
 1f182bc: bc5f0380     	ldur	s0, [x28, #-0x10]
 1f182c0: bd449501     	ldr	s1, [x8, #0x494]
 1f182c4: 9400046a     	bl	0x1f1946c <_lepus_get_length32+0x6e7f0>
 1f182c8: 5400012b     	b.lt	0x1f182ec <_lepus_get_length32+0x6d670>
 1f182cc: bc5f4380     	ldur	s0, [x28, #-0xc]
 1f182d0: bd449901     	ldr	s1, [x8, #0x498]
 1f182d4: 94000466     	bl	0x1f1946c <_lepus_get_length32+0x6e7f0>
 1f182d8: 540000ab     	b.lt	0x1f182ec <_lepus_get_length32+0x6d670>
 1f182dc: bc5f8380     	ldur	s0, [x28, #-0x8]
 1f182e0: bd449d01     	ldr	s1, [x8, #0x49c]
 1f182e4: 94000462     	bl	0x1f1946c <_lepus_get_length32+0x6e7f0>
 1f182e8: 5400032a     	b.ge	0x1f1834c <_lepus_get_length32+0x6d6d0>
 1f182ec: 940d645c     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
 1f182f0: 340001e0     	cbz	w0, 0x1f1832c <_lepus_get_length32+0x6d6b0>
 1f182f4: 940d645d     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
 1f182f8: 7100c81f     	cmp	w0, #0x32
 1f182fc: 5400072b     	b.lt	0x1f183e0 <_lepus_get_length32+0x6d764>
 1f18300: aa1603e0     	mov	x0, x22
 1f18304: 52804501     	mov	w1, #0x228              ; =552
 1f18308: 94000443     	bl	0x1f19414 <_lepus_get_length32+0x6e798>
 1f1830c: f90003f3     	str	x19, [sp]
 1f18310: aa1603e0     	mov	x0, x22
 1f18314: 52804501     	mov	w1, #0x228              ; =552
 1f18318: 52800022     	mov	w2, #0x1                ; =1
 1f1831c: aa1703e3     	mov	x3, x23
 1f18320: aa1a03e5     	mov	x5, x26
 1f18324: 940d7846     	bl	0x227643c <__ZN13AmazingEngine16g_spdLogWithHashEPKciiS1_yS1_z>
 1f18328: 1400002e     	b	0x1f183e0 <_lepus_get_length32+0x6d764>
 1f1832c: f90003f3     	str	x19, [sp]
 1f18330: aa1603e0     	mov	x0, x22
 1f18334: 52804501     	mov	w1, #0x228              ; =552
 1f18338: 52800642     	mov	w2, #0x32               ; =50
 1f1833c: aa1703e3     	mov	x3, x23
 1f18340: aa1a03e4     	mov	x4, x26
 1f18344: 940d63ac     	bl	0x22711f4 <__ZN13AmazingEngine8g_aeLogTEPKciiS1_S1_z>
 1f18348: 14000026     	b	0x1f183e0 <_lepus_get_length32+0x6d764>
 1f1834c: aa1603fa     	mov	x26, x22
 1f18350: aa1703f6     	mov	x22, x23
 1f18354: aa1403f8     	mov	x24, x20
 1f18358: 52800709     	mov	w9, #0x38               ; =56
 1f1835c: 9b297f69     	smull	x9, w27, w9
 1f18360: d114738a     	sub	x10, x28, #0x51c
 1f18364: 3dc00140     	ldr	q0, [x10]
 1f18368: 3ca96900     	str	q0, [x8, x9]
 1f1836c: d1142381     	sub	x1, x28, #0x508
 1f18370: d106e382     	sub	x2, x28, #0x1b8
 1f18374: 910143e0     	add	x0, sp, #0x50
 1f18378: 9403b6de     	bl	0x2005ef0 <__ZNK4Bach13HeadSegBuffer6_cloneEv+0x4794>
 1f1837c: 93407f74     	sxtw	x20, w27
 1f18380: f9400328     	ldr	x8, [x25]
 1f18384: 52800709     	mov	w9, #0x38               ; =56
 1f18388: 9b097e97     	mul	x23, x20, x9
 1f1838c: 8b170108     	add	x8, x8, x23
 1f18390: 94000466     	bl	0x1f19528 <_lepus_get_length32+0x6e8ac>
 1f18394: f9400328     	ldr	x8, [x25]
 1f18398: 8b170109     	add	x9, x8, x23
 1f1839c: fc5f0380     	ldur	d0, [x28, #-0x10]
 1f183a0: fd001520     	str	d0, [x9, #0x28]
 1f183a4: bc5f8380     	ldur	s0, [x28, #-0x8]
 1f183a8: bd003120     	str	s0, [x9, #0x30]
 1f183ac: b940038a     	ldr	w10, [x28]
 1f183b0: b900352a     	str	w10, [x9, #0x34]
 1f183b4: 8b140908     	add	x8, x8, x20, lsl #2
 1f183b8: b904611f     	str	wzr, [x8, #0x460]
 1f183bc: 1100077b     	add	w27, w27, #0x1
 1f183c0: 910143e0     	add	x0, sp, #0x50
 1f183c4: 94006d34     	bl	0x1f33894 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xbfb0>
 1f183c8: aa1803f4     	mov	x20, x24
 1f183cc: aa1603f7     	mov	x23, x22
 1f183d0: aa1a03f6     	mov	x22, x26
 1f183d4: f9401bf8     	ldr	x24, [sp, #0x30]
 1f183d8: d000a21a     	adrp	x26, 0x335a000 <dyld_stub_binder+0x335a000>
 1f183dc: 911c275a     	add	x26, x26, #0x709
 1f183e0: 91000673     	add	x19, x19, #0x1
 1f183e4: 9114b39c     	add	x28, x28, #0x52c
 1f183e8: 17ffffae     	b	0x1f182a0 <_lepus_get_length32+0x6d624>
 1f183ec: aa1803fa     	mov	x26, x24
 1f183f0: d000a200     	adrp	x0, 0x335a000 <dyld_stub_binder+0x335a000>
 1f183f4: 91175800     	add	x0, x0, #0x5d6
 1f183f8: b00094e3     	adrp	x3, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f183fc: 91255c63     	add	x3, x3, #0x957
 1f18400: d000a204     	adrp	x4, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18404: 911d0884     	add	x4, x4, #0x742
 1f18408: f90003fa     	str	x26, [sp]
 1f1840c: 528041e1     	mov	w1, #0x20f              ; =527
 1f18410: 9400043b     	bl	0x1f194fc <_lepus_get_length32+0x6e880>
 1f18414: 1400000c     	b	0x1f18444 <_lepus_get_length32+0x6d7c8>
 1f18418: f9400328     	ldr	x8, [x25]
 1f1841c: b9448d08     	ldr	w8, [x8, #0x48c]
 1f18420: d000a200     	adrp	x0, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18424: 91175800     	add	x0, x0, #0x5d6
 1f18428: b00094e3     	adrp	x3, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f1842c: 91255c63     	add	x3, x3, #0x957
 1f18430: d000a204     	adrp	x4, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18434: 911b9c84     	add	x4, x4, #0x6e7
 1f18438: f90003e8     	str	x8, [sp]
 1f1843c: 52803b01     	mov	w1, #0x1d8              ; =472
 1f18440: 9400042f     	bl	0x1f194fc <_lepus_get_length32+0x6e880>
 1f18444: d00073a1     	adrp	x1, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f18448: 91385021     	add	x1, x1, #0xe14
 1f1844c: 94000411     	bl	0x1f19490 <_lepus_get_length32+0x6e814>
 1f18450: f9401ffc     	ldr	x28, [sp, #0x38]
 1f18454: b4001200     	cbz	x0, 0x1f18694 <_lepus_get_length32+0x6da18>
 1f18458: d00073a1     	adrp	x1, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f1845c: 91385021     	add	x1, x1, #0xe14
 1f18460: 9400040a     	bl	0x1f19488 <_lepus_get_length32+0x6e80c>
 1f18464: f9400c1a     	ldr	x26, [x0, #0x18]
 1f18468: b400117a     	cbz	x26, 0x1f18694 <_lepus_get_length32+0x6da18>
 1f1846c: f9001bf4     	str	x20, [sp, #0x30]
 1f18470: d280001b     	mov	x27, #0x0               ; =0
 1f18474: 3dc013e0     	ldr	q0, [sp, #0x40]
 1f18478: 0e0c3c08     	mov.s	w8, v0[1]
 1f1847c: 1e220108     	scvtf	s8, w8
 1f18480: f9400328     	ldr	x8, [x25]
 1f18484: 1e260009     	fmov	w9, s0
 1f18488: 1e220129     	scvtf	s9, w9
 1f1848c: d000a215     	adrp	x21, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18490: 91175ab5     	add	x21, x21, #0x5d6
 1f18494: b9448d18     	ldr	w24, [x8, #0x48c]
 1f18498: b00094f6     	adrp	x22, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f1849c: 91255ed6     	add	x22, x22, #0x957
 1f184a0: d000a217     	adrp	x23, 0x335a000 <dyld_stub_binder+0x335a000>
 1f184a4: 911c26f7     	add	x23, x23, #0x709
 1f184a8: 52800713     	mov	w19, #0x38              ; =56
 1f184ac: a943a354     	ldp	x20, x8, [x26, #0x38]
 1f184b0: cb140109     	sub	x9, x8, x20
 1f184b4: f9400328     	ldr	x8, [x25]
 1f184b8: eb890f7f     	cmp	x27, x9, asr #3
 1f184bc: 54000b02     	b.hs	0x1f1861c <_lepus_get_length32+0x6d9a0>
 1f184c0: b9448909     	ldr	w9, [x8, #0x488]
 1f184c4: 6b09031f     	cmp	w24, w9
 1f184c8: 54000aaa     	b.ge	0x1f1861c <_lepus_get_length32+0x6d9a0>
 1f184cc: f87b7a89     	ldr	x9, [x20, x27, lsl #3]
 1f184d0: bd403120     	ldr	s0, [x9, #0x30]
 1f184d4: bd449501     	ldr	s1, [x8, #0x494]
 1f184d8: 940003e5     	bl	0x1f1946c <_lepus_get_length32+0x6e7f0>
 1f184dc: 5400012b     	b.lt	0x1f18500 <_lepus_get_length32+0x6d884>
 1f184e0: bd403520     	ldr	s0, [x9, #0x34]
 1f184e4: bd449901     	ldr	s1, [x8, #0x498]
 1f184e8: 940003e1     	bl	0x1f1946c <_lepus_get_length32+0x6e7f0>
 1f184ec: 540000ab     	b.lt	0x1f18500 <_lepus_get_length32+0x6d884>
 1f184f0: bd403920     	ldr	s0, [x9, #0x38]
 1f184f4: bd449d01     	ldr	s1, [x8, #0x49c]
 1f184f8: 940003dd     	bl	0x1f1946c <_lepus_get_length32+0x6e7f0>
 1f184fc: 5400032a     	b.ge	0x1f18560 <_lepus_get_length32+0x6d8e4>
 1f18500: 940d63d7     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
 1f18504: 340001e0     	cbz	w0, 0x1f18540 <_lepus_get_length32+0x6d8c4>
 1f18508: 940d63d8     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
 1f1850c: 7100c81f     	cmp	w0, #0x32
 1f18510: 5400082b     	b.lt	0x1f18614 <_lepus_get_length32+0x6d998>
 1f18514: aa1503e0     	mov	x0, x21
 1f18518: 52804a41     	mov	w1, #0x252              ; =594
 1f1851c: 940003be     	bl	0x1f19414 <_lepus_get_length32+0x6e798>
 1f18520: f90003fb     	str	x27, [sp]
 1f18524: aa1503e0     	mov	x0, x21
 1f18528: 52804a41     	mov	w1, #0x252              ; =594
 1f1852c: 52800022     	mov	w2, #0x1                ; =1
 1f18530: aa1603e3     	mov	x3, x22
 1f18534: aa1703e5     	mov	x5, x23
 1f18538: 940d77c1     	bl	0x227643c <__ZN13AmazingEngine16g_spdLogWithHashEPKciiS1_yS1_z>
 1f1853c: 14000036     	b	0x1f18614 <_lepus_get_length32+0x6d998>
 1f18540: f90003fb     	str	x27, [sp]
 1f18544: aa1503e0     	mov	x0, x21
 1f18548: 52804a41     	mov	w1, #0x252              ; =594
 1f1854c: 52800642     	mov	w2, #0x32               ; =50
 1f18550: aa1603e3     	mov	x3, x22
 1f18554: aa1703e4     	mov	x4, x23
 1f18558: 940d6327     	bl	0x22711f4 <__ZN13AmazingEngine8g_aeLogTEPKciiS1_S1_z>
 1f1855c: 1400002e     	b	0x1f18614 <_lepus_get_length32+0x6d998>
 1f18560: bd401120     	ldr	s0, [x9, #0x10]
 1f18564: 1e280800     	fmul	s0, s0, s8
 1f18568: 1e38000a     	fcvtzs	w10, s0
 1f1856c: 9b332308     	smaddl	x8, w24, w19, x8
 1f18570: 940003af     	bl	0x1f1942c <_lepus_get_length32+0x6e7b0>
 1f18574: 91004100     	add	x0, x8, #0x10
 1f18578: 52800b41     	mov	w1, #0x5a               ; =90
 1f1857c: 940000a9     	bl	0x1f18820 <_lepus_get_length32+0x6dba4>
 1f18580: d280000b     	mov	x11, #0x0               ; =0
 1f18584: f87b7a8a     	ldr	x10, [x20, x27, lsl #3]
 1f18588: 93407f08     	sxtw	x8, w24
 1f1858c: f9401549     	ldr	x9, [x10, #0x28]
 1f18590: f940092c     	ldr	x12, [x9, #0x10]
 1f18594: f9400329     	ldr	x9, [x25]
 1f18598: 9b13250d     	madd	x13, x8, x19, x9
 1f1859c: f94009ad     	ldr	x13, [x13, #0x10]
 1f185a0: f10b417f     	cmp	x11, #0x2d0
 1f185a4: 540001a0     	b.eq	0x1f185d8 <_lepus_get_length32+0x6d95c>
 1f185a8: 8b0b018e     	add	x14, x12, x11
 1f185ac: bd4001c0     	ldr	s0, [x14]
 1f185b0: 1e280800     	fmul	s0, s0, s8
 1f185b4: 1e25c000     	frintz	s0, s0
 1f185b8: 8b0b01af     	add	x15, x13, x11
 1f185bc: bd0001e0     	str	s0, [x15]
 1f185c0: bd4005c0     	ldr	s0, [x14, #0x4]
 1f185c4: 1f09a400     	fmsub	s0, s0, s9, s9
 1f185c8: 1e25c000     	frintz	s0, s0
 1f185cc: bd0005e0     	str	s0, [x15, #0x4]
 1f185d0: 9100216b     	add	x11, x11, #0x8
 1f185d4: 17fffff3     	b	0x1f185a0 <_lepus_get_length32+0x6d924>
 1f185d8: 9b13250b     	madd	x11, x8, x19, x9
 1f185dc: fd401940     	ldr	d0, [x10, #0x30]
 1f185e0: fd001560     	str	d0, [x11, #0x28]
 1f185e4: bd403940     	ldr	s0, [x10, #0x38]
 1f185e8: bd003160     	str	s0, [x11, #0x30]
 1f185ec: b9403d4c     	ldr	w12, [x10, #0x3c]
 1f185f0: b900356c     	str	w12, [x11, #0x34]
 1f185f4: b9400d4a     	ldr	w10, [x10, #0xc]
 1f185f8: 7100055f     	cmp	w10, #0x1
 1f185fc: 54000060     	b.eq	0x1f18608 <_lepus_get_length32+0x6d98c>
 1f18600: 7100095f     	cmp	w10, #0x2
 1f18604: 54000061     	b.ne	0x1f18610 <_lepus_get_length32+0x6d994>
 1f18608: 8b080928     	add	x8, x9, x8, lsl #2
 1f1860c: b904610a     	str	w10, [x8, #0x460]
 1f18610: 11000718     	add	w24, w24, #0x1
 1f18614: 9100077b     	add	x27, x27, #0x1
 1f18618: 17ffffa5     	b	0x1f184ac <_lepus_get_length32+0x6d830>
 1f1861c: b9048d18     	str	w24, [x8, #0x48c]
 1f18620: 940d638f     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
 1f18624: f9401bf4     	ldr	x20, [sp, #0x30]
 1f18628: 34000240     	cbz	w0, 0x1f18670 <_lepus_get_length32+0x6d9f4>
 1f1862c: 940d638f     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
 1f18630: 7100c81f     	cmp	w0, #0x32
 1f18634: 5400030b     	b.lt	0x1f18694 <_lepus_get_length32+0x6da18>
 1f18638: d000a215     	adrp	x21, 0x335a000 <dyld_stub_binder+0x335a000>
 1f1863c: 91175ab5     	add	x21, x21, #0x5d6
 1f18640: aa1503e0     	mov	x0, x21
 1f18644: 52804e41     	mov	w1, #0x272              ; =626
 1f18648: 94000373     	bl	0x1f19414 <_lepus_get_length32+0x6e798>
 1f1864c: f90003f8     	str	x24, [sp]
 1f18650: b00094e3     	adrp	x3, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f18654: 91255c63     	add	x3, x3, #0x957
 1f18658: d000a205     	adrp	x5, 0x335a000 <dyld_stub_binder+0x335a000>
 1f1865c: 911d90a5     	add	x5, x5, #0x764
 1f18660: aa1503e0     	mov	x0, x21
 1f18664: 52804e41     	mov	w1, #0x272              ; =626
 1f18668: 940003a7     	bl	0x1f19504 <_lepus_get_length32+0x6e888>
 1f1866c: 1400000a     	b	0x1f18694 <_lepus_get_length32+0x6da18>
 1f18670: d000a200     	adrp	x0, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18674: 91175800     	add	x0, x0, #0x5d6
 1f18678: b00094e3     	adrp	x3, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f1867c: 91255c63     	add	x3, x3, #0x957
 1f18680: d000a204     	adrp	x4, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18684: 911d9084     	add	x4, x4, #0x764
 1f18688: f90003f8     	str	x24, [sp]
 1f1868c: 52804e41     	mov	w1, #0x272              ; =626
 1f18690: 9400039b     	bl	0x1f194fc <_lepus_get_length32+0x6e880>
 1f18694: f9400320     	ldr	x0, [x25]
 1f18698: 9102c3e1     	add	x1, sp, #0xb0
 1f1869c: aa1c03e2     	mov	x2, x28
 1f186a0: aa1403e3     	mov	x3, x20
 1f186a4: 9400006a     	bl	0x1f1884c <_lepus_get_length32+0x6dbd0>
 1f186a8: aa0003f8     	mov	x24, x0
 1f186ac: 9102c3e0     	add	x0, sp, #0xb0
 1f186b0: 97ac2c77     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 1f186b4: f85703a8     	ldur	x8, [x29, #-0x90]
 1f186b8: 9000ad29     	adrp	x9, 0x34bc000 <dyld_stub_binder+0x34bc000>
 1f186bc: f9435529     	ldr	x9, [x9, #0x6a8]
 1f186c0: f9400129     	ldr	x9, [x9]
 1f186c4: eb08013f     	cmp	x9, x8
 1f186c8: 540001a1     	b.ne	0x1f186fc <_lepus_get_length32+0x6da80>
 1f186cc: aa1803e0     	mov	x0, x24
 1f186d0: a95a7bfd     	ldp	x29, x30, [sp, #0x1a0]
 1f186d4: a9594ff4     	ldp	x20, x19, [sp, #0x190]
 1f186d8: a95857f6     	ldp	x22, x21, [sp, #0x180]
 1f186dc: a9575ff8     	ldp	x24, x23, [sp, #0x170]
 1f186e0: a95667fa     	ldp	x26, x25, [sp, #0x160]
 1f186e4: a9556ffc     	ldp	x28, x27, [sp, #0x150]
 1f186e8: 6d5423e9     	ldp	d9, d8, [sp, #0x140]
 1f186ec: 6d532beb     	ldp	d11, d10, [sp, #0x130]
 1f186f0: 6d5233ed     	ldp	d13, d12, [sp, #0x120]
 1f186f4: 9106c3ff     	add	sp, sp, #0x1b0
 1f186f8: d65f03c0     	ret
 1f186fc: 942a2fdd     	bl	0x29a4670 <dyld_stub_binder+0x29a4670>
 1f18700: 14000003     	b	0x1f1870c <_lepus_get_length32+0x6da90>
 1f18704: 1400002a     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18708: 14000029     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f1870c: aa0003f3     	mov	x19, x0
 1f18710: 910143e0     	add	x0, sp, #0x50
 1f18714: 940911b3     	bl	0x215cde0 <__ZN4Bach15BachTextureInfo10tensorNameEv+0x57b30>
 1f18718: 14000026     	b	0x1f187b0 <_lepus_get_length32+0x6db34>
 1f1871c: 14000024     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18720: 14000023     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18724: 14000022     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18728: 14000021     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f1872c: 14000020     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18730: 1400001f     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18734: 1400001e     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18738: 1400001d     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f1873c: 1400001c     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18740: 1400000a     	b	0x1f18768 <_lepus_get_length32+0x6daec>
 1f18744: 1400001a     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18748: 14000019     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f1874c: 14000018     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18750: 14000017     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18754: 14000016     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18758: 14000015     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f1875c: 14000014     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18760: 14000013     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18764: 14000012     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18768: aa0003f3     	mov	x19, x0
 1f1876c: 9400036a     	bl	0x1f19514 <_lepus_get_length32+0x6e898>
 1f18770: 14000010     	b	0x1f187b0 <_lepus_get_length32+0x6db34>
 1f18774: 1400000e     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18778: 1400000d     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f1877c: 1400000c     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18780: 1400000b     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18784: 1400000a     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18788: 14000009     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f1878c: 14000008     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18790: 14000007     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f18794: 14000001     	b	0x1f18798 <_lepus_get_length32+0x6db1c>
 1f18798: aa0003f3     	mov	x19, x0
 1f1879c: 94000366     	bl	0x1f19534 <_lepus_get_length32+0x6e8b8>
 1f187a0: 14000006     	b	0x1f187b8 <_lepus_get_length32+0x6db3c>
 1f187a4: 14000002     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f187a8: 14000001     	b	0x1f187ac <_lepus_get_length32+0x6db30>
 1f187ac: aa0003f3     	mov	x19, x0
 1f187b0: 9102c3e0     	add	x0, sp, #0xb0
 1f187b4: 97ac2c36     	bl	0xa2388c <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13d9ac>
 1f187b8: 94000344     	bl	0x1f194c8 <_lepus_get_length32+0x6e84c>
 1f187bc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 1f187c0: 910003fd     	mov	x29, sp
 1f187c4: 94085fe0     	bl	0x2130744 <__ZN4Bach15BachTextureInfo10tensorNameEv+0x2b494>
 1f187c8: f100001f     	cmp	x0, #0x0
 1f187cc: 1a9f07e0     	cset	w0, ne
 1f187d0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 1f187d4: d65f03c0     	ret
 1f187d8: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 1f187dc: a9017bfd     	stp	x29, x30, [sp, #0x10]
 1f187e0: 910043fd     	add	x29, sp, #0x10
 1f187e4: aa0103f4     	mov	x20, x1
 1f187e8: aa0003f3     	mov	x19, x0
 1f187ec: 3dc00020     	ldr	q0, [x1]
 1f187f0: 3d800000     	str	q0, [x0]
 1f187f4: eb01001f     	cmp	x0, x1
 1f187f8: 54000080     	b.eq	0x1f18808 <_lepus_get_length32+0x6db8c>
 1f187fc: 91004260     	add	x0, x19, #0x10
 1f18800: a9410a81     	ldp	x1, x2, [x20, #0x10]
 1f18804: 9400014e     	bl	0x1f18d3c <_lepus_get_length32+0x6e0c0>
 1f18808: 3cc28280     	ldur	q0, [x20, #0x28]
 1f1880c: 3c828260     	stur	q0, [x19, #0x28]
 1f18810: aa1303e0     	mov	x0, x19
 1f18814: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 1f18818: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 1f1881c: d65f03c0     	ret
 1f18820: a9402408     	ldp	x8, x9, [x0]
 1f18824: cb080129     	sub	x9, x9, x8
 1f18828: 9343fd29     	asr	x9, x9, #3
 1f1882c: eb01013f     	cmp	x9, x1
 1f18830: 54000062     	b.hs	0x1f1883c <_lepus_get_length32+0x6dbc0>
 1f18834: cb090021     	sub	x1, x1, x9
 1f18838: 1400025a     	b	0x1f191a0 <_lepus_get_length32+0x6e524>
 1f1883c: 54000069     	b.ls	0x1f18848 <_lepus_get_length32+0x6dbcc>
 1f18840: 8b010d08     	add	x8, x8, x1, lsl #3
 1f18844: f9000408     	str	x8, [x0, #0x8]
 1f18848: d65f03c0     	ret
 1f1884c: d10443ff     	sub	sp, sp, #0x110
 1f18850: a90b6ffc     	stp	x28, x27, [sp, #0xb0]
 1f18854: a90c67fa     	stp	x26, x25, [sp, #0xc0]
 1f18858: a90d5ff8     	stp	x24, x23, [sp, #0xd0]
 1f1885c: a90e57f6     	stp	x22, x21, [sp, #0xe0]
 1f18860: a90f4ff4     	stp	x20, x19, [sp, #0xf0]
 1f18864: a9107bfd     	stp	x29, x30, [sp, #0x100]
 1f18868: 910403fd     	add	x29, sp, #0x100
 1f1886c: b9448c1c     	ldr	w28, [x0, #0x48c]
 1f18870: 7100039f     	cmp	w28, #0x0
 1f18874: 54000eed     	b.le	0x1f18a50 <_lepus_get_length32+0x6ddd4>
 1f18878: aa0103f6     	mov	x22, x1
 1f1887c: aa0003f5     	mov	x21, x0
 1f18880: f9001c5c     	str	x28, [x2, #0x38]
 1f18884: f9001c7c     	str	x28, [x3, #0x38]
 1f18888: b9456808     	ldr	w8, [x0, #0x568]
 1f1888c: 7100091f     	cmp	w8, #0x2
 1f18890: 54000041     	b.ne	0x1f18898 <_lepus_get_length32+0x6dc1c>
 1f18894: f9001c5f     	str	xzr, [x2, #0x38]
 1f18898: 9112e2b7     	add	x23, x21, #0x4b8
 1f1889c: 911312bb     	add	x27, x21, #0x4c4
 1f188a0: 911182b4     	add	x20, x21, #0x460
 1f188a4: a9008fe2     	stp	x2, x3, [sp, #0x8]
 1f188a8: 91010078     	add	x24, x3, #0x40
 1f188ac: 91010059     	add	x25, x2, #0x40
 1f188b0: d00073b3     	adrp	x19, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f188b4: 91394273     	add	x19, x19, #0xe50
 1f188b8: aa1503fa     	mov	x26, x21
 1f188bc: b4000cfc     	cbz	x28, 0x1f18a58 <_lepus_get_length32+0x6dddc>
 1f188c0: b9400288     	ldr	w8, [x20]
 1f188c4: b90002e8     	str	w8, [x23]
 1f188c8: f9400308     	ldr	x8, [x24]
 1f188cc: b5000348     	cbnz	x8, 0x1f18934 <_lepus_get_length32+0x6dcb8>
 1f188d0: f9000ffa     	str	x26, [sp, #0x18]
 1f188d4: aa1403fa     	mov	x26, x20
 1f188d8: aa1c03f4     	mov	x20, x28
 1f188dc: aa1903fc     	mov	x28, x25
 1f188e0: aa1503f9     	mov	x25, x21
 1f188e4: aa1703f5     	mov	x21, x23
 1f188e8: aa1603f7     	mov	x23, x22
 1f188ec: aa1303f6     	mov	x22, x19
 1f188f0: aa1b03f3     	mov	x19, x27
 1f188f4: 52800800     	mov	w0, #0x40               ; =64
 1f188f8: 942a2f16     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
 1f188fc: aa0003fb     	mov	x27, x0
 1f18900: 9400018a     	bl	0x1f18f28 <_lepus_get_length32+0x6e2ac>
 1f18904: aa1803e0     	mov	x0, x24
 1f18908: aa1b03e1     	mov	x1, x27
 1f1890c: 9400008a     	bl	0x1f18b34 <_lepus_get_length32+0x6deb8>
 1f18910: aa1303fb     	mov	x27, x19
 1f18914: aa1603f3     	mov	x19, x22
 1f18918: aa1703f6     	mov	x22, x23
 1f1891c: aa1503f7     	mov	x23, x21
 1f18920: aa1903f5     	mov	x21, x25
 1f18924: aa1c03f9     	mov	x25, x28
 1f18928: aa1403fc     	mov	x28, x20
 1f1892c: aa1a03f4     	mov	x20, x26
 1f18930: f9400ffa     	ldr	x26, [sp, #0x18]
 1f18934: ad400660     	ldp	q0, q1, [x19]
 1f18938: ad0407e0     	stp	q0, q1, [sp, #0x80]
 1f1893c: b9402268     	ldr	w8, [x19, #0x20]
 1f18940: b900a3e8     	str	w8, [sp, #0xa0]
 1f18944: 910083e0     	add	x0, sp, #0x20
 1f18948: 97ac3516     	bl	0xa25da0 <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x13fec0>
 1f1894c: b94492a8     	ldr	w8, [x21, #0x490]
 1f18950: 7100211f     	cmp	w8, #0x8
 1f18954: 54000948     	b.hi	0x1f18a7c <_lepus_get_length32+0x6de00>
 1f18958: d00073ab     	adrp	x11, 0x2d8e000 <__ZTSN2pk7SkTQuadE+0x5c3c>
 1f1895c: 912bc16b     	add	x11, x11, #0xaf0
 1f18960: 10000089     	adr	x9, 0x1f18970 <_lepus_get_length32+0x6dcf4>
 1f18964: 3868696a     	ldrb	w10, [x11, x8]
 1f18968: 8b0a0929     	add	x9, x9, x10, lsl #2
 1f1896c: d61f0120     	br	x9
 1f18970: 9400029d     	bl	0x1f193e4 <_lepus_get_length32+0x6e768>
 1f18974: 94003e13     	bl	0x1f281c0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x8dc>
 1f18978: 1400001e     	b	0x1f189f0 <_lepus_get_length32+0x6dd74>
 1f1897c: 9400029a     	bl	0x1f193e4 <_lepus_get_length32+0x6e768>
 1f18980: 94004335     	bl	0x1f29654 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1d70>
 1f18984: 1400001b     	b	0x1f189f0 <_lepus_get_length32+0x6dd74>
 1f18988: 395682a8     	ldrb	w8, [x21, #0x5a0]
 1f1898c: 340000a8     	cbz	w8, 0x1f189a0 <_lepus_get_length32+0x6dd24>
 1f18990: b9456aa8     	ldr	w8, [x21, #0x568]
 1f18994: 35000068     	cbnz	w8, 0x1f189a0 <_lepus_get_length32+0x6dd24>
 1f18998: 52800068     	mov	w8, #0x3                ; =3
 1f1899c: b9056aa8     	str	w8, [x21, #0x568]
 1f189a0: 94000291     	bl	0x1f193e4 <_lepus_get_length32+0x6e768>
 1f189a4: 94003ef3     	bl	0x1f28570 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xc8c>
 1f189a8: 14000012     	b	0x1f189f0 <_lepus_get_length32+0x6dd74>
 1f189ac: 9400028e     	bl	0x1f193e4 <_lepus_get_length32+0x6e768>
 1f189b0: 940040f9     	bl	0x1f28d94 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x14b0>
 1f189b4: 1400000f     	b	0x1f189f0 <_lepus_get_length32+0x6dd74>
 1f189b8: 9400028b     	bl	0x1f193e4 <_lepus_get_length32+0x6e768>
 1f189bc: 94004221     	bl	0x1f29240 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x195c>
 1f189c0: 1400000c     	b	0x1f189f0 <_lepus_get_length32+0x6dd74>
 1f189c4: 94000288     	bl	0x1f193e4 <_lepus_get_length32+0x6e768>
 1f189c8: 9400450c     	bl	0x1f29df8 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x2514>
 1f189cc: 14000009     	b	0x1f189f0 <_lepus_get_length32+0x6dd74>
 1f189d0: 94000285     	bl	0x1f193e4 <_lepus_get_length32+0x6e768>
 1f189d4: 940043d9     	bl	0x1f29938 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x2054>
 1f189d8: 14000006     	b	0x1f189f0 <_lepus_get_length32+0x6dd74>
 1f189dc: 94000282     	bl	0x1f193e4 <_lepus_get_length32+0x6e768>
 1f189e0: 94004477     	bl	0x1f29bbc <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x22d8>
 1f189e4: 14000003     	b	0x1f189f0 <_lepus_get_length32+0x6dd74>
 1f189e8: 9400027f     	bl	0x1f193e4 <_lepus_get_length32+0x6e768>
 1f189ec: 9400469e     	bl	0x1f2a464 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x2b80>
 1f189f0: b9456aa8     	ldr	w8, [x21, #0x568]
 1f189f4: 7100091f     	cmp	w8, #0x2
 1f189f8: 54000080     	b.eq	0x1f18a08 <_lepus_get_length32+0x6dd8c>
 1f189fc: 910083e0     	add	x0, sp, #0x20
 1f18a00: aa1903e1     	mov	x1, x25
 1f18a04: 94006751     	bl	0x1f32748 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xae64>
 1f18a08: f8408708     	ldr	x8, [x24], #0x8
 1f18a0c: fd400360     	ldr	d0, [x27]
 1f18a10: fd001d00     	str	d0, [x8, #0x38]
 1f18a14: fd4006c0     	ldr	d0, [x22, #0x8]
 1f18a18: 0ea00800     	rev64.2s	v0, v0
 1f18a1c: fd001900     	str	d0, [x8, #0x30]
 1f18a20: ad4407e0     	ldp	q0, q1, [sp, #0x80]
 1f18a24: b940a3e9     	ldr	w9, [sp, #0xa0]
 1f18a28: b9002d09     	str	w9, [x8, #0x2c]
 1f18a2c: 3c81c101     	stur	q1, [x8, #0x1c]
 1f18a30: 3c80c100     	stur	q0, [x8, #0xc]
 1f18a34: 940002b0     	bl	0x1f194f4 <_lepus_get_length32+0x6e878>
 1f18a38: d100079c     	sub	x28, x28, #0x1
 1f18a3c: 9100e35a     	add	x26, x26, #0x38
 1f18a40: 91001294     	add	x20, x20, #0x4
 1f18a44: 91002339     	add	x25, x25, #0x8
 1f18a48: b5fff3dc     	cbnz	x28, 0x1f188c0 <_lepus_get_length32+0x6dc44>
 1f18a4c: 14000003     	b	0x1f18a58 <_lepus_get_length32+0x6dddc>
 1f18a50: f9001c5f     	str	xzr, [x2, #0x38]
 1f18a54: f9001c7f     	str	xzr, [x3, #0x38]
 1f18a58: 52800020     	mov	w0, #0x1                ; =1
 1f18a5c: a9507bfd     	ldp	x29, x30, [sp, #0x100]
 1f18a60: a94f4ff4     	ldp	x20, x19, [sp, #0xf0]
 1f18a64: a94e57f6     	ldp	x22, x21, [sp, #0xe0]
 1f18a68: a94d5ff8     	ldp	x24, x23, [sp, #0xd0]
 1f18a6c: a94c67fa     	ldp	x26, x25, [sp, #0xc0]
 1f18a70: a94b6ffc     	ldp	x28, x27, [sp, #0xb0]
 1f18a74: 910443ff     	add	sp, sp, #0x110
 1f18a78: d65f03c0     	ret
 1f18a7c: 940d6278     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
 1f18a80: f9400bf3     	ldr	x19, [sp, #0x10]
 1f18a84: 34000260     	cbz	w0, 0x1f18ad0 <_lepus_get_length32+0x6de54>
 1f18a88: 940d6278     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
 1f18a8c: 7100281f     	cmp	w0, #0xa
 1f18a90: 5400034b     	b.lt	0x1f18af8 <_lepus_get_length32+0x6de7c>
 1f18a94: d000a216     	adrp	x22, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18a98: 91175ad6     	add	x22, x22, #0x5d6
 1f18a9c: aa1603e0     	mov	x0, x22
 1f18aa0: 52805a21     	mov	w1, #0x2d1              ; =721
 1f18aa4: 9400025c     	bl	0x1f19414 <_lepus_get_length32+0x6e798>
 1f18aa8: b94492a8     	ldr	w8, [x21, #0x490]
 1f18aac: f90003e8     	str	x8, [sp]
 1f18ab0: b00094e3     	adrp	x3, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f18ab4: 91255c63     	add	x3, x3, #0x957
 1f18ab8: d000a205     	adrp	x5, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18abc: 911e28a5     	add	x5, x5, #0x78a
 1f18ac0: aa1603e0     	mov	x0, x22
 1f18ac4: 52805a21     	mov	w1, #0x2d1              ; =721
 1f18ac8: 9400027e     	bl	0x1f194c0 <_lepus_get_length32+0x6e844>
 1f18acc: 1400000b     	b	0x1f18af8 <_lepus_get_length32+0x6de7c>
 1f18ad0: b94492a8     	ldr	w8, [x21, #0x490]
 1f18ad4: d000a200     	adrp	x0, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18ad8: 91175800     	add	x0, x0, #0x5d6
 1f18adc: b00094e3     	adrp	x3, 0x31b5000 <dyld_stub_binder+0x31b5000>
 1f18ae0: 91255c63     	add	x3, x3, #0x957
 1f18ae4: d000a204     	adrp	x4, 0x335a000 <dyld_stub_binder+0x335a000>
 1f18ae8: 911e2884     	add	x4, x4, #0x78a
 1f18aec: f90003e8     	str	x8, [sp]
 1f18af0: 52805a21     	mov	w1, #0x2d1              ; =721
 1f18af4: 94000271     	bl	0x1f194b8 <_lepus_get_length32+0x6e83c>
 1f18af8: f94007e8     	ldr	x8, [sp, #0x8]
 1f18afc: f9001d1f     	str	xzr, [x8, #0x38]
 1f18b00: f9001e7f     	str	xzr, [x19, #0x38]
 1f18b04: 9400027c     	bl	0x1f194f4 <_lepus_get_length32+0x6e878>
 1f18b08: 52801000     	mov	w0, #0x80               ; =128
 1f18b0c: 17ffffd4     	b	0x1f18a5c <_lepus_get_length32+0x6dde0>
 1f18b10: 14000006     	b	0x1f18b28 <_lepus_get_length32+0x6deac>
 1f18b14: 14000005     	b	0x1f18b28 <_lepus_get_length32+0x6deac>
 1f18b18: aa0003f3     	mov	x19, x0
 1f18b1c: aa1b03e0     	mov	x0, x27
 1f18b20: 942a2e80     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1f18b24: 14000003     	b	0x1f18b30 <_lepus_get_length32+0x6deb4>
 1f18b28: aa0003f3     	mov	x19, x0
 1f18b2c: 94000272     	bl	0x1f194f4 <_lepus_get_length32+0x6e878>
 1f18b30: 94000266     	bl	0x1f194c8 <_lepus_get_length32+0x6e84c>
 1f18b34: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 1f18b38: a9017bfd     	stp	x29, x30, [sp, #0x10]
 1f18b3c: 910043fd     	add	x29, sp, #0x10
 1f18b40: aa0003f3     	mov	x19, x0
 1f18b44: f9400000     	ldr	x0, [x0]
 1f18b48: eb01001f     	cmp	x0, x1
 1f18b4c: 54000220     	b.eq	0x1f18b90 <_lepus_get_length32+0x6df14>
 1f18b50: aa0103f4     	mov	x20, x1
 1f18b54: b40000c1     	cbz	x1, 0x1f18b6c <_lepus_get_length32+0x6def0>
 1f18b58: f9400288     	ldr	x8, [x20]
 1f18b5c: f9400108     	ldr	x8, [x8]
 1f18b60: aa1403e0     	mov	x0, x20
 1f18b64: d63f0100     	blr	x8
 1f18b68: f9400260     	ldr	x0, [x19]
 1f18b6c: b4000100     	cbz	x0, 0x1f18b8c <_lepus_get_length32+0x6df10>
 1f18b70: f9400008     	ldr	x8, [x0]
 1f18b74: f9400d08     	ldr	x8, [x8, #0x18]
 1f18b78: d63f0100     	blr	x8
 1f18b7c: f9400260     	ldr	x0, [x19]
 1f18b80: f9400008     	ldr	x8, [x0]
 1f18b84: f9400508     	ldr	x8, [x8, #0x8]
 1f18b88: d63f0100     	blr	x8
 1f18b8c: f9000274     	str	x20, [x19]
 1f18b90: aa1303e0     	mov	x0, x19
 1f18b94: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 1f18b98: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 1f18b9c: d65f03c0     	ret
 1f18ba0: a9bd57f6     	stp	x22, x21, [sp, #-0x30]!
 1f18ba4: a9014ff4     	stp	x20, x19, [sp, #0x10]
 1f18ba8: a9027bfd     	stp	x29, x30, [sp, #0x20]
 1f18bac: 910083fd     	add	x29, sp, #0x20
 1f18bb0: aa0003f3     	mov	x19, x0
 1f18bb4: 52800208     	mov	w8, #0x10               ; =16
 1f18bb8: 8b080269     	add	x9, x19, x8
 1f18bbc: a9007d3f     	stp	xzr, xzr, [x9]
 1f18bc0: f900093f     	str	xzr, [x9, #0x10]
 1f18bc4: 9100e108     	add	x8, x8, #0x38
 1f18bc8: f109011f     	cmp	x8, #0x240
 1f18bcc: 54ffff61     	b.ne	0x1f18bb8 <_lepus_get_length32+0x6df3c>
 1f18bd0: 8b080269     	add	x9, x19, x8
 1f18bd4: a9007d3f     	stp	xzr, xzr, [x9]
 1f18bd8: f900093f     	str	xzr, [x9, #0x10]
 1f18bdc: 9100e108     	add	x8, x8, #0x38
 1f18be0: f111c11f     	cmp	x8, #0x470
 1f18be4: 54ffff61     	b.ne	0x1f18bd0 <_lepus_get_length32+0x6df54>
 1f18be8: f0006d68     	adrp	x8, 0x2cc7000 <__ZTSN13AmazingEngine6CameraE+0x9a3>
 1f18bec: fd462100     	ldr	d0, [x8, #0xc40]
 1f18bf0: fd024660     	str	d0, [x19, #0x488]
 1f18bf4: b904927f     	str	wzr, [x19, #0x490]
 1f18bf8: 91125268     	add	x8, x19, #0x494
 1f18bfc: 52a86689     	mov	w9, #0x43340000         ; =1127481344
 1f18c00: 0e040d20     	dup.2s	v0, w9
 1f18c04: fd000100     	str	d0, [x8]
 1f18c08: b9049e69     	str	w9, [x19, #0x49c]
 1f18c0c: 91128274     	add	x20, x19, #0x4a0
 1f18c10: aa1403e0     	mov	x0, x20
 1f18c14: 9400001a     	bl	0x1f18c7c <_lepus_get_length32+0x6e000>
 1f18c18: 9112e260     	add	x0, x19, #0x4b8
 1f18c1c: 94006a40     	bl	0x1f3351c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xbc38>
 1f18c20: 3916827f     	strb	wzr, [x19, #0x5a0]
 1f18c24: aa1303e0     	mov	x0, x19
 1f18c28: a9427bfd     	ldp	x29, x30, [sp, #0x20]
 1f18c2c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 1f18c30: a8c357f6     	ldp	x22, x21, [sp], #0x30
 1f18c34: d65f03c0     	ret
 1f18c38: aa1403e8     	mov	x8, x20
 1f18c3c: aa0003f4     	mov	x20, x0
 1f18c40: aa0803e0     	mov	x0, x8
 1f18c44: 942a2c9c     	bl	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 1f18c48: 52808715     	mov	w21, #0x438             ; =1080
 1f18c4c: 8b150260     	add	x0, x19, x21
 1f18c50: 94006b11     	bl	0x1f33894 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xbfb0>
 1f18c54: d100e2b5     	sub	x21, x21, #0x38
 1f18c58: f10822bf     	cmp	x21, #0x208
 1f18c5c: 54ffff81     	b.ne	0x1f18c4c <_lepus_get_length32+0x6dfd0>
 1f18c60: 8b150260     	add	x0, x19, x21
 1f18c64: 94006b0c     	bl	0x1f33894 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xbfb0>
 1f18c68: d100e2b5     	sub	x21, x21, #0x38
 1f18c6c: b100a2bf     	cmn	x21, #0x28
 1f18c70: 54ffff81     	b.ne	0x1f18c60 <_lepus_get_length32+0x6dfe4>
 1f18c74: aa1403e0     	mov	x0, x20
 1f18c78: 942a293e     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 1f18c7c: d2800008     	mov	x8, #0x0                ; =0
 1f18c80: f100611f     	cmp	x8, #0x18
 1f18c84: 54000080     	b.eq	0x1f18c94 <_lepus_get_length32+0x6e018>
 1f18c88: f828681f     	str	xzr, [x0, x8]
 1f18c8c: 91002108     	add	x8, x8, #0x8
 1f18c90: 17fffffc     	b	0x1f18c80 <_lepus_get_length32+0x6e004>
 1f18c94: d65f03c0     	ret
 1f18c98: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 1f18c9c: a9017bfd     	stp	x29, x30, [sp, #0x10]
 1f18ca0: 910043fd     	add	x29, sp, #0x10
 1f18ca4: 91002008     	add	x8, x0, #0x8
 1f18ca8: 92800009     	mov	x9, #-0x1               ; =-1
 1f18cac: f8e90108     	ldaddal	x9, x8, [x8]
 1f18cb0: b4000088     	cbz	x8, 0x1f18cc0 <_lepus_get_length32+0x6e044>
 1f18cb4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 1f18cb8: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 1f18cbc: d65f03c0     	ret
 1f18cc0: aa0003f3     	mov	x19, x0
 1f18cc4: f9400008     	ldr	x8, [x0]
 1f18cc8: f9400908     	ldr	x8, [x8, #0x10]
 1f18ccc: d63f0100     	blr	x8
 1f18cd0: aa1303e0     	mov	x0, x19
 1f18cd4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 1f18cd8: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 1f18cdc: 142a2d36     	b	0x29a41b4 <dyld_stub_binder+0x29a41b4>
 1f18ce0: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 1f18ce4: a9017bfd     	stp	x29, x30, [sp, #0x10]
 1f18ce8: 910043fd     	add	x29, sp, #0x10
 1f18cec: aa0003f3     	mov	x19, x0
 1f18cf0: 91150000     	add	x0, x0, #0x540
 1f18cf4: 97a7f836     	bl	0x916dcc <__ZN3BRC10StringUtil15utf16be_to_utf8ERKNSt3__112basic_stringIDsNS1_11char_traitsIDsEENS1_9allocatorIDsEEEE+0x30eec>
 1f18cf8: 91128260     	add	x0, x19, #0x4a0
 1f18cfc: 942a2c6e     	bl	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 1f18d00: 52808714     	mov	w20, #0x438             ; =1080
 1f18d04: 8b140260     	add	x0, x19, x20
 1f18d08: 94006ae3     	bl	0x1f33894 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xbfb0>
 1f18d0c: d100e294     	sub	x20, x20, #0x38
 1f18d10: f108229f     	cmp	x20, #0x208
 1f18d14: 54ffff81     	b.ne	0x1f18d04 <_lepus_get_length32+0x6e088>
 1f18d18: 8b140260     	add	x0, x19, x20
 1f18d1c: 94006ade     	bl	0x1f33894 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xbfb0>
 1f18d20: d100e294     	sub	x20, x20, #0x38
 1f18d24: b100a29f     	cmn	x20, #0x28
 1f18d28: 54ffff81     	b.ne	0x1f18d18 <_lepus_get_length32+0x6e09c>
 1f18d2c: aa1303e0     	mov	x0, x19
 1f18d30: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 1f18d34: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 1f18d38: d65f03c0     	ret
 1f18d3c: a9bb67fa     	stp	x26, x25, [sp, #-0x50]!
 1f18d40: a9015ff8     	stp	x24, x23, [sp, #0x10]
 1f18d44: a90257f6     	stp	x22, x21, [sp, #0x20]
 1f18d48: a9034ff4     	stp	x20, x19, [sp, #0x30]
 1f18d4c: a9047bfd     	stp	x29, x30, [sp, #0x40]
 1f18d50: 910103fd     	add	x29, sp, #0x40
 1f18d54: aa0103f4     	mov	x20, x1
 1f18d58: aa0003f3     	mov	x19, x0
 1f18d5c: cb010056     	sub	x22, x2, x1
 1f18d60: 9343fed7     	asr	x23, x22, #3
 1f18d64: f9400808     	ldr	x8, [x0, #0x10]
 1f18d68: f9400018     	ldr	x24, [x0]
 1f18d6c: cb180108     	sub	x8, x8, x24
 1f18d70: eb880eff     	cmp	x23, x8, asr #3
 1f18d74: 54000269     	b.ls	0x1f18dc0 <_lepus_get_length32+0x6e144>
 1f18d78: aa1303e0     	mov	x0, x19
 1f18d7c: 94006b15     	bl	0x1f339d0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xc0ec>
 1f18d80: aa1303e0     	mov	x0, x19
 1f18d84: aa1703e1     	mov	x1, x23
 1f18d88: 94000030     	bl	0x1f18e48 <_lepus_get_length32+0x6e1cc>
 1f18d8c: aa0003e1     	mov	x1, x0
 1f18d90: aa1303e0     	mov	x0, x19
 1f18d94: 94006aec     	bl	0x1f33944 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xc060>
 1f18d98: f9400675     	ldr	x21, [x19, #0x8]
 1f18d9c: f10006df     	cmp	x22, #0x1
 1f18da0: 540000cb     	b.lt	0x1f18db8 <_lepus_get_length32+0x6e13c>
 1f18da4: aa1503e0     	mov	x0, x21
 1f18da8: aa1403e1     	mov	x1, x20
 1f18dac: aa1603e2     	mov	x2, x22
 1f18db0: 942a3259     	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1f18db4: 8b1602b5     	add	x21, x21, x22
 1f18db8: f9000675     	str	x21, [x19, #0x8]
 1f18dbc: 1400001d     	b	0x1f18e30 <_lepus_get_length32+0x6e1b4>
 1f18dc0: aa0203f5     	mov	x21, x2
 1f18dc4: f9400668     	ldr	x8, [x19, #0x8]
 1f18dc8: cb180108     	sub	x8, x8, x24
 1f18dcc: 8b080289     	add	x9, x20, x8
 1f18dd0: 9343fd1a     	asr	x26, x8, #3
 1f18dd4: eb880eff     	cmp	x23, x8, asr #3
 1f18dd8: 9a828136     	csel	x22, x9, x2, hi
 1f18ddc: eb1402d9     	subs	x25, x22, x20
 1f18de0: 540000a0     	b.eq	0x1f18df4 <_lepus_get_length32+0x6e178>
 1f18de4: aa1803e0     	mov	x0, x24
 1f18de8: aa1403e1     	mov	x1, x20
 1f18dec: aa1903e2     	mov	x2, x25
 1f18df0: 942a324c     	bl	0x29a5720 <dyld_stub_binder+0x29a5720>
 1f18df4: eb1a02ff     	cmp	x23, x26
 1f18df8: 54000189     	b.ls	0x1f18e28 <_lepus_get_length32+0x6e1ac>
 1f18dfc: f9400674     	ldr	x20, [x19, #0x8]
 1f18e00: cb1602b5     	sub	x21, x21, x22
 1f18e04: f10006bf     	cmp	x21, #0x1
 1f18e08: 540000cb     	b.lt	0x1f18e20 <_lepus_get_length32+0x6e1a4>
 1f18e0c: aa1403e0     	mov	x0, x20
 1f18e10: aa1603e1     	mov	x1, x22
 1f18e14: aa1503e2     	mov	x2, x21
 1f18e18: 942a323f     	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1f18e1c: 8b150294     	add	x20, x20, x21
 1f18e20: f9000674     	str	x20, [x19, #0x8]
 1f18e24: 14000003     	b	0x1f18e30 <_lepus_get_length32+0x6e1b4>
 1f18e28: 8b190308     	add	x8, x24, x25
 1f18e2c: f9000668     	str	x8, [x19, #0x8]
 1f18e30: a9447bfd     	ldp	x29, x30, [sp, #0x40]
 1f18e34: a9434ff4     	ldp	x20, x19, [sp, #0x30]
 1f18e38: a94257f6     	ldp	x22, x21, [sp, #0x20]
 1f18e3c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
 1f18e40: a8c567fa     	ldp	x26, x25, [sp], #0x50
 1f18e44: d65f03c0     	ret
 1f18e48: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 1f18e4c: 910003fd     	mov	x29, sp
 1f18e50: d37dfc28     	lsr	x8, x1, #61
 1f18e54: b50001a8     	cbnz	x8, 0x1f18e88 <_lepus_get_length32+0x6e20c>
 1f18e58: f9400808     	ldr	x8, [x0, #0x10]
 1f18e5c: f9400009     	ldr	x9, [x0]
 1f18e60: cb090108     	sub	x8, x8, x9
 1f18e64: 9342fd09     	asr	x9, x8, #2
 1f18e68: eb01013f     	cmp	x9, x1
 1f18e6c: 9a893029     	csel	x9, x1, x9, lo
 1f18e70: 92fe000a     	mov	x10, #0xfffffffffffffff ; =1152921504606846975
 1f18e74: eb880d5f     	cmp	x10, x8, asr #3
 1f18e78: 92fc0008     	mov	x8, #0x1fffffffffffffff ; =2305843009213693951
 1f18e7c: 9a888120     	csel	x0, x9, x8, hi
 1f18e80: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 1f18e84: d65f03c0     	ret
 1f18e88: 94000001     	bl	0x1f18e8c <_lepus_get_length32+0x6e210>
 1f18e8c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 1f18e90: 910003fd     	mov	x29, sp
 1f18e94: 942a2b66     	bl	0x29a3c2c <dyld_stub_binder+0x29a3c2c>
 1f18e98: d37dfc08     	lsr	x8, x0, #61
 1f18e9c: b5000068     	cbnz	x8, 0x1f18ea8 <_lepus_get_length32+0x6e22c>
 1f18ea0: d37df000     	lsl	x0, x0, #3
 1f18ea4: 142a2dab     	b	0x29a4550 <dyld_stub_binder+0x29a4550>
 1f18ea8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 1f18eac: 910003fd     	mov	x29, sp
 1f18eb0: 94000001     	bl	0x1f18eb4 <_lepus_get_length32+0x6e238>
 1f18eb4: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 1f18eb8: a9017bfd     	stp	x29, x30, [sp, #0x10]
 1f18ebc: 910043fd     	add	x29, sp, #0x10
 1f18ec0: 52800200     	mov	w0, #0x10               ; =16
 1f18ec4: 942a2dac     	bl	0x29a4574 <dyld_stub_binder+0x29a4574>
 1f18ec8: aa0003f3     	mov	x19, x0
 1f18ecc: 9400000c     	bl	0x1f18efc <_lepus_get_length32+0x6e280>
 1f18ed0: d000aca1     	adrp	x1, 0x34ae000 <dyld_stub_binder+0x34ae000>
 1f18ed4: f9433021     	ldr	x1, [x1, #0x660]
 1f18ed8: d000aca2     	adrp	x2, 0x34ae000 <dyld_stub_binder+0x34ae000>
 1f18edc: f942b042     	ldr	x2, [x2, #0x560]
 1f18ee0: aa1303e0     	mov	x0, x19
 1f18ee4: 942a2dc8     	bl	0x29a4604 <dyld_stub_binder+0x29a4604>
 1f18ee8: aa0003f4     	mov	x20, x0
 1f18eec: aa1303e0     	mov	x0, x19
 1f18ef0: 942a2db3     	bl	0x29a45bc <dyld_stub_binder+0x29a45bc>
 1f18ef4: aa1403e0     	mov	x0, x20
 1f18ef8: 942a289e     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 1f18efc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 1f18f00: 910003fd     	mov	x29, sp
 1f18f04: f0009d01     	adrp	x1, 0x32bb000 <dyld_stub_binder+0x32bb000>
 1f18f08: 910aa821     	add	x1, x1, #0x2aa
 1f18f0c: 942a2b60     	bl	0x29a3c8c <dyld_stub_binder+0x29a3c8c>
 1f18f10: f000ad08     	adrp	x8, 0x34bb000 <dyld_stub_binder+0x34bb000>
 1f18f14: f940d908     	ldr	x8, [x8, #0x1b0]
 1f18f18: 91004108     	add	x8, x8, #0x10
 1f18f1c: f9000008     	str	x8, [x0]
 1f18f20: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 1f18f24: d65f03c0     	ret
 1f18f28: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 1f18f2c: a9017bfd     	stp	x29, x30, [sp, #0x10]
 1f18f30: 910043fd     	add	x29, sp, #0x10
 1f18f34: aa0003f3     	mov	x19, x0
 1f18f38: b900081f     	str	wzr, [x0, #0x8]
 1f18f3c: b000ad08     	adrp	x8, 0x34b9000 <dyld_stub_binder+0x34b9000>
 1f18f40: f9403908     	ldr	x8, [x8, #0x70]
 1f18f44: 91004108     	add	x8, x8, #0x10
 1f18f48: f9000008     	str	x8, [x0]
 1f18f4c: 940db98d     	bl	0x2287580 <__ZN13AmazingEngine10Matrix3x3f8identityEv>
 1f18f50: ad400400     	ldp	q0, q1, [x0]
 1f18f54: b9402008     	ldr	w8, [x0, #0x20]
 1f18f58: b9002e68     	str	w8, [x19, #0x2c]
 1f18f5c: 3c81c261     	stur	q1, [x19, #0x1c]
 1f18f60: 3c80c260     	stur	q0, [x19, #0xc]
 1f18f64: a9037e7f     	stp	xzr, xzr, [x19, #0x30]
 1f18f68: aa1303e0     	mov	x0, x19
 1f18f6c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 1f18f70: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 1f18f74: d65f03c0     	ret
 1f18f78: aa0003f4     	mov	x20, x0
 1f18f7c: aa1303e0     	mov	x0, x19
 1f18f80: 940d70a6     	bl	0x2275218 <__ZN13AmazingEngine7RefBaseD2Ev>
 1f18f84: aa1403e0     	mov	x0, x20
 1f18f88: 942a287a     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 1f18f8c: aa0003e8     	mov	x8, x0
 1f18f90: f9400000     	ldr	x0, [x0]
 1f18f94: f9000101     	str	x1, [x8]
 1f18f98: b4000040     	cbz	x0, 0x1f18fa0 <_lepus_get_length32+0x6e324>
 1f18f9c: 142a2d61     	b	0x29a4520 <dyld_stub_binder+0x29a4520>
 1f18fa0: d65f03c0     	ret
 1f18fa4: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 1f18fa8: a9017bfd     	stp	x29, x30, [sp, #0x10]
 1f18fac: 910043fd     	add	x29, sp, #0x10
 1f18fb0: aa0003f3     	mov	x19, x0
 1f18fb4: f9400000     	ldr	x0, [x0]
 1f18fb8: f900027f     	str	xzr, [x19]
 1f18fbc: b4000040     	cbz	x0, 0x1f18fc4 <_lepus_get_length32+0x6e348>
 1f18fc0: 942a2d58     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
 1f18fc4: aa1303e0     	mov	x0, x19
 1f18fc8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 1f18fcc: 14000135     	b	0x1f194a0 <_lepus_get_length32+0x6e824>
 1f18fd0: 52800300     	mov	w0, #0x18               ; =24
 1f18fd4: 142a2d5f     	b	0x29a4550 <dyld_stub_binder+0x29a4550>
 1f18fd8: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 1f18fdc: a9017bfd     	stp	x29, x30, [sp, #0x10]
 1f18fe0: 910043fd     	add	x29, sp, #0x10
 1f18fe4: 94000131     	bl	0x1f194a8 <_lepus_get_length32+0x6e82c>
 1f18fe8: b40000b4     	cbz	x20, 0x1f18ffc <_lepus_get_length32+0x6e380>
 1f18fec: 39404268     	ldrb	w8, [x19, #0x10]
 1f18ff0: 34000048     	cbz	w8, 0x1f18ff8 <_lepus_get_length32+0x6e37c>
 1f18ff4: 94000146     	bl	0x1f1950c <_lepus_get_length32+0x6e890>
 1f18ff8: 94000136     	bl	0x1f194d0 <_lepus_get_length32+0x6e854>
 1f18ffc: aa1303e0     	mov	x0, x19
 1f19000: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 1f19004: 14000127     	b	0x1f194a0 <_lepus_get_length32+0x6e824>
 1f19008: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 1f1900c: 910003fd     	mov	x29, sp
 1f19010: 39405c09     	ldrb	w9, [x0, #0x17]
 1f19014: 13001d28     	sxtb	w8, w9
 1f19018: f940040a     	ldr	x10, [x0, #0x8]
 1f1901c: 7100011f     	cmp	w8, #0x0
 1f19020: 9a89b142     	csel	x2, x10, x9, lt
 1f19024: 39405c2a     	ldrb	w10, [x1, #0x17]
 1f19028: 13001d48     	sxtb	w8, w10
 1f1902c: f940042b     	ldr	x11, [x1, #0x8]
 1f19030: 7100011f     	cmp	w8, #0x0
 1f19034: 9a8ab16a     	csel	x10, x11, x10, lt
 1f19038: eb0a005f     	cmp	x2, x10
 1f1903c: 54000201     	b.ne	0x1f1907c <_lepus_get_length32+0x6e400>
 1f19040: f940002a     	ldr	x10, [x1]
 1f19044: 7100011f     	cmp	w8, #0x0
 1f19048: 9a81b141     	csel	x1, x10, x1, lt
 1f1904c: 373801c9     	tbnz	w9, #0x7, 0x1f19084 <_lepus_get_length32+0x6e408>
 1f19050: f100013f     	cmp	x9, #0x0
 1f19054: 1a9f17e8     	cset	w8, eq
 1f19058: b40001e9     	cbz	x9, 0x1f19094 <_lepus_get_length32+0x6e418>
 1f1905c: 3940000a     	ldrb	w10, [x0]
 1f19060: 3940002b     	ldrb	w11, [x1]
 1f19064: 6b0b015f     	cmp	w10, w11
 1f19068: 54000161     	b.ne	0x1f19094 <_lepus_get_length32+0x6e418>
 1f1906c: d1000529     	sub	x9, x9, #0x1
 1f19070: 91000400     	add	x0, x0, #0x1
 1f19074: 91000421     	add	x1, x1, #0x1
 1f19078: 17fffff6     	b	0x1f19050 <_lepus_get_length32+0x6e3d4>
 1f1907c: 52800008     	mov	w8, #0x0                ; =0
 1f19080: 14000005     	b	0x1f19094 <_lepus_get_length32+0x6e418>
 1f19084: f9400000     	ldr	x0, [x0]
 1f19088: 94008824     	bl	0x1f3b118 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x13834>
 1f1908c: 7100001f     	cmp	w0, #0x0
 1f19090: 1a9f17e8     	cset	w8, eq
 1f19094: aa0803e0     	mov	x0, x8
 1f19098: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 1f1909c: d65f03c0     	ret
 1f190a0: aa0003e8     	mov	x8, x0
 1f190a4: f9400000     	ldr	x0, [x0]
 1f190a8: f9000101     	str	x1, [x8]
 1f190ac: b4000040     	cbz	x0, 0x1f190b4 <_lepus_get_length32+0x6e438>
 1f190b0: 142a2d1c     	b	0x29a4520 <dyld_stub_binder+0x29a4520>
 1f190b4: d65f03c0     	ret
 1f190b8: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 1f190bc: a9017bfd     	stp	x29, x30, [sp, #0x10]
 1f190c0: 910043fd     	add	x29, sp, #0x10
 1f190c4: 940000f9     	bl	0x1f194a8 <_lepus_get_length32+0x6e82c>
 1f190c8: b40000b4     	cbz	x20, 0x1f190dc <_lepus_get_length32+0x6e460>
 1f190cc: 39404268     	ldrb	w8, [x19, #0x10]
 1f190d0: 34000048     	cbz	w8, 0x1f190d8 <_lepus_get_length32+0x6e45c>
 1f190d4: 9400010e     	bl	0x1f1950c <_lepus_get_length32+0x6e890>
 1f190d8: 940000fe     	bl	0x1f194d0 <_lepus_get_length32+0x6e854>
 1f190dc: aa1303e0     	mov	x0, x19
 1f190e0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 1f190e4: 140000ef     	b	0x1f194a0 <_lepus_get_length32+0x6e824>
 1f190e8: aa0003e8     	mov	x8, x0
 1f190ec: f9400000     	ldr	x0, [x0]
 1f190f0: f9000101     	str	x1, [x8]
 1f190f4: b4000040     	cbz	x0, 0x1f190fc <_lepus_get_length32+0x6e480>
 1f190f8: 142a2d0a     	b	0x29a4520 <dyld_stub_binder+0x29a4520>
 1f190fc: d65f03c0     	ret
 1f19100: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 1f19104: a9017bfd     	stp	x29, x30, [sp, #0x10]
 1f19108: 910043fd     	add	x29, sp, #0x10
 1f1910c: 940000e7     	bl	0x1f194a8 <_lepus_get_length32+0x6e82c>
 1f19110: b40000d4     	cbz	x20, 0x1f19128 <_lepus_get_length32+0x6e4ac>
 1f19114: 39404268     	ldrb	w8, [x19, #0x10]
 1f19118: 34000068     	cbz	w8, 0x1f19124 <_lepus_get_length32+0x6e4a8>
 1f1911c: 91004280     	add	x0, x20, #0x10
 1f19120: 9421a495     	bl	0x2782374 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xa55f4>
 1f19124: 940000eb     	bl	0x1f194d0 <_lepus_get_length32+0x6e854>
 1f19128: aa1303e0     	mov	x0, x19
 1f1912c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 1f19130: 140000dc     	b	0x1f194a0 <_lepus_get_length32+0x6e824>
 1f19134: aa0003e8     	mov	x8, x0
 1f19138: f9400000     	ldr	x0, [x0]
 1f1913c: f9000101     	str	x1, [x8]
 1f19140: b4000040     	cbz	x0, 0x1f19148 <_lepus_get_length32+0x6e4cc>
 1f19144: 142a2cf7     	b	0x29a4520 <dyld_stub_binder+0x29a4520>
 1f19148: d65f03c0     	ret
 1f1914c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 1f19150: 910003fd     	mov	x29, sp
 1f19154: 942a2ab6     	bl	0x29a3c2c <dyld_stub_binder+0x29a3c2c>
 1f19158: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 1f1915c: a9017bfd     	stp	x29, x30, [sp, #0x10]
 1f19160: 910043fd     	add	x29, sp, #0x10
 1f19164: 940000d1     	bl	0x1f194a8 <_lepus_get_length32+0x6e82c>
 1f19168: b40000b4     	cbz	x20, 0x1f1917c <_lepus_get_length32+0x6e500>
 1f1916c: 39404268     	ldrb	w8, [x19, #0x10]
 1f19170: 34000048     	cbz	w8, 0x1f19178 <_lepus_get_length32+0x6e4fc>
 1f19174: 940000e6     	bl	0x1f1950c <_lepus_get_length32+0x6e890>
 1f19178: 940000d6     	bl	0x1f194d0 <_lepus_get_length32+0x6e854>
 1f1917c: aa1303e0     	mov	x0, x19
 1f19180: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 1f19184: 140000c7     	b	0x1f194a0 <_lepus_get_length32+0x6e824>
 1f19188: aa0003e8     	mov	x8, x0
 1f1918c: f9400000     	ldr	x0, [x0]
 1f19190: f9000101     	str	x1, [x8]
 1f19194: b4000040     	cbz	x0, 0x1f1919c <_lepus_get_length32+0x6e520>
 1f19198: 142a2ce2     	b	0x29a4520 <dyld_stub_binder+0x29a4520>
 1f1919c: d65f03c0     	ret
 1f191a0: d101c3ff     	sub	sp, sp, #0x70
 1f191a4: a9035ff8     	stp	x24, x23, [sp, #0x30]
 1f191a8: a90457f6     	stp	x22, x21, [sp, #0x40]
 1f191ac: a9054ff4     	stp	x20, x19, [sp, #0x50]
 1f191b0: a9067bfd     	stp	x29, x30, [sp, #0x60]
 1f191b4: 910183fd     	add	x29, sp, #0x60
 1f191b8: aa0103f4     	mov	x20, x1
 1f191bc: aa0003f3     	mov	x19, x0
 1f191c0: a940a408     	ldp	x8, x9, [x0, #0x8]
 1f191c4: cb080129     	sub	x9, x9, x8
 1f191c8: eb890c3f     	cmp	x1, x9, asr #3
 1f191cc: 540004a9     	b.ls	0x1f19260 <_lepus_get_length32+0x6e5e4>
 1f191d0: 91004277     	add	x23, x19, #0x10
 1f191d4: f9400269     	ldr	x9, [x19]
 1f191d8: cb090108     	sub	x8, x8, x9
 1f191dc: 8b880e81     	add	x1, x20, x8, asr #3
 1f191e0: aa1303e0     	mov	x0, x19
 1f191e4: 97ffff19     	bl	0x1f18e48 <_lepus_get_length32+0x6e1cc>
 1f191e8: aa0003f5     	mov	x21, x0
 1f191ec: a9402269     	ldp	x9, x8, [x19]
 1f191f0: cb090108     	sub	x8, x8, x9
 1f191f4: 9343fd16     	asr	x22, x8, #3
 1f191f8: f90017f7     	str	x23, [sp, #0x28]
 1f191fc: b4000060     	cbz	x0, 0x1f19208 <_lepus_get_length32+0x6e58c>
 1f19200: aa1503e0     	mov	x0, x21
 1f19204: 97ffff25     	bl	0x1f18e98 <_lepus_get_length32+0x6e21c>
 1f19208: 8b160c08     	add	x8, x0, x22, lsl #3
 1f1920c: a900a3e0     	stp	x0, x8, [sp, #0x8]
 1f19210: 8b150c09     	add	x9, x0, x21, lsl #3
 1f19214: f90013e9     	str	x9, [sp, #0x20]
 1f19218: d37df28a     	lsl	x10, x20, #3
 1f1921c: 8b140d09     	add	x9, x8, x20, lsl #3
 1f19220: b400008a     	cbz	x10, 0x1f19230 <_lepus_get_length32+0x6e5b4>
 1f19224: f800851f     	str	xzr, [x8], #0x8
 1f19228: d100214a     	sub	x10, x10, #0x8
 1f1922c: b5ffffca     	cbnz	x10, 0x1f19224 <_lepus_get_length32+0x6e5a8>
 1f19230: f9000fe9     	str	x9, [sp, #0x18]
 1f19234: 910023e1     	add	x1, sp, #0x8
 1f19238: aa1303e0     	mov	x0, x19
 1f1923c: 9400001f     	bl	0x1f192b8 <_lepus_get_length32+0x6e63c>
 1f19240: 910023e0     	add	x0, sp, #0x8
 1f19244: 94036266     	bl	0x1ff1bdc <__ZNK4Bach17FaceFittingBuffer6_cloneEv+0xd000>
 1f19248: a9467bfd     	ldp	x29, x30, [sp, #0x60]
 1f1924c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
 1f19250: a94457f6     	ldp	x22, x21, [sp, #0x40]
 1f19254: a9435ff8     	ldp	x24, x23, [sp, #0x30]
 1f19258: 9101c3ff     	add	sp, sp, #0x70
 1f1925c: d65f03c0     	ret
 1f19260: aa1303e0     	mov	x0, x19
 1f19264: aa1403e1     	mov	x1, x20
 1f19268: a9467bfd     	ldp	x29, x30, [sp, #0x60]
 1f1926c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
 1f19270: a94457f6     	ldp	x22, x21, [sp, #0x40]
 1f19274: a9435ff8     	ldp	x24, x23, [sp, #0x30]
 1f19278: 9101c3ff     	add	sp, sp, #0x70
 1f1927c: 14000006     	b	0x1f19294 <_lepus_get_length32+0x6e618>
 1f19280: aa0003f3     	mov	x19, x0
 1f19284: 910023e0     	add	x0, sp, #0x8
 1f19288: 94036255     	bl	0x1ff1bdc <__ZNK4Bach17FaceFittingBuffer6_cloneEv+0xd000>
 1f1928c: aa1303e0     	mov	x0, x19
 1f19290: 942a27b8     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 1f19294: f9400408     	ldr	x8, [x0, #0x8]
 1f19298: 8b010d09     	add	x9, x8, x1, lsl #3
 1f1929c: d37df02a     	lsl	x10, x1, #3
 1f192a0: b400008a     	cbz	x10, 0x1f192b0 <_lepus_get_length32+0x6e634>
 1f192a4: f800851f     	str	xzr, [x8], #0x8
 1f192a8: d100214a     	sub	x10, x10, #0x8
 1f192ac: b5ffffca     	cbnz	x10, 0x1f192a4 <_lepus_get_length32+0x6e628>
 1f192b0: f9000409     	str	x9, [x0, #0x8]
 1f192b4: d65f03c0     	ret
 1f192b8: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 1f192bc: a9017bfd     	stp	x29, x30, [sp, #0x10]
 1f192c0: 910043fd     	add	x29, sp, #0x10
 1f192c4: aa0103f3     	mov	x19, x1
 1f192c8: aa0003f4     	mov	x20, x0
 1f192cc: a9402001     	ldp	x1, x8, [x0]
 1f192d0: f9400669     	ldr	x9, [x19, #0x8]
 1f192d4: cb010102     	sub	x2, x8, x1
 1f192d8: cb020120     	sub	x0, x9, x2
 1f192dc: f9000660     	str	x0, [x19, #0x8]
 1f192e0: f100045f     	cmp	x2, #0x1
 1f192e4: 5400006b     	b.lt	0x1f192f0 <_lepus_get_length32+0x6e674>
 1f192e8: 942a310b     	bl	0x29a5714 <dyld_stub_binder+0x29a5714>
 1f192ec: f9400660     	ldr	x0, [x19, #0x8]
 1f192f0: f9400288     	ldr	x8, [x20]
 1f192f4: f9000280     	str	x0, [x20]
 1f192f8: f9000668     	str	x8, [x19, #0x8]
 1f192fc: f9400688     	ldr	x8, [x20, #0x8]
 1f19300: f9400a69     	ldr	x9, [x19, #0x10]
 1f19304: f9000689     	str	x9, [x20, #0x8]
 1f19308: f9000a68     	str	x8, [x19, #0x10]
 1f1930c: f9400a88     	ldr	x8, [x20, #0x10]
 1f19310: f9400e69     	ldr	x9, [x19, #0x18]
 1f19314: f9000a89     	str	x9, [x20, #0x10]
 1f19318: f9000e68     	str	x8, [x19, #0x18]
 1f1931c: f9400668     	ldr	x8, [x19, #0x8]
 1f19320: f9000268     	str	x8, [x19]
 1f19324: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 1f19328: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 1f1932c: d65f03c0     	ret
 1f19330: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
 1f19334: a9017bfd     	stp	x29, x30, [sp, #0x10]
 1f19338: 910043fd     	add	x29, sp, #0x10
 1f1933c: aa0003f3     	mov	x19, x0
 1f19340: a9007c1f     	stp	xzr, xzr, [x0]
 1f19344: f900081f     	str	xzr, [x0, #0x10]
 1f19348: b40000e1     	cbz	x1, 0x1f19364 <_lepus_get_length32+0x6e6e8>
 1f1934c: aa0103f4     	mov	x20, x1
 1f19350: aa1303e0     	mov	x0, x19
 1f19354: 9400697c     	bl	0x1f33944 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xc060>
 1f19358: aa1303e0     	mov	x0, x19
 1f1935c: aa1403e1     	mov	x1, x20
 1f19360: 97ffffcd     	bl	0x1f19294 <_lepus_get_length32+0x6e618>
 1f19364: aa1303e0     	mov	x0, x19
 1f19368: a9417bfd     	ldp	x29, x30, [sp, #0x10]
 1f1936c: a8c24ff4     	ldp	x20, x19, [sp], #0x20
 1f19370: d65f03c0     	ret
 1f19374: aa0003f4     	mov	x20, x0
 1f19378: aa1303e0     	mov	x0, x19
 1f1937c: 94006946     	bl	0x1f33894 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xbfb0>
 1f19380: aa1403e0     	mov	x0, x20
 1f19384: 942a277b     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>
 1f19388: 910083e0     	add	x0, sp, #0x20
 1f1938c: 142a2aca     	b	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 1f19390: 910083e0     	add	x0, sp, #0x20
 1f19394: 17fff52b     	b	0x1f16840 <_lepus_get_length32+0x6bbc4>
 1f19398: 910083e1     	add	x1, sp, #0x20
 1f1939c: aa1303e0     	mov	x0, x19
 1f193a0: 1406b327     	b	0x20c603c <__ZN4Bach20BachAlgorithmFactory23CreateAlgorithmSystemGEEv+0x677c>
 1f193a4: 910083e1     	add	x1, sp, #0x20
 1f193a8: aa1403e0     	mov	x0, x20
 1f193ac: 1400b7cd     	b	0x1f472e0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1f9fc>
 1f193b0: 910003e1     	mov	x1, sp
 1f193b4: aa1603e0     	mov	x0, x22
 1f193b8: 1400b7ca     	b	0x1f472e0 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x1f9fc>
 1f193bc: bd000008     	str	s8, [x0]
 1f193c0: 910003e0     	mov	x0, sp
 1f193c4: 142a2abc     	b	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 1f193c8: 910003e0     	mov	x0, sp
 1f193cc: 142a2aba     	b	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 1f193d0: 910003e0     	mov	x0, sp
 1f193d4: 17fff51b     	b	0x1f16840 <_lepus_get_length32+0x6bbc4>
 1f193d8: bd400000     	ldr	s0, [x0]
 1f193dc: f941b668     	ldr	x8, [x19, #0x368]
 1f193e0: d65f03c0     	ret
 1f193e4: 910203e2     	add	x2, sp, #0x80
 1f193e8: 910083e4     	add	x4, sp, #0x20
 1f193ec: aa1a03e0     	mov	x0, x26
 1f193f0: aa1703e1     	mov	x1, x23
 1f193f4: aa1603e3     	mov	x3, x22
 1f193f8: d65f03c0     	ret
 1f193fc: 910083e1     	add	x1, sp, #0x20
