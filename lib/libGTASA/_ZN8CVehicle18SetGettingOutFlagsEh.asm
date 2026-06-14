; =========================================================
; Game Engine Function: _ZN8CVehicle18SetGettingOutFlagsEh
; Address            : 0x58C584 - 0x58C590
; =========================================================

58C584:  LDRB.W          R2, [R0,#0x48B]
58C588:  ORRS            R1, R2
58C58A:  STRB.W          R1, [R0,#0x48B]
58C58E:  BX              LR
