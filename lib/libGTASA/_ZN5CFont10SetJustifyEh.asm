; =========================================================
; Game Engine Function: _ZN5CFont10SetJustifyEh
; Address            : 0x5AB2F4 - 0x5AB2FE
; =========================================================

5AB2F4:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AB2FA)
5AB2F6:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AB2F8:  LDR             R1, [R1]; CFont::Details ...
5AB2FA:  STRB            R0, [R1,#(byte_A297CC - 0xA297B4)]
5AB2FC:  BX              LR
