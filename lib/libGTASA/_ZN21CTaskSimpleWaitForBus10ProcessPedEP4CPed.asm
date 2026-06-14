; =========================================================
; Game Engine Function: _ZN21CTaskSimpleWaitForBus10ProcessPedEP4CPed
; Address            : 0x4EE5C4 - 0x4EE62E
; =========================================================

4EE5C4:  PUSH            {R7,LR}
4EE5C6:  MOV             R7, SP
4EE5C8:  LDR.W           R12, [R1,#0x440]
4EE5CC:  MOVS            R3, #0x38 ; '8'
4EE5CE:  VLDR            S0, =0.000025
4EE5D2:  MOV             R2, R3
4EE5D4:  LDR.W           R3, [R12,R2,LSL#2]
4EE5D8:  CBZ             R3, loc_4EE61A
4EE5DA:  LDRB.W          R1, [R3,#0x42D]
4EE5DE:  LSLS            R1, R1, #0x1E
4EE5E0:  BPL             loc_4EE61A
4EE5E2:  VLDR            S2, [R3,#0x48]
4EE5E6:  VLDR            S4, [R3,#0x4C]
4EE5EA:  VMUL.F32        S2, S2, S2
4EE5EE:  VLDR            S6, [R3,#0x50]
4EE5F2:  VMUL.F32        S4, S4, S4
4EE5F6:  VMUL.F32        S6, S6, S6
4EE5FA:  VADD.F32        S2, S2, S4
4EE5FE:  VADD.F32        S2, S2, S6
4EE602:  VCMPE.F32       S2, S0
4EE606:  VMRS            APSR_nzcv, FPSCR
4EE60A:  BGE             loc_4EE61A
4EE60C:  LDRB.W          R1, [R3,#0x48C]
4EE610:  LDRB.W          LR, [R3,#0x488]
4EE614:  SUBS            R1, #1
4EE616:  CMP             R1, LR
4EE618:  BGT             loc_4EE628
4EE61A:  SUB.W           R1, R2, #0x38 ; '8'
4EE61E:  ADDS            R3, R2, #1
4EE620:  CMP             R1, #0xF
4EE622:  BLT             loc_4EE5D2
4EE624:  MOVS            R0, #0
4EE626:  POP             {R7,PC}
4EE628:  STR             R3, [R0,#8]
4EE62A:  MOVS            R0, #1
4EE62C:  POP             {R7,PC}
