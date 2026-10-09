
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

00000000026dcd80 <__ZNK3bce6device5metal6Device14GetSharedEventEv>:
 275cb40: d10443ff     	sub	sp, sp, #0x110
 275cb44: a90b6ffc     	stp	x28, x27, [sp, #0xb0]
 275cb48: a90c67fa     	stp	x26, x25, [sp, #0xc0]
 275cb4c: a90d5ff8     	stp	x24, x23, [sp, #0xd0]
 275cb50: a90e57f6     	stp	x22, x21, [sp, #0xe0]
 275cb54: a90f4ff4     	stp	x20, x19, [sp, #0xf0]
 275cb58: a9107bfd     	stp	x29, x30, [sp, #0x100]
 275cb5c: 910403fd     	add	x29, sp, #0x100
 275cb60: 528efb88     	mov	w8, #0x77dc             ; =30684
 275cb64: 8b08001b     	add	x27, x0, x8
 275cb68: 39404368     	ldrb	w8, [x27, #0x10]
 275cb6c: 340005a8     	cbz	w8, 0x275cc20 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7fea0>
 275cb70: b9400368     	ldr	w8, [x27]
 275cb74: 7119991f     	cmp	w8, #0x666
 275cb78: 54000501     	b.ne	0x275cc18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7fe98>
 275cb7c: b9400b68     	ldr	w8, [x27, #0x8]
 275cb80: 7122211f     	cmp	w8, #0x888
 275cb84: 540004a1     	b.ne	0x275cc18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7fe98>
 275cb88: 94003b0a     	bl	0x276b7b0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8ea30>
 275cb8c: 8b08001a     	add	x26, x0, x8
 275cb90: 39401348     	ldrb	w8, [x26, #0x4]
 275cb94: 34000088     	cbz	w8, 0x275cba4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7fe24>
 275cb98: b9400768     	ldr	w8, [x27, #0x4]
 275cb9c: 711ddd1f     	cmp	w8, #0x777
 275cba0: 540003c1     	b.ne	0x275cc18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7fe98>
 275cba4: 394beb6a     	ldrb	w10, [x27, #0x2fa]
 275cba8: 39401749     	ldrb	w9, [x26, #0x5]
 275cbac: 39401b48     	ldrb	w8, [x26, #0x6]
 275cbb0: 340004aa     	cbz	w10, 0x275cc44 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7fec4>
 275cbb4: 340006e9     	cbz	w9, 0x275cc90 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ff10>
 275cbb8: 34000a48     	cbz	w8, 0x275cd00 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ff80>
 275cbbc: f97cbe68     	ldr	x8, [x19, #0x7978]
 275cbc0: b5001388     	cbnz	x8, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cbc4: f97c0e76     	ldr	x22, [x19, #0x7818]
 275cbc8: b4001356     	cbz	x22, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cbcc: d0005321     	adrp	x1, 0x31c2000 <dyld_stub_binder+0x31c2000>
 275cbd0: 913b3c21     	add	x1, x1, #0xecf
 275cbd4: 94003aab     	bl	0x276b680 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e900>
 275cbd8: 394aa777     	ldrb	w23, [x27, #0x2a9]
 275cbdc: 940038a9     	bl	0x276ae80 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e100>
 275cbe0: 910203e0     	add	x0, sp, #0x80
 275cbe4: 94091cab     	bl	0x29a3e90 <dyld_stub_binder+0x29a3e90>
 275cbe8: 528f2f08     	mov	w8, #0x7978             ; =31096
 275cbec: 940038e3     	bl	0x276af78 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e1f8>
 275cbf0: d101a3a2     	sub	x2, x29, #0x68
 275cbf4: 910203e5     	add	x5, sp, #0x80
 275cbf8: 940038dd     	bl	0x276af6c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e1ec>
 275cbfc: aa0003f6     	mov	x22, x0
 275cc00: 910203e0     	add	x0, sp, #0x80
 275cc04: 94091cac     	bl	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 275cc08: 940039b9     	bl	0x276b2ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e56c>
 275cc0c: 34001056     	cbz	w22, 0x275ce14 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x80094>
 275cc10: f90003f6     	str	x22, [sp]
 275cc14: 14000052     	b	0x275cd5c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ffdc>
 275cc18: 12800df6     	mov	w22, #-0x70             ; =-112
 275cc1c: 14000007     	b	0x275cc38 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7feb8>
 275cc20: d0006260     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 275cc24: 91044c00     	add	x0, x0, #0x113
 275cc28: b0006241     	adrp	x1, 0x33a5000 <dyld_stub_binder+0x33a5000>
 275cc2c: 910eb821     	add	x1, x1, #0x3ae
 275cc30: 940612c7     	bl	0x28e174c <_smash_platform_print>
 275cc34: 12800cb6     	mov	w22, #-0x66             ; =-102
 275cc38: aa1603e0     	mov	x0, x22
 275cc3c: a9507bfd     	ldp	x29, x30, [sp, #0x100]
 275cc40: 14003928     	b	0x276b0e0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e360>
 275cc44: 34000989     	cbz	w9, 0x275cd74 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7fff4>
 275cc48: 34000be8     	cbz	w8, 0x275cdc4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x80044>
 275cc4c: f97c7a68     	ldr	x8, [x19, #0x78f0]
 275cc50: b5000f08     	cbnz	x8, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cc54: f97c0e76     	ldr	x22, [x19, #0x7818]
 275cc58: b4000ed6     	cbz	x22, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cc5c: 94003a8b     	bl	0x276b688 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e908>
 275cc60: 394aa779     	ldrb	w25, [x27, #0x2a9]
 275cc64: 94003887     	bl	0x276ae80 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e100>
 275cc68: 9100e3e0     	add	x0, sp, #0x38
 275cc6c: 94091c89     	bl	0x29a3e90 <dyld_stub_binder+0x29a3e90>
 275cc70: 9100e3e5     	add	x5, sp, #0x38
 275cc74: 94003874     	bl	0x276ae44 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e0c4>
 275cc78: aa0003f6     	mov	x22, x0
 275cc7c: 9100e3e0     	add	x0, sp, #0x38
 275cc80: 94091c8d     	bl	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 275cc84: 35fffdb6     	cbnz	w22, 0x275cc38 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7feb8>
 275cc88: 94003a73     	bl	0x276b654 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e8d4>
 275cc8c: 14000069     	b	0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cc90: 34000d08     	cbz	w8, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cc94: f97cfa68     	ldr	x8, [x19, #0x79f0]
 275cc98: b5000cc8     	cbnz	x8, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cc9c: f97c0e76     	ldr	x22, [x19, #0x7818]
 275cca0: b4000c96     	cbz	x22, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cca4: d0005321     	adrp	x1, 0x31c2000 <dyld_stub_binder+0x31c2000>
 275cca8: 913b3c21     	add	x1, x1, #0xecf
 275ccac: 94003a75     	bl	0x276b680 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e900>
 275ccb0: 394aa777     	ldrb	w23, [x27, #0x2a9]
 275ccb4: 94003873     	bl	0x276ae80 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e100>
 275ccb8: 9101a3e0     	add	x0, sp, #0x68
 275ccbc: 94091c75     	bl	0x29a3e90 <dyld_stub_binder+0x29a3e90>
 275ccc0: 528f3e08     	mov	w8, #0x79f0             ; =31216
 275ccc4: 940038ad     	bl	0x276af78 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e1f8>
 275ccc8: d101a3a2     	sub	x2, x29, #0x68
 275cccc: 9101a3e5     	add	x5, sp, #0x68
 275ccd0: 940038a7     	bl	0x276af6c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e1ec>
 275ccd4: aa0003f6     	mov	x22, x0
 275ccd8: 9101a3e0     	add	x0, sp, #0x68
 275ccdc: 94091c76     	bl	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 275cce0: 94003983     	bl	0x276b2ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e56c>
 275cce4: 35000396     	cbnz	w22, 0x275cd54 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ffd4>
 275cce8: f97cfa60     	ldr	x0, [x19, #0x79f0]
 275ccec: 39402f41     	ldrb	w1, [x26, #0xb]
 275ccf0: 94003910     	bl	0x276b130 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e3b0>
 275ccf4: f97cfa68     	ldr	x8, [x19, #0x79f0]
 275ccf8: f93dd668     	str	x8, [x19, #0x7ba8]
 275ccfc: 1400004d     	b	0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cd00: f97cfe68     	ldr	x8, [x19, #0x79f8]
 275cd04: b5000968     	cbnz	x8, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cd08: f97c0e76     	ldr	x22, [x19, #0x7818]
 275cd0c: b4000936     	cbz	x22, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cd10: d0005321     	adrp	x1, 0x31c2000 <dyld_stub_binder+0x31c2000>
 275cd14: 913b3c21     	add	x1, x1, #0xecf
 275cd18: 94003a5a     	bl	0x276b680 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e900>
 275cd1c: 394aa777     	ldrb	w23, [x27, #0x2a9]
 275cd20: 94003858     	bl	0x276ae80 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e100>
 275cd24: 910143e0     	add	x0, sp, #0x50
 275cd28: 94091c5a     	bl	0x29a3e90 <dyld_stub_binder+0x29a3e90>
 275cd2c: 528f3f08     	mov	w8, #0x79f8             ; =31224
 275cd30: 94003892     	bl	0x276af78 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e1f8>
 275cd34: d101a3a2     	sub	x2, x29, #0x68
 275cd38: 910143e5     	add	x5, sp, #0x50
 275cd3c: 9400388c     	bl	0x276af6c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e1ec>
 275cd40: aa0003f6     	mov	x22, x0
 275cd44: 910143e0     	add	x0, sp, #0x50
 275cd48: 94091c5b     	bl	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 275cd4c: 94003968     	bl	0x276b2ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e56c>
 275cd50: 34000676     	cbz	w22, 0x275ce1c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8009c>
 275cd54: aa1603e8     	mov	x8, x22
 275cd58: f90003e8     	str	x8, [sp]
 275cd5c: d0006260     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 275cd60: 91044c00     	add	x0, x0, #0x113
 275cd64: b0006241     	adrp	x1, 0x33a5000 <dyld_stub_binder+0x33a5000>
 275cd68: 910f2821     	add	x1, x1, #0x3ca
 275cd6c: 94061278     	bl	0x28e174c <_smash_platform_print>
 275cd70: 17ffffb2     	b	0x275cc38 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7feb8>
 275cd74: 340005e8     	cbz	w8, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cd78: f97c7268     	ldr	x8, [x19, #0x78e0]
 275cd7c: b50005a8     	cbnz	x8, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cd80: f97c0e76     	ldr	x22, [x19, #0x7818]
 275cd84: b4000576     	cbz	x22, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cd88: 94003aa7     	bl	0x276b824 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8eaa4>
 275cd8c: 394aa779     	ldrb	w25, [x27, #0x2a9]
 275cd90: 9400383c     	bl	0x276ae80 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e100>
 275cd94: 910083e0     	add	x0, sp, #0x20
 275cd98: 94091c3e     	bl	0x29a3e90 <dyld_stub_binder+0x29a3e90>
 275cd9c: 910083e5     	add	x5, sp, #0x20
 275cda0: 94003829     	bl	0x276ae44 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e0c4>
 275cda4: aa0003f6     	mov	x22, x0
 275cda8: 9400381a     	bl	0x276ae10 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e090>
 275cdac: 35fff476     	cbnz	w22, 0x275cc38 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7feb8>
 275cdb0: f97c7260     	ldr	x0, [x19, #0x78e0]
 275cdb4: 39402f41     	ldrb	w1, [x26, #0xb]
 275cdb8: 940038de     	bl	0x276b130 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e3b0>
 275cdbc: 94003a8e     	bl	0x276b7f4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8ea74>
 275cdc0: 1400001c     	b	0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cdc4: f97c7668     	ldr	x8, [x19, #0x78e8]
 275cdc8: b5000348     	cbnz	x8, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cdcc: f97c0e76     	ldr	x22, [x19, #0x7818]
 275cdd0: b4000316     	cbz	x22, 0x275ce30 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x800b0>
 275cdd4: 94003a45     	bl	0x276b6e8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e968>
 275cdd8: 394aa779     	ldrb	w25, [x27, #0x2a9]
 275cddc: 94003829     	bl	0x276ae80 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e100>
 275cde0: 910023e0     	add	x0, sp, #0x8
 275cde4: 94091c2b     	bl	0x29a3e90 <dyld_stub_binder+0x29a3e90>
 275cde8: 910023e5     	add	x5, sp, #0x8
 275cdec: 94003816     	bl	0x276ae44 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x8e0c4>
