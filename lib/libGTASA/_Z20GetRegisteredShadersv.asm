; =========================================================
; Game Engine Function: _Z20GetRegisteredShadersv
; Address            : 0x1C1F74 - 0x1C1F7C
; =========================================================

1C1F74:  LDR             R0, =(regShaders_ptr - 0x1C1F7A)
1C1F76:  ADD             R0, PC; regShaders_ptr
1C1F78:  LDR             R0, [R0]; regShaders
1C1F7A:  BX              LR
