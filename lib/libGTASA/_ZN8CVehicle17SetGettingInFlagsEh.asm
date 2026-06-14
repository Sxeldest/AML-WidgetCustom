; =========================================================
; Game Engine Function: _ZN8CVehicle17SetGettingInFlagsEh
; Address            : 0x58C578 - 0x58C584
; =========================================================

58C578:  LDRB.W          R2, [R0,#0x48A]
58C57C:  ORRS            R1, R2
58C57E:  STRB.W          R1, [R0,#0x48A]
58C582:  BX              LR
