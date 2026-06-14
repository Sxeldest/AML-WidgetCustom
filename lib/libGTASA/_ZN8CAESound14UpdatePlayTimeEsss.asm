; =========================================================
; Game Engine Function: _ZN8CAESound14UpdatePlayTimeEsss
; Address            : 0x3A7EAC - 0x3A7F16
; =========================================================

3A7EAC:  PUSH            {R4,R5,R7,LR}
3A7EAE:  ADD             R7, SP, #8
3A7EB0:  MOV             R4, R0
3A7EB2:  MOV             R5, R2
3A7EB4:  STRH.W          R1, [R4,#0x70]
3A7EB8:  LDRH.W          R0, [R4,#0x5E]
3A7EBC:  CMP             R0, #0
3A7EBE:  IT NE
3A7EC0:  POPNE           {R4,R5,R7,PC}
3A7EC2:  LDRH.W          R0, [R4,#0x68]
3A7EC6:  MOVW            R2, #0xFFFF
3A7ECA:  CBZ             R0, loc_3A7ED2
3A7ECC:  STRH.W          R2, [R4,#0x5C]
3A7ED0:  POP             {R4,R5,R7,PC}
3A7ED2:  VMOV            S0, R3
3A7ED6:  VCVT.F32.S32    S0, S0
3A7EDA:  LDRSH.W         R0, [R4,#0x5C]
3A7EDE:  VLDR            S2, [R4,#0x64]
3A7EE2:  VMOV            S4, R0
3A7EE6:  VCVT.F32.S32    S4, S4
3A7EEA:  VMUL.F32        S0, S2, S0
3A7EEE:  VADD.F32        S0, S0, S4
3A7EF2:  VCVT.S32.F32    S0, S0
3A7EF6:  VMOV            R0, S0
3A7EFA:  STRH.W          R0, [R4,#0x5C]
3A7EFE:  CMP             R0, R1
3A7F00:  BLT             locret_3A7ED0
3A7F02:  CMP             R1, #0
3A7F04:  ITT NE
3A7F06:  UXTHNE          R3, R5
3A7F08:  CMPNE           R3, R2
3A7F0A:  BEQ             loc_3A7ECC
3A7F0C:  BLX             __aeabi_idivmod
3A7F10:  UXTAH.W         R2, R1, R5
3A7F14:  B               loc_3A7ECC
