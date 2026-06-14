; =========================================================
; Game Engine Function: _ZN11CMemoryHeap21WhereShouldMemoryMoveEPv
; Address            : 0x5D2978 - 0x5D2A00
; =========================================================

5D2978:  PUSH            {R4,R6,R7,LR}
5D297A:  ADD             R7, SP, #8
5D297C:  MOV             R3, R1
5D297E:  LDR.W           R4, [R3,#-0x10]!
5D2982:  ADD.W           LR, R3, R4
5D2986:  MOV             R12, R4
5D2988:  LDRB.W          R3, [LR,#0x14]
5D298C:  CMP             R3, #0
5D298E:  ITTT EQ
5D2990:  LDREQ.W         R3, [LR,#0x10]
5D2994:  ADDEQ           R3, R4
5D2996:  ADDEQ.W         R12, R3, #0x10
5D299A:  LDR.W           R1, [R1,#-4]
5D299E:  LDRB            R3, [R1,#4]
5D29A0:  CMP             R3, #0
5D29A2:  ITTT EQ
5D29A4:  LDREQ           R1, [R1]
5D29A6:  ADDEQ           R1, R12
5D29A8:  ADDEQ.W         R12, R1, #0x10
5D29AC:  CMP             R12, R4
5D29AE:  BEQ             loc_5D29FA
5D29B0:  ADD.W           R1, R0, #8
5D29B4:  LDR             R1, [R1,#0x10]
5D29B6:  LDR             R3, [R1]
5D29B8:  CMP             R3, R4
5D29BA:  BCC             loc_5D29B4
5D29BC:  SUB.W           R2, R12, #0x10
5D29C0:  CMP             R3, R2
5D29C2:  BCS             loc_5D29FA
5D29C4:  LDRB.W          R0, [R0,#0x3C]
5D29C8:  CBZ             R0, loc_5D29F6
5D29CA:  VMOV            S2, R4
5D29CE:  VMOV.F32        S0, #1.25
5D29D2:  VCVT.F32.U32    S2, S2
5D29D6:  VMOV.F32        S4, #16.0
5D29DA:  VMUL.F32        S0, S2, S0
5D29DE:  VMOV            S2, R3
5D29E2:  VCVT.F32.U32    S2, S2
5D29E6:  VADD.F32        S0, S0, S4
5D29EA:  VCMPE.F32       S0, S2
5D29EE:  VMRS            APSR_nzcv, FPSCR
5D29F2:  IT LE
5D29F4:  MOVLE           R1, #0
5D29F6:  MOV             R0, R1
5D29F8:  POP             {R4,R6,R7,PC}
5D29FA:  MOVS            R1, #0
5D29FC:  MOV             R0, R1
5D29FE:  POP             {R4,R6,R7,PC}
