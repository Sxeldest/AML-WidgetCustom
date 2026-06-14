; =========================================================
; Game Engine Function: sub_1820C0
; Address            : 0x1820C0 - 0x182102
; =========================================================

1820C0:  PUSH            {R4,R5,R7,LR}
1820C2:  ADD             R7, SP, #8
1820C4:  MOV             R4, R0
1820C6:  LDR.W           R0, [R0,#0x384]
1820CA:  MOV             R5, R1
1820CC:  CBZ             R0, loc_1820EA
1820CE:  LDR.W           R2, [R4,#0x380]
1820D2:  MOVS            R1, #0
1820D4:  LDR.W           R3, [R2,R1,LSL#2]
1820D8:  CMP             R3, R5
1820DA:  BEQ             loc_1820E4
1820DC:  ADDS            R1, #1
1820DE:  CMP             R0, R1
1820E0:  BNE             loc_1820D4
1820E2:  B               loc_1820EA
1820E4:  ADDS            R0, R1, #1
1820E6:  IT NE
1820E8:  POPNE           {R4,R5,R7,PC}
1820EA:  ADD.W           R0, R4, #0x380
1820EE:  MOV             R1, R5
1820F0:  BL              sub_182102
1820F4:  LDR             R0, [R5]
1820F6:  MOV             R1, R4
1820F8:  LDR             R2, [R0]
1820FA:  MOV             R0, R5
1820FC:  POP.W           {R4,R5,R7,LR}
182100:  BX              R2
