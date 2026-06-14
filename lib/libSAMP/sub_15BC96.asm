; =========================================================
; Game Engine Function: sub_15BC96
; Address            : 0x15BC96 - 0x15BCC8
; =========================================================

15BC96:  PUSH            {R7,LR}
15BC98:  MOV             R7, SP
15BC9A:  LDR.W           R12, [R0]
15BC9E:  CMP             R12, R1
15BCA0:  BLS             loc_15BCBC
15BCA2:  ADD.W           LR, R2, R1
15BCA6:  CMP             LR, R12
15BCA8:  BLS             loc_15BCBE
15BCAA:  LDR.W           R12, [R7,#8+dest]
15BCAE:  STR.W           R12, [R3]
15BCB2:  MOV             R3, R12; dest
15BCB4:  POP.W           {R7,LR}
15BCB8:  B.W             sub_15BCC8
15BCBC:  MOVS            R1, #0
15BCBE:  LDR             R0, [R0,#8]
15BCC0:  ADD             R0, R1
15BCC2:  STR             R0, [R3]
15BCC4:  ADDS            R0, R1, R2
15BCC6:  POP             {R7,PC}
