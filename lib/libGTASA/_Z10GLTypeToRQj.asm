; =========================================================
; Game Engine Function: _Z10GLTypeToRQj
; Address            : 0x1B9998 - 0x1B99AC
; =========================================================

1B9998:  BIC.W           R1, R0, #3
1B999C:  CMP.W           R1, #0x1400
1B99A0:  ITEE NE
1B99A2:  MOVNE           R0, #0
1B99A4:  MOVWEQ          R1, #0x13FF
1B99A8:  SUBEQ           R0, R0, R1
1B99AA:  BX              LR
