; =========================================================
; Game Engine Function: _ZN10CTimeCycle32GetAmbientGreen_BeforeBrightnessEv
; Address            : 0x4209EC - 0x420A0A
; =========================================================

4209EC:  LDR             R0, =(gfLaRiotsLightMult_ptr - 0x4209F4)
4209EE:  LDR             R1, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x4209F6)
4209F0:  ADD             R0, PC; gfLaRiotsLightMult_ptr
4209F2:  ADD             R1, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
4209F4:  LDR             R0, [R0]; gfLaRiotsLightMult
4209F6:  LDR             R1, [R1]; CTimeCycle::m_CurrentColours ...
4209F8:  VLDR            S0, [R0]
4209FC:  VLDR            S2, [R1,#0x1C]
420A00:  VMUL.F32        S0, S2, S0
420A04:  VMOV            R0, S0
420A08:  BX              LR
