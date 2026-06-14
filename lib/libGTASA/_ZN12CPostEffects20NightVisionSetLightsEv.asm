; =========================================================
; Game Engine Function: _ZN12CPostEffects20NightVisionSetLightsEv
; Address            : 0x5B6BE4 - 0x5B6C04
; =========================================================

5B6BE4:  LDR             R0, =(_ZN12CPostEffects14m_bNightVisionE_ptr - 0x5B6BEA)
5B6BE6:  ADD             R0, PC; _ZN12CPostEffects14m_bNightVisionE_ptr
5B6BE8:  LDR             R0, [R0]; CPostEffects::m_bNightVision ...
5B6BEA:  LDRB            R0, [R0]; CPostEffects::m_bNightVision
5B6BEC:  CMP             R0, #0
5B6BEE:  IT EQ
5B6BF0:  BXEQ            LR
5B6BF2:  LDR             R0, =(_ZN12CPostEffects13m_bInCutsceneE_ptr - 0x5B6BF8)
5B6BF4:  ADD             R0, PC; _ZN12CPostEffects13m_bInCutsceneE_ptr
5B6BF6:  LDR             R0, [R0]; CPostEffects::m_bInCutscene ...
5B6BF8:  LDRB            R0, [R0]; CPostEffects::m_bInCutscene
5B6BFA:  CMP             R0, #0
5B6BFC:  IT EQ
5B6BFE:  BEQ.W           sub_1916E8
5B6C02:  BX              LR
