; =========================================================
; Game Engine Function: _Z10ResetBlendv
; Address            : 0x1AF014 - 0x1AF020
; =========================================================

1AF014:  LDR             R0, =(dword_6B3208 - 0x1AF01C)
1AF016:  MOVS            R1, #1
1AF018:  ADD             R0, PC; dword_6B3208
1AF01A:  STRD.W          R1, R1, [R0,#(dword_6B322C - 0x6B3208)]
1AF01E:  BX              LR
