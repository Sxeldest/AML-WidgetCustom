; =========================================================
; Game Engine Function: _Z24GetRegisteredShaderCountv
; Address            : 0x1C1F80 - 0x1C1F8A
; =========================================================

1C1F80:  LDR             R0, =(curNumShaders_ptr - 0x1C1F86)
1C1F82:  ADD             R0, PC; curNumShaders_ptr
1C1F84:  LDR             R0, [R0]; curNumShaders
1C1F86:  LDR             R0, [R0]
1C1F88:  BX              LR
