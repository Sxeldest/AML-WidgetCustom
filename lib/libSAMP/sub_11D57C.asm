; =========================================================
; Game Engine Function: sub_11D57C
; Address            : 0x11D57C - 0x11D59C
; =========================================================

11D57C:  PUSH            {R4,R6,R7,LR}
11D57E:  ADD             R7, SP, #8
11D580:  MOV             R4, R0
11D582:  LDR             R0, [R0,#0x10]
11D584:  CMP             R4, R0
11D586:  BEQ             loc_11D58E
11D588:  CBZ             R0, loc_11D598
11D58A:  MOVS            R1, #5
11D58C:  B               loc_11D590
11D58E:  MOVS            R1, #4
11D590:  LDR             R2, [R0]
11D592:  LDR.W           R1, [R2,R1,LSL#2]
11D596:  BLX             R1
11D598:  MOV             R0, R4
11D59A:  POP             {R4,R6,R7,PC}
