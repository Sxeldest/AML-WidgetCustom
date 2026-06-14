; =========================================================
; Game Engine Function: _ZN12CPostEffects35FilterFX_StoreAndSetDayNightBalanceEv
; Address            : 0x5B6E40 - 0x5B6E68
; =========================================================

5B6E40:  LDR             R0, =(_ZN12CPostEffects13m_bInCutsceneE_ptr - 0x5B6E46)
5B6E42:  ADD             R0, PC; _ZN12CPostEffects13m_bInCutsceneE_ptr
5B6E44:  LDR             R0, [R0]; CPostEffects::m_bInCutscene ...
5B6E46:  LDRB            R0, [R0]; CPostEffects::m_bInCutscene
5B6E48:  CMP             R0, #0
5B6E4A:  IT NE
5B6E4C:  BXNE            LR
5B6E4E:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr - 0x5B6E56)
5B6E50:  LDR             R1, =(_ZN12CPostEffects25m_VisionFXDayNightBalanceE_ptr - 0x5B6E5A)
5B6E52:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr
5B6E54:  LDR             R2, =(dword_A48168 - 0x5B6E5E)
5B6E56:  ADD             R1, PC; _ZN12CPostEffects25m_VisionFXDayNightBalanceE_ptr
5B6E58:  LDR             R0, [R0]; CCustomBuildingDNPipeline::m_fDNBalanceParam ...
5B6E5A:  ADD             R2, PC; dword_A48168
5B6E5C:  LDR             R1, [R1]; CPostEffects::m_VisionFXDayNightBalance ...
5B6E5E:  LDR             R3, [R0]; CCustomBuildingDNPipeline::m_fDNBalanceParam
5B6E60:  LDR             R1, [R1]; CPostEffects::m_VisionFXDayNightBalance
5B6E62:  STR             R3, [R2]
5B6E64:  STR             R1, [R0]; CCustomBuildingDNPipeline::m_fDNBalanceParam
5B6E66:  BX              LR
