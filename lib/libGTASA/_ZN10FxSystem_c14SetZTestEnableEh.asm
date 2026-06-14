; =========================================================
; Game Engine Function: _ZN10FxSystem_c14SetZTestEnableEh
; Address            : 0x36F2F0 - 0x36F306
; =========================================================

36F2F0:  LDRB.W          R2, [R0,#0x66]
36F2F4:  MOVS            R3, #4
36F2F6:  AND.W           R1, R3, R1,LSL#2
36F2FA:  AND.W           R2, R2, #0xFB
36F2FE:  ORRS            R1, R2
36F300:  STRB.W          R1, [R0,#0x66]
36F304:  BX              LR
