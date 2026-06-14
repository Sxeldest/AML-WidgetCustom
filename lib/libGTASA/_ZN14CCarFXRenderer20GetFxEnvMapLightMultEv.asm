; =========================================================
; Game Engine Function: _ZN14CCarFXRenderer20GetFxEnvMapLightMultEv
; Address            : 0x2C9FF0 - 0x2C9FFA
; =========================================================

2C9FF0:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline20m_EnvMapLightingMultE_ptr - 0x2C9FF6)
2C9FF2:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline20m_EnvMapLightingMultE_ptr
2C9FF4:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_EnvMapLightingMult ...
2C9FF6:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_EnvMapLightingMult
2C9FF8:  BX              LR
