; =========================================================
; Game Engine Function: _ZN8CVehicle9InitWinchEi
; Address            : 0x58D4C2 - 0x58D4D8
; =========================================================

58D4C2:  LDRB.W          R2, [R0,#0x4B2]
58D4C6:  MOVS            R3, #0x60 ; '`'
58D4C8:  AND.W           R1, R3, R1,LSL#5
58D4CC:  AND.W           R2, R2, #0x9F
58D4D0:  ORRS            R1, R2
58D4D2:  STRB.W          R1, [R0,#0x4B2]
58D4D6:  BX              LR
