; =========================================================
; Game Engine Function: _ZN20CSpecialPlateHandler3AddEiPc
; Address            : 0x56D486 - 0x56D4B6
; =========================================================

56D486:  PUSH            {R4,R6,R7,LR}
56D488:  ADD             R7, SP, #8
56D48A:  MOV             R4, R0
56D48C:  LDR.W           R0, [R4,#0xF0]
56D490:  CMP             R0, #0xF
56D492:  IT EQ
56D494:  POPEQ           {R4,R6,R7,PC}
56D496:  LSLS            R0, R0, #4
56D498:  STR             R1, [R4,R0]
56D49A:  MOV             R1, R2; char *
56D49C:  LDR.W           R0, [R4,#0xF0]
56D4A0:  ADD.W           R0, R4, R0,LSL#4
56D4A4:  ADDS            R0, #4; char *
56D4A6:  BLX             strcpy
56D4AA:  LDR.W           R0, [R4,#0xF0]
56D4AE:  ADDS            R0, #1
56D4B0:  STR.W           R0, [R4,#0xF0]
56D4B4:  POP             {R4,R6,R7,PC}
