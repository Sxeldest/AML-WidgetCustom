; =========================================================
; Game Engine Function: png_get_image_width
; Address            : 0x1F31CA - 0x1F31DC
; =========================================================

1F31CA:  MOV             R2, R0
1F31CC:  MOVS            R0, #0
1F31CE:  CMP             R2, #0
1F31D0:  IT EQ
1F31D2:  BXEQ            LR
1F31D4:  CMP             R1, #0
1F31D6:  IT NE
1F31D8:  LDRNE           R0, [R1]
1F31DA:  BX              LR
