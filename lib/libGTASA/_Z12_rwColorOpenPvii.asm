; =========================================================
; Game Engine Function: _Z12_rwColorOpenPvii
; Address            : 0x1E25B4 - 0x1E25C0
; =========================================================

1E25B4:  LDR             R1, =(dword_6BD010 - 0x1E25BA)
1E25B6:  ADD             R1, PC; dword_6BD010
1E25B8:  LDR             R2, [R1]
1E25BA:  ADDS            R2, #1
1E25BC:  STR             R2, [R1]
1E25BE:  BX              LR
