; =========================================================
; Game Engine Function: png_get_channels
; Address            : 0x1F3630 - 0x1F3642
; =========================================================

1F3630:  MOV             R2, R0
1F3632:  MOVS            R0, #0
1F3634:  CMP             R2, #0
1F3636:  IT EQ
1F3638:  BXEQ            LR
1F363A:  CMP             R1, #0
1F363C:  IT NE
1F363E:  LDRBNE          R0, [R1,#0x1D]
1F3640:  BX              LR
