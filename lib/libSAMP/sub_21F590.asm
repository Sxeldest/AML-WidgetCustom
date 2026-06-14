; =========================================================
; Game Engine Function: sub_21F590
; Address            : 0x21F590 - 0x21F5E8
; =========================================================

21F590:  PUSH            {R4,R6,R7,LR}
21F592:  ADD             R7, SP, #8
21F594:  LDR             R0, [R1,#4]
21F596:  MOVS            R4, #1
21F598:  STRB.W          R4, [R1,#0x35]
21F59C:  CMP             R0, R3
21F59E:  BEQ             loc_21F5A2
21F5A0:  POP             {R4,R6,R7,PC}
21F5A2:  LDR             R3, [R1,#0x10]
21F5A4:  LDR             R0, [R7,#arg_0]
21F5A6:  STRB.W          R4, [R1,#0x34]
21F5AA:  CBZ             R3, loc_21F5B8
21F5AC:  CMP             R3, R2
21F5AE:  BEQ             loc_21F5CC
21F5B0:  LDR             R0, [R1,#0x24]
21F5B2:  ADDS            R0, #1
21F5B4:  STR             R0, [R1,#0x24]
21F5B6:  B               loc_21F5E0
21F5B8:  MOVS            R3, #1
21F5BA:  STR             R0, [R1,#0x18]
21F5BC:  CMP             R0, #1
21F5BE:  STR             R3, [R1,#0x24]
21F5C0:  STR             R2, [R1,#0x10]
21F5C2:  BNE             locret_21F5A0
21F5C4:  LDR             R0, [R1,#0x30]
21F5C6:  CMP             R0, #1
21F5C8:  BEQ             loc_21F5E0
21F5CA:  B               locret_21F5A0
21F5CC:  LDR             R2, [R1,#0x18]
21F5CE:  CMP             R2, #2
21F5D0:  ITT EQ
21F5D2:  STREQ           R0, [R1,#0x18]
21F5D4:  MOVEQ           R2, R0
21F5D6:  LDR             R0, [R1,#0x30]
21F5D8:  CMP             R0, #1
21F5DA:  BNE             locret_21F5A0
21F5DC:  CMP             R2, #1
21F5DE:  BNE             locret_21F5A0
21F5E0:  MOVS            R0, #1
21F5E2:  STRB.W          R0, [R1,#0x36]
21F5E6:  POP             {R4,R6,R7,PC}
