; =========================================================
; Game Engine Function: _Z15RpClumpGetWorldPK7RpClump
; Address            : 0x21E680 - 0x21E68A
; =========================================================

21E680:  LDR             R1, =(dword_6BD640 - 0x21E686)
21E682:  ADD             R1, PC; dword_6BD640
21E684:  LDR             R1, [R1]
21E686:  LDR             R0, [R0,R1]
21E688:  BX              LR
