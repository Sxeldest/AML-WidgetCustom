; =========================================================
; Game Engine Function: _ZN12CPostEffects37InfraredVisionSetLightsForHeatObjectsEv
; Address            : 0x5B6D00 - 0x5B6D20
; =========================================================

5B6D00:  LDR             R0, =(_ZN12CPostEffects17m_bInfraredVisionE_ptr - 0x5B6D06)
5B6D02:  ADD             R0, PC; _ZN12CPostEffects17m_bInfraredVisionE_ptr
5B6D04:  LDR             R0, [R0]; CPostEffects::m_bInfraredVision ...
5B6D06:  LDRB            R0, [R0]; CPostEffects::m_bInfraredVision
5B6D08:  CMP             R0, #0
5B6D0A:  IT EQ
5B6D0C:  BXEQ            LR
5B6D0E:  LDR             R0, =(_ZN12CPostEffects13m_bInCutsceneE_ptr - 0x5B6D14)
5B6D10:  ADD             R0, PC; _ZN12CPostEffects13m_bInCutsceneE_ptr
5B6D12:  LDR             R0, [R0]; CPostEffects::m_bInCutscene ...
5B6D14:  LDRB            R0, [R0]; CPostEffects::m_bInCutscene
5B6D16:  CMP             R0, #0
5B6D18:  IT EQ
5B6D1A:  BEQ.W           sub_1A0B10
5B6D1E:  BX              LR
