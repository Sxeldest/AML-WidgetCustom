; =========================================================
; Game Engine Function: sub_170E34
; Address            : 0x170E34 - 0x170E6A
; =========================================================

170E34:  PUSH            {R4,R5,R7,LR}
170E36:  ADD             R7, SP, #8
170E38:  LDR             R1, =(dword_381B58 - 0x170E42)
170E3A:  MOVS            R2, #0
170E3C:  MOVS            R4, #0
170E3E:  ADD             R1, PC; dword_381B58
170E40:  LDR             R5, [R1]
170E42:  MOVS            R1, #0
170E44:  BL              sub_16560C
170E48:  MOVW            R2, #0x2D08
170E4C:  LDR             R1, [R5,R2]
170E4E:  CMP             R1, #1
170E50:  BLT             loc_170E66
170E52:  ADD             R2, R5
170E54:  LDR             R4, [R2,#8]
170E56:  LDR             R2, [R4,#4]
170E58:  CMP             R2, R0
170E5A:  BEQ             loc_170E66
170E5C:  SUBS            R1, #1
170E5E:  ADD.W           R4, R4, #0x18
170E62:  BNE             loc_170E56
170E64:  MOVS            R4, #0
170E66:  MOV             R0, R4
170E68:  POP             {R4,R5,R7,PC}
