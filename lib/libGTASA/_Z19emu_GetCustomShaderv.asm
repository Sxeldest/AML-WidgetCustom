; =========================================================
; Game Engine Function: _Z19emu_GetCustomShaderv
; Address            : 0x1B4E2C - 0x1B4E36
; =========================================================

1B4E2C:  LDR             R0, =(_ZN9EmuShader15curCustomShaderE_ptr - 0x1B4E32)
1B4E2E:  ADD             R0, PC; _ZN9EmuShader15curCustomShaderE_ptr
1B4E30:  LDR             R0, [R0]; EmuShader::curCustomShader ...
1B4E32:  LDR             R0, [R0]; EmuShader::curCustomShader
1B4E34:  BX              LR
