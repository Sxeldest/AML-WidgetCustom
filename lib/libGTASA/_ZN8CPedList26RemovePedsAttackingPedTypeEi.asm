; =========================================================
; Game Engine Function: _ZN8CPedList26RemovePedsAttackingPedTypeEi
; Address            : 0x548576 - 0x5485F2
; =========================================================

548576:  PUSH            {R4-R7,LR}
548578:  ADD             R7, SP, #0xC
54857A:  PUSH.W          {R8,R9,R11}
54857E:  MOV             R4, R0
548580:  MOV             R8, R1
548582:  LDR             R6, [R4]
548584:  CMP             R6, #1
548586:  BLT             loc_5485BE
548588:  ADDS            R5, R4, #4
54858A:  MOV.W           R9, #0
54858E:  LDR             R0, [R5]
548590:  MOV.W           R1, #0x3E8; int
548594:  LDR.W           R0, [R0,#0x440]; this
548598:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
54859C:  CMP             R0, #0
54859E:  ITT NE
5485A0:  LDRNE           R0, [R0,#0x10]
5485A2:  CMPNE           R0, #0
5485A4:  BEQ             loc_5485AE
5485A6:  LDR.W           R0, [R0,#0x59C]
5485AA:  CMP             R0, R8
5485AC:  BEQ             loc_5485B8
5485AE:  STR.W           R9, [R5]
5485B2:  LDR             R0, [R4]
5485B4:  SUBS            R0, #1
5485B6:  STR             R0, [R4]
5485B8:  ADDS            R5, #4
5485BA:  SUBS            R6, #1
5485BC:  BNE             loc_54858E
5485BE:  MOVS            R1, #0
5485C0:  MOVS            R0, #1
5485C2:  LDR.W           R2, [R4,R0,LSL#2]
5485C6:  ADDS            R0, #1
5485C8:  CMP             R2, #0
5485CA:  ITTT NE
5485CC:  ADDNE.W         R3, R4, R1,LSL#2
5485D0:  STRNE           R2, [R3,#4]
5485D2:  ADDNE           R1, #1
5485D4:  CMP             R0, #0x1F
5485D6:  BNE             loc_5485C2
5485D8:  CMP             R1, #0x1D
5485DA:  BGT             loc_5485EC
5485DC:  ADD.W           R0, R4, R1,LSL#2
5485E0:  RSB.W           R1, R1, #0x1E
5485E4:  ADDS            R0, #4
5485E6:  LSLS            R1, R1, #2
5485E8:  BLX             j___aeabi_memclr8_0
5485EC:  POP.W           {R8,R9,R11}
5485F0:  POP             {R4-R7,PC}
