; =========================================================
; Game Engine Function: sub_167F70
; Address            : 0x167F70 - 0x167F84
; =========================================================

167F70:  LDR             R0, =(dword_381B58 - 0x167F7A)
167F72:  MOVW            R2, #0x1BDC
167F76:  ADD             R0, PC; dword_381B58
167F78:  LDR             R1, [R0]
167F7A:  LDRB            R0, [R1,R2]
167F7C:  CMP             R0, #0
167F7E:  IT NE
167F80:  ADDNE           R0, R1, R2
167F82:  BX              LR
