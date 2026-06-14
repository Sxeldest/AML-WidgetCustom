; =========================================================
; Game Engine Function: _Z24RpClumpGetBoundingSphereP7RpClumpP8RwSphereb
; Address            : 0x5D0DEC - 0x5D0EC8
; =========================================================

5D0DEC:  PUSH            {R4-R7,LR}
5D0DEE:  ADD             R7, SP, #0xC
5D0DF0:  PUSH.W          {R8}
5D0DF4:  SUB             SP, SP, #0x60
5D0DF6:  MOV             R4, R0
5D0DF8:  LDR             R0, =(byte_6B2BE4 - 0x5D0E02)
5D0DFA:  CMP             R4, #0
5D0DFC:  MOV             R8, R1
5D0DFE:  ADD             R0, PC; byte_6B2BE4
5D0E00:  MOV.W           R6, #0
5D0E04:  STRB            R2, [R0]
5D0E06:  IT NE
5D0E08:  CMPNE.W         R8, #0
5D0E0C:  BEQ             loc_5D0EBE
5D0E0E:  VMOV.I32        Q8, #0
5D0E12:  MOV             R0, R4
5D0E14:  VST1.32         {D16-D17}, [R8]
5D0E18:  BLX.W           j__Z20RpClumpGetNumAtomicsP7RpClump; RpClumpGetNumAtomics(RpClump *)
5D0E1C:  MOV             R5, R0
5D0E1E:  MOVS            R6, #0
5D0E20:  CMP             R5, #1
5D0E22:  BLT             loc_5D0EBE
5D0E24:  LDR             R1, =(sub_5D0ED8+1 - 0x5D0E32)
5D0E26:  ADD             R2, SP, #0x70+var_20
5D0E28:  MOV             R0, R4
5D0E2A:  STRD.W          R6, R6, [SP,#0x70+var_20]
5D0E2E:  ADD             R1, PC; sub_5D0ED8
5D0E30:  STR             R6, [SP,#0x70+var_18]
5D0E32:  BLX.W           j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
5D0E36:  VMOV            S2, R5
5D0E3A:  LDR             R1, =(sub_5D0F68+1 - 0x5D0E52)
5D0E3C:  VMOV.F32        S0, #1.0
5D0E40:  ADD             R2, SP, #0x70+var_30
5D0E42:  VCVT.F32.S32    S2, S2
5D0E46:  VLDR            S4, [SP,#0x70+var_20+4]
5D0E4A:  VLDR            S6, [SP,#0x70+var_18]
5D0E4E:  ADD             R1, PC; sub_5D0F68
5D0E50:  VDIV.F32        S0, S0, S2
5D0E54:  VLDR            S2, [SP,#0x70+var_20]
5D0E58:  VMUL.F32        S4, S0, S4
5D0E5C:  VMUL.F32        S2, S0, S2
5D0E60:  VMUL.F32        S0, S0, S6
5D0E64:  VSTR            S2, [SP,#0x70+var_20]
5D0E68:  VSTR            S4, [SP,#0x70+var_20+4]
5D0E6C:  VSTR            S0, [SP,#0x70+var_18]
5D0E70:  VLDR            D16, [SP,#0x70+var_20]
5D0E74:  LDR             R0, [SP,#0x70+var_18]
5D0E76:  STRD.W          R0, R6, [SP,#0x70+var_28]
5D0E7A:  MOV             R0, R4
5D0E7C:  VSTR            D16, [SP,#0x70+var_30]
5D0E80:  BLX.W           j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
5D0E84:  LDR             R1, =(byte_6B2BE4 - 0x5D0E8C)
5D0E86:  LDR             R0, [R4,#4]
5D0E88:  ADD             R1, PC; byte_6B2BE4
5D0E8A:  LDRB            R1, [R1]
5D0E8C:  CBZ             R1, loc_5D0E96
5D0E8E:  BLX.W           j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
5D0E92:  MOV             R1, R0
5D0E94:  B               loc_5D0E9A
5D0E96:  ADD.W           R1, R0, #0x10
5D0E9A:  MOV             R0, SP
5D0E9C:  BLX.W           j__Z14RwMatrixInvertP11RwMatrixTagPKS_; RwMatrixInvert(RwMatrixTag *,RwMatrixTag const*)
5D0EA0:  ADD             R0, SP, #0x70+var_30
5D0EA2:  MOV             R3, SP
5D0EA4:  MOVS            R2, #1
5D0EA6:  MOV             R1, R0
5D0EA8:  BLX.W           j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
5D0EAC:  LDR             R0, [SP,#0x70+var_24]
5D0EAE:  MOV             R6, R4
5D0EB0:  VLDR            D16, [SP,#0x70+var_30]
5D0EB4:  LDR             R1, [SP,#0x70+var_28]
5D0EB6:  STRD.W          R1, R0, [R8,#8]
5D0EBA:  VSTR            D16, [R8]
5D0EBE:  MOV             R0, R6
5D0EC0:  ADD             SP, SP, #0x60 ; '`'
5D0EC2:  POP.W           {R8}
5D0EC6:  POP             {R4-R7,PC}
