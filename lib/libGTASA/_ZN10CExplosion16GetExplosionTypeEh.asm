; =========================================================
; Game Engine Function: _ZN10CExplosion16GetExplosionTypeEh
; Address            : 0x5D79A4 - 0x5D79B2
; =========================================================

5D79A4:  LDR             R1, =(dword_A84370 - 0x5D79AE)
5D79A6:  RSB.W           R0, R0, R0,LSL#5
5D79AA:  ADD             R1, PC; dword_A84370
5D79AC:  LDR.W           R0, [R1,R0,LSL#2]
5D79B0:  BX              LR
