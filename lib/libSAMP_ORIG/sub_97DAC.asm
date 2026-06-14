; =========================================================
; Game Engine Function: sub_97DAC
; Address            : 0x97DAC - 0x97DC4
; =========================================================

97DAC:  LDR             R0, =(dword_1ACF68 - 0x97DB6)
97DAE:  MOVW            R1, #0x19AC
97DB2:  ADD             R0, PC; dword_1ACF68
97DB4:  LDR             R0, [R0]
97DB6:  LDR             R0, [R0,R1]
97DB8:  LDR.W           R1, [R0,#0x1C4]
97DBC:  SUBS            R1, #1
97DBE:  STR.W           R1, [R0,#0x1C4]
97DC2:  BX              LR
