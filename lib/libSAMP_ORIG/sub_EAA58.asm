; =========================================================
; Game Engine Function: sub_EAA58
; Address            : 0xEAA58 - 0xEAA6E
; =========================================================

EAA58:  LDRB            R1, [R0]
EAA5A:  LSLS            R1, R1, #0x1F
EAA5C:  ITTT EQ
EAA5E:  MOVEQ           R1, #0
EAA60:  STRHEQ          R1, [R0]
EAA62:  BXEQ            LR
EAA64:  LDR             R1, [R0,#8]
EAA66:  MOVS            R2, #0
EAA68:  STRB            R2, [R1]
EAA6A:  STR             R2, [R0,#4]
EAA6C:  BX              LR
