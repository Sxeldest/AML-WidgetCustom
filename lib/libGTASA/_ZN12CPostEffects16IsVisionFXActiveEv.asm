; =========================================================
; Game Engine Function: _ZN12CPostEffects16IsVisionFXActiveEv
; Address            : 0x5B6EA4 - 0x5B6ED0
; =========================================================

5B6EA4:  LDR             R0, =(_ZN12CPostEffects13m_bInCutsceneE_ptr - 0x5B6EAA)
5B6EA6:  ADD             R0, PC; _ZN12CPostEffects13m_bInCutsceneE_ptr
5B6EA8:  LDR             R0, [R0]; CPostEffects::m_bInCutscene ...
5B6EAA:  LDRB            R0, [R0]; CPostEffects::m_bInCutscene
5B6EAC:  CMP             R0, #0
5B6EAE:  ITT NE
5B6EB0:  MOVNE           R0, #0
5B6EB2:  BXNE            LR
5B6EB4:  LDR             R0, =(_ZN12CPostEffects14m_bNightVisionE_ptr - 0x5B6EBC)
5B6EB6:  LDR             R1, =(_ZN12CPostEffects17m_bInfraredVisionE_ptr - 0x5B6EBE)
5B6EB8:  ADD             R0, PC; _ZN12CPostEffects14m_bNightVisionE_ptr
5B6EBA:  ADD             R1, PC; _ZN12CPostEffects17m_bInfraredVisionE_ptr
5B6EBC:  LDR             R0, [R0]; CPostEffects::m_bNightVision ...
5B6EBE:  LDR             R1, [R1]; CPostEffects::m_bInfraredVision ...
5B6EC0:  LDRB            R0, [R0]; CPostEffects::m_bNightVision
5B6EC2:  LDRB            R1, [R1]; CPostEffects::m_bInfraredVision
5B6EC4:  ORRS            R0, R1
5B6EC6:  UXTB            R0, R0
5B6EC8:  CMP             R0, #0
5B6ECA:  IT NE
5B6ECC:  MOVNE           R0, #1
5B6ECE:  BX              LR
