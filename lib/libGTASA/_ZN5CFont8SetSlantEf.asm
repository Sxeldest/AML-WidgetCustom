; =========================================================
; Game Engine Function: _ZN5CFont8SetSlantEf
; Address            : 0x5AB13C - 0x5AB146
; =========================================================

5AB13C:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AB142)
5AB13E:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AB140:  LDR             R1, [R1]; CFont::Details ...
5AB142:  STR             R0, [R1,#(dword_A297C0 - 0xA297B4)]
5AB144:  BX              LR
