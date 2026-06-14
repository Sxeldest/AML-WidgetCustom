; =========================================================
; Game Engine Function: _ZN8CVehicle19ClearGettingInFlagsEh
; Address            : 0x58C590 - 0x58C59E
; =========================================================

58C590:  LDRB.W          R2, [R0,#0x48A]
58C594:  BIC.W           R1, R2, R1
58C598:  STRB.W          R1, [R0,#0x48A]
58C59C:  BX              LR
