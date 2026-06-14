; =========================================================
; Game Engine Function: sub_8AE84
; Address            : 0x8AE84 - 0x8AEA6
; =========================================================

8AE84:  LDR             R1, =(dword_1ACF68 - 0x8AE8E)
8AE86:  MOVW            R2, #0x19D0
8AE8A:  ADD             R1, PC; dword_1ACF68
8AE8C:  LDR             R1, [R1]
8AE8E:  LDR             R3, [R1,R2]
8AE90:  ADD             R1, R2
8AE92:  CMP             R3, R0
8AE94:  IT EQ
8AE96:  STREQ           R0, [R1,#4]
8AE98:  LDR             R2, [R1,#0x2C]
8AE9A:  CMP             R2, R0
8AE9C:  ITT EQ
8AE9E:  MOVEQ           R0, #1
8AEA0:  STRBEQ.W        R0, [R1,#0x30]
8AEA4:  BX              LR
