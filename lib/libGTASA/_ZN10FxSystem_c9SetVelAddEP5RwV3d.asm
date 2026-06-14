; =========================================================
; Game Engine Function: _ZN10FxSystem_c9SetVelAddEP5RwV3d
; Address            : 0x36E5F8 - 0x36E606
; =========================================================

36E5F8:  VLDR            D16, [R1]
36E5FC:  LDR             R1, [R1,#8]
36E5FE:  STR             R1, [R0,#0x74]
36E600:  VSTR            D16, [R0,#0x6C]
36E604:  BX              LR
