; =========================================================
; Game Engine Function: sub_1821B6
; Address            : 0x1821B6 - 0x1821D6
; =========================================================

1821B6:  PUSH            {R7,LR}
1821B8:  MOV             R7, SP
1821BA:  SUB             SP, SP, #8
1821BC:  STR             R1, [SP,#0x10+var_C]
1821BE:  ADD.W           R0, R0, #0x9C0
1821C2:  ADD             R1, SP, #0x10+var_C
1821C4:  CBZ             R2, loc_1821CE
1821C6:  MOVS            R2, #0
1821C8:  BL              sub_1821D6
1821CC:  B               loc_1821D2
1821CE:  BL              sub_180D28
1821D2:  ADD             SP, SP, #8
1821D4:  POP             {R7,PC}
