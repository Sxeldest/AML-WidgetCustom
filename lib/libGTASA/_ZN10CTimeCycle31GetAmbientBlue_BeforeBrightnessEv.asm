; =========================================================
; Game Engine Function: _ZN10CTimeCycle31GetAmbientBlue_BeforeBrightnessEv
; Address            : 0x420A14 - 0x420A32
; =========================================================

420A14:  LDR             R0, =(gfLaRiotsLightMult_ptr - 0x420A1C)
420A16:  LDR             R1, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x420A1E)
420A18:  ADD             R0, PC; gfLaRiotsLightMult_ptr
420A1A:  ADD             R1, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
420A1C:  LDR             R0, [R0]; gfLaRiotsLightMult
420A1E:  LDR             R1, [R1]; CTimeCycle::m_CurrentColours ...
420A20:  VLDR            S0, [R0]
420A24:  VLDR            S2, [R1,#0x20]
420A28:  VMUL.F32        S0, S2, S0
420A2C:  VMOV            R0, S0
420A30:  BX              LR
