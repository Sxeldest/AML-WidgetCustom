; =========================================================
; Game Engine Function: _Z21GetBikeAtomicObjectCBP8RwObjectPv
; Address            : 0x5603D8 - 0x5603E2
; =========================================================

5603D8:  LDRB            R2, [R0,#2]
5603DA:  LSLS            R2, R2, #0x1D
5603DC:  IT MI
5603DE:  STRMI           R0, [R1]
5603E0:  BX              LR
