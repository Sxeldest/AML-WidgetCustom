; =========================================================
; Game Engine Function: _Z19emu_CustomShaderSetPv
; Address            : 0x1B4DF8 - 0x1B4E1E
; =========================================================

1B4DF8:  LDR             R1, =(curAssignedShader_ptr - 0x1B4E06)
1B4DFA:  CMP             R0, #0
1B4DFC:  LDR             R2, =(_ZN9EmuShader15curCustomShaderE_ptr - 0x1B4E08)
1B4DFE:  MOV.W           R3, #0
1B4E02:  ADD             R1, PC; curAssignedShader_ptr
1B4E04:  ADD             R2, PC; _ZN9EmuShader15curCustomShaderE_ptr
1B4E06:  LDR             R1, [R1]; curAssignedShader
1B4E08:  LDR             R2, [R2]; EmuShader::curCustomShader ...
1B4E0A:  STR             R3, [R1]
1B4E0C:  STR             R0, [R2]; EmuShader::curCustomShader
1B4E0E:  IT EQ
1B4E10:  BXEQ            LR
1B4E12:  LDR             R1, =(_ZN9EmuShader17curSelectedShaderE_ptr - 0x1B4E1A)
1B4E14:  LDR             R0, [R0]
1B4E16:  ADD             R1, PC; _ZN9EmuShader17curSelectedShaderE_ptr
1B4E18:  LDR             R1, [R1]; EmuShader::curSelectedShader ...
1B4E1A:  STR             R0, [R1]; EmuShader::curSelectedShader
1B4E1C:  BX              LR
