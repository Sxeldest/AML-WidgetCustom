; =========================================================
; Game Engine Function: png_get_filter_type
; Address            : 0x1F3212 - 0x1F3224
; =========================================================

1F3212:  MOV             R2, R0
1F3214:  MOVS            R0, #0
1F3216:  CMP             R2, #0
1F3218:  IT EQ
1F321A:  BXEQ            LR
1F321C:  CMP             R1, #0
1F321E:  IT NE
1F3220:  LDRBNE          R0, [R1,#0x1B]
1F3222:  BX              LR
