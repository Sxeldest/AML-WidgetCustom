; =========================================================
; Game Engine Function: _ZN11CAutomobile17ReduceHornCounterEv
; Address            : 0x5533B0 - 0x5533C0
; =========================================================

5533B0:  LDR.W           R1, [R0,#0x524]
5533B4:  CMP             R1, #0
5533B6:  ITT NE
5533B8:  SUBNE           R1, #1
5533BA:  STRNE.W         R1, [R0,#0x524]
5533BE:  BX              LR
