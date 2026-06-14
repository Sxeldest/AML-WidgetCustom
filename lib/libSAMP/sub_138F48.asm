; =========================================================
; Game Engine Function: sub_138F48
; Address            : 0x138F48 - 0x138F68
; =========================================================

138F48:  PUSH            {R4,R5,R7,LR}
138F4A:  ADD             R7, SP, #8
138F4C:  LDRD.W          R5, R1, [R0,#4]
138F50:  CMP             R1, R5
138F52:  BEQ             locret_138F66
138F54:  MOV             R4, R0
138F56:  LDR             R0, [R4,#0x10]
138F58:  SUBS            R1, #0x3C ; '<'
138F5A:  STR             R1, [R4,#8]
138F5C:  BL              sub_138F68
138F60:  LDR             R1, [R4,#8]
138F62:  CMP             R1, R5
138F64:  BNE             loc_138F56
138F66:  POP             {R4,R5,R7,PC}
