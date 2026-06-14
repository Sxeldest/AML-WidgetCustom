; =========================================================
; Game Engine Function: _ZN5CFont21SetDropShadowPositionEa
; Address            : 0x5A8A6C - 0x5A8A7E
; =========================================================

5A8A6C:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5A8A72)
5A8A6E:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5A8A70:  LDR             R1, [R1]; CFont::Details ...
5A8A72:  STRB.W          R0, [R1,#(byte_A297EA - 0xA297B4)]
5A8A76:  MOVS            R0, #0
5A8A78:  STRH.W          R0, [R1,#(word_A297EF - 0xA297B4)]
5A8A7C:  BX              LR
