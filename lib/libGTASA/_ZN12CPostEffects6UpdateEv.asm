; =========================================================
; Game Engine Function: _ZN12CPostEffects6UpdateEv
; Address            : 0x5B2868 - 0x5B2898
; =========================================================

5B2868:  LDR             R0, =(_ZN8CWeather4RainE_ptr - 0x5B2870)
5B286A:  LDR             R1, =(_ZN12CPostEffects18pRasterFrontBufferE_ptr - 0x5B2874)
5B286C:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
5B286E:  LDR             R2, =(_ZN12CPostEffects13m_bRainEnableE_ptr - 0x5B2878)
5B2870:  ADD             R1, PC; _ZN12CPostEffects18pRasterFrontBufferE_ptr
5B2872:  LDR             R0, [R0]; CWeather::Rain ...
5B2874:  ADD             R2, PC; _ZN12CPostEffects13m_bRainEnableE_ptr
5B2876:  LDR             R1, [R1]; CPostEffects::pRasterFrontBuffer ...
5B2878:  LDR             R2, [R2]; CPostEffects::m_bRainEnable ...
5B287A:  VLDR            S0, [R0]
5B287E:  MOVS            R0, #0
5B2880:  LDR             R1, [R1]; CPostEffects::pRasterFrontBuffer
5B2882:  VCMPE.F32       S0, #0.0
5B2886:  VMRS            APSR_nzcv, FPSCR
5B288A:  IT GT
5B288C:  MOVGT           R0, #(stderr+1); this
5B288E:  CMP             R1, #0
5B2890:  STRB            R0, [R2]; CPostEffects::m_bRainEnable
5B2892:  IT EQ
5B2894:  BEQ             _ZN12CPostEffects21SetupBackBufferVertexEv; CPostEffects::SetupBackBufferVertex(void)
5B2896:  BX              LR
