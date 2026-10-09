
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libbytenn.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000012b84 <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE>:
   12b84: d103c3ff     	sub	sp, sp, #0xf0
   12b88: a9096ffc     	stp	x28, x27, [sp, #0x90]
   12b8c: a90a67fa     	stp	x26, x25, [sp, #0xa0]
   12b90: a90b5ff8     	stp	x24, x23, [sp, #0xb0]
   12b94: a90c57f6     	stp	x22, x21, [sp, #0xc0]
   12b98: a90d4ff4     	stp	x20, x19, [sp, #0xd0]
   12b9c: a90e7bfd     	stp	x29, x30, [sp, #0xe0]
   12ba0: 910383fd     	add	x29, sp, #0xe0
   12ba4: aa0103f7     	mov	x23, x1
   12ba8: aa0003f3     	mov	x19, x0
   12bac: d00023a8     	adrp	x8, 0x488000 <dyld_stub_binder+0x488000>
   12bb0: f9409508     	ldr	x8, [x8, #0x128]
   12bb4: f9400108     	ldr	x8, [x8]
   12bb8: f81a83a8     	stur	x8, [x29, #-0x58]
   12bbc: 97ffe8ea     	bl	0xcf64 <__ZN6BYTENN16ByteNNEngineImpl10GetNetworkEv+0x5f0>
   12bc0: 6f00e400     	movi.2d	v0, #0000000000000000
   12bc4: aa0003f4     	mov	x20, x0
   12bc8: 3c8c0e80     	str	q0, [x20, #0xc0]!
   12bcc: aa1403f6     	mov	x22, x20
   12bd0: 3c868ec0     	str	q0, [x22, #0x68]!
   12bd4: 3900e29f     	strb	wzr, [x20, #0x38]
   12bd8: 91013e89     	add	x9, x20, #0x4f
   12bdc: 91014288     	add	x8, x20, #0x50
   12be0: a90127e8     	stp	x8, x9, [sp, #0x10]
   12be4: 3d800680     	str	q0, [x20, #0x10]
   12be8: 91030299     	add	x25, x20, #0xc0
   12bec: f900129f     	str	xzr, [x20, #0x20]
   12bf0: 3c84f280     	stur	q0, [x20, #0x4f]
   12bf4: 3c85f280     	stur	q0, [x20, #0x5f]
   12bf8: ad040280     	stp	q0, q0, [x20, #0x80]
   12bfc: ad050280     	stp	q0, q0, [x20, #0xa0]
   12c00: 528000e8     	mov	w8, #0x7                ; =7
   12c04: 39035e88     	strb	w8, [x20, #0xd7]
   12c08: 528dcea8     	mov	w8, #0x6e75             ; =28277
   12c0c: 72adcd68     	movk	w8, #0x6e6b, lsl #16
   12c10: b900c288     	str	w8, [x20, #0xc0]
   12c14: 528dedc8     	mov	w8, #0x6f6e             ; =28526
   12c18: 72adcee8     	movk	w8, #0x6e77, lsl #16
   12c1c: b80c3288     	stur	w8, [x20, #0xc3]
   12c20: 39031e9f     	strb	wzr, [x20, #0xc7]
   12c24: 52802028     	mov	w8, #0x101              ; =257
   12c28: 7901b288     	strh	w8, [x20, #0xd8]
   12c2c: 39036a9f     	strb	wzr, [x20, #0xda]
   12c30: 9103a29a     	add	x26, x20, #0xe8
   12c34: ad070280     	stp	q0, q0, [x20, #0xe0]
   12c38: d0001be8     	adrp	x8, 0x390000 <dyld_stub_binder+0x390000>
   12c3c: fd43e901     	ldr	d1, [x8, #0x7d0]
   12c40: fd008281     	str	d1, [x20, #0x100]
   12c44: 3904229f     	strb	wzr, [x20, #0x108]
   12c48: 91044298     	add	x24, x20, #0x110
   12c4c: a9117e9f     	stp	xzr, xzr, [x20, #0x110]
   12c50: 91051e88     	add	x8, x20, #0x147
   12c54: 7900011f     	strh	wzr, [x8]
   12c58: 3904c29f     	strb	wzr, [x20, #0x130]
   12c5c: 91053288     	add	x8, x20, #0x14c
   12c60: 91054295     	add	x21, x20, #0x150
   12c64: 9105a29b     	add	x27, x20, #0x168
   12c68: 39065e9f     	strb	wzr, [x20, #0x197]
   12c6c: 9106629c     	add	x28, x20, #0x198
   12c70: 91068289     	add	x9, x20, #0x1a0
   12c74: a91a7e9f     	stp	xzr, xzr, [x20, #0x1a0]
   12c78: ad000100     	stp	q0, q0, [x8]
   12c7c: 3d800900     	str	q0, [x8, #0x20]
   12c80: f802d11f     	stur	xzr, [x8, #0x2d]
   12c84: f900ce89     	str	x9, [x20, #0x198]
   12c88: 6f00e400     	movi.2d	v0, #0000000000000000
   12c8c: fd00da80     	str	d0, [x20, #0x1b0]
   12c90: d0001be8     	adrp	x8, 0x390000 <dyld_stub_binder+0x390000>
   12c94: 911f8108     	add	x8, x8, #0x7e0
   12c98: ad410500     	ldp	q0, q1, [x8, #0x20]
   12c9c: ad0207e0     	stp	q0, q1, [sp, #0x40]
   12ca0: ad420500     	ldp	q0, q1, [x8, #0x40]
   12ca4: ad0307e0     	stp	q0, q1, [sp, #0x60]
   12ca8: ad400500     	ldp	q0, q1, [x8]
   12cac: 910083e8     	add	x8, sp, #0x20
   12cb0: 91018102     	add	x2, x8, #0x60
   12cb4: ad0107e0     	stp	q0, q1, [sp, #0x20]
   12cb8: 910083e1     	add	x1, sp, #0x20
   12cbc: aa1c03e0     	mov	x0, x28
   12cc0: 940001ea     	bl	0x13468 <__ZN6BYTENN20ByteNNInternalConfigC1ENS_6ConfigE+0x60c>
   12cc4: b9400268     	ldr	w8, [x19]
   12cc8: 51002d08     	sub	w8, w8, #0xb
   12ccc: 71000d1f     	cmp	w8, #0x3
   12cd0: 54000122     	b.hs	0x12cf4 <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE+0x170>
   12cd4: d00023a9     	adrp	x9, 0x488000 <dyld_stub_binder+0x488000>
   12cd8: 911c8129     	add	x9, x9, #0x720
   12cdc: f868d920     	ldr	x0, [x9, w8, sxtw #3]
   12ce0: d0001be9     	adrp	x9, 0x390000 <dyld_stub_binder+0x390000>
   12ce4: 9123a129     	add	x9, x9, #0x8e8
   12ce8: b868d934     	ldr	w20, [x9, w8, sxtw #2]
   12cec: 940d610d     	bl	0x36b120 <dyld_stub_binder+0x36b120>
   12cf0: b9000274     	str	w20, [x19]
   12cf4: 9102e2e8     	add	x8, x23, #0xb8
   12cf8: 0d40c900     	ld1r.2s	{ v0 }, [x8]
   12cfc: d0001be8     	adrp	x8, 0x390000 <dyld_stub_binder+0x390000>
   12d00: fd43ed01     	ldr	d1, [x8, #0x7d8]
   12d04: 0e211c00     	and.8b	v0, v0, v1
   12d08: fd00e260     	str	d0, [x19, #0x1c0]
   12d0c: f85a83a8     	ldur	x8, [x29, #-0x58]
   12d10: d00023a9     	adrp	x9, 0x488000 <dyld_stub_binder+0x488000>
   12d14: f9409529     	ldr	x9, [x9, #0x128]
   12d18: f9400129     	ldr	x9, [x9]
   12d1c: eb08013f     	cmp	x9, x8
   12d20: 54000141     	b.ne	0x12d48 <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE+0x1c4>
   12d24: aa1303e0     	mov	x0, x19
   12d28: a94e7bfd     	ldp	x29, x30, [sp, #0xe0]
   12d2c: a94d4ff4     	ldp	x20, x19, [sp, #0xd0]
   12d30: a94c57f6     	ldp	x22, x21, [sp, #0xc0]
   12d34: a94b5ff8     	ldp	x24, x23, [sp, #0xb0]
   12d38: a94a67fa     	ldp	x26, x25, [sp, #0xa0]
   12d3c: a9496ffc     	ldp	x28, x27, [sp, #0x90]
   12d40: 9103c3ff     	add	sp, sp, #0xf0
   12d44: d65f03c0     	ret
   12d48: 940d5fca     	bl	0x36ac70 <dyld_stub_binder+0x36ac70>
   12d4c: aa1803f7     	mov	x23, x24
   12d50: f9400bf8     	ldr	x24, [sp, #0x10]
   12d54: f90007e0     	str	x0, [sp, #0x8]
   12d58: f9413261     	ldr	x1, [x19, #0x260]
   12d5c: aa1c03e0     	mov	x0, x28
   12d60: 97ffe78d     	bl	0xcb94 <__ZN6BYTENN16ByteNNEngineImpl10GetNetworkEv+0x220>
   12d64: 39c95e68     	ldrsb	w8, [x19, #0x257]
   12d68: 37f80488     	tbnz	w8, #0x1f, 0x12df8 <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE+0x274>
   12d6c: aa1b03e0     	mov	x0, x27
   12d70: 97ffff6c     	bl	0x12b20 <__ZN6BYTENN20ByteNNInternalConfigC2Ev+0x2e8>
   12d74: aa1503e0     	mov	x0, x21
   12d78: 97ffff6a     	bl	0x12b20 <__ZN6BYTENN20ByteNNInternalConfigC2Ev+0x2e8>
   12d7c: 39c81e68     	ldrsb	w8, [x19, #0x207]
   12d80: 37f804c8     	tbnz	w8, #0x1f, 0x12e18 <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE+0x294>
   12d84: aa1703e0     	mov	x0, x23
   12d88: 97ffd368     	bl	0x7b28 <__ZN6BYTENN16ByteNNEngineImpl19isSupportCPUDotProdEv+0x74>
   12d8c: aa1a03e0     	mov	x0, x26
   12d90: 97ffd366     	bl	0x7b28 <__ZN6BYTENN16ByteNNEngineImpl19isSupportCPUDotProdEv+0x74>
   12d94: 39c65e68     	ldrsb	w8, [x19, #0x197]
   12d98: 37f80508     	tbnz	w8, #0x1f, 0x12e38 <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE+0x2b4>
   12d9c: 39c5fe68     	ldrsb	w8, [x19, #0x17f]
   12da0: 37f80548     	tbnz	w8, #0x1f, 0x12e48 <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE+0x2c4>
   12da4: 39c59e68     	ldrsb	w8, [x19, #0x167]
   12da8: 36f80068     	tbz	w8, #0x1f, 0x12db4 <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE+0x230>
   12dac: f940aa60     	ldr	x0, [x19, #0x150]
   12db0: 940d5f74     	bl	0x36ab80 <dyld_stub_binder+0x36ab80>
   12db4: aa1603e0     	mov	x0, x22
   12db8: 97ffd35c     	bl	0x7b28 <__ZN6BYTENN16ByteNNEngineImpl19isSupportCPUDotProdEv+0x74>
   12dbc: aa1803e0     	mov	x0, x24
   12dc0: 97ffd35a     	bl	0x7b28 <__ZN6BYTENN16ByteNNEngineImpl19isSupportCPUDotProdEv+0x74>
   12dc4: f9400fe8     	ldr	x8, [sp, #0x18]
   12dc8: 39c00108     	ldrsb	w8, [x8]
   12dcc: 36f80068     	tbz	w8, #0x1f, 0x12dd8 <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE+0x254>
   12dd0: f9407e60     	ldr	x0, [x19, #0xf8]
   12dd4: 940d5f6b     	bl	0x36ab80 <dyld_stub_binder+0x36ab80>
   12dd8: 91034260     	add	x0, x19, #0xd0
   12ddc: 97ffd353     	bl	0x7b28 <__ZN6BYTENN16ByteNNEngineImpl19isSupportCPUDotProdEv+0x74>
   12de0: aa1403e0     	mov	x0, x20
   12de4: 97ffd351     	bl	0x7b28 <__ZN6BYTENN16ByteNNEngineImpl19isSupportCPUDotProdEv+0x74>
   12de8: aa1303e0     	mov	x0, x19
   12dec: 97ffe287     	bl	0xb808 <__ZN6BYTENN9ConfigExtD2Ev+0x9c>
   12df0: f94007e0     	ldr	x0, [sp, #0x8]
   12df4: 940d5eaf     	bl	0x36a8b0 <dyld_stub_binder+0x36a8b0>
   12df8: f9412260     	ldr	x0, [x19, #0x240]
   12dfc: 940d5f61     	bl	0x36ab80 <dyld_stub_binder+0x36ab80>
   12e00: aa1b03e0     	mov	x0, x27
   12e04: 97ffff47     	bl	0x12b20 <__ZN6BYTENN20ByteNNInternalConfigC2Ev+0x2e8>
   12e08: aa1503e0     	mov	x0, x21
   12e0c: 97ffff45     	bl	0x12b20 <__ZN6BYTENN20ByteNNInternalConfigC2Ev+0x2e8>
   12e10: 39c81e68     	ldrsb	w8, [x19, #0x207]
   12e14: 36fffb88     	tbz	w8, #0x1f, 0x12d84 <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE+0x200>
   12e18: f940fa60     	ldr	x0, [x19, #0x1f0]
   12e1c: 940d5f59     	bl	0x36ab80 <dyld_stub_binder+0x36ab80>
   12e20: aa1703e0     	mov	x0, x23
   12e24: 97ffd341     	bl	0x7b28 <__ZN6BYTENN16ByteNNEngineImpl19isSupportCPUDotProdEv+0x74>
   12e28: aa1a03e0     	mov	x0, x26
   12e2c: 97ffd33f     	bl	0x7b28 <__ZN6BYTENN16ByteNNEngineImpl19isSupportCPUDotProdEv+0x74>
   12e30: 39c65e68     	ldrsb	w8, [x19, #0x197]
   12e34: 36fffb48     	tbz	w8, #0x1f, 0x12d9c <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE+0x218>
   12e38: f9400320     	ldr	x0, [x25]
   12e3c: 940d5f51     	bl	0x36ab80 <dyld_stub_binder+0x36ab80>
   12e40: 39c5fe68     	ldrsb	w8, [x19, #0x17f]
   12e44: 36fffb08     	tbz	w8, #0x1f, 0x12da4 <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE+0x220>
   12e48: f940b660     	ldr	x0, [x19, #0x168]
   12e4c: 940d5f4d     	bl	0x36ab80 <dyld_stub_binder+0x36ab80>
   12e50: 39c59e68     	ldrsb	w8, [x19, #0x167]
   12e54: 37fffac8     	tbnz	w8, #0x1f, 0x12dac <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE+0x228>
   12e58: 17ffffd7     	b	0x12db4 <__ZN6BYTENN20ByteNNInternalConfigC2ENS_6ConfigE+0x230>
