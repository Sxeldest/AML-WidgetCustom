; =========================================================
; Game Engine Function: sub_F9E90
; Address            : 0xF9E90 - 0xF9EBE
; =========================================================

F9E90:  PUSH            {R7,LR}
F9E92:  MOV             R7, SP
F9E94:  MOV             R1, R0
F9E96:  LDR             R0, =(off_23494C - 0xF9E9C)
F9E98:  ADD             R0, PC; off_23494C
F9E9A:  LDR             R0, [R0]; dword_23DF24
F9E9C:  LDR             R2, [R0]
F9E9E:  MOVS            R0, #0
F9EA0:  CBZ             R2, locret_F9EB8
F9EA2:  MOV             R3, #0x673694
F9EAA:  ADDS            R2, R2, R3
F9EAC:  IT EQ
F9EAE:  POPEQ           {R7,PC}
F9EB0:  LDR             R2, [R2]
F9EB2:  CBZ             R2, loc_F9EBA
F9EB4:  MOV             R0, R1
F9EB6:  BLX             R2
F9EB8:  POP             {R7,PC}
F9EBA:  MOVS            R0, #0
F9EBC:  POP             {R7,PC}
