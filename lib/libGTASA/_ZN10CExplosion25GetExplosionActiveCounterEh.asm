; =========================================================
; Game Engine Function: _ZN10CExplosion25GetExplosionActiveCounterEh
; Address            : 0x5D795C - 0x5D796E
; =========================================================

5D795C:  LDR             R1, =(dword_A84370 - 0x5D7966)
5D795E:  RSB.W           R0, R0, R0,LSL#5
5D7962:  ADD             R1, PC; dword_A84370
5D7964:  ADD.W           R0, R1, R0,LSL#2
5D7968:  LDRB.W          R0, [R0,#0x29]
5D796C:  BX              LR
