; =========================================================
; Game Engine Function: sub_FD3F0
; Address            : 0xFD3F0 - 0xFD404
; =========================================================

FD3F0:  LDR             R1, [R0,#4]
FD3F2:  B.W             loc_FD3F6
FD3F6:  LDR             R2, [R0,#8]
FD3F8:  CMP             R2, R1
FD3FA:  IT EQ
FD3FC:  BXEQ            LR
FD3FE:  SUBS            R2, #8
FD400:  STR             R2, [R0,#8]
FD402:  B               loc_FD3F8
