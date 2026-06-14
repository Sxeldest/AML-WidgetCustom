; =========================================================
; Game Engine Function: sub_1DCC38
; Address            : 0x1DCC38 - 0x1DCC54
; =========================================================

1DCC38:  CMP             R2, #1
1DCC3C:  LDREQ           R0, [R0,#0x90]
1DCC40:  STREQ           R0, [R3]
1DCC44:  BXEQ            LR
1DCC48:  MOV             R0, R1
1DCC4C:  MOVW            R1, #0xA002
1DCC50:  B               j_alSetError
