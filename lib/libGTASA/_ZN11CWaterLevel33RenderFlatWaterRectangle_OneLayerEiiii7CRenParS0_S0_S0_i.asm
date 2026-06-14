; =========================================================
; Game Engine Function: _ZN11CWaterLevel33RenderFlatWaterRectangle_OneLayerEiiii7CRenParS0_S0_S0_i
; Address            : 0x59AC8C - 0x59AFBA
; =========================================================

59AC8C:  PUSH            {R4-R7,LR}
59AC8E:  ADD             R7, SP, #0xC
59AC90:  PUSH.W          {R8-R11}
59AC94:  SUB             SP, SP, #4
59AC96:  VPUSH           {D8-D12}
59AC9A:  SUB             SP, SP, #8
59AC9C:  MOV             R9, R1
59AC9E:  LDR             R1, =(TempBufferIndicesStored_ptr - 0x59ACA8)
59ACA0:  MOV             R4, R0
59ACA2:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x59ACAE)
59ACA4:  ADD             R1, PC; TempBufferIndicesStored_ptr
59ACA6:  LDR.W           R11, [R7,#arg_40]
59ACAA:  ADD             R0, PC; TempBufferVerticesStored_ptr
59ACAC:  MOV             R10, R3
59ACAE:  LDR             R1, [R1]; TempBufferIndicesStored
59ACB0:  LDR             R0, [R0]; TempBufferVerticesStored
59ACB2:  LDR             R6, [R0]
59ACB4:  LDR             R0, [R1]
59ACB6:  MOVW            R1, #0xFF9
59ACBA:  CMP             R0, R1
59ACBC:  ITT LE
59ACBE:  MOVWLE          R0, #0x7FC
59ACC2:  CMPLE           R6, R0
59ACC4:  BLT             loc_59AD12
59ACC6:  MOV             R8, R2
59ACC8:  CBZ             R6, loc_59ACFE
59ACCA:  BLX.W           j__Z10LittleTestv; LittleTest(void)
59ACCE:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x59ACD8)
59ACD0:  MOVS            R3, #1
59ACD2:  LDR             R1, =(TempVertexBuffer_ptr - 0x59ACDA)
59ACD4:  ADD             R0, PC; TempBufferVerticesStored_ptr
59ACD6:  ADD             R1, PC; TempVertexBuffer_ptr
59ACD8:  LDR             R2, [R0]; TempBufferVerticesStored
59ACDA:  LDR             R0, [R1]; TempVertexBuffer
59ACDC:  LDR             R1, [R2]
59ACDE:  MOVS            R2, #0
59ACE0:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
59ACE4:  CBZ             R0, loc_59ACFE
59ACE6:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x59ACEE)
59ACE8:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x59ACF0)
59ACEA:  ADD             R0, PC; TempBufferIndicesStored_ptr
59ACEC:  ADD             R1, PC; TempBufferRenderIndexList_ptr
59ACEE:  LDR             R0, [R0]; TempBufferIndicesStored
59ACF0:  LDR             R1, [R1]; TempBufferRenderIndexList
59ACF2:  LDR             R2, [R0]
59ACF4:  MOVS            R0, #3
59ACF6:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
59ACFA:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
59ACFE:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x59AD0A)
59AD00:  MOVS            R6, #0
59AD02:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x59AD0C)
59AD04:  MOV             R2, R8
59AD06:  ADD             R0, PC; TempBufferIndicesStored_ptr
59AD08:  ADD             R1, PC; TempBufferVerticesStored_ptr
59AD0A:  LDR             R0, [R0]; TempBufferIndicesStored
59AD0C:  LDR             R1, [R1]; TempBufferVerticesStored
59AD0E:  STR             R6, [R0]
59AD10:  STR             R6, [R1]
59AD12:  LDR             R3, [R7,#arg_30]
59AD14:  CMP.W           R11, #0
59AD18:  LDR             R5, [R7,#arg_20]
59AD1A:  LDR             R0, [R7,#arg_10]
59AD1C:  BEQ             loc_59AD96
59AD1E:  CMP.W           R11, #1
59AD22:  BNE             loc_59AE0C
59AD24:  VMOV            S0, R4
59AD28:  LDR             R0, =(TextureShiftSecondU_ptr - 0x59AD38)
59AD2A:  VLDR            S20, =0.04
59AD2E:  MOV             R11, R10
59AD30:  VCVT.F32.S32    S16, S0
59AD34:  ADD             R0, PC; TextureShiftSecondU_ptr
59AD36:  LDR             R1, =(TextureShiftSecondV_ptr - 0x59AD42)
59AD38:  MOV             R10, R9
59AD3A:  LDR             R0, [R0]; TextureShiftSecondU
59AD3C:  MOV             R9, R4
59AD3E:  ADD             R1, PC; TextureShiftSecondV_ptr
59AD40:  MOV             R5, R3
59AD42:  MOV             R4, R2
59AD44:  VLDR            S2, [R0]
59AD48:  LDR             R1, [R1]; TextureShiftSecondV
59AD4A:  VMUL.F32        S0, S16, S20
59AD4E:  VADD.F32        S22, S0, S2
59AD52:  VMOV            S0, R2
59AD56:  VCVT.F32.S32    S18, S0
59AD5A:  VLDR            S2, [R1]
59AD5E:  VMOV            R0, S22; x
59AD62:  VMUL.F32        S0, S18, S20
59AD66:  VADD.F32        S24, S0, S2
59AD6A:  BLX.W           floorf
59AD6E:  MOV             R8, R0
59AD70:  VMOV            R0, S24; x
59AD74:  BLX.W           floorf
59AD78:  VMOV            S0, R0
59AD7C:  MOV             R3, R5
59AD7E:  VMOV            S2, R8
59AD82:  LDR             R5, [R7,#arg_20]
59AD84:  VSUB.F32        S0, S24, S0
59AD88:  LDR             R0, [R7,#arg_10]
59AD8A:  VSUB.F32        S2, S22, S2
59AD8E:  MOV.W           R1, #0x5A000000
59AD92:  STR             R1, [SP,#0x50+var_4C]
59AD94:  B               loc_59AE28
59AD96:  VMOV            S0, R4
59AD9A:  LDR             R0, =(TextureShiftU_ptr - 0x59ADAA)
59AD9C:  VLDR            S20, =0.08
59ADA0:  MOV             R11, R10
59ADA2:  VCVT.F32.S32    S16, S0
59ADA6:  ADD             R0, PC; TextureShiftU_ptr
59ADA8:  LDR             R1, =(TextureShiftV_ptr - 0x59ADB4)
59ADAA:  MOV             R10, R9
59ADAC:  LDR             R0, [R0]; TextureShiftU
59ADAE:  MOV             R9, R4
59ADB0:  ADD             R1, PC; TextureShiftV_ptr
59ADB2:  MOV             R5, R3
59ADB4:  MOV             R4, R2
59ADB6:  VLDR            S2, [R0]
59ADBA:  LDR             R1, [R1]; TextureShiftV
59ADBC:  VMUL.F32        S0, S16, S20
59ADC0:  VADD.F32        S22, S0, S2
59ADC4:  VMOV            S0, R2
59ADC8:  VCVT.F32.S32    S18, S0
59ADCC:  VLDR            S2, [R1]
59ADD0:  VMOV            R0, S22; x
59ADD4:  VMUL.F32        S0, S18, S20
59ADD8:  VADD.F32        S24, S0, S2
59ADDC:  BLX.W           floorf
59ADE0:  MOV             R8, R0
59ADE2:  VMOV            R0, S24; x
59ADE6:  BLX.W           floorf
59ADEA:  LDR             R1, =(dword_6B15B8 - 0x59ADFA)
59ADEC:  VMOV            S0, R0
59ADF0:  VMOV            S2, R8
59ADF4:  MOV             R3, R5
59ADF6:  ADD             R1, PC; dword_6B15B8
59ADF8:  LDR             R5, [R7,#arg_20]
59ADFA:  VSUB.F32        S0, S24, S0
59ADFE:  LDR             R0, [R1]
59AE00:  VSUB.F32        S2, S22, S2
59AE04:  LSLS            R0, R0, #0x18
59AE06:  STR             R0, [SP,#0x50+var_4C]
59AE08:  LDR             R0, [R7,#arg_10]
59AE0A:  B               loc_59AE28
59AE0C:  VMOV            S0, R2
59AE10:  MOVS            R1, #0
59AE12:  MOV             R11, R10
59AE14:  MOV             R10, R9
59AE16:  VCVT.F32.S32    S18, S0
59AE1A:  MOV             R9, R4
59AE1C:  VMOV            S0, R4
59AE20:  MOV             R4, R2
59AE22:  VCVT.F32.S32    S16, S0
59AE26:  STR             R1, [SP,#0x50+var_4C]
59AE28:  SUB.W           R2, R11, R4
59AE2C:  VMOV            S1, R5
59AE30:  SUB.W           R5, R10, R9
59AE34:  VMOV.F32        S4, #-7.0
59AE38:  VMOV            S8, R10
59AE3C:  LDR.W           LR, =(WaterColor_ptr - 0x59AE4E)
59AE40:  VMOV            S10, R11
59AE44:  LDR             R4, [R7,#arg_0]
59AE46:  VMOV            S3, R2
59AE4A:  ADD             LR, PC; WaterColor_ptr
59AE4C:  VMOV            S5, R5
59AE50:  VLDR            S7, =0.0
59AE54:  VCVT.F32.S32    S8, S8
59AE58:  CMP             R2, #0
59AE5A:  VCVT.F32.S32    S10, S10
59AE5E:  LDR.W           R12, =(TempVertexBuffer_ptr - 0x59AE72)
59AE62:  VCVT.F32.S32    S3, S3
59AE66:  LDR.W           R5, [LR]; WaterColor
59AE6A:  VCVT.F32.S32    S5, S5
59AE6E:  ADD             R12, PC; TempVertexBuffer_ptr
59AE70:  VMOV            S14, R3
59AE74:  ADD.W           R6, R6, R6,LSL#3
59AE78:  VMOV            S12, R4
59AE7C:  LDR.W           R3, [R12]; TempVertexBuffer
59AE80:  VMOV.F32        S6, #7.0
59AE84:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x59AEAC)
59AE86:  IT GT
59AE88:  VMOVGT.F32      S6, S4
59AE8C:  VADD.F32        S2, S2, S4
59AE90:  VADD.F32        S0, S6, S0
59AE94:  LDRB            R2, [R5,#(WaterColor+1 - 0xA1C480)]
59AE96:  VADD.F32        S14, S14, S7
59AE9A:  LDRB            R4, [R5]
59AE9C:  VADD.F32        S12, S12, S7
59AEA0:  ADD.W           R6, R3, R6,LSL#2
59AEA4:  VMUL.F32        S4, S20, S5
59AEA8:  ADD             R1, PC; TempBufferVerticesStored_ptr
59AEAA:  VMOV            S5, R2
59AEAE:  VSTR            S16, [R6]
59AEB2:  VMOV            S9, R0
59AEB6:  VSTR            S18, [R6,#4]
59AEBA:  LDRB            R0, [R5,#(WaterColor+2 - 0xA1C480)]
59AEBC:  VMUL.F32        S6, S20, S3
59AEC0:  VADD.F32        S1, S1, S7
59AEC4:  VLDR            S3, =0.577
59AEC8:  LDR.W           R8, [R1]; TempBufferVerticesStored
59AECC:  VSTR            S12, [R6,#8]
59AED0:  VADD.F32        S12, S9, S7
59AED4:  VSTR            S2, [R6,#0x1C]
59AED8:  VADD.F32        S4, S4, S2
59AEDC:  VSTR            S0, [R6,#0x20]
59AEE0:  VCVT.F32.U32    S5, S5
59AEE4:  VSTR            S14, [R6,#0x74]
59AEE8:  VMOV            S14, R4
59AEEC:  VMOV            S7, R0
59AEF0:  LDR             R5, =(TempBufferIndicesStored_ptr - 0x59AF12)
59AEF2:  VCVT.F32.U32    S14, S14
59AEF6:  LDR.W           R9, =(TempBufferRenderIndexList_ptr - 0x59AF20)
59AEFA:  VCVT.F32.U32    S7, S7
59AEFE:  VSTR            S10, [R6,#0x70]
59AF02:  VSTR            S8, [R6,#0x6C]
59AF06:  VADD.F32        S6, S6, S0
59AF0A:  VSTR            S4, [R6,#0x40]
59AF0E:  ADD             R5, PC; TempBufferIndicesStored_ptr
59AF10:  VSTR            S0, [R6,#0x44]
59AF14:  VMUL.F32        S0, S5, S3
59AF18:  VSTR            S8, [R6,#0x24]
59AF1C:  ADD             R9, PC; TempBufferRenderIndexList_ptr
59AF1E:  VSTR            S18, [R6,#0x28]
59AF22:  VMUL.F32        S8, S14, S3
59AF26:  VSTR            S12, [R6,#0x2C]
59AF2A:  VSTR            S2, [R6,#0x64]
59AF2E:  VMUL.F32        S12, S7, S3
59AF32:  VSTR            S10, [R6,#0x4C]
59AF36:  VSTR            S16, [R6,#0x48]
59AF3A:  VSTR            S1, [R6,#0x50]
59AF3E:  VSTR            S4, [R6,#0x88]
59AF42:  VSTR            S6, [R6,#0x68]
59AF46:  VCVT.U32.F32    S0, S0
59AF4A:  VSTR            S6, [R6,#0x8C]
59AF4E:  VCVT.U32.F32    S2, S8
59AF52:  VCVT.U32.F32    S4, S12
59AF56:  LDR             R1, [SP,#0x50+var_4C]
59AF58:  LDR             R5, [R5]; TempBufferIndicesStored
59AF5A:  VMOV            R2, S0
59AF5E:  VMOV            R0, S2
59AF62:  ORRS            R0, R1
59AF64:  ORR.W           R0, R0, R2,LSL#8
59AF68:  VMOV            R2, S4
59AF6C:  ORR.W           R0, R0, R2,LSL#16
59AF70:  LDR.W           R2, [R8]
59AF74:  STR             R0, [R6,#0x18]
59AF76:  ADDS            R4, R2, #3
59AF78:  STR             R0, [R6,#0x3C]
59AF7A:  STR             R0, [R6,#0x60]
59AF7C:  ADD.W           R1, R4, R4,LSL#3
59AF80:  LDR.W           R6, [R9]; TempBufferRenderIndexList
59AF84:  ADD.W           R1, R3, R1,LSL#2
59AF88:  ADDS            R3, R2, #1
59AF8A:  STR             R0, [R1,#0x18]
59AF8C:  LDR             R0, [R5]
59AF8E:  ADD.W           R1, R6, R0,LSL#1
59AF92:  STRH.W          R2, [R6,R0,LSL#1]
59AF96:  ADDS            R0, #6
59AF98:  STR             R0, [R5]
59AF9A:  ADDS            R0, R2, #4
59AF9C:  STRH            R3, [R1,#2]
59AF9E:  ADDS            R6, R2, #2
59AFA0:  STRH            R6, [R1,#4]
59AFA2:  STRH            R4, [R1,#6]
59AFA4:  STRH            R3, [R1,#8]
59AFA6:  STRH            R6, [R1,#0xA]
59AFA8:  STR.W           R0, [R8]
59AFAC:  ADD             SP, SP, #8
59AFAE:  VPOP            {D8-D12}
59AFB2:  ADD             SP, SP, #4
59AFB4:  POP.W           {R8-R11}
59AFB8:  POP             {R4-R7,PC}
