; =========================================================
; Game Engine Function: sub_11BC9C
; Address            : 0x11BC9C - 0x11BCC8
; =========================================================

11BC9C:  PUSH            {R7,LR}
11BC9E:  MOV             R7, SP
11BCA0:  MOV             R1, R0
11BCA2:  LDR             R0, =(off_23494C - 0x11BCA8)
11BCA4:  ADD             R0, PC; off_23494C
11BCA6:  LDR             R0, [R0]; dword_23DF24
11BCA8:  LDR             R2, [R0]
11BCAA:  MOVS            R0, #0
11BCAC:  CBZ             R2, locret_11BCC2
11BCAE:  ADD.W           R2, R2, #0x670000
11BCB2:  ADDS.W          R2, R2, #0x388
11BCB6:  IT EQ
11BCB8:  POPEQ           {R7,PC}
11BCBA:  LDR             R2, [R2]
11BCBC:  CBZ             R2, loc_11BCC4
11BCBE:  MOV             R0, R1
11BCC0:  BLX             R2
11BCC2:  POP             {R7,PC}
11BCC4:  MOVS            R0, #0
11BCC6:  POP             {R7,PC}
