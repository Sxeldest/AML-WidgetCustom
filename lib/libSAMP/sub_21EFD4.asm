; =========================================================
; Game Engine Function: sub_21EFD4
; Address            : 0x21EFD4 - 0x21EFEC
; =========================================================

21EFD4:  PUSH            {R4,R6,R7,LR}
21EFD6:  ADD             R7, SP, #8
21EFD8:  LDR             R4, [R1,#8]
21EFDA:  LDR             R0, [R0,#4]
21EFDC:  LDR             R4, [R4,#4]
21EFDE:  CMP             R0, R4
21EFE0:  IT NE
21EFE2:  POPNE           {R4,R6,R7,PC}
21EFE4:  POP.W           {R4,R6,R7,LR}
21EFE8:  B.W             sub_21EFA4
