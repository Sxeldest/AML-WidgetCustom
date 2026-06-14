; =========================================================
; Game Engine Function: sub_179DAC
; Address            : 0x179DAC - 0x179DC0
; =========================================================

179DAC:  LDR             R2, [R0,#0xC]
179DAE:  MOVS            R0, #0
179DB0:  LDR             R1, [R1,#0xC]
179DB2:  CMP             R2, R1
179DB4:  IT GT
179DB6:  MOVGT           R0, #1
179DB8:  IT LT
179DBA:  MOVLT.W         R0, #0xFFFFFFFF
179DBE:  BX              LR
