; =========================================================
; Game Engine Function: png_get_image_height
; Address            : 0x1F31DC - 0x1F31EE
; =========================================================

1F31DC:  MOV             R2, R0
1F31DE:  MOVS            R0, #0
1F31E0:  CMP             R2, #0
1F31E2:  IT EQ
1F31E4:  BXEQ            LR
1F31E6:  CMP             R1, #0
1F31E8:  IT NE
1F31EA:  LDRNE           R0, [R1,#4]
1F31EC:  BX              LR
