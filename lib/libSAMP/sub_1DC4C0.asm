; =========================================================
; Game Engine Function: sub_1DC4C0
; Address            : 0x1DC4C0 - 0x1DC4DC
; =========================================================

1DC4C0:  CMP             R2, #0xD
1DC4C4:  LDRBEQ          R0, [R0,#0x34]
1DC4C8:  STREQ           R0, [R3]
1DC4CC:  BXEQ            LR
1DC4D0:  MOV             R0, R1
1DC4D4:  MOVW            R1, #0xA002
1DC4D8:  B               j_alSetError
