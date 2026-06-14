; =========================================================
; Game Engine Function: sub_1F36A6
; Address            : 0x1F36A6 - 0x1F36BA
; =========================================================

1F36A6:  LDR             R1, [R0,#4]
1F36A8:  B.W             loc_1F36AC
1F36AC:  LDR             R2, [R0,#8]
1F36AE:  CMP             R2, R1
1F36B0:  IT EQ
1F36B2:  BXEQ            LR
1F36B4:  SUBS            R2, #8
1F36B6:  STR             R2, [R0,#8]
1F36B8:  B               loc_1F36AE
