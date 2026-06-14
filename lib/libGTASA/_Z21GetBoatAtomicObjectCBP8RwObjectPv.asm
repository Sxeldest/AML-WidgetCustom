; =========================================================
; Game Engine Function: _Z21GetBoatAtomicObjectCBP8RwObjectPv
; Address            : 0x56AE60 - 0x56AE6A
; =========================================================

56AE60:  LDRB            R2, [R0,#2]
56AE62:  LSLS            R2, R2, #0x1D
56AE64:  IT MI
56AE66:  STRMI           R0, [R1]
56AE68:  BX              LR
