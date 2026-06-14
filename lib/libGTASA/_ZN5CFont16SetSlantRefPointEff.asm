; =========================================================
; Game Engine Function: _ZN5CFont16SetSlantRefPointEff
; Address            : 0x5AB12C - 0x5AB138
; =========================================================

5AB12C:  LDR             R2, =(_ZN5CFont7DetailsE_ptr - 0x5AB132)
5AB12E:  ADD             R2, PC; _ZN5CFont7DetailsE_ptr
5AB130:  LDR             R2, [R2]; CFont::Details ...
5AB132:  STRD.W          R0, R1, [R2,#(dword_A297C4 - 0xA297B4)]
5AB136:  BX              LR
