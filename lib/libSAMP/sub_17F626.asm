; =========================================================
; Game Engine Function: sub_17F626
; Address            : 0x17F626 - 0x17F63C
; =========================================================

17F626:  PUSH            {R7,LR}
17F628:  MOV             R7, SP
17F62A:  SUB             SP, SP, #8
17F62C:  LDRD.W          R1, R12, [R7,#8]
17F630:  STRD.W          R1, R12, [SP,#0x10+var_10]
17F634:  BL              sub_1822DC
17F638:  ADD             SP, SP, #8
17F63A:  POP             {R7,PC}
