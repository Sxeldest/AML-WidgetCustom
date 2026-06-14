; =========================================================
; Game Engine Function: _ZN14CLoadingScreen11StartFadingEv
; Address            : 0x43BA10 - 0x43BA56
; =========================================================

43BA10:  PUSH            {R7,LR}
43BA12:  MOV             R7, SP
43BA14:  LDR             R0, =(_ZN14CLoadingScreen11m_FadeAlphaE_ptr - 0x43BA1E)
43BA16:  MOVS            R2, #0
43BA18:  LDR             R1, =(_ZN14CLoadingScreen9m_bFadingE_ptr - 0x43BA20)
43BA1A:  ADD             R0, PC; _ZN14CLoadingScreen11m_FadeAlphaE_ptr
43BA1C:  ADD             R1, PC; _ZN14CLoadingScreen9m_bFadingE_ptr
43BA1E:  LDR             R0, [R0]; CLoadingScreen::m_FadeAlpha ...
43BA20:  LDR             R1, [R1]; CLoadingScreen::m_bFading ...
43BA22:  STRB            R2, [R0]; CLoadingScreen::m_FadeAlpha
43BA24:  MOVS            R0, #1
43BA26:  STRB            R0, [R1]; CLoadingScreen::m_bFading
43BA28:  BLX             j__Z7RsTimerv; RsTimer(void)
43BA2C:  VMOV            S0, R0
43BA30:  VLDR            S2, =1000.0
43BA34:  LDR             R0, =(_ZN14CLoadingScreen11m_PauseTimeE_ptr - 0x43BA3E)
43BA36:  VCVT.F32.U32    S0, S0
43BA3A:  ADD             R0, PC; _ZN14CLoadingScreen11m_PauseTimeE_ptr
43BA3C:  LDR             R0, [R0]; CLoadingScreen::m_PauseTime ...
43BA3E:  VDIV.F32        S0, S0, S2
43BA42:  VLDR            S2, [R0]
43BA46:  LDR             R0, =(_ZN14CLoadingScreen15m_StartFadeTimeE_ptr - 0x43BA50)
43BA48:  VSUB.F32        S0, S0, S2
43BA4C:  ADD             R0, PC; _ZN14CLoadingScreen15m_StartFadeTimeE_ptr
43BA4E:  LDR             R0, [R0]; CLoadingScreen::m_StartFadeTime ...
43BA50:  VSTR            S0, [R0]
43BA54:  POP             {R7,PC}
