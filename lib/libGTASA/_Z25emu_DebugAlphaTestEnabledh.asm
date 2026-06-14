; =========================================================
; Game Engine Function: _Z25emu_DebugAlphaTestEnabledh
; Address            : 0x1B4FA4 - 0x1B4FB0
; =========================================================

1B4FA4:  LDR             R1, =(debug_AlphaTest_ptr - 0x1B4FAA)
1B4FA6:  ADD             R1, PC; debug_AlphaTest_ptr
1B4FA8:  LDR             R1, [R1]; debug_AlphaTest
1B4FAA:  STRB            R0, [R1]
1B4FAC:  B.W             j_j__ZN9EmuShader16RecompileShadersEv; j_EmuShader::RecompileShaders(void)
