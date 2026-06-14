; =========================================================
; Game Engine Function: sub_1DC4A4
; Address            : 0x1DC4A4 - 0x1DC4C0
; =========================================================

1DC4A4:  CMP             R2, #0xD
1DC4A8:  LDRBEQ          R0, [R0,#0x34]
1DC4AC:  STREQ           R0, [R3]
1DC4B0:  BXEQ            LR
1DC4B4:  MOV             R0, R1
1DC4B8:  MOVW            R1, #0xA002
1DC4BC:  B               j_alSetError
