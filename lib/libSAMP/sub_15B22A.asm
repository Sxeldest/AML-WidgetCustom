; =========================================================
; Game Engine Function: sub_15B22A
; Address            : 0x15B22A - 0x15B24E
; =========================================================

15B22A:  PUSH            {R4,R6,R7,LR}
15B22C:  ADD             R7, SP, #8
15B22E:  SUB.W           SP, SP, #0x800
15B232:  LDR             R3, [R1]
15B234:  ADD.W           R4, SP, #0x808+var_807
15B238:  MOV             R2, R0
15B23A:  MOV             R0, R4
15B23C:  BL              sub_15B2DC
15B240:  MOVS            R0, #3; int
15B242:  MOV             R1, R4; s
15B244:  BL              sub_159B70
15B248:  ADD.W           SP, SP, #0x800
15B24C:  POP             {R4,R6,R7,PC}
