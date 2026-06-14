; =========================================================
; Game Engine Function: sub_1EFB88
; Address            : 0x1EFB88 - 0x1EFB98
; =========================================================

1EFB88:  PUSH            {R4,R6,R7,LR}
1EFB8A:  ADD             R7, SP, #8
1EFB8C:  MOVS            R1, #0
1EFB8E:  MOV             R4, R0
1EFB90:  BL              sub_1F33B0
1EFB94:  MOV             R0, R4
1EFB96:  POP             {R4,R6,R7,PC}
