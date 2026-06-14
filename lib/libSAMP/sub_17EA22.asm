; =========================================================
; Game Engine Function: sub_17EA22
; Address            : 0x17EA22 - 0x17EA3A
; =========================================================

17EA22:  PUSH            {R7,LR}
17EA24:  MOV             R7, SP
17EA26:  SUB             SP, SP, #8
17EA28:  MOVS            R3, #0
17EA2A:  SUB.W           R0, R0, #0x9D0
17EA2E:  STR             R3, [SP,#0x10+var_10]
17EA30:  MOVS            R3, #0
17EA32:  BL              sub_17FE9E
17EA36:  ADD             SP, SP, #8
17EA38:  POP             {R7,PC}
