; =========================================================
; Game Engine Function: png_get_text
; Address            : 0x1F3DEE - 0x1F3E14
; =========================================================

1F3DEE:  CMP             R0, #0
1F3DF0:  IT NE
1F3DF2:  CMPNE           R1, #0
1F3DF4:  BEQ             loc_1F3E0A
1F3DF6:  LDR.W           R0, [R1,#0x80]
1F3DFA:  CMP             R0, #1
1F3DFC:  BLT             loc_1F3E0A
1F3DFE:  CMP             R2, #0
1F3E00:  ITT NE
1F3E02:  LDRNE.W         R1, [R1,#0x88]
1F3E06:  STRNE           R1, [R2]
1F3E08:  B               loc_1F3E0C
1F3E0A:  MOVS            R0, #0
1F3E0C:  CMP             R3, #0
1F3E0E:  IT NE
1F3E10:  STRNE           R0, [R3]
1F3E12:  BX              LR
