; =========================================================
; Game Engine Function: sub_1EEDCE
; Address            : 0x1EEDCE - 0x1EEDDE
; =========================================================

1EEDCE:  PUSH            {R4,R6,R7,LR}
1EEDD0:  ADD             R7, SP, #8
1EEDD2:  MOVS            R1, #0
1EEDD4:  MOV             R4, R0
1EEDD6:  BL              sub_1EEF94
1EEDDA:  MOV             R0, R4
1EEDDC:  POP             {R4,R6,R7,PC}
