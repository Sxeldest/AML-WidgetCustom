; =========================================================
; Game Engine Function: sub_11BDD8
; Address            : 0x11BDD8 - 0x11BE06
; =========================================================

11BDD8:  PUSH            {R7,LR}
11BDDA:  MOV             R7, SP
11BDDC:  MOV             R12, R0
11BDDE:  LDR             R0, =(off_23494C - 0x11BDE4)
11BDE0:  ADD             R0, PC; off_23494C
11BDE2:  LDR             R0, [R0]; dword_23DF24
11BDE4:  LDR             R3, [R0]
11BDE6:  MOVS            R0, #0
11BDE8:  CBZ             R3, locret_11BE00
11BDEA:  MOV             R2, #0x672554
11BDF2:  ADDS            R3, R3, R2
11BDF4:  IT EQ
11BDF6:  POPEQ           {R7,PC}
11BDF8:  LDR             R3, [R3]
11BDFA:  CBZ             R3, loc_11BE02
11BDFC:  MOV             R0, R12
11BDFE:  BLX             R3
11BE00:  POP             {R7,PC}
11BE02:  MOVS            R0, #0
11BE04:  POP             {R7,PC}
