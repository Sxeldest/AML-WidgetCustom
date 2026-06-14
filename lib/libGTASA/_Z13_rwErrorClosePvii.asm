; =========================================================
; Game Engine Function: _Z13_rwErrorClosePvii
; Address            : 0x1E2618 - 0x1E2624
; =========================================================

1E2618:  LDR             R1, =(dword_6BD018 - 0x1E261E)
1E261A:  ADD             R1, PC; dword_6BD018
1E261C:  LDR             R2, [R1]
1E261E:  SUBS            R2, #1
1E2620:  STR             R2, [R1]
1E2622:  BX              LR
