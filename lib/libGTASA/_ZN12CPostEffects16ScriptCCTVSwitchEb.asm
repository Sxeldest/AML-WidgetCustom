; =========================================================
; Game Engine Function: _ZN12CPostEffects16ScriptCCTVSwitchEb
; Address            : 0x5B2CE8 - 0x5B2CF2
; =========================================================

5B2CE8:  LDR             R1, =(_ZN12CPostEffects7m_bCCTVE_ptr - 0x5B2CEE)
5B2CEA:  ADD             R1, PC; _ZN12CPostEffects7m_bCCTVE_ptr
5B2CEC:  LDR             R1, [R1]; CPostEffects::m_bCCTV ...
5B2CEE:  STRB            R0, [R1]; CPostEffects::m_bCCTV
5B2CF0:  BX              LR
