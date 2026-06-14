; =========================================================
; Game Engine Function: _ZN6CPlane20SetupDamageAfterLoadEv
; Address            : 0x578832 - 0x578840
; =========================================================

578832:  LDR.W           R1, [R0,#0x42C]
578836:  BIC.W           R1, R1, #0x10000
57883A:  STR.W           R1, [R0,#0x42C]
57883E:  BX              LR
