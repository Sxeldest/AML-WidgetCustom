; =========================================================
; Game Engine Function: sub_1462A0
; Address            : 0x1462A0 - 0x146302
; =========================================================

1462A0:  PUSH            {R7,LR}
1462A2:  MOV             R7, SP
1462A4:  SUB             SP, SP, #0x118
1462A6:  LDRD.W          R1, R0, [R0]; src
1462AA:  MOVS            R3, #0
1462AC:  ASRS            R2, R0, #0x1F
1462AE:  ADD.W           R0, R0, R2,LSR#29
1462B2:  MOVS            R2, #1
1462B4:  ADD.W           R2, R2, R0,ASR#3; size
1462B8:  ADD             R0, SP, #0x120+var_11C; int
1462BA:  BL              sub_17D4F2
1462BE:  ADD.W           R1, SP, #0x120+var_11D; int
1462C2:  MOVS            R2, #8
1462C4:  MOVS            R3, #1
1462C6:  BL              sub_17D786
1462CA:  LDR             R0, =(off_23496C - 0x1462D4)
1462CC:  LDRB.W          R1, [SP,#0x120+var_11D]
1462D0:  ADD             R0, PC; off_23496C
1462D2:  LDR             R0, [R0]; dword_23DEF4
1462D4:  LDR             R0, [R0]
1462D6:  LDR.W           R2, [R0,#0x20C]
1462DA:  CBZ             R1, loc_1462E2
1462DC:  MOVS            R0, #0
1462DE:  STRB            R0, [R2,#0x18]
1462E0:  B               loc_1462F8
1462E2:  LDR             R0, =(off_234970 - 0x1462EC)
1462E4:  MOVS            R1, #1
1462E6:  STRB            R1, [R2,#0x18]
1462E8:  ADD             R0, PC; off_234970
1462EA:  LDR             R0, [R0]; dword_23DEF0
1462EC:  LDR             R0, [R0]
1462EE:  ADD.W           R1, R2, #0x25 ; '%'
1462F2:  ADDS            R2, #0x26 ; '&'
1462F4:  BL              sub_F94B8
1462F8:  ADD             R0, SP, #0x120+var_11C
1462FA:  BL              sub_17D542
1462FE:  ADD             SP, SP, #0x118
146300:  POP             {R7,PC}
