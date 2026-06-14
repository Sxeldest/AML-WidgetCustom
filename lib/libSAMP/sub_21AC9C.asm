; =========================================================
; Game Engine Function: sub_21AC9C
; Address            : 0x21AC9C - 0x21ACBC
; =========================================================

21AC9C:  PUSH            {R4,R6,R7,LR}
21AC9E:  ADD             R7, SP, #8
21ACA0:  LDR             R0, [R0,#8]
21ACA2:  MOV             R4, R1
21ACA4:  LDR             R1, [R0]
21ACA6:  LDR             R2, [R1,#0x10]
21ACA8:  MOV             R1, R4
21ACAA:  BLX             R2
21ACAC:  LDR             R1, =(asc_8CB3B - 0x21ACB4); "..." ...
21ACAE:  MOV             R0, R4
21ACB0:  ADD             R1, PC; "..."
21ACB2:  ADDS            R2, R1, #3
21ACB4:  POP.W           {R4,R6,R7,LR}
21ACB8:  B.W             sub_216F98
