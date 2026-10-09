
/Volumes/Effect House/Effect House.app/Contents/Frameworks/libeffect.dylib:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000002845db0 <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_>:
 2845db0: d10283ff     	sub	sp, sp, #0xa0
 2845db4: a90567fa     	stp	x26, x25, [sp, #0x50]
 2845db8: a9065ff8     	stp	x24, x23, [sp, #0x60]
 2845dbc: a90757f6     	stp	x22, x21, [sp, #0x70]
 2845dc0: a9084ff4     	stp	x20, x19, [sp, #0x80]
 2845dc4: a9097bfd     	stp	x29, x30, [sp, #0x90]
 2845dc8: 910243fd     	add	x29, sp, #0x90
 2845dcc: aa0503f7     	mov	x23, x5
 2845dd0: aa0403f8     	mov	x24, x4
 2845dd4: aa0303f3     	mov	x19, x3
 2845dd8: aa0203f4     	mov	x20, x2
 2845ddc: aa0103f5     	mov	x21, x1
 2845de0: aa0003f6     	mov	x22, x0
 2845de4: f00063a8     	adrp	x8, 0x34bc000 <dyld_stub_binder+0x34bc000>
 2845de8: f9435508     	ldr	x8, [x8, #0x6a8]
 2845dec: f9400108     	ldr	x8, [x8]
 2845df0: f90027e8     	str	x8, [sp, #0x48]
 2845df4: f9406808     	ldr	x8, [x0, #0xd0]
 2845df8: b5000128     	cbnz	x8, 0x2845e1c <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_+0x6c>
 2845dfc: b0006341     	adrp	x1, 0x34ae000 <dyld_stub_binder+0x34ae000>
 2845e00: f942f421     	ldr	x1, [x1, #0x5e8]
 2845e04: 52800a00     	mov	w0, #0x50               ; =80
 2845e08: 940579d5     	bl	0x29a455c <dyld_stub_binder+0x29a455c>
 2845e0c: b4000840     	cbz	x0, 0x2845f14 <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_+0x164>
 2845e10: aa0003f9     	mov	x25, x0
 2845e14: 97fff796     	bl	0x2843c6c <__ZN5smash13private_utils7predict9PredictorC1Ev>
 2845e18: f9006ad9     	str	x25, [x22, #0xd0]
 2845e1c: 910282c0     	add	x0, x22, #0xa0
 2845e20: aa1803e1     	mov	x1, x24
 2845e24: 97fe3397     	bl	0x27d2c80 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xf5f00>
 2845e28: 9102e2c0     	add	x0, x22, #0xb8
 2845e2c: aa1703e1     	mov	x1, x23
 2845e30: 97fe3394     	bl	0x27d2c80 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xf5f00>
 2845e34: d0004f61     	adrp	x1, 0x3233000 <dyld_stub_binder+0x3233000>
 2845e38: 911c4821     	add	x1, x1, #0x712
 2845e3c: 9100c3e0     	add	x0, sp, #0x30
 2845e40: 97fcf07d     	bl	0x2782034 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xa52b4>
 2845e44: 910003e0     	mov	x0, sp
 2845e48: 9100c3e1     	add	x1, sp, #0x30
 2845e4c: 52800022     	mov	w2, #0x1                ; =1
 2845e50: 97fbb805     	bl	0x2733e64 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x570e4>
 2845e54: 9100c3e0     	add	x0, sp, #0x30
 2845e58: 94057817     	bl	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 2845e5c: f94007e1     	ldr	x1, [sp, #0x8]
 2845e60: a9400f02     	ldp	x2, x3, [x24]
 2845e64: 910003e0     	mov	x0, sp
 2845e68: 94000049     	bl	0x2845f8c <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_+0x1dc>
 2845e6c: f94007e1     	ldr	x1, [sp, #0x8]
 2845e70: a9400ee2     	ldp	x2, x3, [x23]
 2845e74: 910003e0     	mov	x0, sp
 2845e78: 94000045     	bl	0x2845f8c <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_+0x1dc>
 2845e7c: d0004f61     	adrp	x1, 0x3233000 <dyld_stub_binder+0x3233000>
 2845e80: 911c4821     	add	x1, x1, #0x712
 2845e84: 910063e0     	add	x0, sp, #0x18
 2845e88: 97fcf06b     	bl	0x2782034 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xa52b4>
 2845e8c: 9100c3e0     	add	x0, sp, #0x30
 2845e90: 910063e1     	add	x1, sp, #0x18
 2845e94: 52800022     	mov	w2, #0x1                ; =1
 2845e98: 97fbb7f3     	bl	0x2733e64 <__ZNK3bce6device5metal6Device14GetSharedEventEv+0x570e4>
 2845e9c: 910063e0     	add	x0, sp, #0x18
 2845ea0: 94057805     	bl	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 2845ea4: f9406ac0     	ldr	x0, [x22, #0xd0]
 2845ea8: b9400ec6     	ldr	w6, [x22, #0xc]
 2845eac: 9100c3e4     	add	x4, sp, #0x30
 2845eb0: 910003e5     	mov	x5, sp
 2845eb4: aa1503e1     	mov	x1, x21
 2845eb8: aa1403e2     	mov	x2, x20
 2845ebc: aa1303e3     	mov	x3, x19
 2845ec0: 52801007     	mov	w7, #0x80               ; =128
 2845ec4: 97fff788     	bl	0x2843ce4 <__ZN5smash13private_utils7predict9Predictor4InitERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKviRKNS3_6vectorIS9_NS7_IS9_EEEESI_ii>
 2845ec8: aa0003f3     	mov	x19, x0
 2845ecc: 9100c3e0     	add	x0, sp, #0x30
 2845ed0: 97fceeff     	bl	0x2781acc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xa4d4c>
 2845ed4: 910003e0     	mov	x0, sp
 2845ed8: 97fceefd     	bl	0x2781acc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xa4d4c>
 2845edc: f94027e8     	ldr	x8, [sp, #0x48]
 2845ee0: f00063a9     	adrp	x9, 0x34bc000 <dyld_stub_binder+0x34bc000>
 2845ee4: f9435529     	ldr	x9, [x9, #0x6a8]
 2845ee8: f9400129     	ldr	x9, [x9]
 2845eec: eb08013f     	cmp	x9, x8
 2845ef0: 54000181     	b.ne	0x2845f20 <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_+0x170>
 2845ef4: aa1303e0     	mov	x0, x19
 2845ef8: a9497bfd     	ldp	x29, x30, [sp, #0x90]
 2845efc: a9484ff4     	ldp	x20, x19, [sp, #0x80]
 2845f00: a94757f6     	ldp	x22, x21, [sp, #0x70]
 2845f04: a9465ff8     	ldp	x24, x23, [sp, #0x60]
 2845f08: a94567fa     	ldp	x26, x25, [sp, #0x50]
 2845f0c: 910283ff     	add	sp, sp, #0xa0
 2845f10: d65f03c0     	ret
 2845f14: f9006adf     	str	xzr, [x22, #0xd0]
 2845f18: 12800cd3     	mov	w19, #-0x67             ; =-103
 2845f1c: 17fffff0     	b	0x2845edc <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_+0x12c>
 2845f20: 940579d4     	bl	0x29a4670 <dyld_stub_binder+0x29a4670>
 2845f24: aa0003f3     	mov	x19, x0
 2845f28: b0006341     	adrp	x1, 0x34ae000 <dyld_stub_binder+0x34ae000>
 2845f2c: f942f421     	ldr	x1, [x1, #0x5e8]
 2845f30: aa1903e0     	mov	x0, x25
 2845f34: 9405797e     	bl	0x29a452c <dyld_stub_binder+0x29a452c>
 2845f38: 1400000e     	b	0x2845f70 <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_+0x1c0>
 2845f3c: aa0003f3     	mov	x19, x0
 2845f40: 9100c3e0     	add	x0, sp, #0x30
 2845f44: 97fceee2     	bl	0x2781acc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xa4d4c>
 2845f48: 14000008     	b	0x2845f68 <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_+0x1b8>
 2845f4c: aa0003f3     	mov	x19, x0
 2845f50: 910063e0     	add	x0, sp, #0x18
 2845f54: 940577d8     	bl	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 2845f58: 14000004     	b	0x2845f68 <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_+0x1b8>
 2845f5c: 14000002     	b	0x2845f64 <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_+0x1b4>
 2845f60: 14000001     	b	0x2845f64 <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_+0x1b4>
 2845f64: aa0003f3     	mov	x19, x0
 2845f68: 910003e0     	mov	x0, sp
 2845f6c: 97fceed8     	bl	0x2781acc <__ZNK3bce6device5metal6Device14GetSharedEventEv+0xa4d4c>
 2845f70: 940005a6     	bl	0x2847608 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x1024>
 2845f74: aa0003f3     	mov	x19, x0
 2845f78: 9100c3e0     	add	x0, sp, #0x30
 2845f7c: 940577ce     	bl	0x29a3eb4 <dyld_stub_binder+0x29a3eb4>
 2845f80: 17fffffc     	b	0x2845f70 <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_+0x1c0>
 2845f84: aa0003f3     	mov	x19, x0
 2845f88: 17fffffa     	b	0x2845f70 <__ZN5smash13private_utils3ssd8Detector9InitModelERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEPKciRNS3_6vectorIS9_NS7_IS9_EEEESH_+0x1c0>
 2845f8c: cb020068     	sub	x8, x3, x2
 2845f90: 52800309     	mov	w9, #0x18               ; =24
 2845f94: 9ac90d04     	sdiv	x4, x8, x9
 2845f98: 1400026b     	b	0x2846944 <__ZN5smash13private_utils3ssd8Detector16GetBoxMultiLabelERNSt3__16vectorI6AIRectNS3_9allocatorIS5_EEEERNS4_IiNS6_IiEEEERNS4_IfNS6_IfEEEE+0x360>

0000000002845f9c <__ZN5smash13private_utils3ssd8Detector13SetMaxSideLenEi>:
 2845f9c: b9401009     	ldr	w9, [x0, #0x10]
 2845fa0: 34000069     	cbz	w9, 0x2845fac <__ZN5smash13private_utils3ssd8Detector13SetMaxSideLenEi+0x10>
 2845fa4: 12800ce0     	mov	w0, #-0x68              ; =-104
 2845fa8: d65f03c0     	ret
 2845fac: aa0003e8     	mov	x8, x0
 2845fb0: 52800000     	mov	w0, #0x0                ; =0
 2845fb4: b9001501     	str	w1, [x8, #0x14]
 2845fb8: d65f03c0     	ret

0000000002845fbc <__ZN5smash13private_utils3ssd8Detector13SetMinSideLenEi>:
 2845fbc: b9401009     	ldr	w9, [x0, #0x10]
 2845fc0: 7100053f     	cmp	w9, #0x1
 2845fc4: 540000a1     	b.ne	0x2845fd8 <__ZN5smash13private_utils3ssd8Detector13SetMinSideLenEi+0x1c>
 2845fc8: aa0003e8     	mov	x8, x0
 2845fcc: 52800000     	mov	w0, #0x0                ; =0
 2845fd0: b9001901     	str	w1, [x8, #0x18]
 2845fd4: d65f03c0     	ret
 2845fd8: 12800ce0     	mov	w0, #-0x68              ; =-104
 2845fdc: d65f03c0     	ret

0000000002845fe0 <__ZN5smash13private_utils3ssd8Detector6DetectEN9mobilecv23MatERNSt3__16vectorINS3_5Rect_IfEENS5_9allocatorIS8_EEEERNS6_IfNS9_IfEEEE>:
 2845fe0: d10383ff     	sub	sp, sp, #0xe0
 2845fe4: 6d0a23e9     	stp	d9, d8, [sp, #0xa0]
 2845fe8: a90b57f6     	stp	x22, x21, [sp, #0xb0]
 2845fec: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
 2845ff0: a90d7bfd     	stp	x29, x30, [sp, #0xd0]
 2845ff4: 910343fd     	add	x29, sp, #0xd0
 2845ff8: aa0303f4     	mov	x20, x3
 2845ffc: aa0203f3     	mov	x19, x2
