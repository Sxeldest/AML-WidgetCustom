; =========================================================
; Game Engine Function: _Z14_rpSectorClosePvii
; Address            : 0x21C7A8 - 0x21C7B4
; =========================================================

21C7A8:  LDR             R1, =(dword_6BD608 - 0x21C7AE)
21C7AA:  ADD             R1, PC; dword_6BD608
21C7AC:  LDR             R2, [R1]
21C7AE:  SUBS            R2, #1
21C7B0:  STR             R2, [R1]
21C7B2:  BX              LR
