; =========================================================
; Game Engine Function: _Z19RpWorldForAllClumpsP7RpWorldPFP7RpClumpS2_PvES3_
; Address            : 0x21D466 - 0x21D498
; =========================================================

21D466:  PUSH            {R4-R7,LR}
21D468:  ADD             R7, SP, #0xC
21D46A:  PUSH.W          {R8,R9,R11}
21D46E:  MOV             R8, R0
21D470:  MOV             R9, R2
21D472:  MOV             R5, R8
21D474:  MOV             R6, R1
21D476:  LDR.W           R0, [R5,#0x2C]!
21D47A:  CMP             R0, R5
21D47C:  BEQ             loc_21D490
21D47E:  CMP             R5, R0
21D480:  BEQ             loc_21D490
21D482:  LDR.W           R4, [R0],#-0x20
21D486:  MOV             R1, R9
21D488:  BLX             R6
21D48A:  CMP             R0, #0
21D48C:  MOV             R0, R4
21D48E:  BNE             loc_21D47E
21D490:  MOV             R0, R8
21D492:  POP.W           {R8,R9,R11}
21D496:  POP             {R4-R7,PC}
