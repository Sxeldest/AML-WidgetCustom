; =========================================================
; Game Engine Function: _ZN5CFont19SetRightJustifyWrapEf
; Address            : 0x5AB1F8 - 0x5AB202
; =========================================================

5AB1F8:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AB1FE)
5AB1FA:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AB1FC:  LDR             R1, [R1]; CFont::Details ...
5AB1FE:  STR             R0, [R1,#(dword_A297E4 - 0xA297B4)]
5AB200:  BX              LR
