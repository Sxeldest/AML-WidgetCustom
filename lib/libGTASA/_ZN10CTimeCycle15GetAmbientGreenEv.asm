; =========================================================
; Game Engine Function: _ZN10CTimeCycle15GetAmbientGreenEv
; Address            : 0x420944 - 0x420962
; =========================================================

420944:  LDR             R0, =(gfLaRiotsLightMult_ptr - 0x42094C)
420946:  LDR             R1, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x42094E)
420948:  ADD             R0, PC; gfLaRiotsLightMult_ptr
42094A:  ADD             R1, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
42094C:  LDR             R0, [R0]; gfLaRiotsLightMult
42094E:  LDR             R1, [R1]; CTimeCycle::m_CurrentColours ...
420950:  VLDR            S0, [R0]
420954:  VLDR            S2, [R1,#4]
420958:  VMUL.F32        S0, S2, S0
42095C:  VMOV            R0, S0
420960:  BX              LR
