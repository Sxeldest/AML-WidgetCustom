; =========================================================
; Game Engine Function: sub_11CFC4
; Address            : 0x11CFC4 - 0x11CFEC
; =========================================================

11CFC4:  PUSH            {R4-R7,LR}
11CFC6:  ADD             R7, SP, #0xC
11CFC8:  PUSH.W          {R11}
11CFCC:  MOV             R4, R2
11CFCE:  MOV             R5, R1
11CFD0:  MOV             R6, R0
11CFD2:  BL              sub_11CFF0
11CFD6:  LDR             R0, =(unk_263790 - 0x11CFE2)
11CFD8:  MOV             R1, R6
11CFDA:  MOV             R2, R5
11CFDC:  MOV             R3, R4
11CFDE:  ADD             R0, PC; unk_263790
11CFE0:  POP.W           {R11}
11CFE4:  POP.W           {R4-R7,LR}
11CFE8:  B.W             sub_11D0BC
