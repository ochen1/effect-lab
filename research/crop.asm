
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000158a60 <__ZN3BEF25BachObjectTrackingAdapter15getOrCreateNodeERK14BefRequirementRN4Bach3Api5GraphE>:
  158c00: 9484621a     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
  158c04: 7100281f     	cmp	w0, #0xa
  158c08: 540004cb     	b.lt	0x158ca0 <__ZN3BEF25BachObjectTrackingAdapter15getOrCreateNodeERK14BefRequirementRN4Bach3Api5GraphE+0x240>
  158c0c: 528005aa     	mov	w10, #0x2d              ; =45
  158c10: f0018308     	adrp	x8, 0x31bb000 <dyld_stub_binder+0x31bb000>
  158c14: 913fad08     	add	x8, x8, #0xfeb
  158c18: b0018309     	adrp	x9, 0x31b9000 <dyld_stub_binder+0x31b9000>
  158c1c: 91383529     	add	x9, x9, #0xe0d
  158c20: a900abe8     	stp	x8, x10, [sp, #0x8]
  158c24: f90003e9     	str	x9, [sp]
  158c28: f0018300     	adrp	x0, 0x31bb000 <dyld_stub_binder+0x31bb000>
  158c2c: 913ef800     	add	x0, x0, #0xfbe
  158c30: d0018343     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  158c34: 9124e863     	add	x3, x3, #0x93a
  158c38: d0018345     	adrp	x5, 0x31c2000 <dyld_stub_binder+0x31c2000>
  158c3c: 912518a5     	add	x5, x5, #0x946
  158c40: 528005a1     	mov	w1, #0x2d               ; =45
  158c44: 52800082     	mov	w2, #0x4                ; =4
  158c48: d29eb984     	mov	x4, #0xf5cc             ; =62924
  158c4c: f2b86584     	movk	x4, #0xc32c, lsl #16
  158c50: f2c17404     	movk	x4, #0xba0, lsl #32
  158c54: f2f41c04     	movk	x4, #0xa0e0, lsl #48
  158c58: 948475f9     	bl	0x227643c <__ZN13AmazingEngine16g_spdLogWithHashEPKciiS1_yS1_z>
  158c5c: 14000011     	b	0x158ca0 <__ZN3BEF25BachObjectTrackingAdapter15getOrCreateNodeERK14BefRequirementRN4Bach3Api5GraphE+0x240>
  158c60: 528005a8     	mov	w8, #0x2d               ; =45
  158c64: f0018309     	adrp	x9, 0x31bb000 <dyld_stub_binder+0x31bb000>
  158c68: 913fad29     	add	x9, x9, #0xfeb
  158c6c: b001830a     	adrp	x10, 0x31b9000 <dyld_stub_binder+0x31b9000>
  158c70: 9138354a     	add	x10, x10, #0xe0d
  158c74: f0018300     	adrp	x0, 0x31bb000 <dyld_stub_binder+0x31bb000>
  158c78: 913ef800     	add	x0, x0, #0xfbe
  158c7c: a900a3e9     	stp	x9, x8, [sp, #0x8]
  158c80: d0018343     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  158c84: 9124e863     	add	x3, x3, #0x93a
  158c88: d0018344     	adrp	x4, 0x31c2000 <dyld_stub_binder+0x31c2000>
  158c8c: 91251884     	add	x4, x4, #0x946
  158c90: f90003ea     	str	x10, [sp]
  158c94: 528005a1     	mov	w1, #0x2d               ; =45
  158c98: 52800142     	mov	w2, #0xa                ; =10
  158c9c: 94846156     	bl	0x22711f4 <__ZN13AmazingEngine8g_aeLogTEPKciiS1_S1_z>
  158ca0: 9100e3e1     	add	x1, sp, #0x38
  158ca4: aa1303e0     	mov	x0, x19
  158ca8: 94777e9a     	bl	0x1f38710 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x10e2c>
  158cac: 9100c3e0     	add	x0, sp, #0x30
  158cb0: 9477791e     	bl	0x1f37128 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf844>
  158cb4: 9100e3e0     	add	x0, sp, #0x38
  158cb8: 9477791c     	bl	0x1f37128 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf844>
  158cbc: a9477bfd     	ldp	x29, x30, [sp, #0x70]
  158cc0: a9464ff4     	ldp	x20, x19, [sp, #0x60]
  158cc4: a94557f6     	ldp	x22, x21, [sp, #0x50]
  158cc8: a9445ff8     	ldp	x24, x23, [sp, #0x40]
  158ccc: 910203ff     	add	sp, sp, #0x80
  158cd0: d65f03c0     	ret
  158cd4: 910063e0     	add	x0, sp, #0x18
  158cd8: 9400028a     	bl	0x159700 <__ZN3BEF25BachObjectTrackingAdapter22getAdditionalResourcesERPPKc+0xb4>
  158cdc: d4200020     	brk	#0x1
  158ce0: 14000009     	b	0x158d04 <__ZN3BEF25BachObjectTrackingAdapter15getOrCreateNodeERK14BefRequirementRN4Bach3Api5GraphE+0x2a4>
  158ce4: 1400000c     	b	0x158d14 <__ZN3BEF25BachObjectTrackingAdapter15getOrCreateNodeERK14BefRequirementRN4Bach3Api5GraphE+0x2b4>
  158ce8: aa0003f3     	mov	x19, x0
  158cec: 39c0bfe8     	ldrsb	w8, [sp, #0x2f]
  158cf0: 36f80148     	tbz	w8, #0x1f, 0x158d18 <__ZN3BEF25BachObjectTrackingAdapter15getOrCreateNodeERK14BefRequirementRN4Bach3Api5GraphE+0x2b8>
  158cf4: f9400fe0     	ldr	x0, [sp, #0x18]
  158cf8: 94a12e0a     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  158cfc: 14000007     	b	0x158d18 <__ZN3BEF25BachObjectTrackingAdapter15getOrCreateNodeERK14BefRequirementRN4Bach3Api5GraphE+0x2b8>
  158d00: 14000005     	b	0x158d14 <__ZN3BEF25BachObjectTrackingAdapter15getOrCreateNodeERK14BefRequirementRN4Bach3Api5GraphE+0x2b4>
  158d04: aa0003f3     	mov	x19, x0
  158d08: 9100c3e0     	add	x0, sp, #0x30
  158d0c: 94777907     	bl	0x1f37128 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf844>
  158d10: 14000002     	b	0x158d18 <__ZN3BEF25BachObjectTrackingAdapter15getOrCreateNodeERK14BefRequirementRN4Bach3Api5GraphE+0x2b8>
  158d14: aa0003f3     	mov	x19, x0
  158d18: 9100e3e0     	add	x0, sp, #0x38
  158d1c: 94777903     	bl	0x1f37128 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf844>
  158d20: aa1303e0     	mov	x0, x19
  158d24: 94a12913     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

0000000000158d28 <__ZN3BEF25BachObjectTrackingAdapter13makeOldResultEv>:
  158d28: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
  158d2c: 910003fd     	mov	x29, sp
  158d30: 52800600     	mov	w0, #0x30               ; =48
  158d34: 94a12e07     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  158d38: 6f00e400     	movi.2d	v0, #0000000000000000
  158d3c: ad000000     	stp	q0, q0, [x0]
  158d40: 3d800800     	str	q0, [x0, #0x20]
  158d44: d0019aa8     	adrp	x8, 0x34ae000 <dyld_stub_binder+0x34ae000>
  158d48: f9456508     	ldr	x8, [x8, #0xac8]
  158d4c: 91004108     	add	x8, x8, #0x10
  158d50: f9000008     	str	x8, [x0]
  158d54: a8c17bfd     	ldp	x29, x30, [sp], #0x10
  158d58: d65f03c0     	ret

0000000000158d5c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE>:
  158d5c: d10243ff     	sub	sp, sp, #0x90
  158d60: a90657f6     	stp	x22, x21, [sp, #0x60]
  158d64: a9074ff4     	stp	x20, x19, [sp, #0x70]
  158d68: a9087bfd     	stp	x29, x30, [sp, #0x80]
  158d6c: 910203fd     	add	x29, sp, #0x80
  158d70: aa0203f5     	mov	x21, x2
  158d74: aa0103f3     	mov	x19, x1
  158d78: aa0003f4     	mov	x20, x0
  158d7c: aa0103e0     	mov	x0, x1
  158d80: 9477795d     	bl	0x1f372f4 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xfa10>
  158d84: b9400a88     	ldr	w8, [x20, #0x8]
  158d88: 6b08001f     	cmp	w0, w8
  158d8c: 54000961     	b.ne	0x158eb8 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x15c>
  158d90: d100a3a8     	sub	x8, x29, #0x28
  158d94: aa1303e0     	mov	x0, x19
  158d98: 94777ea2     	bl	0x1f38820 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0x10f3c>
  158d9c: 52800600     	mov	w0, #0x30               ; =48
  158da0: 94a12dec     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  158da4: f90023e0     	str	x0, [sp, #0x40]
  158da8: 90015648     	adrp	x8, 0x2c20000 <dyld_stub_binder+0x2c20000>
  158dac: 3dc2b100     	ldr	q0, [x8, #0xac0]
  158db0: 3c8483e0     	stur	q0, [sp, #0x48]
  158db4: 90018328     	adrp	x8, 0x31bc000 <dyld_stub_binder+0x31bc000>
  158db8: 91025d08     	add	x8, x8, #0x97
  158dbc: ad400500     	ldp	q0, q1, [x8]
  158dc0: ad000400     	stp	q0, q1, [x0]
  158dc4: 3cc1c100     	ldur	q0, [x8, #0x1c]
  158dc8: 3c81c000     	stur	q0, [x0, #0x1c]
  158dcc: 3900b01f     	strb	wzr, [x0, #0x2c]
  158dd0: d100a3a0     	sub	x0, x29, #0x28
  158dd4: 910103e2     	add	x2, sp, #0x40
  158dd8: aa1303e1     	mov	x1, x19
  158ddc: d2800003     	mov	x3, #0x0                ; =0
  158de0: 947777ec     	bl	0x1f36d90 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf4ac>
  158de4: 39c15fe8     	ldrsb	w8, [sp, #0x57]
  158de8: 36f80068     	tbz	w8, #0x1f, 0x158df4 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x98>
  158dec: f94023e0     	ldr	x0, [sp, #0x40]
  158df0: 94a12dcc     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  158df4: f94002b5     	ldr	x21, [x21]
  158df8: 52800400     	mov	w0, #0x20               ; =32
  158dfc: 94a12dd5     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  158e00: f90023e0     	str	x0, [sp, #0x40]
  158e04: 90015648     	adrp	x8, 0x2c20000 <dyld_stub_binder+0x2c20000>
  158e08: 3dc3cd00     	ldr	q0, [x8, #0xf30]
  158e0c: 90018328     	adrp	x8, 0x31bc000 <dyld_stub_binder+0x31bc000>
  158e10: 91031108     	add	x8, x8, #0xc4
  158e14: 3d800fe0     	str	q0, [sp, #0x30]
  158e18: 3c8483e0     	stur	q0, [sp, #0x48]
  158e1c: 3dc00100     	ldr	q0, [x8]
  158e20: 3d800000     	str	q0, [x0]
  158e24: 3cc0a100     	ldur	q0, [x8, #0xa]
  158e28: 3c80a000     	stur	q0, [x0, #0xa]
  158e2c: 3900681f     	strb	wzr, [x0, #0x1a]
  158e30: d100a3a0     	sub	x0, x29, #0x28
  158e34: 910103e2     	add	x2, sp, #0x40
  158e38: aa1303e1     	mov	x1, x19
  158e3c: d2800003     	mov	x3, #0x0                ; =0
  158e40: 947777d4     	bl	0x1f36d90 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf4ac>
  158e44: 39c15fe8     	ldrsb	w8, [sp, #0x57]
  158e48: 37f809e8     	tbnz	w8, #0x1f, 0x158f84 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x228>
  158e4c: b940a688     	ldr	w8, [x20, #0xa4]
  158e50: 7100051f     	cmp	w8, #0x1
  158e54: 54000a21     	b.ne	0x158f98 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x23c>
  158e58: b944f6a8     	ldr	w8, [x21, #0x4f4]
  158e5c: 7100051f     	cmp	w8, #0x1
  158e60: 54000ca1     	b.ne	0x158ff4 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x298>
  158e64: bd409a81     	ldr	s1, [x20, #0x98]
  158e68: bd44eaa0     	ldr	s0, [x21, #0x4e8]
  158e6c: 1e202020     	fcmp	s1, s0
  158e70: 54000c41     	b.ne	0x158ff8 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x29c>
  158e74: bd409e81     	ldr	s1, [x20, #0x9c]
  158e78: bd44eea2     	ldr	s2, [x21, #0x4ec]
  158e7c: 1e222020     	fcmp	s1, s2
  158e80: 54000bc1     	b.ne	0x158ff8 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x29c>
  158e84: bd409281     	ldr	s1, [x20, #0x90]
  158e88: bd44e2a2     	ldr	s2, [x21, #0x4e0]
  158e8c: 1e222020     	fcmp	s1, s2
  158e90: 54000b41     	b.ne	0x158ff8 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x29c>
  158e94: bd409681     	ldr	s1, [x20, #0x94]
  158e98: bd44e6a2     	ldr	s2, [x21, #0x4e4]
  158e9c: 1e222020     	fcmp	s1, s2
  158ea0: 54000ac1     	b.ne	0x158ff8 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x29c>
  158ea4: bd40a281     	ldr	s1, [x20, #0xa0]
  158ea8: bd44f2a2     	ldr	s2, [x21, #0x4f0]
  158eac: 1e222020     	fcmp	s1, s2
  158eb0: 54001be0     	b.eq	0x15922c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x4d0>
  158eb4: 14000051     	b	0x158ff8 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x29c>
  158eb8: 94846169     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
  158ebc: 340003a0     	cbz	w0, 0x158f30 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x1d4>
  158ec0: 9484616a     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
  158ec4: 7100281f     	cmp	w0, #0xa
  158ec8: 540002ab     	b.lt	0x158f1c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x1c0>
  158ecc: 5280074a     	mov	w10, #0x3a              ; =58
  158ed0: f0018308     	adrp	x8, 0x31bb000 <dyld_stub_binder+0x31bb000>
  158ed4: 913fad08     	add	x8, x8, #0xfeb
  158ed8: 90018329     	adrp	x9, 0x31bc000 <dyld_stub_binder+0x31bc000>
  158edc: 9101c129     	add	x9, x9, #0x70
  158ee0: a900abe8     	stp	x8, x10, [sp, #0x8]
  158ee4: f90003e9     	str	x9, [sp]
  158ee8: f0018300     	adrp	x0, 0x31bb000 <dyld_stub_binder+0x31bb000>
  158eec: 913ef800     	add	x0, x0, #0xfbe
  158ef0: d0018343     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  158ef4: 9124e863     	add	x3, x3, #0x93a
  158ef8: d0018345     	adrp	x5, 0x31c2000 <dyld_stub_binder+0x31c2000>
  158efc: 912518a5     	add	x5, x5, #0x946
  158f00: 52800741     	mov	w1, #0x3a               ; =58
  158f04: 52800082     	mov	w2, #0x4                ; =4
  158f08: d2804964     	mov	x4, #0x24b              ; =587
  158f0c: f2ba0a64     	movk	x4, #0xd053, lsl #16
  158f10: f2c403a4     	movk	x4, #0x201d, lsl #32
  158f14: f2e01204     	movk	x4, #0x90, lsl #48
  158f18: 94847549     	bl	0x227643c <__ZN13AmazingEngine16g_spdLogWithHashEPKciiS1_yS1_z>
  158f1c: a9487bfd     	ldp	x29, x30, [sp, #0x80]
  158f20: a9474ff4     	ldp	x20, x19, [sp, #0x70]
  158f24: a94657f6     	ldp	x22, x21, [sp, #0x60]
  158f28: 910243ff     	add	sp, sp, #0x90
  158f2c: d65f03c0     	ret
  158f30: 52800748     	mov	w8, #0x3a               ; =58
  158f34: f0018309     	adrp	x9, 0x31bb000 <dyld_stub_binder+0x31bb000>
  158f38: 913fad29     	add	x9, x9, #0xfeb
  158f3c: 9001832a     	adrp	x10, 0x31bc000 <dyld_stub_binder+0x31bc000>
  158f40: 9101c14a     	add	x10, x10, #0x70
  158f44: f0018300     	adrp	x0, 0x31bb000 <dyld_stub_binder+0x31bb000>
  158f48: 913ef800     	add	x0, x0, #0xfbe
  158f4c: a900a3e9     	stp	x9, x8, [sp, #0x8]
  158f50: d0018343     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  158f54: 9124e863     	add	x3, x3, #0x93a
  158f58: d0018344     	adrp	x4, 0x31c2000 <dyld_stub_binder+0x31c2000>
  158f5c: 91251884     	add	x4, x4, #0x946
  158f60: f90003ea     	str	x10, [sp]
  158f64: 52800741     	mov	w1, #0x3a               ; =58
  158f68: 52800142     	mov	w2, #0xa                ; =10
  158f6c: 948460a2     	bl	0x22711f4 <__ZN13AmazingEngine8g_aeLogTEPKciiS1_S1_z>
  158f70: a9487bfd     	ldp	x29, x30, [sp, #0x80]
  158f74: a9474ff4     	ldp	x20, x19, [sp, #0x70]
  158f78: a94657f6     	ldp	x22, x21, [sp, #0x60]
  158f7c: 910243ff     	add	sp, sp, #0x90
  158f80: d65f03c0     	ret
  158f84: f94023e0     	ldr	x0, [sp, #0x40]
  158f88: 94a12d66     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  158f8c: b940a688     	ldr	w8, [x20, #0xa4]
  158f90: 7100051f     	cmp	w8, #0x1
  158f94: 54fff620     	b.eq	0x158e58 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0xfc>
  158f98: 528002a8     	mov	w8, #0x15               ; =21
  158f9c: 90018329     	adrp	x9, 0x31bc000 <dyld_stub_binder+0x31bc000>
  158fa0: 91037d29     	add	x9, x9, #0xdf
  158fa4: 39015fe8     	strb	w8, [sp, #0x57]
  158fa8: 3dc00120     	ldr	q0, [x9]
  158fac: 3d8013e0     	str	q0, [sp, #0x40]
  158fb0: f840d128     	ldur	x8, [x9, #0xd]
  158fb4: f804d3e8     	stur	x8, [sp, #0x4d]
  158fb8: 390157ff     	strb	wzr, [sp, #0x55]
  158fbc: d100a3a0     	sub	x0, x29, #0x28
  158fc0: 910103e2     	add	x2, sp, #0x40
  158fc4: aa1303e1     	mov	x1, x19
  158fc8: 52800023     	mov	w3, #0x1                ; =1
  158fcc: 94777771     	bl	0x1f36d90 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf4ac>
  158fd0: 39c15fe8     	ldrsb	w8, [sp, #0x57]
  158fd4: 36f80068     	tbz	w8, #0x1f, 0x158fe0 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x284>
  158fd8: f94023e0     	ldr	x0, [sp, #0x40]
  158fdc: 94a12d51     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  158fe0: 52800028     	mov	w8, #0x1                ; =1
  158fe4: b900a688     	str	w8, [x20, #0xa4]
  158fe8: b944f6a8     	ldr	w8, [x21, #0x4f4]
  158fec: 7100051f     	cmp	w8, #0x1
  158ff0: 54fff3a0     	b.eq	0x158e64 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x108>
  158ff4: bd44eaa0     	ldr	s0, [x21, #0x4e8]
  158ff8: fd4272a1     	ldr	d1, [x21, #0x4e0]
  158ffc: fd004a81     	str	d1, [x20, #0x90]
  159000: bd009a80     	str	s0, [x20, #0x98]
  159004: 9113b2a8     	add	x8, x21, #0x4ec
  159008: fd400100     	ldr	d0, [x8]
  15900c: fc09c280     	stur	d0, [x20, #0x9c]
  159010: bd44e2a0     	ldr	s0, [x21, #0x4e0]
  159014: 1e202008     	fcmp	s0, #0.0
  159018: 540010a0     	b.eq	0x15922c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x4d0>
  15901c: bd44e6a0     	ldr	s0, [x21, #0x4e4]
  159020: 1e202008     	fcmp	s0, #0.0
  159024: 54001040     	b.eq	0x15922c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x4d0>
  159028: 52800400     	mov	w0, #0x20               ; =32
  15902c: 94a12d49     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  159030: f90023e0     	str	x0, [sp, #0x40]
  159034: f0015628     	adrp	x8, 0x2c20000 <dyld_stub_binder+0x2c20000>
  159038: 3dc3c900     	ldr	q0, [x8, #0xf20]
  15903c: f0018308     	adrp	x8, 0x31bc000 <dyld_stub_binder+0x31bc000>
  159040: 9103d508     	add	x8, x8, #0xf5
  159044: 3d800be0     	str	q0, [sp, #0x20]
  159048: 3c8483e0     	stur	q0, [sp, #0x48]
  15904c: 3dc00100     	ldr	q0, [x8]
  159050: 3d800000     	str	q0, [x0]
  159054: 3cc0d100     	ldur	q0, [x8, #0xd]
  159058: 3c80d000     	stur	q0, [x0, #0xd]
  15905c: 3900741f     	strb	wzr, [x0, #0x1d]
  159060: d100a3a0     	sub	x0, x29, #0x28
  159064: 910103e2     	add	x2, sp, #0x40
  159068: aa1303e1     	mov	x1, x19
  15906c: 52800023     	mov	w3, #0x1                ; =1
  159070: 94777748     	bl	0x1f36d90 <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf4ac>
  159074: 39c15fe8     	ldrsb	w8, [sp, #0x57]
  159078: 36f80068     	tbz	w8, #0x1f, 0x159084 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x328>
  15907c: f94023e0     	ldr	x0, [sp, #0x40]
  159080: 94a12d28     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  159084: 52800400     	mov	w0, #0x20               ; =32
  159088: 94a12d32     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  15908c: f90023e0     	str	x0, [sp, #0x40]
  159090: 3dc00be0     	ldr	q0, [sp, #0x20]
  159094: 3c8483e0     	stur	q0, [sp, #0x48]
  159098: f0018308     	adrp	x8, 0x31bc000 <dyld_stub_binder+0x31bc000>
  15909c: 91044d08     	add	x8, x8, #0x113
  1590a0: 3dc00100     	ldr	q0, [x8]
  1590a4: 3d800000     	str	q0, [x0]
  1590a8: 3cc0d100     	ldur	q0, [x8, #0xd]
  1590ac: 3c80d000     	stur	q0, [x0, #0xd]
  1590b0: 3900741f     	strb	wzr, [x0, #0x1d]
  1590b4: bd409a80     	ldr	s0, [x20, #0x98]
  1590b8: d100a3a0     	sub	x0, x29, #0x28
  1590bc: 910103e2     	add	x2, sp, #0x40
  1590c0: aa1303e1     	mov	x1, x19
  1590c4: 94777746     	bl	0x1f36ddc <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf4f8>
  1590c8: 39c15fe8     	ldrsb	w8, [sp, #0x57]
  1590cc: 36f80068     	tbz	w8, #0x1f, 0x1590d8 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x37c>
  1590d0: f94023e0     	ldr	x0, [sp, #0x40]
  1590d4: 94a12d13     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  1590d8: 52800400     	mov	w0, #0x20               ; =32
  1590dc: 94a12d1d     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  1590e0: f90023e0     	str	x0, [sp, #0x40]
  1590e4: 3dc00be0     	ldr	q0, [sp, #0x20]
  1590e8: 3c8483e0     	stur	q0, [sp, #0x48]
  1590ec: f0018308     	adrp	x8, 0x31bc000 <dyld_stub_binder+0x31bc000>
  1590f0: 9104c508     	add	x8, x8, #0x131
  1590f4: 3dc00100     	ldr	q0, [x8]
  1590f8: 3d800000     	str	q0, [x0]
  1590fc: 3cc0d100     	ldur	q0, [x8, #0xd]
  159100: 3c80d000     	stur	q0, [x0, #0xd]
  159104: 3900741f     	strb	wzr, [x0, #0x1d]
  159108: bd409e80     	ldr	s0, [x20, #0x9c]
  15910c: d100a3a0     	sub	x0, x29, #0x28
  159110: 910103e2     	add	x2, sp, #0x40
  159114: aa1303e1     	mov	x1, x19
  159118: 94777731     	bl	0x1f36ddc <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf4f8>
  15911c: 39c15fe8     	ldrsb	w8, [sp, #0x57]
  159120: 36f80068     	tbz	w8, #0x1f, 0x15912c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x3d0>
  159124: f94023e0     	ldr	x0, [sp, #0x40]
  159128: 94a12cfe     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  15912c: 52800400     	mov	w0, #0x20               ; =32
  159130: 94a12d08     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  159134: f90023e0     	str	x0, [sp, #0x40]
  159138: 3dc00fe0     	ldr	q0, [sp, #0x30]
  15913c: 3c8483e0     	stur	q0, [sp, #0x48]
  159140: f0018308     	adrp	x8, 0x31bc000 <dyld_stub_binder+0x31bc000>
  159144: 91053d08     	add	x8, x8, #0x14f
  159148: 3dc00100     	ldr	q0, [x8]
  15914c: 3d800000     	str	q0, [x0]
  159150: 3cc0a100     	ldur	q0, [x8, #0xa]
  159154: 3c80a000     	stur	q0, [x0, #0xa]
  159158: 3900681f     	strb	wzr, [x0, #0x1a]
  15915c: bd409280     	ldr	s0, [x20, #0x90]
  159160: d100a3a0     	sub	x0, x29, #0x28
  159164: 910103e2     	add	x2, sp, #0x40
  159168: aa1303e1     	mov	x1, x19
  15916c: 9477771c     	bl	0x1f36ddc <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf4f8>
  159170: 39c15fe8     	ldrsb	w8, [sp, #0x57]
  159174: 36f80068     	tbz	w8, #0x1f, 0x159180 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x424>
  159178: f94023e0     	ldr	x0, [sp, #0x40]
  15917c: 94a12ce9     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  159180: 52800400     	mov	w0, #0x20               ; =32
  159184: 94a12cf3     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  159188: f90023e0     	str	x0, [sp, #0x40]
  15918c: f0015628     	adrp	x8, 0x2c20000 <dyld_stub_binder+0x2c20000>
  159190: 3dc3d100     	ldr	q0, [x8, #0xf40]
  159194: 3c8483e0     	stur	q0, [sp, #0x48]
  159198: f0018308     	adrp	x8, 0x31bc000 <dyld_stub_binder+0x31bc000>
  15919c: 9105a908     	add	x8, x8, #0x16a
  1591a0: 3dc00100     	ldr	q0, [x8]
  1591a4: 3d800000     	str	q0, [x0]
  1591a8: 3cc0b100     	ldur	q0, [x8, #0xb]
  1591ac: 3c80b000     	stur	q0, [x0, #0xb]
  1591b0: 39006c1f     	strb	wzr, [x0, #0x1b]
  1591b4: bd409680     	ldr	s0, [x20, #0x94]
  1591b8: d100a3a0     	sub	x0, x29, #0x28
  1591bc: 910103e2     	add	x2, sp, #0x40
  1591c0: aa1303e1     	mov	x1, x19
  1591c4: 94777706     	bl	0x1f36ddc <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf4f8>
  1591c8: 39c15fe8     	ldrsb	w8, [sp, #0x57]
  1591cc: 36f80068     	tbz	w8, #0x1f, 0x1591d8 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x47c>
  1591d0: f94023e0     	ldr	x0, [sp, #0x40]
  1591d4: 94a12cd3     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  1591d8: 52800600     	mov	w0, #0x30               ; =48
  1591dc: 94a12cdd     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  1591e0: f90023e0     	str	x0, [sp, #0x40]
  1591e4: f0015628     	adrp	x8, 0x2c20000 <dyld_stub_binder+0x2c20000>
  1591e8: 3dc3d900     	ldr	q0, [x8, #0xf60]
  1591ec: 3c8483e0     	stur	q0, [sp, #0x48]
  1591f0: 52800ca8     	mov	w8, #0x65               ; =101
  1591f4: f0018309     	adrp	x9, 0x31bc000 <dyld_stub_binder+0x31bc000>
  1591f8: 91061929     	add	x9, x9, #0x186
  1591fc: 79004008     	strh	w8, [x0, #0x20]
  159200: ad400520     	ldp	q0, q1, [x9]
  159204: ad000400     	stp	q0, q1, [x0]
  159208: bd40a280     	ldr	s0, [x20, #0xa0]
  15920c: d100a3a0     	sub	x0, x29, #0x28
  159210: 910103e2     	add	x2, sp, #0x40
  159214: aa1303e1     	mov	x1, x19
  159218: 947776f1     	bl	0x1f36ddc <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xf4f8>
  15921c: 39c15fe8     	ldrsb	w8, [sp, #0x57]
  159220: 36f80068     	tbz	w8, #0x1f, 0x15922c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x4d0>
  159224: f94023e0     	ldr	x0, [sp, #0x40]
  159228: 94a12cbe     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  15922c: d100a3a0     	sub	x0, x29, #0x28
  159230: 9477759b     	bl	0x1f3689c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xefb8>
  159234: a9487bfd     	ldp	x29, x30, [sp, #0x80]
  159238: a9474ff4     	ldp	x20, x19, [sp, #0x70]
  15923c: a94657f6     	ldp	x22, x21, [sp, #0x60]
  159240: 910243ff     	add	sp, sp, #0x90
  159244: d65f03c0     	ret
  159248: 1400000f     	b	0x159284 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x528>
  15924c: 14000014     	b	0x15929c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x540>
  159250: 1400000d     	b	0x159284 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x528>
  159254: 14000012     	b	0x15929c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x540>
  159258: 1400000b     	b	0x159284 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x528>
  15925c: 14000010     	b	0x15929c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x540>
  159260: 14000009     	b	0x159284 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x528>
  159264: 1400000e     	b	0x15929c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x540>
  159268: 14000007     	b	0x159284 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x528>
  15926c: 1400000c     	b	0x15929c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x540>
  159270: 14000005     	b	0x159284 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x528>
  159274: 1400000a     	b	0x15929c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x540>
  159278: 14000003     	b	0x159284 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x528>
  15927c: 14000002     	b	0x159284 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x528>
  159280: 14000007     	b	0x15929c <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x540>
  159284: aa0003f3     	mov	x19, x0
  159288: 39c15fe8     	ldrsb	w8, [sp, #0x57]
  15928c: 36f800a8     	tbz	w8, #0x1f, 0x1592a0 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x544>
  159290: f94023e0     	ldr	x0, [sp, #0x40]
  159294: 94a12ca3     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  159298: 14000002     	b	0x1592a0 <__ZN3BEF25BachObjectTrackingAdapter18_updateRequirementERN4Bach3Api9GraphNodeERKNS_24RequirementUpdateContextE+0x544>
  15929c: aa0003f3     	mov	x19, x0
  1592a0: d100a3a0     	sub	x0, x29, #0x28
  1592a4: 9477757e     	bl	0x1f3689c <__ZNK4Bach16NHImageTransform19getTfmTgtFromSrcNDCEv+0xefb8>
  1592a8: aa1303e0     	mov	x0, x19
  1592ac: 94a127b1     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

00000000001592b0 <__ZN3BEF25BachObjectTrackingAdapter14setInitialBboxERK25BefAlgorithmArrayExtParam>:
  1592b0: b940a408     	ldr	w8, [x0, #0xa4]
  1592b4: b944b429     	ldr	w9, [x1, #0x4b4]
  1592b8: 6b09011f     	cmp	w8, w9
  1592bc: 540002e1     	b.ne	0x159318 <__ZN3BEF25BachObjectTrackingAdapter14setInitialBboxERK25BefAlgorithmArrayExtParam+0x68>
  1592c0: bd409801     	ldr	s1, [x0, #0x98]
  1592c4: bd44a820     	ldr	s0, [x1, #0x4a8]
  1592c8: 1e202020     	fcmp	s1, s0
  1592cc: 54000281     	b.ne	0x15931c <__ZN3BEF25BachObjectTrackingAdapter14setInitialBboxERK25BefAlgorithmArrayExtParam+0x6c>
  1592d0: bd409c01     	ldr	s1, [x0, #0x9c]
  1592d4: bd44ac22     	ldr	s2, [x1, #0x4ac]
  1592d8: 1e222020     	fcmp	s1, s2
  1592dc: 54000201     	b.ne	0x15931c <__ZN3BEF25BachObjectTrackingAdapter14setInitialBboxERK25BefAlgorithmArrayExtParam+0x6c>
  1592e0: bd409001     	ldr	s1, [x0, #0x90]
  1592e4: bd44a022     	ldr	s2, [x1, #0x4a0]
  1592e8: 1e222020     	fcmp	s1, s2
  1592ec: 54000181     	b.ne	0x15931c <__ZN3BEF25BachObjectTrackingAdapter14setInitialBboxERK25BefAlgorithmArrayExtParam+0x6c>
  1592f0: bd409401     	ldr	s1, [x0, #0x94]
  1592f4: bd44a422     	ldr	s2, [x1, #0x4a4]
  1592f8: 1e222020     	fcmp	s1, s2
  1592fc: 54000101     	b.ne	0x15931c <__ZN3BEF25BachObjectTrackingAdapter14setInitialBboxERK25BefAlgorithmArrayExtParam+0x6c>
  159300: bd40a001     	ldr	s1, [x0, #0xa0]
  159304: bd44b022     	ldr	s2, [x1, #0x4b0]
  159308: 1e222020     	fcmp	s1, s2
  15930c: 54000081     	b.ne	0x15931c <__ZN3BEF25BachObjectTrackingAdapter14setInitialBboxERK25BefAlgorithmArrayExtParam+0x6c>
  159310: 52800000     	mov	w0, #0x0                ; =0
  159314: d65f03c0     	ret
  159318: bd44a820     	ldr	s0, [x1, #0x4a8]
  15931c: 91128028     	add	x8, x1, #0x4a0
  159320: fd425021     	ldr	d1, [x1, #0x4a0]
  159324: fd004801     	str	d1, [x0, #0x90]
  159328: bd009800     	str	s0, [x0, #0x98]
  15932c: fc40c100     	ldur	d0, [x8, #0xc]
  159330: fc09c000     	stur	d0, [x0, #0x9c]
  159334: bd44a020     	ldr	s0, [x1, #0x4a0]
  159338: 1e202008     	fcmp	s0, #0.0
  15933c: 1a9f07e9     	cset	w9, ne
  159340: bd400500     	ldr	s0, [x8, #0x4]
  159344: 1e202008     	fcmp	s0, #0.0
  159348: 1a9f07e8     	cset	w8, ne
  15934c: 0a080120     	and	w0, w9, w8
  159350: d65f03c0     	ret

0000000000159354 <__ZN3BEF25BachObjectTrackingAdapter15checkParamDirtyERKNS_15BachProcessInfoERKNS_15BachRuntimeInfoE>:
  159354: b940a408     	ldr	w8, [x0, #0xa4]
  159358: b944f429     	ldr	w9, [x1, #0x4f4]
  15935c: 52800020     	mov	w0, #0x1                ; =1
  159360: 6b09011f     	cmp	w8, w9
  159364: 540000e1     	b.ne	0x159380 <__ZN3BEF25BachObjectTrackingAdapter15checkParamDirtyERKNS_15BachProcessInfoERKNS_15BachRuntimeInfoE+0x2c>
  159368: bd44e020     	ldr	s0, [x1, #0x4e0]
  15936c: 1e202008     	fcmp	s0, #0.0
  159370: 54000081     	b.ne	0x159380 <__ZN3BEF25BachObjectTrackingAdapter15checkParamDirtyERKNS_15BachProcessInfoERKNS_15BachRuntimeInfoE+0x2c>
  159374: bd44e420     	ldr	s0, [x1, #0x4e4]
  159378: 1e202008     	fcmp	s0, #0.0
  15937c: 1a9f07e0     	cset	w0, ne
  159380: d65f03c0     	ret

0000000000159384 <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE>:
  159384: d10243ff     	sub	sp, sp, #0x90
  159388: a90657f6     	stp	x22, x21, [sp, #0x60]
  15938c: a9074ff4     	stp	x20, x19, [sp, #0x70]
  159390: a9087bfd     	stp	x29, x30, [sp, #0x80]
  159394: 910203fd     	add	x29, sp, #0x80
  159398: f9401020     	ldr	x0, [x1, #0x20]
  15939c: b4000720     	cbz	x0, 0x159480 <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE+0xfc>
  1593a0: aa0103f4     	mov	x20, x1
  1593a4: 94800d8b     	bl	0x215c9d0 <__ZN4Bach15BachTextureInfo10tensorNameEv+0x57720>
  1593a8: b4000a00     	cbz	x0, 0x1594e8 <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE+0x164>
  1593ac: f9400e93     	ldr	x19, [x20, #0x18]
  1593b0: b4000d33     	cbz	x19, 0x159554 <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE+0x1d0>
  1593b4: b9402408     	ldr	w8, [x0, #0x24]
  1593b8: aa1303f5     	mov	x21, x19
  1593bc: b8018ea8     	str	w8, [x21, #0x18]!
  1593c0: bd401c00     	ldr	s0, [x0, #0x1c]
  1593c4: bd0016a0     	str	s0, [x21, #0x14]
  1593c8: 3cc0c000     	ldur	q0, [x0, #0xc]
  1593cc: 3c8042a0     	stur	q0, [x21, #0x4]
  1593d0: bd402000     	ldr	s0, [x0, #0x20]
  1593d4: 1e22c000     	fcvt	d0, s0
  1593d8: fc1f82a0     	stur	d0, [x21, #-0x8]
  1593dc: f9400688     	ldr	x8, [x20, #0x8]
  1593e0: f9400900     	ldr	x0, [x8, #0x10]
  1593e4: b4000220     	cbz	x0, 0x159428 <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE+0xa4>
  1593e8: 528001e8     	mov	w8, #0xf                ; =15
  1593ec: f0018309     	adrp	x9, 0x31bc000 <dyld_stub_binder+0x31bc000>
  1593f0: 9106f529     	add	x9, x9, #0x1bd
  1593f4: 3900dfe8     	strb	w8, [sp, #0x37]
  1593f8: f9400128     	ldr	x8, [x9]
  1593fc: f90013e8     	str	x8, [sp, #0x20]
  159400: f8407128     	ldur	x8, [x9, #0x7]
  159404: f80273e8     	stur	x8, [sp, #0x27]
  159408: 3900bfff     	strb	wzr, [sp, #0x2f]
  15940c: 910083e1     	add	x1, sp, #0x20
  159410: aa1303e2     	mov	x2, x19
  159414: 941d2eed     	bl	0x8a4fc8 <__ZN3BRC7CBundle9SetHandleERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEPv>
  159418: 39c0dfe8     	ldrsb	w8, [sp, #0x37]
  15941c: 36f80068     	tbz	w8, #0x1f, 0x159428 <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE+0xa4>
  159420: f94013e0     	ldr	x0, [sp, #0x20]
  159424: 94a12c3f     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  159428: f9401680     	ldr	x0, [x20, #0x28]
  15942c: b4000f40     	cbz	x0, 0x159614 <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE+0x290>
  159430: f0019ae8     	adrp	x8, 0x34b8000 <dyld_stub_binder+0x34b8000>
  159434: f9457108     	ldr	x8, [x8, #0xae0]
  159438: 91004108     	add	x8, x8, #0x10
  15943c: b0019aa9     	adrp	x9, 0x34ae000 <dyld_stub_binder+0x34ae000>
  159440: f9456529     	ldr	x9, [x9, #0xac8]
  159444: f90013e8     	str	x8, [sp, #0x20]
  159448: 91004128     	add	x8, x9, #0x10
  15944c: f9001be8     	str	x8, [sp, #0x30]
  159450: f0015688     	adrp	x8, 0x2c2c000 <__ZTSN20bef_algorithm_replay4mat4E+0x1c34>
  159454: fd408500     	ldr	d0, [x8, #0x108]
  159458: fd0017e0     	str	d0, [sp, #0x28]
  15945c: 3cc08260     	ldur	q0, [x19, #0x8]
  159460: 3c8383e0     	stur	q0, [sp, #0x38]
  159464: f9400aa8     	ldr	x8, [x21, #0x10]
  159468: 3dc002a0     	ldr	q0, [x21]
  15946c: 3c8483e0     	stur	q0, [sp, #0x48]
  159470: f9002fe8     	str	x8, [sp, #0x58]
  159474: 910083e1     	add	x1, sp, #0x20
  159478: 940cb06e     	bl	0x485630 <__ZN3BES14IEventProducer15outsideNtfEventEPKNS_6IEventE>
  15947c: 14000066     	b	0x159614 <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE+0x290>
  159480: 94845ff7     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
  159484: 340003c0     	cbz	w0, 0x1594fc <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE+0x178>
  159488: 94845ff8     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
  15948c: 7100281f     	cmp	w0, #0xa
  159490: 5400096b     	b.lt	0x1595bc <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE+0x238>
  159494: 5280122a     	mov	w10, #0x91              ; =145
  159498: d0018308     	adrp	x8, 0x31bb000 <dyld_stub_binder+0x31bb000>
  15949c: 913fad08     	add	x8, x8, #0xfeb
  1594a0: d00182e9     	adrp	x9, 0x31b7000 <dyld_stub_binder+0x31b7000>
  1594a4: 910b1129     	add	x9, x9, #0x2c4
  1594a8: a900abe8     	stp	x8, x10, [sp, #0x8]
  1594ac: f90003e9     	str	x9, [sp]
  1594b0: d0018300     	adrp	x0, 0x31bb000 <dyld_stub_binder+0x31bb000>
  1594b4: 913ef800     	add	x0, x0, #0xfbe
  1594b8: b0018343     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  1594bc: 9124e863     	add	x3, x3, #0x93a
  1594c0: b0018345     	adrp	x5, 0x31c2000 <dyld_stub_binder+0x31c2000>
  1594c4: 912518a5     	add	x5, x5, #0x946
  1594c8: 52801221     	mov	w1, #0x91               ; =145
  1594cc: 52800082     	mov	w2, #0x4                ; =4
  1594d0: d2985604     	mov	x4, #0xc2b0             ; =49840
  1594d4: f2bfb324     	movk	x4, #0xfd99, lsl #16
  1594d8: f2c81ee4     	movk	x4, #0x40f7, lsl #32
  1594dc: f2e3aec4     	movk	x4, #0x1d76, lsl #48
  1594e0: 948473d7     	bl	0x227643c <__ZN13AmazingEngine16g_spdLogWithHashEPKciiS1_yS1_z>
  1594e4: 52800000     	mov	w0, #0x0                ; =0
  1594e8: a9487bfd     	ldp	x29, x30, [sp, #0x80]
  1594ec: a9474ff4     	ldp	x20, x19, [sp, #0x70]
  1594f0: a94657f6     	ldp	x22, x21, [sp, #0x60]
  1594f4: 910243ff     	add	sp, sp, #0x90
  1594f8: d65f03c0     	ret
  1594fc: 52801228     	mov	w8, #0x91               ; =145
  159500: d0018309     	adrp	x9, 0x31bb000 <dyld_stub_binder+0x31bb000>
  159504: 913fad29     	add	x9, x9, #0xfeb
  159508: d00182ea     	adrp	x10, 0x31b7000 <dyld_stub_binder+0x31b7000>
  15950c: 910b114a     	add	x10, x10, #0x2c4
  159510: d0018300     	adrp	x0, 0x31bb000 <dyld_stub_binder+0x31bb000>
  159514: 913ef800     	add	x0, x0, #0xfbe
  159518: a900a3e9     	stp	x9, x8, [sp, #0x8]
  15951c: b0018343     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  159520: 9124e863     	add	x3, x3, #0x93a
  159524: b0018344     	adrp	x4, 0x31c2000 <dyld_stub_binder+0x31c2000>
  159528: 91251884     	add	x4, x4, #0x946
  15952c: f90003ea     	str	x10, [sp]
  159530: 52801221     	mov	w1, #0x91               ; =145
  159534: 52800142     	mov	w2, #0xa                ; =10
  159538: 94845f2f     	bl	0x22711f4 <__ZN13AmazingEngine8g_aeLogTEPKciiS1_S1_z>
  15953c: 52800000     	mov	w0, #0x0                ; =0
  159540: a9487bfd     	ldp	x29, x30, [sp, #0x80]
  159544: a9474ff4     	ldp	x20, x19, [sp, #0x70]
  159548: a94657f6     	ldp	x22, x21, [sp, #0x60]
  15954c: 910243ff     	add	sp, sp, #0x90
  159550: d65f03c0     	ret
  159554: 94845fc2     	bl	0x227145c <__ZN13AmazingEngine11isUseSpdLogEv>
  159558: 340003e0     	cbz	w0, 0x1595d4 <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE+0x250>
  15955c: 94845fc3     	bl	0x2271468 <__ZN13AmazingEngine18getCurrentLogLevelEv>
  159560: 7100281f     	cmp	w0, #0xa
  159564: 5400058b     	b.lt	0x159614 <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE+0x290>
  159568: 528012ea     	mov	w10, #0x97              ; =151
  15956c: d0018308     	adrp	x8, 0x31bb000 <dyld_stub_binder+0x31bb000>
  159570: 913fad08     	add	x8, x8, #0xfeb
  159574: f0018309     	adrp	x9, 0x31bc000 <dyld_stub_binder+0x31bc000>
  159578: 9106a129     	add	x9, x9, #0x1a8
  15957c: a900abe8     	stp	x8, x10, [sp, #0x8]
  159580: f90003e9     	str	x9, [sp]
  159584: d0018300     	adrp	x0, 0x31bb000 <dyld_stub_binder+0x31bb000>
  159588: 913ef800     	add	x0, x0, #0xfbe
  15958c: b0018343     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  159590: 9124e863     	add	x3, x3, #0x93a
  159594: b0018345     	adrp	x5, 0x31c2000 <dyld_stub_binder+0x31c2000>
  159598: 912518a5     	add	x5, x5, #0x946
  15959c: 528012e1     	mov	w1, #0x97               ; =151
  1595a0: 52800082     	mov	w2, #0x4                ; =4
  1595a4: d285c2c4     	mov	x4, #0x2e16             ; =11798
  1595a8: f2a05b84     	movk	x4, #0x2dc, lsl #16
  1595ac: f2c92544     	movk	x4, #0x492a, lsl #32
  1595b0: f2fbaac4     	movk	x4, #0xdd56, lsl #48
  1595b4: 948473a2     	bl	0x227643c <__ZN13AmazingEngine16g_spdLogWithHashEPKciiS1_yS1_z>
  1595b8: 14000017     	b	0x159614 <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE+0x290>
  1595bc: 52800000     	mov	w0, #0x0                ; =0
  1595c0: a9487bfd     	ldp	x29, x30, [sp, #0x80]
  1595c4: a9474ff4     	ldp	x20, x19, [sp, #0x70]
  1595c8: a94657f6     	ldp	x22, x21, [sp, #0x60]
  1595cc: 910243ff     	add	sp, sp, #0x90
  1595d0: d65f03c0     	ret
  1595d4: 528012e8     	mov	w8, #0x97               ; =151
  1595d8: d0018309     	adrp	x9, 0x31bb000 <dyld_stub_binder+0x31bb000>
  1595dc: 913fad29     	add	x9, x9, #0xfeb
  1595e0: f001830a     	adrp	x10, 0x31bc000 <dyld_stub_binder+0x31bc000>
  1595e4: 9106a14a     	add	x10, x10, #0x1a8
  1595e8: d0018300     	adrp	x0, 0x31bb000 <dyld_stub_binder+0x31bb000>
  1595ec: 913ef800     	add	x0, x0, #0xfbe
  1595f0: a900a3e9     	stp	x9, x8, [sp, #0x8]
  1595f4: b0018343     	adrp	x3, 0x31c2000 <dyld_stub_binder+0x31c2000>
  1595f8: 9124e863     	add	x3, x3, #0x93a
  1595fc: b0018344     	adrp	x4, 0x31c2000 <dyld_stub_binder+0x31c2000>
  159600: 91251884     	add	x4, x4, #0x946
  159604: f90003ea     	str	x10, [sp]
  159608: 528012e1     	mov	w1, #0x97               ; =151
  15960c: 52800142     	mov	w2, #0xa                ; =10
  159610: 94845ef9     	bl	0x22711f4 <__ZN13AmazingEngine8g_aeLogTEPKciiS1_S1_z>
  159614: f100027f     	cmp	x19, #0x0
  159618: 1a9f07e0     	cset	w0, ne
  15961c: a9487bfd     	ldp	x29, x30, [sp, #0x80]
  159620: a9474ff4     	ldp	x20, x19, [sp, #0x70]
  159624: a94657f6     	ldp	x22, x21, [sp, #0x60]
  159628: 910243ff     	add	sp, sp, #0x90
  15962c: d65f03c0     	ret
  159630: aa0003f3     	mov	x19, x0
  159634: 39c0dfe8     	ldrsb	w8, [sp, #0x37]
  159638: 36f80068     	tbz	w8, #0x1f, 0x159644 <__ZN3BEF25BachObjectTrackingAdapter24_bach2OldAlgorithmResultERKNS_17ConversionContextE+0x2c0>
  15963c: f94013e0     	ldr	x0, [sp, #0x20]
  159640: 94a12bb8     	bl	0x29a4520 <dyld_stub_binder+0x29a4520>
  159644: aa1303e0     	mov	x0, x19
  159648: 94a126ca     	bl	0x29a3170 <dyld_stub_binder+0x29a3170>

000000000015964c <__ZN3BEF25BachObjectTrackingAdapter22getAdditionalResourcesERPPKc>:
  15964c: 9001a808     	adrp	x8, 0x3659000 <dyld_stub_binder+0x3659000>
  159650: 913e0108     	add	x8, x8, #0xf80
  159654: f9000028     	str	x8, [x1]
  159658: 52800020     	mov	w0, #0x1                ; =1
  15965c: d65f03c0     	ret
  159660: d0019b08     	adrp	x8, 0x34bb000 <dyld_stub_binder+0x34bb000>
  159664: f9479908     	ldr	x8, [x8, #0xf30]
  159668: f9400100     	ldr	x0, [x8]
  15966c: d65f03c0     	ret
  159670: d290b740     	mov	x0, #0x85ba             ; =34234
  159674: f2bb4b20     	movk	x0, #0xda59, lsl #16
  159678: f2dcb1c0     	movk	x0, #0xe58e, lsl #32
  15967c: f2e84b20     	movk	x0, #0x4259, lsl #48
  159680: d65f03c0     	ret
  159684: a9be4ff4     	stp	x20, x19, [sp, #-0x20]!
  159688: a9017bfd     	stp	x29, x30, [sp, #0x10]
  15968c: 910043fd     	add	x29, sp, #0x10
  159690: aa0003f3     	mov	x19, x0
  159694: 52800600     	mov	w0, #0x30               ; =48
  159698: 94a12bae     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  15969c: 3cc08260     	ldur	q0, [x19, #0x8]
  1596a0: 3c808000     	stur	q0, [x0, #0x8]
  1596a4: b0019aa8     	adrp	x8, 0x34ae000 <dyld_stub_binder+0x34ae000>
  1596a8: f9456508     	ldr	x8, [x8, #0xac8]
  1596ac: 91004108     	add	x8, x8, #0x10
  1596b0: f9000008     	str	x8, [x0]
  1596b4: 3cc18260     	ldur	q0, [x19, #0x18]
  1596b8: 3c818000     	stur	q0, [x0, #0x18]
  1596bc: f9401668     	ldr	x8, [x19, #0x28]
  1596c0: f9001408     	str	x8, [x0, #0x28]
  1596c4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
  1596c8: a8c24ff4     	ldp	x20, x19, [sp], #0x20
  1596cc: d65f03c0     	ret
  1596d0: f900141f     	str	xzr, [x0, #0x28]
  1596d4: 6f00e400     	movi.2d	v0, #0000000000000000
  1596d8: 3c818000     	stur	q0, [x0, #0x18]
  1596dc: 3c808000     	stur	q0, [x0, #0x8]
  1596e0: b0019aa8     	adrp	x8, 0x34ae000 <dyld_stub_binder+0x34ae000>
  1596e4: f9456508     	ldr	x8, [x8, #0xac8]
  1596e8: 91004108     	add	x8, x8, #0x10
  1596ec: f9000008     	str	x8, [x0]
  1596f0: d65f03c0     	ret
  1596f4: f0019b00     	adrp	x0, 0x34bc000 <dyld_stub_binder+0x34bc000>
  1596f8: f9412000     	ldr	x0, [x0, #0x240]
  1596fc: d65f03c0     	ret
  159700: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
  159704: 910003fd     	mov	x29, sp
  159708: 94a1294f     	bl	0x29a3c44 <dyld_stub_binder+0x29a3c44>
  15970c: d10143ff     	sub	sp, sp, #0x50
  159710: a90257f6     	stp	x22, x21, [sp, #0x20]
  159714: a9034ff4     	stp	x20, x19, [sp, #0x30]
  159718: a9047bfd     	stp	x29, x30, [sp, #0x40]
  15971c: 910103fd     	add	x29, sp, #0x40
  159720: 52800600     	mov	w0, #0x30               ; =48
  159724: 94a12b8b     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  159728: aa0003f3     	mov	x19, x0
  15972c: f001ab34     	adrp	x20, 0x36c0000 <dyld_stub_binder+0x36c0000>
  159730: 912c0294     	add	x20, x20, #0xb00
  159734: f9000280     	str	x0, [x20]
  159738: f0015628     	adrp	x8, 0x2c20000 <dyld_stub_binder+0x2c20000>
  15973c: 3dc29500     	ldr	q0, [x8, #0xa50]
  159740: 3d8003e0     	str	q0, [sp]
  159744: 3c808280     	stur	q0, [x20, #0x8]
  159748: b0018348     	adrp	x8, 0x31c2000 <dyld_stub_binder+0x31c2000>
  15974c: 911fc108     	add	x8, x8, #0x7f0
  159750: ad400500     	ldp	q0, q1, [x8]
  159754: ad000400     	stp	q0, q1, [x0]
  159758: 3900801f     	strb	wzr, [x0, #0x20]
  15975c: 91006295     	add	x21, x20, #0x18
  159760: 52800400     	mov	w0, #0x20               ; =32
  159764: 94a12b7b     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  159768: f001ab28     	adrp	x8, 0x36c0000 <dyld_stub_binder+0x36c0000>
  15976c: 912c6108     	add	x8, x8, #0xb18
  159770: f9000100     	str	x0, [x8]
  159774: f0015629     	adrp	x9, 0x2c20000 <dyld_stub_binder+0x2c20000>
  159778: 3dc3e520     	ldr	q0, [x9, #0xf90]
  15977c: 3d8007e0     	str	q0, [sp, #0x10]
  159780: 3c808100     	stur	q0, [x8, #0x8]
  159784: f0018209     	adrp	x9, 0x319c000 <dyld_stub_binder+0x319c000>
  159788: 91044d29     	add	x9, x9, #0x113
  15978c: 3dc00120     	ldr	q0, [x9]
  159790: 3d800000     	str	q0, [x0]
  159794: 3cc0c120     	ldur	q0, [x9, #0xc]
  159798: 3c80c000     	stur	q0, [x0, #0xc]
  15979c: 3900701f     	strb	wzr, [x0, #0x1c]
  1597a0: 91006115     	add	x21, x8, #0x18
  1597a4: aa0003f3     	mov	x19, x0
  1597a8: 52800600     	mov	w0, #0x30               ; =48
  1597ac: 94a12b69     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  1597b0: f001ab28     	adrp	x8, 0x36c0000 <dyld_stub_binder+0x36c0000>
  1597b4: 912cc108     	add	x8, x8, #0xb30
  1597b8: f9000100     	str	x0, [x8]
  1597bc: 3dc003e0     	ldr	q0, [sp]
  1597c0: 3c808100     	stur	q0, [x8, #0x8]
  1597c4: b0018349     	adrp	x9, 0x31c2000 <dyld_stub_binder+0x31c2000>
  1597c8: 91205929     	add	x9, x9, #0x816
  1597cc: ad400520     	ldp	q0, q1, [x9]
  1597d0: ad000400     	stp	q0, q1, [x0]
  1597d4: 3900801f     	strb	wzr, [x0, #0x20]
  1597d8: 91006115     	add	x21, x8, #0x18
  1597dc: aa0003f3     	mov	x19, x0
  1597e0: 52800400     	mov	w0, #0x20               ; =32
  1597e4: 94a12b5b     	bl	0x29a4550 <dyld_stub_binder+0x29a4550>
  1597e8: f001ab28     	adrp	x8, 0x36c0000 <dyld_stub_binder+0x36c0000>
  1597ec: 912d2108     	add	x8, x8, #0xb48
  1597f0: f9000100     	str	x0, [x8]
  1597f4: f0015629     	adrp	x9, 0x2c20000 <dyld_stub_binder+0x2c20000>
  1597f8: 3dc3d120     	ldr	q0, [x9, #0xf40]
  1597fc: 3c808100     	stur	q0, [x8, #0x8]
