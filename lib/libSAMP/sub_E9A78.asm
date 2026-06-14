; =========================================================
; Game Engine Function: sub_E9A78
; Address            : 0xE9A78 - 0xE9AA0
; =========================================================

E9A78:  LDR             R1, [R0]
E9A7A:  LDRB            R2, [R1]
E9A7C:  CBZ             R2, loc_E9A92
E9A7E:  CMP             R2, #2
E9A80:  BEQ             loc_E9A98
E9A82:  CMP             R2, #1
E9A84:  ITTTT EQ
E9A86:  LDREQ           R1, [R1,#8]
E9A88:  LDREQ           R1, [R1]
E9A8A:  STREQ           R1, [R0,#4]
E9A8C:  BXEQ            LR
E9A8E:  MOVS            R1, #0
E9A90:  B               loc_E9A94
E9A92:  MOVS            R1, #1
E9A94:  STR             R1, [R0,#0xC]
E9A96:  BX              LR
E9A98:  LDR             R1, [R1,#8]
E9A9A:  LDR             R1, [R1]
E9A9C:  STR             R1, [R0,#8]
E9A9E:  BX              LR
