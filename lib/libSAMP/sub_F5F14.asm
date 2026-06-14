; =========================================================
; Game Engine Function: sub_F5F14
; Address            : 0xF5F14 - 0xF5F66
; =========================================================

F5F14:  PUSH            {R4,R6,R7,LR}
F5F16:  ADD             R7, SP, #8
F5F18:  LDR             R4, =(dword_237974 - 0xF5F1E)
F5F1A:  ADD             R4, PC; dword_237974
F5F1C:  ADD.W           R3, R4, R0,LSL#3
F5F20:  LDR             R3, [R3,#4]
F5F22:  CMP             R1, R3
F5F24:  BGE             locret_F5F64
F5F26:  LDR.W           R3, [R4,R0,LSL#3]
F5F2A:  CMP             R1, R3
F5F2C:  BLT             locret_F5F64
F5F2E:  LDR             R4, =(dword_237984 - 0xF5F36)
F5F30:  CMP             R0, #1
F5F32:  ADD             R4, PC; dword_237984
F5F34:  STR.W           R1, [R4,R0,LSL#3]
F5F38:  ADD.W           R4, R4, R0,LSL#3
F5F3C:  STR             R2, [R4,#4]
F5F3E:  LDR             R2, =(byte_2400C8 - 0xF5F44)
F5F40:  ADD             R2, PC; byte_2400C8
F5F42:  BEQ             loc_F5F52
F5F44:  CBNZ            R0, loc_F5F4A
F5F46:  CMP             R1, R3
F5F48:  BEQ             loc_F5F58
F5F4A:  LDRB            R0, [R2]
F5F4C:  CBZ             R0, locret_F5F64
F5F4E:  MOVS            R0, #0
F5F50:  B               loc_F5F62
F5F52:  ADDS            R0, R3, #1
F5F54:  CMP             R1, R0
F5F56:  BNE             loc_F5F4A
F5F58:  LDRB            R0, [R2]
F5F5A:  CMP             R0, #1
F5F5C:  IT EQ
F5F5E:  POPEQ           {R4,R6,R7,PC}
F5F60:  MOVS            R0, #1
F5F62:  STRB            R0, [R2]
F5F64:  POP             {R4,R6,R7,PC}
