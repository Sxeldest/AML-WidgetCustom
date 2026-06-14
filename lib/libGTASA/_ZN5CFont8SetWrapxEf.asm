; =========================================================
; Game Engine Function: _ZN5CFont8SetWrapxEf
; Address            : 0x5AB1D8 - 0x5AB1E2
; =========================================================

5AB1D8:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AB1DE)
5AB1DA:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AB1DC:  LDR             R1, [R1]; CFont::Details ...
5AB1DE:  STR             R0, [R1,#(dword_A297DC - 0xA297B4)]
5AB1E0:  BX              LR
