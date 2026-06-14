; =========================================================
; Game Engine Function: _ZN6CLines22RenderLineWithClippingEffffffjj
; Address            : 0x5ADB68 - 0x5ADDC0
; =========================================================

5ADB68:  PUSH            {R4-R7,LR}
5ADB6A:  ADD             R7, SP, #0xC
5ADB6C:  PUSH.W          {R11}
5ADB70:  VPUSH           {D8-D15}
5ADB74:  VLDR            S8, [R7,#arg_0]
5ADB78:  VMOV            S0, R1
5ADB7C:  VMOV            S10, R3
5ADB80:  VLDR            S6, [R7,#arg_4]
5ADB84:  VMOV            S2, R0
5ADB88:  VSUB.F32        S12, S0, S8
5ADB8C:  VSUB.F32        S14, S2, S10
5ADB90:  VMOV            S4, R2
5ADB94:  LDR             R2, [R7,#arg_8]
5ADB96:  VMOV.F32        S16, #7.0
5ADB9A:  VSUB.F32        S1, S4, S6
5ADB9E:  VMUL.F32        S12, S12, S12
5ADBA2:  VMUL.F32        S14, S14, S14
5ADBA6:  VMUL.F32        S1, S1, S1
5ADBAA:  VADD.F32        S12, S14, S12
5ADBAE:  VMOV.F32        S14, #2.5
5ADBB2:  VADD.F32        S12, S12, S1
5ADBB6:  VSQRT.F32       S12, S12
5ADBBA:  VDIV.F32        S12, S12, S14
5ADBBE:  VMOV.F32        S14, #1.0
5ADBC2:  VADD.F32        S12, S12, S14
5ADBC6:  VMIN.F32        D6, D6, D8
5ADBCA:  VCVT.S32.F32    S5, S12
5ADBCE:  UBFX.W          R1, R2, #8, #8
5ADBD2:  UBFX.W          R0, R2, #0x10, #8
5ADBD6:  VMOV            R6, S5
5ADBDA:  CMP             R6, #1
5ADBDC:  BLT.W           loc_5ADD82
5ADBE0:  LDR             R3, [R7,#arg_C]
5ADBE2:  UXTB            R4, R2
5ADBE4:  LSRS            R2, R2, #0x18
5ADBE6:  VMOV            S12, R4
5ADBEA:  VMOV            S14, R1
5ADBEE:  LDR.W           R12, =(TempVertexBuffer_ptr - 0x5ADC0E)
5ADBF2:  VMOV            S1, R0
5ADBF6:  UXTB            R5, R3
5ADBF8:  VMOV            S3, R2
5ADBFC:  SUBS            R5, R5, R4
5ADBFE:  VCVT.F32.S32    S12, S12
5ADC02:  RSB.W           R4, R2, R3,LSR#24
5ADC06:  VCVT.F32.S32    S14, S14
5ADC0A:  ADD             R12, PC; TempVertexBuffer_ptr
5ADC0C:  VCVT.F32.S32    S1, S1
5ADC10:  VCVT.F32.S32    S3, S3
5ADC14:  UBFX.W          R2, R3, #0x10, #8
5ADC18:  UBFX.W          R3, R3, #8, #8
5ADC1C:  SUBS            R0, R2, R0
5ADC1E:  SUBS            R1, R3, R1
5ADC20:  VMOV            S7, R5
5ADC24:  VMOV            S13, R0
5ADC28:  UXTH            R0, R6
5ADC2A:  VMOV            S11, R1
5ADC2E:  LDR.W           R1, [R12]; TempVertexBuffer
5ADC32:  VMOV            S9, R4
5ADC36:  MOVS            R2, #0
5ADC38:  VCVT.F32.S32    S5, S5
5ADC3C:  VCVT.F32.S32    S7, S7
5ADC40:  VCVT.F32.S32    S9, S9
5ADC44:  VCVT.F32.S32    S11, S11
5ADC48:  VSUB.F32        S6, S6, S4
5ADC4C:  VSUB.F32        S8, S8, S0
5ADC50:  VSUB.F32        S10, S10, S2
5ADC54:  VCVT.F32.S32    S13, S13
5ADC58:  SXTH            R3, R2
5ADC5A:  ADDS            R2, #1
5ADC5C:  VMOV            S15, R3
5ADC60:  CMP             R0, R2
5ADC62:  VMOV            S16, R2
5ADC66:  VCVT.F32.S32    S15, S15
5ADC6A:  VCVT.F32.S32    S16, S16
5ADC6E:  VDIV.F32        S15, S15, S5
5ADC72:  VDIV.F32        S16, S16, S5
5ADC76:  VMUL.F32        S18, S10, S15
5ADC7A:  VMUL.F32        S20, S8, S15
5ADC7E:  VMUL.F32        S22, S16, S9
5ADC82:  VMUL.F32        S24, S6, S15
5ADC86:  VMUL.F32        S26, S16, S7
5ADC8A:  VMUL.F32        S28, S16, S11
5ADC8E:  VMUL.F32        S30, S16, S13
5ADC92:  VMUL.F32        S17, S15, S11
5ADC96:  VMUL.F32        S19, S15, S7
5ADC9A:  VMUL.F32        S23, S15, S9
5ADC9E:  VMUL.F32        S21, S6, S16
5ADCA2:  VMUL.F32        S25, S8, S16
5ADCA6:  VMUL.F32        S15, S15, S13
5ADCAA:  VMUL.F32        S16, S10, S16
5ADCAE:  VADD.F32        S30, S30, S1
5ADCB2:  VADD.F32        S18, S18, S2
5ADCB6:  VADD.F32        S20, S20, S0
5ADCBA:  VADD.F32        S22, S22, S3
5ADCBE:  VADD.F32        S24, S24, S4
5ADCC2:  VADD.F32        S26, S26, S12
5ADCC6:  VADD.F32        S28, S28, S14
5ADCCA:  VADD.F32        S16, S16, S2
5ADCCE:  VADD.F32        S15, S15, S1
5ADCD2:  VADD.F32        S25, S25, S0
5ADCD6:  VADD.F32        S23, S23, S3
5ADCDA:  VADD.F32        S21, S21, S4
5ADCDE:  VADD.F32        S19, S19, S12
5ADCE2:  VCVT.U32.F32    S30, S30
5ADCE6:  VSTR            S18, [R1]
5ADCEA:  VCVT.U32.F32    S18, S28
5ADCEE:  VSTR            S20, [R1,#4]
5ADCF2:  VCVT.U32.F32    S20, S22
5ADCF6:  VSTR            S24, [R1,#8]
5ADCFA:  VCVT.U32.F32    S22, S26
5ADCFE:  VSTR            S16, [R1,#0x24]
5ADD02:  VCVT.U32.F32    S15, S15
5ADD06:  VSTR            S25, [R1,#0x28]
5ADD0A:  VCVT.U32.F32    S16, S23
5ADD0E:  VSTR            S21, [R1,#0x2C]
5ADD12:  VCVT.U32.F32    S24, S19
5ADD16:  VADD.F32        S17, S17, S14
5ADD1A:  VMOV            R3, S16
5ADD1E:  VMOV            R5, S24
5ADD22:  VCVT.U32.F32    S26, S17
5ADD26:  UXTB            R3, R3
5ADD28:  ORR.W           R3, R3, R5,LSL#24
5ADD2C:  VMOV            R5, S26
5ADD30:  MOV.W           R5, R5,LSL#16
5ADD34:  UXTB16.W        R5, R5
5ADD38:  ORR.W           R3, R3, R5
5ADD3C:  VMOV            R5, S15
5ADD40:  MOV.W           R5, R5,LSL#8
5ADD44:  UXTH            R5, R5
5ADD46:  ORR.W           R3, R3, R5
5ADD4A:  STR             R3, [R1,#0x18]
5ADD4C:  VMOV            R3, S20
5ADD50:  VMOV            R5, S22
5ADD54:  UXTB            R3, R3
5ADD56:  ORR.W           R3, R3, R5,LSL#24
5ADD5A:  VMOV            R5, S18
5ADD5E:  MOV.W           R5, R5,LSL#16
5ADD62:  UXTB16.W        R5, R5
5ADD66:  ORR.W           R3, R3, R5
5ADD6A:  VMOV            R5, S30
5ADD6E:  MOV.W           R5, R5,LSL#8
5ADD72:  UXTH            R5, R5
5ADD74:  ORR.W           R3, R3, R5
5ADD78:  STR             R3, [R1,#0x3C]
5ADD7A:  ADD.W           R1, R1, #0x48 ; 'H'
5ADD7E:  BNE.W           loc_5ADC58
5ADD82:  BLX.W           j__Z10LittleTestv; LittleTest(void)
5ADD86:  LDR             R0, =(TempVertexBuffer_ptr - 0x5ADD92)
5ADD88:  LSLS            R4, R6, #1
5ADD8A:  MOV             R1, R4
5ADD8C:  MOVS            R2, #0
5ADD8E:  ADD             R0, PC; TempVertexBuffer_ptr
5ADD90:  MOVS            R3, #0
5ADD92:  LDR             R0, [R0]; TempVertexBuffer
5ADD94:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5ADD98:  CBZ             R0, loc_5ADDB6
5ADD9A:  LDR             R1, =(unk_6B213E - 0x5ADDA4)
5ADD9C:  MOVS            R0, #1
5ADD9E:  MOV             R2, R4
5ADDA0:  ADD             R1, PC; unk_6B213E
5ADDA2:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5ADDA6:  VPOP            {D8-D15}
5ADDAA:  POP.W           {R11}
5ADDAE:  POP.W           {R4-R7,LR}
5ADDB2:  B.W             sub_18D7C4
5ADDB6:  VPOP            {D8-D15}
5ADDBA:  POP.W           {R11}
5ADDBE:  POP             {R4-R7,PC}
