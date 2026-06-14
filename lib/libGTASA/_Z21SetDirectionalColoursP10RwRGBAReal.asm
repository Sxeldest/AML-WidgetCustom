; =========================================================
; Game Engine Function: _Z21SetDirectionalColoursP10RwRGBAReal
; Address            : 0x5D2048 - 0x5D2056
; =========================================================

5D2048:  MOV             R1, R0
5D204A:  LDR             R0, =(pDirect_ptr - 0x5D2050)
5D204C:  ADD             R0, PC; pDirect_ptr
5D204E:  LDR             R0, [R0]; pDirect
5D2050:  LDR             R0, [R0]
5D2052:  B.W             sub_193254
