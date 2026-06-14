; =========================================================
; Game Engine Function: sub_7F484
; Address            : 0x7F484 - 0x7F4CC
; =========================================================

7F484:  PUSH            {R4-R7,LR}
7F486:  ADD             R7, SP, #0xC
7F488:  PUSH.W          {R11}
7F48C:  LDR             R5, [R0]
7F48E:  MOV             R4, R0
7F490:  CBZ             R5, loc_7F4C4
7F492:  LDR             R6, [R4,#4]
7F494:  MOV             R0, R5
7F496:  CMP             R6, R5
7F498:  BNE             loc_7F4AA
7F49A:  B               loc_7F4BE
7F49C:  MOVS            R1, #4
7F49E:  LDR             R2, [R0]
7F4A0:  LDR.W           R1, [R2,R1,LSL#2]
7F4A4:  BLX             R1
7F4A6:  CMP             R6, R5
7F4A8:  BEQ             loc_7F4BC
7F4AA:  LDR.W           R0, [R6,#-8]
7F4AE:  SUBS            R6, #0x18
7F4B0:  CMP             R6, R0
7F4B2:  BEQ             loc_7F49C
7F4B4:  CMP             R0, #0
7F4B6:  BEQ             loc_7F4A6
7F4B8:  MOVS            R1, #5
7F4BA:  B               loc_7F49E
7F4BC:  LDR             R0, [R4]; void *
7F4BE:  STR             R5, [R4,#4]
7F4C0:  BLX             j__ZdlPv; operator delete(void *)
7F4C4:  MOV             R0, R4
7F4C6:  POP.W           {R11}
7F4CA:  POP             {R4-R7,PC}
