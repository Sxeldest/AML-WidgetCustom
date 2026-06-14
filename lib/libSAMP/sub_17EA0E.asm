; =========================================================
; Game Engine Function: sub_17EA0E
; Address            : 0x17EA0E - 0x17EA22
; =========================================================

17EA0E:  PUSH            {R7,LR}
17EA10:  MOV             R7, SP
17EA12:  SUB             SP, SP, #8
17EA14:  MOVS            R3, #0
17EA16:  STR             R3, [SP,#0x10+var_10]
17EA18:  MOVS            R3, #0
17EA1A:  BL              sub_17FE9E
17EA1E:  ADD             SP, SP, #8
17EA20:  POP             {R7,PC}
