; =========================================================
; Game Engine Function: _ZN10CExplosion22DoesExplosionMakeSoundEh
; Address            : 0x5D798C - 0x5D799E
; =========================================================

5D798C:  LDR             R1, =(dword_A84370 - 0x5D7996)
5D798E:  RSB.W           R0, R0, R0,LSL#5
5D7992:  ADD             R1, PC; dword_A84370
5D7994:  ADD.W           R0, R1, R0,LSL#2
5D7998:  LDRB.W          R0, [R0,#0x2A]
5D799C:  BX              LR
