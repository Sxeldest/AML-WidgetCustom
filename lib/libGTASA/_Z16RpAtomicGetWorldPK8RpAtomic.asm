; =========================================================
; Game Engine Function: _Z16RpAtomicGetWorldPK8RpAtomic
; Address            : 0x21E13C - 0x21E146
; =========================================================

21E13C:  LDR             R1, =(dword_6BD63C - 0x21E142)
21E13E:  ADD             R1, PC; dword_6BD63C
21E140:  LDR             R1, [R1]
21E142:  LDR             R0, [R0,R1]
21E144:  BX              LR
