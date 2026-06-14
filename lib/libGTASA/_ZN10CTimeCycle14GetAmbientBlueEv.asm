; =========================================================
; Game Engine Function: _ZN10CTimeCycle14GetAmbientBlueEv
; Address            : 0x42096C - 0x42098A
; =========================================================

42096C:  LDR             R0, =(gfLaRiotsLightMult_ptr - 0x420974)
42096E:  LDR             R1, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x420976)
420970:  ADD             R0, PC; gfLaRiotsLightMult_ptr
420972:  ADD             R1, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
420974:  LDR             R0, [R0]; gfLaRiotsLightMult
420976:  LDR             R1, [R1]; CTimeCycle::m_CurrentColours ...
420978:  VLDR            S0, [R0]
42097C:  VLDR            S2, [R1,#8]
420980:  VMUL.F32        S0, S2, S0
420984:  VMOV            R0, S0
420988:  BX              LR
