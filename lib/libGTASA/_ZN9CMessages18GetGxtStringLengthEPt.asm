; =========================================================
; Game Engine Function: _ZN9CMessages18GetGxtStringLengthEPt
; Address            : 0x54B6EC - 0x54B70A
; =========================================================

54B6EC:  LDRH            R1, [R0]
54B6EE:  CMP             R1, #0
54B6F0:  ITTT EQ
54B6F2:  MOVEQ           R0, #0
54B6F4:  UXTHEQ          R0, R0
54B6F6:  BXEQ            LR
54B6F8:  ADDS            R1, R0, #2
54B6FA:  MOVS            R0, #0
54B6FC:  LDRH.W          R2, [R1],#2
54B700:  ADDS            R0, #1
54B702:  CMP             R2, #0
54B704:  BNE             loc_54B6FC
54B706:  UXTH            R0, R0
54B708:  BX              LR
