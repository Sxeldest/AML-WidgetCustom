; =========================================================
; Game Engine Function: sub_105486
; Address            : 0x105486 - 0x1054CA
; =========================================================

105486:  PUSH            {R7,LR}
105488:  MOV             R7, SP
10548A:  LDR.W           R12, [R0,#0x5C]
10548E:  CMP.W           R12, #0
105492:  BEQ             locret_1054C8
105494:  LDR.W           LR, [R0,#0x70]
105498:  ADDS.W          R3, LR, #1
10549C:  BNE             loc_1054BC
10549E:  ADDW            R3, R12, #0x5A4
1054A2:  MOV.W           LR, #0
1054A6:  B               loc_1054B6
1054A8:  ADD.W           LR, LR, #1
1054AC:  ADDS            R3, #0x1C
1054AE:  CMP.W           LR, #0xD
1054B2:  IT EQ
1054B4:  POPEQ           {R7,PC}
1054B6:  LDR             R0, [R3]
1054B8:  CMP             R0, R1
1054BA:  BNE             loc_1054A8
1054BC:  RSB.W           R0, LR, LR,LSL#3
1054C0:  ADD.W           R0, R12, R0,LSL#2
1054C4:  STR.W           R2, [R0,#0x5B0]
1054C8:  POP             {R7,PC}
