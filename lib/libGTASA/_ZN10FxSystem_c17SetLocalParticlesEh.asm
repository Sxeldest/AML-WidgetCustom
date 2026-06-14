; =========================================================
; Game Engine Function: _ZN10FxSystem_c17SetLocalParticlesEh
; Address            : 0x36EF58 - 0x36EF6E
; =========================================================

36EF58:  LDRB.W          R2, [R0,#0x66]
36EF5C:  MOVS            R3, #2
36EF5E:  AND.W           R1, R3, R1,LSL#1
36EF62:  AND.W           R2, R2, #0xFD
36EF66:  ORRS            R1, R2
36EF68:  STRB.W          R1, [R0,#0x66]
36EF6C:  BX              LR
