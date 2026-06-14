; =========================================================
; Game Engine Function: sub_F146A
; Address            : 0xF146A - 0xF150A
; =========================================================

F146A:  PUSH            {R4-R7,LR}
F146C:  ADD             R7, SP, #0xC
F146E:  PUSH.W          {R8-R10}
F1472:  SUBS            R4, R1, R0
F1474:  CMP             R4, #2
F1476:  MOV             R4, R0
F1478:  BLT             loc_F1496
F147A:  LDR             R4, [R7,#arg_0]
F147C:  ANDS.W          R4, R4, #4
F1480:  MOV             R4, R0
F1482:  BEQ             loc_F1496
F1484:  LDRB            R4, [R0]
F1486:  CMP             R4, #0xFE
F1488:  MOV             R4, R0
F148A:  BNE             loc_F1496
F148C:  LDRB            R4, [R0,#1]
F148E:  CMP             R4, #0xFF
F1490:  MOV             R4, R0
F1492:  IT EQ
F1494:  ADDEQ           R4, #2
F1496:  SUB.W           LR, R1, #1
F149A:  MOV.W           R8, #0
F149E:  MOV.W           R12, #0xFC00
F14A2:  B               loc_F14FA
F14A4:  LDRB            R6, [R4]
F14A6:  LDRB.W          R10, [R4,#1]
F14AA:  AND.W           R5, R12, R6,LSL#8
F14AE:  ORR.W           R9, R10, R6,LSL#8
F14B2:  CMP.W           R5, #0xD800
F14B6:  BEQ             loc_F14C6
F14B8:  CMP.W           R5, #0xDC00
F14BC:  BEQ             loc_F1502
F14BE:  CMP             R9, R3
F14C0:  BHI             loc_F1502
F14C2:  ADDS            R4, #2
F14C4:  B               loc_F14F6
F14C6:  SUBS            R5, R1, R4
F14C8:  CMP             R5, #4
F14CA:  BLT             loc_F1502
F14CC:  LDRB            R5, [R4,#2]
F14CE:  AND.W           R6, R5, #0xFC
F14D2:  CMP             R6, #0xDC
F14D4:  BNE             loc_F1502
F14D6:  LDRB            R6, [R4,#3]
F14D8:  AND.W           R9, R9, #0x3C0
F14DC:  BFI.W           R6, R5, #8, #2
F14E0:  MOV.W           R5, R10,LSL#10
F14E4:  UXTH            R5, R5
F14E6:  ORR.W           R5, R5, R9,LSL#10
F14EA:  ADD             R5, R6
F14EC:  ADD.W           R5, R5, #0x10000
F14F0:  CMP             R5, R3
F14F2:  BHI             loc_F1502
F14F4:  ADDS            R4, #4
F14F6:  ADD.W           R8, R8, #1
F14FA:  CMP             R4, LR
F14FC:  IT CC
F14FE:  CMPCC           R8, R2
F1500:  BCC             loc_F14A4
F1502:  SUBS            R0, R4, R0
F1504:  POP.W           {R8-R10}
F1508:  POP             {R4-R7,PC}
