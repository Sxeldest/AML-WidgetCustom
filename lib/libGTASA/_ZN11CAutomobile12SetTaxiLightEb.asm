; =========================================================
; Game Engine Function: _ZN11CAutomobile12SetTaxiLightEb
; Address            : 0x555C3C - 0x555C4C
; =========================================================

555C3C:  LDRB.W          R2, [R0,#0x87C]
555C40:  AND.W           R2, R2, #0xFE
555C44:  ORRS            R1, R2
555C46:  STRB.W          R1, [R0,#0x87C]
555C4A:  BX              LR
