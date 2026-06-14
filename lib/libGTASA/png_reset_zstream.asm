; =========================================================
; Game Engine Function: png_reset_zstream
; Address            : 0x1EE460 - 0x1EE472
; =========================================================

1EE460:  CMP             R0, #0
1EE462:  ITT NE
1EE464:  ADDNE.W         R0, R0, #0x144
1EE468:  BNE.W           j_j_inflateReset
1EE46C:  MOV             R0, #0xFFFFFFFE
1EE470:  BX              LR
