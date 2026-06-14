; =========================================================
; Game Engine Function: sub_1FAECC
; Address            : 0x1FAECC - 0x1FAEDC
; =========================================================

1FAECC:  PUSH            {R4,R6,R7,LR}
1FAECE:  ADD             R7, SP, #8
1FAED0:  MOVS            R1, #0
1FAED2:  MOV             R4, R0
1FAED4:  BL              sub_1FAEB6
1FAED8:  MOV             R0, R4
1FAEDA:  POP             {R4,R6,R7,PC}
