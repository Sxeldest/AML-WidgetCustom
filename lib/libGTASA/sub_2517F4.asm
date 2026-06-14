; =========================================================
; Game Engine Function: sub_2517F4
; Address            : 0x2517F4 - 0x251810
; =========================================================

2517F4:  PUSH            {R4,R6,R7,LR}
2517F6:  ADD             R7, SP, #8
2517F8:  MOV             R4, R0
2517FA:  CMP             R4, #0
2517FC:  IT EQ
2517FE:  POPEQ           {R4,R6,R7,PC}
251800:  LDR             R0, [R4,#0x10]; p
251802:  BLX             free
251806:  MOV             R0, R4
251808:  POP.W           {R4,R6,R7,LR}
25180C:  B.W             j_free
