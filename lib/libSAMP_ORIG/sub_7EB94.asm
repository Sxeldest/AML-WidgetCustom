; =========================================================
; Game Engine Function: sub_7EB94
; Address            : 0x7EB94 - 0x7EC66
; =========================================================

7EB94:  PUSH            {R4-R7,LR}
7EB96:  ADD             R7, SP, #0xC
7EB98:  PUSH.W          {R11}
7EB9C:  MOV             R2, R0
7EB9E:  LDR             R0, =(byte_1A45F3 - 0x7EBA4)
7EBA0:  ADD             R0, PC; byte_1A45F3
7EBA2:  LDRB            R0, [R0]
7EBA4:  CBZ             R0, loc_7EBF0
7EBA6:  LDR             R6, =(dword_1A4998 - 0x7EBAC)
7EBA8:  ADD             R6, PC; dword_1A4998
7EBAA:  LDRD.W          R1, R4, [R6]
7EBAE:  SUBS            R0, R4, R1
7EBB0:  BEQ             loc_7EBDA
7EBB2:  MOVW            R3, #0xAAAB
7EBB6:  ADDS            R1, #0x10
7EBB8:  MOVT            R3, #0x2AAA
7EBBC:  MOVS            R5, #0
7EBBE:  SMMUL.W         R0, R0, R3
7EBC2:  ASRS            R3, R0, #2
7EBC4:  ADD.W           R0, R3, R0,LSR#31
7EBC8:  CMP             R0, #1
7EBCA:  IT LS
7EBCC:  MOVLS           R0, #1
7EBCE:  LDR             R3, [R1]
7EBD0:  CBZ             R3, loc_7EC06
7EBD2:  ADDS            R5, #1
7EBD4:  ADDS            R1, #0x18
7EBD6:  CMP             R0, R5
7EBD8:  BNE             loc_7EBCE
7EBDA:  LDR             R0, [R6,#(dword_1A49A0 - 0x1A4998)]
7EBDC:  CMP             R4, R0
7EBDE:  BCS             loc_7EBF6
7EBE0:  MOV             R0, R2
7EBE2:  LDR.W           R1, [R0,#0x10]!
7EBE6:  CBZ             R1, loc_7EC22
7EBE8:  CMP             R2, R1
7EBEA:  BEQ             loc_7EC2C
7EBEC:  STR             R1, [R4,#0x10]
7EBEE:  B               loc_7EC26
7EBF0:  MOV.W           R5, #0xFFFFFFFF
7EBF4:  B               loc_7EC50
7EBF6:  LDR             R4, =(dword_1A4998 - 0x7EBFC)
7EBF8:  ADD             R4, PC; dword_1A4998
7EBFA:  MOV             R0, R4
7EBFC:  MOV             R1, R2
7EBFE:  BL              sub_7F9D8
7EC02:  LDR             R0, [R4,#(dword_1A499C - 0x1A4998)]
7EC04:  B               loc_7EC3E
7EC06:  MOVS            R0, #0
7EC08:  MOV             R6, R1
7EC0A:  STR.W           R0, [R6],#-0x10
7EC0E:  MOV             R3, R2
7EC10:  LDR.W           R4, [R3,#0x10]!
7EC14:  CBZ             R4, loc_7EC1E
7EC16:  CMP             R2, R4
7EC18:  BEQ             loc_7EC58
7EC1A:  STR             R4, [R1]
7EC1C:  MOV             R1, R3
7EC1E:  STR             R0, [R1]
7EC20:  B               loc_7EC50
7EC22:  ADD.W           R0, R4, #0x10
7EC26:  MOVS            R1, #0
7EC28:  STR             R1, [R0]
7EC2A:  B               loc_7EC38
7EC2C:  STR             R4, [R4,#0x10]
7EC2E:  LDR             R0, [R0]
7EC30:  LDR             R1, [R0]
7EC32:  LDR             R2, [R1,#0xC]
7EC34:  MOV             R1, R4
7EC36:  BLX             R2
7EC38:  ADD.W           R0, R4, #0x18
7EC3C:  STR             R0, [R6,#(dword_1A499C - 0x1A4998)]
7EC3E:  LDR             R1, [R6]
7EC40:  SUBS            R0, R0, R1
7EC42:  MOV             R1, #0xAAAAAAAB
7EC4A:  ASRS            R0, R0, #3
7EC4C:  MULS            R0, R1
7EC4E:  SUBS            R5, R0, #1
7EC50:  MOV             R0, R5
7EC52:  POP.W           {R11}
7EC56:  POP             {R4-R7,PC}
7EC58:  STR.W           R6, [R1],#-0x10
7EC5C:  LDR             R0, [R3]
7EC5E:  LDR             R2, [R0]
7EC60:  LDR             R2, [R2,#0xC]
7EC62:  BLX             R2
7EC64:  B               loc_7EC50
