; =========================================================
; Game Engine Function: _Z30RpAtomicGetWorldBoundingSphereP8RpAtomic
; Address            : 0x213A98 - 0x213B8A
; =========================================================

213A98:  PUSH            {R4,R5,R7,LR}
213A9A:  ADD             R7, SP, #8
213A9C:  MOV             R4, R0
213A9E:  LDRB.W          R0, [R4,#0x4C]
213AA2:  LDR             R5, [R4,#4]
213AA4:  LSLS            R0, R0, #0x1E
213AA6:  ITT MI
213AA8:  MOVMI           R0, R4
213AAA:  BLXMI           j__Z33_rpAtomicResyncInterpolatedSphereP8RpAtomic; _rpAtomicResyncInterpolatedSphere(RpAtomic *)
213AAE:  MOV             R0, R5
213AB0:  BLX             j__Z12RwFrameDirtyPK7RwFrame; RwFrameDirty(RwFrame const*)
213AB4:  CMP             R0, #0
213AB6:  ITT EQ
213AB8:  LDRBEQ          R0, [R4,#3]
213ABA:  MOVSEQ.W        R0, R0,LSL#31
213ABE:  BEQ             loc_213B84
213AC0:  MOV             R0, R5
213AC2:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
213AC6:  MOV             R5, R0
213AC8:  ADD.W           R0, R4, #0x2C ; ','
213ACC:  ADD.W           R1, R4, #0x1C
213AD0:  MOVS            R2, #1
213AD2:  MOV             R3, R5
213AD4:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
213AD8:  LDR             R0, [R5,#0xC]
213ADA:  AND.W           R0, R0, #3
213ADE:  CMP             R0, #3
213AE0:  BNE             loc_213AE8
213AE2:  VLDR            S0, [R4,#0x28]
213AE6:  B               loc_213B78
213AE8:  VLDR            S0, [R5,#0x10]
213AEC:  VLDR            S2, [R5,#0x14]
213AF0:  VLDR            S12, [R5,#0x20]
213AF4:  VMUL.F32        S0, S0, S0
213AF8:  VLDR            S14, [R5,#0x24]
213AFC:  VMUL.F32        S2, S2, S2
213B00:  VMUL.F32        S12, S12, S12
213B04:  VLDR            S4, [R5,#0x18]
213B08:  VMUL.F32        S14, S14, S14
213B0C:  VLDR            S1, [R5,#0x28]
213B10:  VMUL.F32        S4, S4, S4
213B14:  VLDR            S6, [R5]
213B18:  VLDR            S8, [R5,#4]
213B1C:  VMUL.F32        S6, S6, S6
213B20:  VLDR            S10, [R5,#8]
213B24:  VMUL.F32        S8, S8, S8
213B28:  VADD.F32        S0, S0, S2
213B2C:  VMUL.F32        S2, S1, S1
213B30:  VADD.F32        S12, S12, S14
213B34:  VMUL.F32        S10, S10, S10
213B38:  VADD.F32        S6, S6, S8
213B3C:  VADD.F32        S0, S0, S4
213B40:  VADD.F32        S2, S12, S2
213B44:  VADD.F32        S4, S6, S10
213B48:  VCMPE.F32       S0, S2
213B4C:  VMRS            APSR_nzcv, FPSCR
213B50:  IT GE
213B52:  VMOVGE.F32      S2, S0
213B56:  VCMPE.F32       S4, S2
213B5A:  VMRS            APSR_nzcv, FPSCR
213B5E:  IT GE
213B60:  VMOVGE.F32      S2, S4
213B64:  VMOV            R0, S2; float
213B68:  BLX             j__Z7_rwSqrtf; _rwSqrt(float)
213B6C:  VMOV            S0, R0
213B70:  VLDR            S2, [R4,#0x28]
213B74:  VMUL.F32        S0, S0, S2
213B78:  LDRB            R0, [R4,#3]
213B7A:  VSTR            S0, [R4,#0x38]
213B7E:  AND.W           R0, R0, #0xFE
213B82:  STRB            R0, [R4,#3]
213B84:  ADD.W           R0, R4, #0x2C ; ','
213B88:  POP             {R4,R5,R7,PC}
