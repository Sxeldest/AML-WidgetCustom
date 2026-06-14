; =========================================================
; Game Engine Function: sub_15B720
; Address            : 0x15B720 - 0x15B744
; =========================================================

15B720:  PUSH            {R4,R6,R7,LR}
15B722:  ADD             R7, SP, #8
15B724:  SUB.W           SP, SP, #0x800
15B728:  LDR             R3, [R1]
15B72A:  ADD.W           R4, SP, #0x808+var_807
15B72E:  MOV             R2, R0
15B730:  MOV             R0, R4
15B732:  BL              sub_15B2DC
15B736:  MOVS            R0, #3; int
15B738:  MOV             R1, R4; s
15B73A:  BL              sub_159B70
15B73E:  ADD.W           SP, SP, #0x800
15B742:  POP             {R4,R6,R7,PC}
