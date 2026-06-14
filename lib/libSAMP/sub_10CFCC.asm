; =========================================================
; Game Engine Function: sub_10CFCC
; Address            : 0x10CFCC - 0x10CFEE
; =========================================================

10CFCC:  PUSH            {R7,LR}
10CFCE:  MOV             R7, SP
10CFD0:  LDRH.W          R12, [R1,#0x26]
10CFD4:  MOVW            LR, #0x3E5D
10CFD8:  CMP             R12, LR
10CFDA:  IT EQ
10CFDC:  POPEQ           {R7,PC}
10CFDE:  LDR.W           R12, [R0]
10CFE2:  MOV             R0, R1
10CFE4:  MOV             R1, R2
10CFE6:  MOV             R2, R3
10CFE8:  POP.W           {R7,LR}
10CFEC:  BX              R12
