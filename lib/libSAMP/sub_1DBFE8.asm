; =========================================================
; Game Engine Function: sub_1DBFE8
; Address            : 0x1DBFE8 - 0x1DC004
; =========================================================

1DBFE8:  CMP             R2, #0x17
1DBFEC:  LDRBEQ          R0, [R0,#0x34]
1DBFF0:  STREQ           R0, [R3]
1DBFF4:  BXEQ            LR
1DBFF8:  MOV             R0, R1
1DBFFC:  MOVW            R1, #0xA002
1DC000:  B               j_alSetError
