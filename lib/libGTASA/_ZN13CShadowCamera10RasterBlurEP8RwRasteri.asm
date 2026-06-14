; =========================================================
; Game Engine Function: _ZN13CShadowCamera10RasterBlurEP8RwRasteri
; Address            : 0x5B7AA0 - 0x5B7AAA
; =========================================================

5B7AA0:  LDR             R0, [R0]
5B7AA2:  CMP             R0, #0
5B7AA4:  IT NE
5B7AA6:  MOVNE           R0, R1
5B7AA8:  BX              LR
