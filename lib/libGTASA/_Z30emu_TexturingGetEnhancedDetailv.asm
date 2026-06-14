; =========================================================
; Game Engine Function: _Z30emu_TexturingGetEnhancedDetailv
; Address            : 0x1BCBB0 - 0x1BCBBE
; =========================================================

1BCBB0:  LDR             R0, =(curShaderStateFlags_ptr - 0x1BCBB6)
1BCBB2:  ADD             R0, PC; curShaderStateFlags_ptr
1BCBB4:  LDR             R0, [R0]; curShaderStateFlags
1BCBB6:  LDR             R0, [R0]
1BCBB8:  UBFX.W          R0, R0, #0xB, #1
1BCBBC:  BX              LR
