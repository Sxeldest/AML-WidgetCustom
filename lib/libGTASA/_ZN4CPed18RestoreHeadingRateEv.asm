; =========================================================
; Game Engine Function: _ZN4CPed18RestoreHeadingRateEv
; Address            : 0x4A76E6 - 0x4A76F2
; =========================================================

4A76E6:  LDR.W           R1, [R0,#0x5A0]
4A76EA:  LDR             R1, [R1,#0x20]
4A76EC:  STR.W           R1, [R0,#0x564]
4A76F0:  BX              LR
