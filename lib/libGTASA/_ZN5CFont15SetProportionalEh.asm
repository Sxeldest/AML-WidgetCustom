; =========================================================
; Game Engine Function: _ZN5CFont15SetProportionalEh
; Address            : 0x5AB2B0 - 0x5AB2BA
; =========================================================

5AB2B0:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AB2B6)
5AB2B2:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AB2B4:  LDR             R1, [R1]; CFont::Details ...
5AB2B6:  STRB            R0, [R1,#(byte_A297D1 - 0xA297B4)]
5AB2B8:  BX              LR
