; =========================================================
; Game Engine Function: _ZNK12CEventDanger15AffectsPedGroupEP9CPedGroup
; Address            : 0x377F6C - 0x377FFA
; =========================================================

377F6C:  PUSH            {R4,R5,R7,LR}
377F6E:  ADD             R7, SP, #8
377F70:  MOV             R4, R0
377F72:  MOV             R5, R1
377F74:  LDR             R0, [R4]
377F76:  LDR             R1, [R0,#0x2C]
377F78:  MOV             R0, R4
377F7A:  BLX             R1
377F7C:  CBZ             R0, loc_377FF6
377F7E:  LDR             R0, [R4]
377F80:  LDR             R1, [R0,#0x2C]
377F82:  MOV             R0, R4
377F84:  BLX             R1
377F86:  LDRB.W          R0, [R0,#0x3A]
377F8A:  AND.W           R0, R0, #7
377F8E:  CMP             R0, #3
377F90:  BNE             loc_377FF6
377F92:  ADD.W           R0, R5, #8; this
377F96:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
377F9A:  MOV             R1, R0
377F9C:  MOVS            R0, #0
377F9E:  CMP             R1, #0
377FA0:  IT EQ
377FA2:  POPEQ           {R4,R5,R7,PC}
377FA4:  LDR.W           R12, [R4,#0x10]
377FA8:  LDR             R3, [R1,#0x14]
377FAA:  VLDR            S4, =0.0
377FAE:  LDR.W           R5, [R12,#0x14]
377FB2:  ADD.W           R2, R3, #0x30 ; '0'
377FB6:  CMP             R3, #0
377FB8:  IT EQ
377FBA:  ADDEQ           R2, R1, #4
377FBC:  ADD.W           R1, R5, #0x30 ; '0'
377FC0:  CMP             R5, #0
377FC2:  VLDR            D16, [R2]
377FC6:  IT EQ
377FC8:  ADDEQ.W         R1, R12, #4
377FCC:  VLDR            S2, [R4,#0x14]
377FD0:  VLDR            D17, [R1]
377FD4:  VSUB.F32        D16, D16, D17
377FD8:  VMUL.F32        S2, S2, S2
377FDC:  VMUL.F32        D0, D16, D16
377FE0:  VADD.F32        S0, S0, S1
377FE4:  VADD.F32        S0, S0, S4
377FE8:  VCMPE.F32       S0, S2
377FEC:  VMRS            APSR_nzcv, FPSCR
377FF0:  IT LE
377FF2:  MOVLE           R0, #1
377FF4:  POP             {R4,R5,R7,PC}
377FF6:  MOVS            R0, #0
377FF8:  POP             {R4,R5,R7,PC}
