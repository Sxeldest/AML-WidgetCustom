; =========================================================
; Game Engine Function: sub_1EEDB2
; Address            : 0x1EEDB2 - 0x1EEDCE
; =========================================================

1EEDB2:  LDRB            R2, [R0]
1EEDB4:  LSLS            R2, R2, #0x1F
1EEDB6:  BNE             loc_1EEDC4
1EEDB8:  ADDS            R2, R0, R1
1EEDBA:  MOVS            R3, #0
1EEDBC:  LSLS            R1, R1, #1
1EEDBE:  STRB            R3, [R2,#1]
1EEDC0:  STRB            R1, [R0]
1EEDC2:  BX              LR
1EEDC4:  LDR             R2, [R0,#8]
1EEDC6:  MOVS            R3, #0
1EEDC8:  STRB            R3, [R2,R1]
1EEDCA:  STR             R1, [R0,#4]
1EEDCC:  BX              LR
