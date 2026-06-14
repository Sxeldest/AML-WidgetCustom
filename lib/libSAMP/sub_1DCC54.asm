; =========================================================
; Game Engine Function: sub_1DCC54
; Address            : 0x1DCC54 - 0x1DCC70
; =========================================================

1DCC54:  CMP             R2, #1
1DCC58:  LDREQ           R0, [R0,#0x90]
1DCC5C:  STREQ           R0, [R3]
1DCC60:  BXEQ            LR
1DCC64:  MOV             R0, R1
1DCC68:  MOVW            R1, #0xA002
1DCC6C:  B               j_alSetError
