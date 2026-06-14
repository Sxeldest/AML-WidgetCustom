; =========================================================
; Game Engine Function: _ZN12CPostEffects40InfraredVisionSetLightsForDefaultObjectsEv
; Address            : 0x5B6E18 - 0x5B6E38
; =========================================================

5B6E18:  LDR             R0, =(_ZN12CPostEffects17m_bInfraredVisionE_ptr - 0x5B6E1E)
5B6E1A:  ADD             R0, PC; _ZN12CPostEffects17m_bInfraredVisionE_ptr
5B6E1C:  LDR             R0, [R0]; CPostEffects::m_bInfraredVision ...
5B6E1E:  LDRB            R0, [R0]; CPostEffects::m_bInfraredVision
5B6E20:  CMP             R0, #0
5B6E22:  IT EQ
5B6E24:  BXEQ            LR
5B6E26:  LDR             R0, =(_ZN12CPostEffects13m_bInCutsceneE_ptr - 0x5B6E2C)
5B6E28:  ADD             R0, PC; _ZN12CPostEffects13m_bInCutsceneE_ptr
5B6E2A:  LDR             R0, [R0]; CPostEffects::m_bInCutscene ...
5B6E2C:  LDRB            R0, [R0]; CPostEffects::m_bInCutscene
5B6E2E:  CMP             R0, #0
5B6E30:  IT EQ
5B6E32:  BEQ.W           sub_19EABC
5B6E36:  BX              LR
