; =========================================================
; Game Engine Function: _ZNK13CPedAttractor17ComputeAttractPosEiR7CVector
; Address            : 0x4A8B2C - 0x4A8BF8
; =========================================================

4A8B2C:  PUSH            {R4,R5,R7,LR}
4A8B2E:  ADD             R7, SP, #8
4A8B30:  VPUSH           {D8-D9}
4A8B34:  MOV             R5, R0
4A8B36:  MOV             R4, R2
4A8B38:  LDR             R0, [R5,#4]
4A8B3A:  CMP             R0, #0
4A8B3C:  BEQ             loc_4A8BF2
4A8B3E:  VMOV            S0, R1
4A8B42:  CMP             R1, #0
4A8B44:  VCVT.F32.S32    S0, S0
4A8B48:  VLDR            S8, [R5,#0x5C]
4A8B4C:  VLDR            S10, [R5,#0x60]
4A8B50:  VLDR            S12, [R5,#0x64]
4A8B54:  VLDR            S2, [R5,#0x50]
4A8B58:  VLDR            S4, [R5,#0x54]
4A8B5C:  VLDR            S6, [R5,#0x58]
4A8B60:  VMUL.F32        S10, S10, S0
4A8B64:  VMUL.F32        S8, S8, S0
4A8B68:  VMUL.F32        S0, S12, S0
4A8B6C:  VLDR            S12, [R5,#0x34]
4A8B70:  VMUL.F32        S10, S10, S12
4A8B74:  VMUL.F32        S8, S8, S12
4A8B78:  VMUL.F32        S0, S0, S12
4A8B7C:  VSUB.F32        S4, S4, S10
4A8B80:  VSUB.F32        S2, S2, S8
4A8B84:  VSUB.F32        S0, S6, S0
4A8B88:  VSTR            S2, [R4]
4A8B8C:  VSTR            S4, [R4,#4]
4A8B90:  VSTR            S0, [R4,#8]
4A8B94:  BEQ             loc_4A8BF2
4A8B96:  VLDR            S16, [R5,#0x48]
4A8B9A:  BLX             rand
4A8B9E:  VMOV            S0, R0
4A8BA2:  VLDR            S18, =4.6566e-10
4A8BA6:  VADD.F32        S2, S16, S16
4A8BAA:  VCVT.F32.S32    S0, S0
4A8BAE:  VMUL.F32        S0, S0, S18
4A8BB2:  VMUL.F32        S0, S2, S0
4A8BB6:  VLDR            S2, [R4]
4A8BBA:  VSUB.F32        S0, S0, S16
4A8BBE:  VADD.F32        S0, S2, S0
4A8BC2:  VSTR            S0, [R4]
4A8BC6:  VLDR            S16, [R5,#0x48]
4A8BCA:  BLX             rand
4A8BCE:  VMOV            S0, R0
4A8BD2:  VADD.F32        S2, S16, S16
4A8BD6:  VCVT.F32.S32    S0, S0
4A8BDA:  VMUL.F32        S0, S0, S18
4A8BDE:  VMUL.F32        S0, S2, S0
4A8BE2:  VLDR            S2, [R4,#4]
4A8BE6:  VSUB.F32        S0, S0, S16
4A8BEA:  VADD.F32        S0, S2, S0
4A8BEE:  VSTR            S0, [R4,#4]
4A8BF2:  VPOP            {D8-D9}
4A8BF6:  POP             {R4,R5,R7,PC}
