; =========================================================
; Game Engine Function: png_get_bit_depth
; Address            : 0x1F31EE - 0x1F3200
; =========================================================

1F31EE:  MOV             R2, R0
1F31F0:  MOVS            R0, #0
1F31F2:  CMP             R2, #0
1F31F4:  IT EQ
1F31F6:  BXEQ            LR
1F31F8:  CMP             R1, #0
1F31FA:  IT NE
1F31FC:  LDRBNE          R0, [R1,#0x18]
1F31FE:  BX              LR
