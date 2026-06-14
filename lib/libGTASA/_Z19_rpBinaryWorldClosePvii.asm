; =========================================================
; Game Engine Function: _Z19_rpBinaryWorldClosePvii
; Address            : 0x2138B8 - 0x2138C4
; =========================================================

2138B8:  LDR             R1, =(dword_6BD53C - 0x2138BE)
2138BA:  ADD             R1, PC; dword_6BD53C
2138BC:  LDR             R2, [R1]
2138BE:  SUBS            R2, #1
2138C0:  STR             R2, [R1]
2138C2:  BX              LR
