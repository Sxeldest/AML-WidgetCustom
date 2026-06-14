; =========================================================
; Game Engine Function: sub_11A768
; Address            : 0x11A768 - 0x11A788
; =========================================================

11A768:  PUSH            {R4,R6,R7,LR}
11A76A:  ADD             R7, SP, #8
11A76C:  MOV             R4, R0
11A76E:  LDR             R0, [R0,#0x10]
11A770:  CMP             R4, R0
11A772:  BEQ             loc_11A77A
11A774:  CBZ             R0, loc_11A784
11A776:  MOVS            R1, #5
11A778:  B               loc_11A77C
11A77A:  MOVS            R1, #4
11A77C:  LDR             R2, [R0]
11A77E:  LDR.W           R1, [R2,R1,LSL#2]
11A782:  BLX             R1
11A784:  MOV             R0, R4
11A786:  POP             {R4,R6,R7,PC}
