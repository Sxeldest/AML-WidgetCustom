; =========================================================
; Game Engine Function: sub_17F63C
; Address            : 0x17F63C - 0x17F656
; =========================================================

17F63C:  PUSH            {R7,LR}
17F63E:  MOV             R7, SP
17F640:  SUB             SP, SP, #8
17F642:  SUB.W           R0, R0, #0x9D0
17F646:  LDRD.W          R1, R12, [R7,#8]
17F64A:  STRD.W          R1, R12, [SP,#0x10+var_10]
17F64E:  BL              sub_1822DC
17F652:  ADD             SP, SP, #8
17F654:  POP             {R7,PC}
