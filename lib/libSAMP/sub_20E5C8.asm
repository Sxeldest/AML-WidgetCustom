; =========================================================
; Game Engine Function: sub_20E5C8
; Address            : 0x20E5C8 - 0x20E5DC
; =========================================================

20E5C8:  LDR             R1, [R0,#4]
20E5CA:  B.W             loc_20E5CE
20E5CE:  LDR             R2, [R0,#8]
20E5D0:  CMP             R2, R1
20E5D2:  IT EQ
20E5D4:  BXEQ            LR
20E5D6:  SUBS            R2, #4
20E5D8:  STR             R2, [R0,#8]
20E5DA:  B               loc_20E5D0
