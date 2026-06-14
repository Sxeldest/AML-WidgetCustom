; =========================================================
; Game Engine Function: sub_A52F0
; Address            : 0xA52F0 - 0xA5304
; =========================================================

A52F0:  LDR             R2, [R0,#0xC]
A52F2:  MOVS            R0, #0
A52F4:  LDR             R1, [R1,#0xC]
A52F6:  CMP             R2, R1
A52F8:  IT GT
A52FA:  MOVGT           R0, #1
A52FC:  IT LT
A52FE:  MOVLT.W         R0, #0xFFFFFFFF
A5302:  BX              LR
