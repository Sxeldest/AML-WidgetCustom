; =========================================================
; Game Engine Function: _Z19ActivateDirectionalv
; Address            : 0x5D1F5C - 0x5D1F6A
; =========================================================

5D1F5C:  LDR             R0, =(pDirect_ptr - 0x5D1F64)
5D1F5E:  MOVS            R1, #1
5D1F60:  ADD             R0, PC; pDirect_ptr
5D1F62:  LDR             R0, [R0]; pDirect
5D1F64:  LDR             R0, [R0]
5D1F66:  STRB            R1, [R0,#2]
5D1F68:  BX              LR
