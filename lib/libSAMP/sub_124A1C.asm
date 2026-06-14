; =========================================================
; Game Engine Function: sub_124A1C
; Address            : 0x124A1C - 0x124A56
; =========================================================

124A1C:  PUSH            {R4,R5,R7,LR}
124A1E:  ADD             R7, SP, #8
124A20:  LDR             R0, =(dword_238E9C - 0x124A28)
124A22:  LDR             R2, =(dword_238E94 - 0x124A2C)
124A24:  ADD             R0, PC; dword_238E9C
124A26:  LDR             R3, =(dword_238E98 - 0x124A30)
124A28:  ADD             R2, PC; dword_238E94
124A2A:  LDR             R0, [R0]
124A2C:  ADD             R3, PC; dword_238E98
124A2E:  LDR             R2, [R2]
124A30:  LDR             R4, [R3]
124A32:  ADD             R0, R2
124A34:  SUBS            R0, R1, R0
124A36:  SUB.W           R5, R0, #0xA1
124A3A:  BL              sub_125974
124A3E:  CMP             R5, R4
124A40:  MOV             R2, R0
124A42:  MOV.W           R1, #0x58 ; 'X'
124A46:  IT LT
124A48:  MLALT.W         R2, R5, R1, R2
124A4C:  CMP.W           R5, #0xFFFFFFFF
124A50:  IT GT
124A52:  MOVGT           R0, R2
124A54:  POP             {R4,R5,R7,PC}
