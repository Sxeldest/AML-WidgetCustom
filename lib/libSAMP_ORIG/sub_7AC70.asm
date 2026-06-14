; =========================================================
; Game Engine Function: sub_7AC70
; Address            : 0x7AC70 - 0x7ACA8
; =========================================================

7AC70:  PUSH            {R7,LR}
7AC72:  MOV             R7, SP
7AC74:  LDR             R0, =(off_114AB0 - 0x7AC7A)
7AC76:  ADD             R0, PC; off_114AB0
7AC78:  LDR             R0, [R0]; dword_1A4408
7AC7A:  LDR             R1, [R0]
7AC7C:  MOV             R0, #0x23DEF4
7AC84:  LDR             R0, [R1,R0]
7AC86:  LDR.W           R0, [R0,#0x3B0]
7AC8A:  LDR             R0, [R0]
7AC8C:  CBZ             R0, locret_7ACA6
7AC8E:  MOVW            R2, #0x13BC
7AC92:  LDR             R0, [R0,R2]
7AC94:  CMP             R0, #0
7AC96:  IT EQ
7AC98:  POPEQ           {R7,PC}
7AC9A:  MOV             R2, #0x1410CD
7ACA2:  ADD             R1, R2
7ACA4:  BLX             R1
7ACA6:  POP             {R7,PC}
