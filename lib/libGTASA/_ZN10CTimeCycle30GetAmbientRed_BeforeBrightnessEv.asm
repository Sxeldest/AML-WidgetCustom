; =========================================================
; Game Engine Function: _ZN10CTimeCycle30GetAmbientRed_BeforeBrightnessEv
; Address            : 0x4209C4 - 0x4209E2
; =========================================================

4209C4:  LDR             R0, =(gfLaRiotsLightMult_ptr - 0x4209CC)
4209C6:  LDR             R1, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x4209CE)
4209C8:  ADD             R0, PC; gfLaRiotsLightMult_ptr
4209CA:  ADD             R1, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
4209CC:  LDR             R0, [R0]; gfLaRiotsLightMult
4209CE:  LDR             R1, [R1]; CTimeCycle::m_CurrentColours ...
4209D0:  VLDR            S0, [R0]
4209D4:  VLDR            S2, [R1,#0x18]
4209D8:  VMUL.F32        S0, S2, S0
4209DC:  VMOV            R0, S0
4209E0:  BX              LR
