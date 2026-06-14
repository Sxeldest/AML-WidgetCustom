; =========================================================
; Game Engine Function: png_get_rowbytes
; Address            : 0x1F31A4 - 0x1F31B6
; =========================================================

1F31A4:  MOV             R2, R0
1F31A6:  MOVS            R0, #0
1F31A8:  CMP             R2, #0
1F31AA:  IT EQ
1F31AC:  BXEQ            LR
1F31AE:  CMP             R1, #0
1F31B0:  IT NE
1F31B2:  LDRNE           R0, [R1,#0xC]
1F31B4:  BX              LR
