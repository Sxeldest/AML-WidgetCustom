; =========================================================
; Game Engine Function: _ZN27CCompressedMatrixNotAligned24DecompressIntoFullMatrixER7CMatrix
; Address            : 0x44FD80 - 0x44FF26
; =========================================================

44FD80:  PUSH            {R4,R5,R7,LR}
44FD82:  ADD             R7, SP, #8
44FD84:  SUB             SP, SP, #0x10
44FD86:  MOV             R5, R0
44FD88:  VLDR            S2, =127.0
44FD8C:  LDRSB.W         R0, [R5,#0xC]
44FD90:  MOV             R4, R1
44FD92:  ADD.W           R2, R4, #0x10
44FD96:  VMOV            S0, R0
44FD9A:  VCVT.F32.S32    S0, S0
44FD9E:  VDIV.F32        S0, S0, S2
44FDA2:  VSTR            S0, [R4]
44FDA6:  LDRSB.W         R0, [R5,#0xD]
44FDAA:  VMOV            S0, R0
44FDAE:  VCVT.F32.S32    S0, S0
44FDB2:  VDIV.F32        S0, S0, S2
44FDB6:  VSTR            S0, [R4,#4]
44FDBA:  LDRSB.W         R0, [R5,#0xE]
44FDBE:  VMOV            S0, R0
44FDC2:  VCVT.F32.S32    S0, S0
44FDC6:  VDIV.F32        S0, S0, S2
44FDCA:  VSTR            S0, [R4,#8]
44FDCE:  LDRSB.W         R0, [R5,#0xF]
44FDD2:  VMOV            S0, R0
44FDD6:  VCVT.F32.S32    S0, S0
44FDDA:  VDIV.F32        S0, S0, S2
44FDDE:  VSTR            S0, [R4,#0x10]
44FDE2:  LDRSB.W         R0, [R5,#0x10]
44FDE6:  VMOV            S0, R0
44FDEA:  VCVT.F32.S32    S0, S0
44FDEE:  VDIV.F32        S0, S0, S2
44FDF2:  VSTR            S0, [R4,#0x14]
44FDF6:  LDRSB.W         R0, [R5,#0x11]
44FDFA:  VMOV            S0, R0
44FDFE:  ADD             R0, SP, #0x18+var_14; CVector *
44FE00:  VCVT.F32.S32    S0, S0
44FE04:  VDIV.F32        S0, S0, S2
44FE08:  VSTR            S0, [R4,#0x18]
44FE0C:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
44FE10:  ADD             R2, SP, #0x18+var_14
44FE12:  ADD.W           R3, R4, #0x20 ; ' '
44FE16:  LDM             R2, {R0-R2}
44FE18:  VLDR            S0, [R4]
44FE1C:  VLDR            S10, [R4,#0x18]
44FE20:  VLDR            S2, [R4,#4]
44FE24:  VLDR            S4, [R4,#8]
44FE28:  VMUL.F32        S1, S10, S0
44FE2C:  VLDR            S8, [R4,#0x14]
44FE30:  VMUL.F32        S14, S2, S10
44FE34:  VLDR            S6, [R4,#0x10]
44FE38:  VMUL.F32        S12, S4, S8
44FE3C:  STM             R3!, {R0-R2}
44FE3E:  VMUL.F32        S4, S4, S6
44FE42:  VMUL.F32        S0, S8, S0
44FE46:  LDR             R0, [R5]
44FE48:  VMUL.F32        S2, S2, S6
44FE4C:  STR             R0, [R4,#0x30]
44FE4E:  LDR             R0, [R5,#4]
44FE50:  STR             R0, [R4,#0x34]
44FE52:  LDR             R0, [R5,#8]
44FE54:  VSUB.F32        S12, S14, S12
44FE58:  STR             R0, [R4,#0x38]
44FE5A:  VSUB.F32        S4, S4, S1
44FE5E:  VSUB.F32        S0, S0, S2
44FE62:  VMUL.F32        S2, S12, S12
44FE66:  VMUL.F32        S14, S4, S4
44FE6A:  VMUL.F32        S1, S0, S0
44FE6E:  VADD.F32        S2, S2, S14
44FE72:  VMOV.F32        S14, #1.0
44FE76:  VADD.F32        S2, S1, S2
44FE7A:  VSQRT.F32       S2, S2
44FE7E:  VDIV.F32        S2, S14, S2
44FE82:  VMUL.F32        S0, S0, S2
44FE86:  VMUL.F32        S12, S12, S2
44FE8A:  VMUL.F32        S2, S4, S2
44FE8E:  VMUL.F32        S1, S6, S0
44FE92:  VMUL.F32        S4, S10, S12
44FE96:  VSTR            S12, [R4,#0x20]
44FE9A:  VMUL.F32        S3, S8, S0
44FE9E:  VSTR            S2, [R4,#0x24]
44FEA2:  VMUL.F32        S10, S10, S2
44FEA6:  VSTR            S0, [R4,#0x28]
44FEAA:  VMUL.F32        S8, S8, S12
44FEAE:  VMUL.F32        S6, S6, S2
44FEB2:  VSUB.F32        S4, S4, S1
44FEB6:  VSUB.F32        S10, S3, S10
44FEBA:  VSUB.F32        S6, S6, S8
44FEBE:  VMUL.F32        S8, S4, S4
44FEC2:  VMUL.F32        S1, S10, S10
44FEC6:  VMUL.F32        S3, S6, S6
44FECA:  VADD.F32        S8, S1, S8
44FECE:  VADD.F32        S8, S3, S8
44FED2:  VSQRT.F32       S8, S8
44FED6:  VDIV.F32        S8, S14, S8
44FEDA:  VMUL.F32        S6, S6, S8
44FEDE:  VMUL.F32        S4, S4, S8
44FEE2:  VMUL.F32        S8, S10, S8
44FEE6:  VMUL.F32        S14, S12, S6
44FEEA:  VMUL.F32        S10, S0, S4
44FEEE:  VMUL.F32        S5, S0, S8
44FEF2:  VSTR            S8, [R4]
44FEF6:  VMUL.F32        S7, S2, S6
44FEFA:  VSTR            S4, [R4,#4]
44FEFE:  VMUL.F32        S1, S2, S8
44FF02:  VSTR            S6, [R4,#8]
44FF06:  VMUL.F32        S3, S12, S4
44FF0A:  VSUB.F32        S14, S5, S14
44FF0E:  VSUB.F32        S10, S7, S10
44FF12:  VSUB.F32        S1, S3, S1
44FF16:  VSTR            S10, [R4,#0x10]
44FF1A:  VSTR            S14, [R4,#0x14]
44FF1E:  VSTR            S1, [R4,#0x18]
44FF22:  ADD             SP, SP, #0x10
44FF24:  POP             {R4,R5,R7,PC}
