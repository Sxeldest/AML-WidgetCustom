; =========================================================
; Game Engine Function: _ZN5CBike17ReduceHornCounterEv
; Address            : 0x5614EC - 0x5614FC
; =========================================================

5614EC:  LDR.W           R1, [R0,#0x524]
5614F0:  CMP             R1, #0
5614F2:  ITT NE
5614F4:  SUBNE           R1, #1
5614F6:  STRNE.W         R1, [R0,#0x524]
5614FA:  BX              LR
