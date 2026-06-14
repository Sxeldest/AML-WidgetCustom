; =========================================================
; Game Engine Function: _ZN10FxSystem_c17SetMustCreatePrtsEh
; Address            : 0x36F306 - 0x36F31C
; =========================================================

36F306:  LDRB.W          R2, [R0,#0x66]
36F30A:  MOVS            R3, #0x20 ; ' '
36F30C:  AND.W           R1, R3, R1,LSL#5
36F310:  AND.W           R2, R2, #0xDF
36F314:  ORRS            R1, R2
36F316:  STRB.W          R1, [R0,#0x66]
36F31A:  BX              LR
