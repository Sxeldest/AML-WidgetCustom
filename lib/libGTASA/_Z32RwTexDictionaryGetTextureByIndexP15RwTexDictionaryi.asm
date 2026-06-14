; =========================================================
; Game Engine Function: _Z32RwTexDictionaryGetTextureByIndexP15RwTexDictionaryi
; Address            : 0x1DBA22 - 0x1DBA46
; =========================================================

1DBA22:  LDR.W           R2, [R0,#8]!
1DBA26:  CMP             R2, R0
1DBA28:  ITT EQ
1DBA2A:  MOVEQ           R0, #0
1DBA2C:  BXEQ            LR
1DBA2E:  ADDS            R1, #1
1DBA30:  SUBS            R1, #1
1DBA32:  ITT EQ
1DBA34:  SUBEQ.W         R0, R2, #8
1DBA38:  BXEQ            LR
1DBA3A:  LDR             R2, [R2]
1DBA3C:  CMP             R2, R0
1DBA3E:  ITT EQ
1DBA40:  MOVEQ           R0, #0
1DBA42:  BXEQ            LR
1DBA44:  B               loc_1DBA30
