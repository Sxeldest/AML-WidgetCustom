; =========================================================
; Game Engine Function: _Z14GetPoolVehiclei
; Address            : 0x483D2E - 0x483D3A
; =========================================================

483D2E:  ADDS            R1, R0, #1; int
483D30:  IT NE
483D32:  BNE.W           sub_1906C4
483D36:  MOVS            R0, #0
483D38:  BX              LR
