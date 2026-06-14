; =========================================================
; Game Engine Function: _ZN5CBike3FixEv
; Address            : 0x5673CC - 0x5673EC
; =========================================================

5673CC:  MOVS            R2, #0
5673CE:  LDRB.W          R1, [R0,#0x628]
5673D2:  STRH.W          R2, [R0,#0x670]
5673D6:  LDR.W           R2, [R0,#0x42C]
5673DA:  AND.W           R1, R1, #0xBF
5673DE:  STRB.W          R1, [R0,#0x628]
5673E2:  BIC.W           R1, R2, #0x10000
5673E6:  STR.W           R1, [R0,#0x42C]
5673EA:  BX              LR
