; =========================================================
; Game Engine Function: _Z16Set360UVAnimHackb
; Address            : 0x1EAE14 - 0x1EAE1E
; =========================================================

1EAE14:  LDR             R1, =(RunUVAnim_ptr - 0x1EAE1A)
1EAE16:  ADD             R1, PC; RunUVAnim_ptr
1EAE18:  LDR             R1, [R1]; RunUVAnim
1EAE1A:  STRB            R0, [R1]
1EAE1C:  BX              LR
