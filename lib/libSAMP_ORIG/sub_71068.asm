; =========================================================
; Game Engine Function: sub_71068
; Address            : 0x71068 - 0x71120
; =========================================================

71068:  PUSH            {R4-R7,LR}
7106A:  ADD             R7, SP, #0xC
7106C:  PUSH.W          {R8-R11}
71070:  SUB             SP, SP, #0xC
71072:  MOV             R6, R1
71074:  MOV.W           R10, #0
71078:  MOVS            R5, #4
7107A:  MOV.W           R11, #1
7107E:  MOVS            R4, #0
71080:  STR             R2, [SP,#0x28+var_20]
71082:  STR             R0, [SP,#0x28+var_24]
71084:  B               loc_71096
71086:  ADDS            R0, #1
71088:  STR             R0, [R6,#0x10]
7108A:  ADD.W           R0, R8, R4,LSL#4
7108E:  SUBS            R5, #1
71090:  ADD.W           R4, R0, R9
71094:  BEQ             loc_71116
71096:  LDR             R0, [R6,#0x10]
71098:  LDRB.W          R8, [R0]
7109C:  SUB.W           R1, R8, #0x30 ; '0'
710A0:  CMP             R1, #0xA
710A2:  BCS             loc_710AA
710A4:  MOV             R9, #0xFFFFFFD0
710A8:  B               loc_710C4
710AA:  SUB.W           R1, R8, #0x41 ; 'A'
710AE:  CMP             R1, #6
710B0:  BCS             loc_710B8
710B2:  MOV             R9, #0xFFFFFFC9
710B6:  B               loc_710C4
710B8:  SUB.W           R1, R8, #0x61 ; 'a'
710BC:  CMP             R1, #5
710BE:  BHI             loc_7110A
710C0:  MOV             R9, #0xFFFFFFA9
710C4:  LDR             R1, [R6,#0xC]
710C6:  CMP             R0, R1
710C8:  BCC             loc_71086
710CA:  LDRB            R0, [R6,#0x1C]
710CC:  CMP             R0, #0
710CE:  BNE             loc_7108A
710D0:  LDRD.W          R12, R1, [R6,#0x14]
710D4:  LDRD.W          R3, R0, [R6]; stream
710D8:  LDR             R2, [R6,#8]; n
710DA:  ADD             R1, R12
710DC:  STR             R1, [R6,#0x18]
710DE:  MOVS            R1, #1; size
710E0:  BLX             fread
710E4:  LDRD.W          R2, R12, [R6,#4]
710E8:  CMP             R0, R12
710EA:  STR             R0, [R6,#0x14]
710EC:  ADD.W           R1, R2, R0
710F0:  SUB.W           R3, R1, #1
710F4:  STRD.W          R3, R2, [R6,#0xC]
710F8:  BCS             loc_7108A
710FA:  STRB.W          R10, [R1]
710FE:  LDR             R0, [R6,#0xC]
71100:  STRB.W          R11, [R6,#0x1C]
71104:  ADDS            R0, #1
71106:  STR             R0, [R6,#0xC]
71108:  B               loc_7108A
7110A:  LDR             R1, [SP,#0x28+var_24]
7110C:  MOVS            R0, #8
7110E:  MOVS            R4, #0
71110:  STR             R0, [R1,#0x18]
71112:  LDR             R0, [SP,#0x28+var_20]
71114:  STR             R0, [R1,#0x1C]
71116:  MOV             R0, R4
71118:  ADD             SP, SP, #0xC
7111A:  POP.W           {R8-R11}
7111E:  POP             {R4-R7,PC}
