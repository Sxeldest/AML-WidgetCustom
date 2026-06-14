; =========================================================
; Game Engine Function: _ZN8CVehicle20ClearGettingOutFlagsEh
; Address            : 0x58C59E - 0x58C5AC
; =========================================================

58C59E:  LDRB.W          R2, [R0,#0x48B]
58C5A2:  BIC.W           R1, R2, R1
58C5A6:  STRB.W          R1, [R0,#0x48B]
58C5AA:  BX              LR
