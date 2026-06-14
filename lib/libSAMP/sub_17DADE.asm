; =========================================================
; Game Engine Function: sub_17DADE
; Address            : 0x17DADE - 0x17DAEC
; =========================================================

17DADE:  PUSH            {R4,R6,R7,LR}
17DAE0:  ADD             R7, SP, #8
17DAE2:  MOV             R4, R0
17DAE4:  BL              sub_17DAF0
17DAE8:  MOV             R0, R4
17DAEA:  POP             {R4,R6,R7,PC}
