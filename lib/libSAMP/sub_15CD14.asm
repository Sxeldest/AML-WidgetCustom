; =========================================================
; Game Engine Function: sub_15CD14
; Address            : 0x15CD14 - 0x15CDCC
; =========================================================

15CD14:  PUSH            {R4-R7,LR}
15CD16:  ADD             R7, SP, #0xC
15CD18:  PUSH.W          {R11}
15CD1C:  MOV             R4, R0
15CD1E:  CMP             R1, #1
15CD20:  BNE             loc_15CD26
15CD22:  MOVS            R5, #2
15CD24:  B               loc_15CD36
15CD26:  SUBS            R0, R1, #1
15CD28:  MOV             R5, R1
15CD2A:  TST             R1, R0
15CD2C:  BEQ             loc_15CD36
15CD2E:  MOV             R0, R5; this
15CD30:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
15CD34:  MOV             R5, R0
15CD36:  LDR             R6, [R4,#4]
15CD38:  CMP             R5, R6
15CD3A:  BHI             loc_15CDB6
15CD3C:  BCS             loc_15CDC6
15CD3E:  VLDR            S0, [R4,#0xC]
15CD42:  VLDR            S2, [R4,#0x10]
15CD46:  VCVT.F32.U32    S0, S0
15CD4A:  VDIV.F32        S0, S0, S2
15CD4E:  VMOV            R0, S0; x
15CD52:  BLX             ceilf
15CD56:  VMOV            S0, R0
15CD5A:  CMP             R6, #3
15CD5C:  VCVT.U32.F32    S0, S0
15CD60:  VMOV            R0, S0; this
15CD64:  BCC             loc_15CDA8
15CD66:  MOV.W           R1, #0x55555555
15CD6A:  MOV.W           R2, #0x33333333
15CD6E:  AND.W           R1, R1, R6,LSR#1
15CD72:  SUBS            R1, R6, R1
15CD74:  AND.W           R2, R2, R1,LSR#2
15CD78:  BIC.W           R1, R1, #0xCCCCCCCC
15CD7C:  ADD             R1, R2
15CD7E:  MOV.W           R2, #0x1010101
15CD82:  ADD.W           R1, R1, R1,LSR#4
15CD86:  BIC.W           R1, R1, #0xF0F0F0F0
15CD8A:  MULS            R1, R2
15CD8C:  LSRS            R1, R1, #0x18
15CD8E:  CMP             R1, #1
15CD90:  BHI             loc_15CDA8
15CD92:  SUBS            R1, R0, #1
15CD94:  MOVS            R2, #1
15CD96:  CLZ.W           R1, R1
15CD9A:  CMP             R0, #2
15CD9C:  RSB.W           R1, R1, #0x20 ; ' '
15CDA0:  IT CS
15CDA2:  LSLCS.W         R0, R2, R1
15CDA6:  B               loc_15CDAC
15CDA8:  BLX             j__ZNSt6__ndk112__next_primeEj; std::__next_prime(uint)
15CDAC:  CMP             R5, R0
15CDAE:  IT CC
15CDB0:  MOVCC           R5, R0
15CDB2:  CMP             R5, R6
15CDB4:  BCS             loc_15CDC6
15CDB6:  MOV             R0, R4
15CDB8:  MOV             R1, R5
15CDBA:  POP.W           {R11}
15CDBE:  POP.W           {R4-R7,LR}
15CDC2:  B.W             sub_15CDCC
15CDC6:  POP.W           {R11}
15CDCA:  POP             {R4-R7,PC}
