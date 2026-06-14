; =========================================================
; Game Engine Function: _Z23GetImmediateVertexArrayv
; Address            : 0x1B506C - 0x1B5074
; =========================================================

1B506C:  LDR             R0, =(Imm_ptr - 0x1B5072)
1B506E:  ADD             R0, PC; Imm_ptr
1B5070:  LDR             R0, [R0]; Imm
1B5072:  BX              LR
