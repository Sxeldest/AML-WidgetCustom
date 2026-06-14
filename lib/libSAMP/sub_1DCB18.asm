; =========================================================
; Game Engine Function: sub_1DCB18
; Address            : 0x1DCB18 - 0x1DCB44
; =========================================================

1DCB18:  CMP             R2, #2
1DCB1C:  LDREQ           R0, [R0,#0x88]
1DCB20:  STREQ           R0, [R3]
1DCB24:  BXEQ            LR
1DCB28:  CMP             R2, #1
1DCB2C:  LDREQ           R0, [R0,#0x84]
1DCB30:  STREQ           R0, [R3]
1DCB34:  BXEQ            LR
1DCB38:  MOV             R0, R1
1DCB3C:  MOVW            R1, #0xA002
1DCB40:  B               j_alSetError
