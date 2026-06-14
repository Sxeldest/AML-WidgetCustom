; =========================================================
; Game Engine Function: sub_1FAEDC
; Address            : 0x1FAEDC - 0x1FAEEC
; =========================================================

1FAEDC:  PUSH            {R4,R6,R7,LR}
1FAEDE:  ADD             R7, SP, #8
1FAEE0:  MOVS            R1, #0
1FAEE2:  MOV             R4, R0
1FAEE4:  BL              sub_1FAEA0
1FAEE8:  MOV             R0, R4
1FAEEA:  POP             {R4,R6,R7,PC}
