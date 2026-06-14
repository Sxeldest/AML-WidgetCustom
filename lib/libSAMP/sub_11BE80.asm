; =========================================================
; Game Engine Function: sub_11BE80
; Address            : 0x11BE80 - 0x11BEAE
; =========================================================

11BE80:  PUSH            {R7,LR}
11BE82:  MOV             R7, SP
11BE84:  MOV             R1, R0
11BE86:  LDR             R0, =(off_23494C - 0x11BE8C)
11BE88:  ADD             R0, PC; off_23494C
11BE8A:  LDR             R0, [R0]; dword_23DF24
11BE8C:  LDR             R2, [R0]
11BE8E:  MOVS            R0, #0
11BE90:  CBZ             R2, locret_11BEA8
11BE92:  MOV             R3, #0x67510C
11BE9A:  ADDS            R2, R2, R3
11BE9C:  IT EQ
11BE9E:  POPEQ           {R7,PC}
11BEA0:  LDR             R2, [R2]
11BEA2:  CBZ             R2, loc_11BEAA
11BEA4:  MOV             R0, R1
11BEA6:  BLX             R2
11BEA8:  POP             {R7,PC}
11BEAA:  MOVS            R0, #0
11BEAC:  POP             {R7,PC}
