; =========================================================
; Game Engine Function: sub_1FAEEC
; Address            : 0x1FAEEC - 0x1FAEFC
; =========================================================

1FAEEC:  PUSH            {R4,R6,R7,LR}
1FAEEE:  ADD             R7, SP, #8
1FAEF0:  MOVS            R1, #0
1FAEF2:  MOV             R4, R0
1FAEF4:  BL              sub_1FAE8A
1FAEF8:  MOV             R0, R4
1FAEFA:  POP             {R4,R6,R7,PC}
