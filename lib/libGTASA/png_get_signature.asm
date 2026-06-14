; =========================================================
; Game Engine Function: png_get_signature
; Address            : 0x1F3642 - 0x1F3650
; =========================================================

1F3642:  CMP             R1, #0
1F3644:  IT NE
1F3646:  ADDNE           R1, #0x20 ; ' '
1F3648:  CMP             R0, #0
1F364A:  IT NE
1F364C:  MOVNE           R0, R1
1F364E:  BX              LR
