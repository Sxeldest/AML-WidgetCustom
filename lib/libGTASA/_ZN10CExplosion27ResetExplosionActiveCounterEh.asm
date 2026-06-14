; =========================================================
; Game Engine Function: _ZN10CExplosion27ResetExplosionActiveCounterEh
; Address            : 0x5D7974 - 0x5D7988
; =========================================================

5D7974:  LDR             R1, =(dword_A84370 - 0x5D797E)
5D7976:  RSB.W           R0, R0, R0,LSL#5
5D797A:  ADD             R1, PC; dword_A84370
5D797C:  ADD.W           R0, R1, R0,LSL#2
5D7980:  MOVS            R1, #0
5D7982:  STRB.W          R1, [R0,#0x29]
5D7986:  BX              LR
