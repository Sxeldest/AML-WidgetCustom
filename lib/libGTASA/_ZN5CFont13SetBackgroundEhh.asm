; =========================================================
; Game Engine Function: _ZN5CFont13SetBackgroundEhh
; Address            : 0x5AB2C0 - 0x5AB2CC
; =========================================================

5AB2C0:  LDR             R2, =(_ZN5CFont7DetailsE_ptr - 0x5AB2C6)
5AB2C2:  ADD             R2, PC; _ZN5CFont7DetailsE_ptr
5AB2C4:  LDR             R2, [R2]; CFont::Details ...
5AB2C6:  STRB            R1, [R2,#(byte_A297D0 - 0xA297B4)]
5AB2C8:  STRB            R0, [R2,#(byte_A297CF - 0xA297B4)]
5AB2CA:  BX              LR
