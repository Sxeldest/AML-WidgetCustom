; =========================================================
; Game Engine Function: _ZN5CHeli20SetupDamageAfterLoadEv
; Address            : 0x572DDC - 0x572DEA
; =========================================================

572DDC:  LDR.W           R1, [R0,#0x42C]
572DE0:  BIC.W           R1, R1, #0x10000
572DE4:  STR.W           R1, [R0,#0x42C]
572DE8:  BX              LR
