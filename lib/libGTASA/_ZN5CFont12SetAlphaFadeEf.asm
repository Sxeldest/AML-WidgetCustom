; =========================================================
; Game Engine Function: _ZN5CFont12SetAlphaFadeEf
; Address            : 0x5AB208 - 0x5AB212
; =========================================================

5AB208:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AB20E)
5AB20A:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AB20C:  LDR             R1, [R1]; CFont::Details ...
5AB20E:  STR             R0, [R1,#(dword_A297D4 - 0xA297B4)]
5AB210:  BX              LR
