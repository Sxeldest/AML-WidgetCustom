; =========================================================
; Game Engine Function: sub_1DCB44
; Address            : 0x1DCB44 - 0x1DCB70
; =========================================================

1DCB44:  CMP             R2, #2
1DCB48:  LDREQ           R0, [R0,#0x88]
1DCB4C:  STREQ           R0, [R3]
1DCB50:  BXEQ            LR
1DCB54:  CMP             R2, #1
1DCB58:  LDREQ           R0, [R0,#0x84]
1DCB5C:  STREQ           R0, [R3]
1DCB60:  BXEQ            LR
1DCB64:  MOV             R0, R1
1DCB68:  MOVW            R1, #0xA002
1DCB6C:  B               j_alSetError
