
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

00000000026dcd80 <__ZNK3bce6device5metal6Device14GetSharedEventEv>:
 273dbd4: f94003e8     	ldr	x8, [sp]
 273dbd8: f90003e8     	str	x8, [sp]
 273dbdc: 14000105     	b	0x273dff0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61270>
 273dbe0: 14000217     	b	0x273e43c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x616bc>
 273dbe4: 14000268     	b	0x273e584 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61804>
 273dbe8: 140002b9     	b	0x273e6cc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6194c>
 273dbec: 14000314     	b	0x273e83c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61abc>
 273dbf0: 14000395     	b	0x273ea44 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61cc4>
 273dbf4: 1400036e     	b	0x273e9ac <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61c2c>
 273dbf8: 14000370     	b	0x273e9b8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61c38>
 273dbfc: 14000372     	b	0x273e9c4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61c44>
 273dc00: 1400039b     	b	0x273ea6c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61cec>
 273dc04: 140003a8     	b	0x273eaa4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61d24>
 273dc08: 140003a9     	b	0x273eaac <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61d2c>
 273dc0c: 1400041f     	b	0x273ec88 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61f08>
 273dc10: d10143ff     	sub	sp, sp, #0x50
 273dc14: a90257f6     	stp	x22, x21, [sp, #0x20]
 273dc18: a9034ff4     	stp	x20, x19, [sp, #0x30]
 273dc1c: a9047bfd     	stp	x29, x30, [sp, #0x40]
 273dc20: 910103fd     	add	x29, sp, #0x40
 273dc24: aa0203f3     	mov	x19, x2
 273dc28: aa0103f5     	mov	x21, x1
 273dc2c: 940006a2     	bl	0x273f6b4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62934>
 273dc30: 34000120     	cbz	w0, 0x273dc54 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60ed4>
 273dc34: f90003f5     	str	x21, [sp]
 273dc38: b0006360     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 273dc3c: 91044c00     	add	x0, x0, #0x113
 273dc40: b0006341     	adrp	x1, 0x33a6000 <dyld_stub_binder+0x33a6000>
 273dc44: 9106f821     	add	x1, x1, #0x1be
 273dc48: 94068ec1     	bl	0x28e174c <_smash_platform_print>
 273dc4c: 12800093     	mov	w19, #-0x5              ; =-5
 273dc50: 14000004     	b	0x273dc60 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60ee0>
 273dc54: 940006df     	bl	0x273f7d0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a50>
 273dc58: 94000006     	bl	0x273dc70 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60ef0>
 273dc5c: aa0003f3     	mov	x19, x0
 273dc60: 940006d8     	bl	0x273f7c0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a40>
 273dc64: aa1303e0     	mov	x0, x19
 273dc68: a9447bfd     	ldp	x29, x30, [sp, #0x40]
 273dc6c: 1400066a     	b	0x273f614 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62894>
 273dc70: a9bc5ff8     	stp	x24, x23, [sp, #-0x40]!
 273dc74: a90157f6     	stp	x22, x21, [sp, #0x10]
 273dc78: a9024ff4     	stp	x20, x19, [sp, #0x20]
 273dc7c: a9037bfd     	stp	x29, x30, [sp, #0x30]
 273dc80: 9100c3fd     	add	x29, sp, #0x30
 273dc84: b4000261     	cbz	x1, 0x273dcd0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60f50>
 273dc88: aa0303f3     	mov	x19, x3
 273dc8c: aa0203f5     	mov	x21, x2
 273dc90: aa0103f6     	mov	x22, x1
 273dc94: aa0003f7     	mov	x23, x0
 273dc98: b0006b81     	adrp	x1, 0x34ae000 <dyld_stub_binder+0x34ae000>
 273dc9c: f942f421     	ldr	x1, [x1, #0x5e8]
 273dca0: 52901700     	mov	w0, #0x80b8             ; =32952
 273dca4: 94099a2e     	bl	0x29a455c <dyld_stub_binder+0x29a455c>
 273dca8: aa0003f4     	mov	x20, x0
 273dcac: b4000160     	cbz	x0, 0x273dcd8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60f58>
 273dcb0: aa1403e0     	mov	x0, x20
 273dcb4: 94006e7e     	bl	0x27596ac <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7c92c>
 273dcb8: aa1403e0     	mov	x0, x20
 273dcbc: aa1703e1     	mov	x1, x23
 273dcc0: aa1603e2     	mov	x2, x22
 273dcc4: aa1503e3     	mov	x3, x21
 273dcc8: 940076c2     	bl	0x275b7d0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7ea50>
 273dccc: 14000004     	b	0x273dcdc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60f5c>
 273dcd0: 12800040     	mov	w0, #-0x3               ; =-3
 273dcd4: 14000003     	b	0x273dce0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60f60>
 273dcd8: 12800d60     	mov	w0, #-0x6c              ; =-108
 273dcdc: f9000274     	str	x20, [x19]
 273dce0: a9437bfd     	ldp	x29, x30, [sp, #0x30]
 273dce4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
 273dce8: a94157f6     	ldp	x22, x21, [sp, #0x10]
 273dcec: a8c45ff8     	ldp	x24, x23, [sp], #0x40
 273dcf0: d65f03c0     	ret
 273dcf4: aa0003f3     	mov	x19, x0
 273dcf8: b0006b81     	adrp	x1, 0x34ae000 <dyld_stub_binder+0x34ae000>
 273dcfc: f942f421     	ldr	x1, [x1, #0x5e8]
 273dd00: aa1403e0     	mov	x0, x20
 273dd04: 94099a0a     	bl	0x29a452c <dyld_stub_binder+0x29a452c>
 273dd08: 940006a0     	bl	0x273f788 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a08>
 273dd0c: d10143ff     	sub	sp, sp, #0x50
 273dd10: a90257f6     	stp	x22, x21, [sp, #0x20]
 273dd14: a9034ff4     	stp	x20, x19, [sp, #0x30]
 273dd18: a9047bfd     	stp	x29, x30, [sp, #0x40]
 273dd1c: 910103fd     	add	x29, sp, #0x40
 273dd20: b40001a0     	cbz	x0, 0x273dd54 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60fd4>
 273dd24: aa0203f4     	mov	x20, x2
 273dd28: b40001a2     	cbz	x2, 0x273dd5c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60fdc>
 273dd2c: 94000657     	bl	0x273f688 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62908>
 273dd30: 340001a0     	cbz	w0, 0x273dd64 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60fe4>
 273dd34: f90003f4     	str	x20, [sp]
 273dd38: b0006360     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 273dd3c: 91044c00     	add	x0, x0, #0x113
 273dd40: d0006321     	adrp	x1, 0x33a3000 <dyld_stub_binder+0x33a3000>
 273dd44: 912fbc21     	add	x1, x1, #0xbef
 273dd48: 94068e81     	bl	0x28e174c <_smash_platform_print>
 273dd4c: 12800093     	mov	w19, #-0x5              ; =-5
 273dd50: 1400000a     	b	0x273dd78 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60ff8>
 273dd54: 12800d73     	mov	w19, #-0x6c             ; =-108
 273dd58: 14000009     	b	0x273dd7c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60ffc>
 273dd5c: 12800d93     	mov	w19, #-0x6d             ; =-109
 273dd60: 14000007     	b	0x273dd7c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60ffc>
 273dd64: f9400fe2     	ldr	x2, [sp, #0x18]
 273dd68: b94017e3     	ldr	w3, [sp, #0x14]
 273dd6c: 940006a0     	bl	0x273f7ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a6c>
 273dd70: 94000006     	bl	0x273dd88 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61008>
 273dd74: aa0003f3     	mov	x19, x0
 273dd78: 94000692     	bl	0x273f7c0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a40>
 273dd7c: aa1303e0     	mov	x0, x19
 273dd80: a9447bfd     	ldp	x29, x30, [sp, #0x40]
 273dd84: 14000624     	b	0x273f614 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62894>
 273dd88: b40000c0     	cbz	x0, 0x273dda0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61020>
 273dd8c: b40000c2     	cbz	x2, 0x273dda4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61024>
 273dd90: 528efd88     	mov	w8, #0x77ec             ; =30700
 273dd94: 38686808     	ldrb	w8, [x0, x8]
 273dd98: 34000088     	cbz	w8, 0x273dda8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61028>
 273dd9c: 140076d3     	b	0x275b8e8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7eb68>
 273dda0: 14000643     	b	0x273f6ac <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6292c>
 273dda4: 14000690     	b	0x273f7e4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a64>
 273dda8: 1400067a     	b	0x273f790 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a10>
 273ddac: d10143ff     	sub	sp, sp, #0x50
 273ddb0: a90257f6     	stp	x22, x21, [sp, #0x20]
 273ddb4: a9034ff4     	stp	x20, x19, [sp, #0x30]
 273ddb8: a9047bfd     	stp	x29, x30, [sp, #0x40]
 273ddbc: 910103fd     	add	x29, sp, #0x40
 273ddc0: b40001c2     	cbz	x2, 0x273ddf8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61078>
 273ddc4: aa0103f5     	mov	x21, x1
 273ddc8: b40001c1     	cbz	x1, 0x273de00 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61080>
 273ddcc: aa0203f3     	mov	x19, x2
 273ddd0: 94000639     	bl	0x273f6b4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62934>
 273ddd4: 340001a0     	cbz	w0, 0x273de08 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61088>
 273ddd8: f90003f5     	str	x21, [sp]
 273dddc: b0006360     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 273dde0: 91044c00     	add	x0, x0, #0x113
 273dde4: b0006341     	adrp	x1, 0x33a6000 <dyld_stub_binder+0x33a6000>
 273dde8: 9106f821     	add	x1, x1, #0x1be
 273ddec: 94068e58     	bl	0x28e174c <_smash_platform_print>
 273ddf0: 12800093     	mov	w19, #-0x5              ; =-5
 273ddf4: 14000008     	b	0x273de14 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61094>
 273ddf8: 12800d73     	mov	w19, #-0x6c             ; =-108
 273ddfc: 14000007     	b	0x273de18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61098>
 273de00: 12800d93     	mov	w19, #-0x6d             ; =-109
 273de04: 14000005     	b	0x273de18 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61098>
 273de08: 94000672     	bl	0x273f7d0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a50>
 273de0c: 94000006     	bl	0x273de24 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x610a4>
 273de10: aa0003f3     	mov	x19, x0
 273de14: 9400066b     	bl	0x273f7c0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a40>
 273de18: aa1303e0     	mov	x0, x19
 273de1c: a9447bfd     	ldp	x29, x30, [sp, #0x40]
 273de20: 140005fd     	b	0x273f614 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62894>
 273de24: b4000163     	cbz	x3, 0x273de50 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x610d0>
 273de28: aa0203e8     	mov	x8, x2
 273de2c: aa0103e2     	mov	x2, x1
 273de30: b4000121     	cbz	x1, 0x273de54 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x610d4>
 273de34: 528efd89     	mov	w9, #0x77ec             ; =30700
 273de38: 38696869     	ldrb	w9, [x3, x9]
 273de3c: 340000e9     	cbz	w9, 0x273de58 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x610d8>
 273de40: aa0003e1     	mov	x1, x0
 273de44: aa0303e0     	mov	x0, x3
 273de48: aa0803e3     	mov	x3, x8
 273de4c: 14007560     	b	0x275b3cc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7e64c>
 273de50: 14000617     	b	0x273f6ac <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6292c>
 273de54: 14000664     	b	0x273f7e4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a64>
 273de58: 1400064e     	b	0x273f790 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a10>
 273de5c: d10143ff     	sub	sp, sp, #0x50
 273de60: a90257f6     	stp	x22, x21, [sp, #0x20]
 273de64: a9034ff4     	stp	x20, x19, [sp, #0x30]
 273de68: a9047bfd     	stp	x29, x30, [sp, #0x40]
 273de6c: 910103fd     	add	x29, sp, #0x40
 273de70: b40001a0     	cbz	x0, 0x273dea4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61124>
 273de74: aa0203f4     	mov	x20, x2
 273de78: b40001a2     	cbz	x2, 0x273deac <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6112c>
 273de7c: 94000603     	bl	0x273f688 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62908>
 273de80: 340001a0     	cbz	w0, 0x273deb4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61134>
 273de84: f90003f4     	str	x20, [sp]
 273de88: b0006360     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 273de8c: 91044c00     	add	x0, x0, #0x113
 273de90: d0006321     	adrp	x1, 0x33a3000 <dyld_stub_binder+0x33a3000>
 273de94: 912fbc21     	add	x1, x1, #0xbef
 273de98: 94068e2d     	bl	0x28e174c <_smash_platform_print>
 273de9c: 12800093     	mov	w19, #-0x5              ; =-5
 273dea0: 1400000a     	b	0x273dec8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61148>
 273dea4: 12800d73     	mov	w19, #-0x6c             ; =-108
 273dea8: 14000009     	b	0x273decc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6114c>
 273deac: 12800d93     	mov	w19, #-0x6d             ; =-109
 273deb0: 14000007     	b	0x273decc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6114c>
 273deb4: f9400fe2     	ldr	x2, [sp, #0x18]
 273deb8: b94017e3     	ldr	w3, [sp, #0x14]
 273debc: 9400064c     	bl	0x273f7ec <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a6c>
 273dec0: 94000006     	bl	0x273ded8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61158>
 273dec4: aa0003f3     	mov	x19, x0
 273dec8: 9400063e     	bl	0x273f7c0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a40>
 273decc: aa1303e0     	mov	x0, x19
 273ded0: a9447bfd     	ldp	x29, x30, [sp, #0x40]
 273ded4: 140005d0     	b	0x273f614 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62894>
 273ded8: b40000c0     	cbz	x0, 0x273def0 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61170>
 273dedc: b40000c2     	cbz	x2, 0x273def4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61174>
 273dee0: 528efd88     	mov	w8, #0x77ec             ; =30700
 273dee4: 38686808     	ldrb	w8, [x0, x8]
 273dee8: 34000088     	cbz	w8, 0x273def8 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61178>
 273deec: 14007afc     	b	0x275cadc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x7fd5c>
 273def0: 140005ef     	b	0x273f6ac <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6292c>
 273def4: 1400063c     	b	0x273f7e4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a64>
 273def8: 14000626     	b	0x273f790 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a10>
 273defc: aa0103e2     	mov	x2, x1
 273df00: 52a00601     	mov	w1, #0x300000           ; =3145728
 273df04: 17ffff82     	b	0x273dd0c <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x60f8c>
 273df08: aa0203e3     	mov	x3, x2
 273df0c: aa0103e2     	mov	x2, x1
 273df10: 52a00601     	mov	w1, #0x300000           ; =3145728
 273df14: 17ffff9d     	b	0x273dd88 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61008>
 273df18: b40000e0     	cbz	x0, 0x273df34 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x611b4>
 273df1c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
 273df20: 910003fd     	mov	x29, sp
 273df24: 94008dd5     	bl	0x2761678 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x848f8>
 273df28: 52800000     	mov	w0, #0x0                ; =0
 273df2c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
 273df30: d65f03c0     	ret
 273df34: 140005de     	b	0x273f6ac <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6292c>
 273df38: d100c3ff     	sub	sp, sp, #0x30
 273df3c: a9027bfd     	stp	x29, x30, [sp, #0x20]
 273df40: 910083fd     	add	x29, sp, #0x20
 273df44: b4000180     	cbz	x0, 0x273df74 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x611f4>
 273df48: 12800ce9     	mov	w9, #-0x68              ; =-104
 273df4c: b4000161     	cbz	x1, 0x273df78 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x611f8>
 273df50: aa0303e8     	mov	x8, x3
 273df54: f9400ba3     	ldr	x3, [x29, #0x10]
 273df58: b4000103     	cbz	x3, 0x273df78 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x611f8>
 273df5c: 7100051f     	cmp	w8, #0x1
 273df60: 7a41a888     	ccmp	w4, #0x1, #0x8, ge
 273df64: 7a41a8a8     	ccmp	w5, #0x1, #0x8, ge
 273df68: 5400010a     	b.ge	0x273df88 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61208>
 273df6c: 12800ce9     	mov	w9, #-0x68              ; =-104
 273df70: 14000002     	b	0x273df78 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x611f8>
 273df74: 12800d69     	mov	w9, #-0x6c              ; =-108
 273df78: aa0903e0     	mov	x0, x9
 273df7c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
 273df80: 9100c3ff     	add	sp, sp, #0x30
 273df84: d65f03c0     	ret
 273df88: 71000c5f     	cmp	w2, #0x3
 273df8c: 540001c8     	b.hi	0x273dfc4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61244>
 273df90: 528efd89     	mov	w9, #0x77ec             ; =30700
 273df94: 38696809     	ldrb	w9, [x0, x9]
 273df98: 340001a9     	cbz	w9, 0x273dfcc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x6124c>
 273df9c: 528d5709     	mov	w9, #0x6ab8             ; =27320
 273dfa0: b8696869     	ldr	w9, [x3, x9]
 273dfa4: 7100013f     	cmp	w9, #0x0
 273dfa8: 5400016d     	b.le	0x273dfd4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x61254>
 273dfac: 290023e4     	stp	w4, w8, [sp]
 273dfb0: 94000619     	bl	0x273f814 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x62a94>
 273dfb4: 910003e2     	mov	x2, sp
 273dfb8: 9400863b     	bl	0x275f8a4 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x82b24>
 273dfbc: aa0003e9     	mov	x9, x0
 273dfc0: 17ffffee     	b	0x273df78 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x611f8>
 273dfc4: 12800da9     	mov	w9, #-0x6e              ; =-110
 273dfc8: 17ffffec     	b	0x273df78 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x611f8>
 273dfcc: 128001e9     	mov	w9, #-0x10              ; =-16
 273dfd0: 17ffffea     	b	0x273df78 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x611f8>
 273dfd4: b0006360     	adrp	x0, 0x33aa000 <dyld_stub_binder+0x33aa000>
 273dfd8: 91044c00     	add	x0, x0, #0x113
 273dfdc: d0006321     	adrp	x1, 0x33a3000 <dyld_stub_binder+0x33a3000>
 273dfe0: 91304021     	add	x1, x1, #0xc10
 273dfe4: 94068dda     	bl	0x28e174c <_smash_platform_print>
 273dfe8: 52800009     	mov	w9, #0x0                ; =0
 273dfec: 17ffffe3     	b	0x273df78 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x611f8>
