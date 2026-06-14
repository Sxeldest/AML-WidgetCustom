; =========================================================
; Game Engine Function: InitEffect
; Address            : 0x1DAB9C - 0x1DAC14
; =========================================================

1DAB9C:  PUSH            {R4,R5,R11,LR}
1DABA0:  ADD             R11, SP, #8
1DABA4:  LDR             R1, =(sub_1DCC7C - 0x1DABB4)
1DABA8:  LDR             R5, =(sub_1DCC70 - 0x1DABC0)
1DABAC:  ADD             R1, PC, R1; sub_1DCC7C
1DABB0:  LDR             R4, =(sub_1DCC88 - 0x1DABCC)
1DABB4:  STR             R1, [R0,#0x98]
1DABB8:  ADD             R1, PC, R5; sub_1DCC70
1DABBC:  LDR             R2, =(sub_1DCC94 - 0x1DABE0)
1DABC0:  STR             R1, [R0,#0x94]
1DABC4:  ADD             R1, PC, R4; sub_1DCC88
1DABC8:  MOV             R4, #0
1DABCC:  LDR             R3, =(sub_1DCCA0 - 0x1DABEC)
1DABD0:  STR             R4, [R0]
1DABD4:  STR             R1, [R0,#0x9C]
1DABD8:  ADD             R1, PC, R2; sub_1DCC94
1DABDC:  LDR             R12, =(sub_1DCCAC - 0x1DABF8)
1DABE0:  STR             R1, [R0,#0xA0]
1DABE4:  ADD             R1, PC, R3; sub_1DCCA0
1DABE8:  LDR             LR, =(sub_1DCCB8 - 0x1DAC04)
1DABEC:  STR             R1, [R0,#0xA4]
1DABF0:  ADD             R1, PC, R12; sub_1DCCAC
1DABF4:  LDR             R5, =(sub_1DCCC4 - 0x1DAC0C)
1DABF8:  STR             R1, [R0,#0xA8]
1DABFC:  ADD             R1, PC, LR; sub_1DCCB8
1DAC00:  STR             R1, [R0,#0xAC]
1DAC04:  ADD             R1, PC, R5; sub_1DCCC4
1DAC08:  STR             R1, [R0,#0xB0]
1DAC0C:  MOV             R0, #0
1DAC10:  POP             {R4,R5,R11,PC}
