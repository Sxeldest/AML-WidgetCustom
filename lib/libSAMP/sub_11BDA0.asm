; =========================================================
; Game Engine Function: sub_11BDA0
; Address            : 0x11BDA0 - 0x11BDCE
; =========================================================

11BDA0:  PUSH            {R7,LR}
11BDA2:  MOV             R7, SP
11BDA4:  MOV             R1, R0
11BDA6:  LDR             R0, =(off_23494C - 0x11BDAC)
11BDA8:  ADD             R0, PC; off_23494C
11BDAA:  LDR             R0, [R0]; dword_23DF24
11BDAC:  LDR             R2, [R0]
11BDAE:  MOVS            R0, #0
11BDB0:  CBZ             R2, locret_11BDC8
11BDB2:  MOV             R3, #0x6705DC
11BDBA:  ADDS            R2, R2, R3
11BDBC:  IT EQ
11BDBE:  POPEQ           {R7,PC}
11BDC0:  LDR             R2, [R2]
11BDC2:  CBZ             R2, loc_11BDCA
11BDC4:  MOV             R0, R1
11BDC6:  BLX             R2
11BDC8:  POP             {R7,PC}
11BDCA:  MOVS            R0, #0
11BDCC:  POP             {R7,PC}
