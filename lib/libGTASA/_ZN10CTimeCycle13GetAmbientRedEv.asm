; =========================================================
; Game Engine Function: _ZN10CTimeCycle13GetAmbientRedEv
; Address            : 0x42091C - 0x42093A
; =========================================================

42091C:  LDR             R0, =(gfLaRiotsLightMult_ptr - 0x420924)
42091E:  LDR             R1, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x420926)
420920:  ADD             R0, PC; gfLaRiotsLightMult_ptr
420922:  ADD             R1, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
420924:  LDR             R0, [R0]; gfLaRiotsLightMult
420926:  LDR             R1, [R1]; CTimeCycle::m_CurrentColours ...
420928:  VLDR            S0, [R0]
42092C:  VLDR            S2, [R1]
420930:  VMUL.F32        S0, S2, S0
420934:  VMOV            R0, S0
420938:  BX              LR
