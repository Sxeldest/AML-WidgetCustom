; =========================================================
; Game Engine Function: sub_166DEC
; Address            : 0x166DEC - 0x166E0E
; =========================================================

166DEC:  LDR             R1, =(dword_381B58 - 0x166DF6)
166DEE:  MOVW            R2, #0x19D0
166DF2:  ADD             R1, PC; dword_381B58
166DF4:  LDR             R1, [R1]
166DF6:  LDR             R3, [R1,R2]
166DF8:  ADD             R1, R2
166DFA:  CMP             R3, R0
166DFC:  IT EQ
166DFE:  STREQ           R0, [R1,#4]
166E00:  LDR             R2, [R1,#0x2C]
166E02:  CMP             R2, R0
166E04:  ITT EQ
166E06:  MOVEQ           R0, #1
166E08:  STRBEQ.W        R0, [R1,#0x30]
166E0C:  BX              LR
