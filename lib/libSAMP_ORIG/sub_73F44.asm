; =========================================================
; Game Engine Function: sub_73F44
; Address            : 0x73F44 - 0x73F92
; =========================================================

73F44:  PUSH            {R7,LR}
73F46:  MOV             R7, SP
73F48:  LDR             R1, =(byte_1A44C8 - 0x73F4E)
73F4A:  ADD             R1, PC; byte_1A44C8
73F4C:  LDRB            R1, [R1]
73F4E:  CMP             R1, #0
73F50:  ITTT NE
73F52:  LDRNE           R0, [R0,#4]
73F54:  LDRBNE          R0, [R0,#8]
73F56:  CMPNE           R0, #0
73F58:  BNE             loc_73F5C
73F5A:  POP             {R7,PC}
73F5C:  LDR             R0, =(off_114AB0 - 0x73F62)
73F5E:  ADD             R0, PC; off_114AB0
73F60:  LDR             R0, [R0]; dword_1A4408
73F62:  LDR             R1, [R0]
73F64:  MOV             R0, #0x23DEF4
73F6C:  LDR             R0, [R1,R0]
73F6E:  LDR.W           R0, [R0,#0x3B0]
73F72:  LDR             R0, [R0]
73F74:  CMP             R0, #0
73F76:  BEQ             locret_73F5A
73F78:  MOVW            R2, #0x13BC
73F7C:  LDR             R0, [R0,R2]
73F7E:  CMP             R0, #0
73F80:  IT EQ
73F82:  POPEQ           {R7,PC}
73F84:  MOV             R2, #0x1410CD
73F8C:  ADD             R1, R2
73F8E:  BLX             R1
73F90:  POP             {R7,PC}
