; =========================================================
; Game Engine Function: _ZN5CFont13SetCentreSizeEf
; Address            : 0x5AB1E8 - 0x5AB1F2
; =========================================================

5AB1E8:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AB1EE)
5AB1EA:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AB1EC:  LDR             R1, [R1]; CFont::Details ...
5AB1EE:  STR             R0, [R1,#(dword_A297E0 - 0xA297B4)]
5AB1F0:  BX              LR
