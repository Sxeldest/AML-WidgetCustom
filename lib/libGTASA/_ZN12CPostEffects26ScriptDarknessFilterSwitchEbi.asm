; =========================================================
; Game Engine Function: _ZN12CPostEffects26ScriptDarknessFilterSwitchEbi
; Address            : 0x5B2CB0 - 0x5B2CDC
; =========================================================

5B2CB0:  LDR             R2, =(_ZN12CPostEffects17m_bDarknessFilterE_ptr - 0x5B2CB6)
5B2CB2:  ADD             R2, PC; _ZN12CPostEffects17m_bDarknessFilterE_ptr
5B2CB4:  LDR             R2, [R2]; CPostEffects::m_bDarknessFilter ...
5B2CB6:  STRB            R0, [R2]; CPostEffects::m_bDarknessFilter
5B2CB8:  ADDS            R0, R1, #1
5B2CBA:  BEQ             loc_5B2CCA
5B2CBC:  CMP             R1, #0
5B2CBE:  IT LE
5B2CC0:  MOVLE           R1, #0
5B2CC2:  CMP             R1, #0xFF
5B2CC4:  IT GE
5B2CC6:  MOVGE           R1, #0xFF
5B2CC8:  B               loc_5B2CD2
5B2CCA:  LDR             R0, =(_ZN12CPostEffects28m_DarknessFilterAlphaDefaultE_ptr - 0x5B2CD0)
5B2CCC:  ADD             R0, PC; _ZN12CPostEffects28m_DarknessFilterAlphaDefaultE_ptr
5B2CCE:  LDR             R0, [R0]; CPostEffects::m_DarknessFilterAlphaDefault ...
5B2CD0:  LDR             R1, [R0]; CPostEffects::m_DarknessFilterAlphaDefault
5B2CD2:  LDR             R0, =(_ZN12CPostEffects21m_DarknessFilterAlphaE_ptr - 0x5B2CD8)
5B2CD4:  ADD             R0, PC; _ZN12CPostEffects21m_DarknessFilterAlphaE_ptr
5B2CD6:  LDR             R0, [R0]; CPostEffects::m_DarknessFilterAlpha ...
5B2CD8:  STR             R1, [R0]; CPostEffects::m_DarknessFilterAlpha
5B2CDA:  BX              LR
