; =========================================================
; Game Engine Function: _ZN14CLoadingScreen16DoPCTitleFadeOutEv
; Address            : 0x43B238 - 0x43B2B2
; =========================================================

43B238:  PUSH            {R4-R7,LR}
43B23A:  ADD             R7, SP, #0xC
43B23C:  PUSH.W          {R11}
43B240:  VPUSH           {D8}
43B244:  LDR             R0, =(_ZN14CLoadingScreen21m_currDisplayedSplashE_ptr - 0x43B252)
43B246:  MOVS            R3, #0
43B248:  LDR             R1, =(_ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr - 0x43B254)
43B24A:  MOVS            R4, #0xC8
43B24C:  LDR             R2, =(_ZN14CLoadingScreen9m_bFadingE_ptr - 0x43B258)
43B24E:  ADD             R0, PC; _ZN14CLoadingScreen21m_currDisplayedSplashE_ptr
43B250:  ADD             R1, PC; _ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr
43B252:  MOVS            R6, #0xFF
43B254:  ADD             R2, PC; _ZN14CLoadingScreen9m_bFadingE_ptr
43B256:  LDR             R0, [R0]; CLoadingScreen::m_currDisplayedSplash ...
43B258:  LDR             R1, [R1]; CLoadingScreen::m_bFadeInNextSplashFromBlack ...
43B25A:  LDR             R2, [R2]; CLoadingScreen::m_bFading ...
43B25C:  STR             R3, [R0]; CLoadingScreen::m_currDisplayedSplash
43B25E:  MOVS            R0, #1
43B260:  STRB            R0, [R1]; CLoadingScreen::m_bFadeInNextSplashFromBlack
43B262:  STRB            R0, [R2]; CLoadingScreen::m_bFading
43B264:  LDR             R0, =(_ZN14CLoadingScreen11m_FadeAlphaE_ptr - 0x43B26A)
43B266:  ADD             R0, PC; _ZN14CLoadingScreen11m_FadeAlphaE_ptr ; this
43B268:  LDR             R5, [R0]; CLoadingScreen::m_FadeAlpha ...
43B26A:  STRB            R6, [R5]; CLoadingScreen::m_FadeAlpha
43B26C:  BLX             j__ZN14CLoadingScreen15DisplayPCScreenEv; CLoadingScreen::DisplayPCScreen(void)
43B270:  SUBS            R4, #1
43B272:  BNE             loc_43B26A
43B274:  LDR             R0, =(_ZN14CLoadingScreen11m_FadeAlphaE_ptr - 0x43B280)
43B276:  VMOV.F32        S16, #5.0
43B27A:  MOVS            R4, #0x32 ; '2'
43B27C:  ADD             R0, PC; _ZN14CLoadingScreen11m_FadeAlphaE_ptr
43B27E:  LDR             R5, [R0]; CLoadingScreen::m_FadeAlpha ...
43B280:  VMOV            S0, R4
43B284:  VCVT.F32.U32    S0, S0
43B288:  VMUL.F32        S0, S0, S16
43B28C:  VCVT.U32.F32    S0, S0
43B290:  VMOV            R0, S0; this
43B294:  STRB            R0, [R5]; CLoadingScreen::m_FadeAlpha
43B296:  BLX             j__ZN14CLoadingScreen15DisplayPCScreenEv; CLoadingScreen::DisplayPCScreen(void)
43B29A:  SUBS            R4, #1
43B29C:  BNE             loc_43B280
43B29E:  LDR             R0, =(_ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr - 0x43B2A6)
43B2A0:  MOVS            R1, #1
43B2A2:  ADD             R0, PC; _ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr
43B2A4:  LDR             R0, [R0]; CLoadingScreen::m_bFadeInNextSplashFromBlack ...
43B2A6:  STRB            R1, [R0]; CLoadingScreen::m_bFadeInNextSplashFromBlack
43B2A8:  VPOP            {D8}
43B2AC:  POP.W           {R11}
43B2B0:  POP             {R4-R7,PC}
