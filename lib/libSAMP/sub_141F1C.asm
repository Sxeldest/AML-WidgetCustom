; =========================================================
; Game Engine Function: sub_141F1C
; Address            : 0x141F1C - 0x141F6C
; =========================================================

141F1C:  PUSH            {R4,R5,R7,LR}
141F1E:  ADD             R7, SP, #8
141F20:  LDR.W           R1, [R0,#0x3B0]
141F24:  MOV             R4, R0
141F26:  LDR             R0, [R1]
141F28:  CBZ             R0, loc_141F32
141F2A:  BL              sub_148D6A
141F2E:  LDR.W           R1, [R4,#0x3B0]
141F32:  LDR             R5, =(dword_314310 - 0x141F3A)
141F34:  LDR             R0, [R1,#4]
141F36:  ADD             R5, PC; dword_314310
141F38:  LDR             R2, [R5]
141F3A:  CBZ             R0, loc_141F4C
141F3C:  CMP             R2, #3
141F3E:  BLT             loc_141F4C
141F40:  BL              sub_150224
141F44:  LDR.W           R1, [R4,#0x3B0]
141F48:  MOVS            R2, #0
141F4A:  B               loc_141F4E
141F4C:  ADDS            R2, #1
141F4E:  LDR             R4, =(dword_314314 - 0x141F56)
141F50:  LDR             R0, [R1,#0xC]
141F52:  ADD             R4, PC; dword_314314
141F54:  STR             R2, [R5]
141F56:  LDR             R1, [R4]
141F58:  CBZ             R0, loc_141F66
141F5A:  CMP             R1, #6
141F5C:  BLT             loc_141F66
141F5E:  BL              sub_148858
141F62:  MOVS            R0, #0
141F64:  B               loc_141F68
141F66:  ADDS            R0, R1, #1
141F68:  STR             R0, [R4]
141F6A:  POP             {R4,R5,R7,PC}
