; =========================================================
; Game Engine Function: sub_1484DA
; Address            : 0x1484DA - 0x14851A
; =========================================================

1484DA:  PUSH            {R4-R7,LR}
1484DC:  ADD             R7, SP, #0xC
1484DE:  PUSH.W          {R8,R9,R11}
1484E2:  MOV             R9, R0
1484E4:  MOV.W           R8, #0
1484E8:  MOVS            R6, #0
1484EA:  ADD.W           R5, R9, R6
1484EE:  LDRB            R0, [R5,#4]
1484F0:  CBZ             R0, loc_14850A
1484F2:  ADD.W           R4, R9, R6,LSL#2
1484F6:  LDR.W           R0, [R4,#0x3EC]
1484FA:  CBZ             R0, loc_14850A
1484FC:  LDR             R1, [R0]
1484FE:  LDR             R1, [R1,#4]
148500:  BLX             R1
148502:  STRB.W          R8, [R5,#4]
148506:  STR.W           R8, [R4,#0x3EC]
14850A:  ADDS            R6, #1
14850C:  CMP.W           R6, #0x3E8
148510:  BNE             loc_1484EA
148512:  MOV             R0, R9
148514:  POP.W           {R8,R9,R11}
148518:  POP             {R4-R7,PC}
