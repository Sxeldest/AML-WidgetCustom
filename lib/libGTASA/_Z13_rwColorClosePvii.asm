; =========================================================
; Game Engine Function: _Z13_rwColorClosePvii
; Address            : 0x1E25C4 - 0x1E25D0
; =========================================================

1E25C4:  LDR             R1, =(dword_6BD010 - 0x1E25CA)
1E25C6:  ADD             R1, PC; dword_6BD010
1E25C8:  LDR             R2, [R1]
1E25CA:  SUBS            R2, #1
1E25CC:  STR             R2, [R1]
1E25CE:  BX              LR
