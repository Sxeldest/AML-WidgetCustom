; =========================================================
; Game Engine Function: _Z13_rpSectorOpenPvii
; Address            : 0x21C798 - 0x21C7A4
; =========================================================

21C798:  LDR             R1, =(dword_6BD608 - 0x21C79E)
21C79A:  ADD             R1, PC; dword_6BD608
21C79C:  LDR             R2, [R1]
21C79E:  ADDS            R2, #1
21C7A0:  STR             R2, [R1]
21C7A2:  BX              LR
