; =========================================================
; Game Engine Function: _Z15RpLightGetWorldPK7RpLight
; Address            : 0x21E8F4 - 0x21E8FE
; =========================================================

21E8F4:  LDR             R1, =(dword_6BD644 - 0x21E8FA)
21E8F6:  ADD             R1, PC; dword_6BD644
21E8F8:  LDR             R1, [R1]
21E8FA:  LDR             R0, [R0,R1]
21E8FC:  BX              LR
