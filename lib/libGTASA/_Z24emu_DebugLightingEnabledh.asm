; =========================================================
; Game Engine Function: _Z24emu_DebugLightingEnabledh
; Address            : 0x1B4F84 - 0x1B4F90
; =========================================================

1B4F84:  LDR             R1, =(debug_Lighting_ptr - 0x1B4F8A)
1B4F86:  ADD             R1, PC; debug_Lighting_ptr
1B4F88:  LDR             R1, [R1]; debug_Lighting
1B4F8A:  STRB            R0, [R1]
1B4F8C:  B.W             j_j__ZN9EmuShader16RecompileShadersEv; j_EmuShader::RecompileShaders(void)
