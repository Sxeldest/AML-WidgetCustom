; =========================================================
; Game Engine Function: sub_F62E4
; Address            : 0xF62E4 - 0xF62FE
; =========================================================

F62E4:  PUSH            {R4,R6,R7,LR}
F62E6:  ADD             R7, SP, #8
F62E8:  LDR             R3, [R0,#4]
F62EA:  MOVS            R4, #0
F62EC:  ADD.W           R2, R3, R1,LSL#2
F62F0:  LSLS            R1, R1, #2
F62F2:  CBZ             R1, loc_F62FA
F62F4:  STM             R3!, {R4}
F62F6:  SUBS            R1, #4
F62F8:  B               loc_F62F2
F62FA:  STR             R2, [R0,#4]
F62FC:  POP             {R4,R6,R7,PC}
