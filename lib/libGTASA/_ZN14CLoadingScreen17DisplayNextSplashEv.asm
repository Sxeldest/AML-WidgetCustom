; =========================================================
; Game Engine Function: _ZN14CLoadingScreen17DisplayNextSplashEv
; Address            : 0x43B5AC - 0x43B612
; =========================================================

43B5AC:  LDR             R0, =(_ZN14CLoadingScreen21m_currDisplayedSplashE_ptr - 0x43B5B2)
43B5AE:  ADD             R0, PC; _ZN14CLoadingScreen21m_currDisplayedSplashE_ptr
43B5B0:  LDR             R0, [R0]; CLoadingScreen::m_currDisplayedSplash ...
43B5B2:  LDR             R0, [R0]; CLoadingScreen::m_currDisplayedSplash
43B5B4:  CMP             R0, #1
43B5B6:  BEQ             locret_43B610
43B5B8:  LDR             R0, =(_ZN14CLoadingScreen9m_bFadingE_ptr - 0x43B5BE)
43B5BA:  ADD             R0, PC; _ZN14CLoadingScreen9m_bFadingE_ptr
43B5BC:  LDR             R0, [R0]; CLoadingScreen::m_bFading ...
43B5BE:  LDRB            R0, [R0]; CLoadingScreen::m_bFading
43B5C0:  CMP             R0, #0
43B5C2:  IT NE
43B5C4:  BXNE            LR
43B5C6:  PUSH            {R4,R6,R7,LR}
43B5C8:  ADD             R7, SP, #0x10+var_8
43B5CA:  LDR             R0, =(Scene_ptr - 0x43B5D4)
43B5CC:  MOVS            R2, #0xFF
43B5CE:  LDR             R1, =(_ZN14CLoadingScreen11m_FadeAlphaE_ptr - 0x43B5D6)
43B5D0:  ADD             R0, PC; Scene_ptr
43B5D2:  ADD             R1, PC; _ZN14CLoadingScreen11m_FadeAlphaE_ptr
43B5D4:  LDR             R0, [R0]; Scene
43B5D6:  LDR             R1, [R1]; CLoadingScreen::m_FadeAlpha ...
43B5D8:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
43B5DA:  STRB            R2, [R1]; CLoadingScreen::m_FadeAlpha
43B5DC:  BLX             j__Z19RwCameraBeginUpdateP8RwCamera; RwCameraBeginUpdate(RwCamera *)
43B5E0:  CBZ             R0, loc_43B600
43B5E2:  BLX             j__Z14DefinedState2dv; DefinedState2d(void)
43B5E6:  BLX             j__ZN14CLoadingScreen12RenderSplashEv; CLoadingScreen::RenderSplash(void)
43B5EA:  BLX             j__ZN14CLoadingScreen16RenderLoadingBarEv; CLoadingScreen::RenderLoadingBar(void)
43B5EE:  LDR             R0, =(Scene_ptr - 0x43B5F4)
43B5F0:  ADD             R0, PC; Scene_ptr
43B5F2:  LDR             R4, [R0]; Scene
43B5F4:  LDR             R0, [R4,#(dword_9FC93C - 0x9FC938)]
43B5F6:  BLX             j__Z17RwCameraEndUpdateP8RwCamera; RwCameraEndUpdate(RwCamera *)
43B5FA:  LDR             R0, [R4,#(dword_9FC93C - 0x9FC938)]
43B5FC:  BLX             j__Z18RsCameraShowRasterP8RwCamera; RsCameraShowRaster(RwCamera *)
43B600:  LDR             R0, =(_ZN14CLoadingScreen21m_currDisplayedSplashE_ptr - 0x43B606)
43B602:  ADD             R0, PC; _ZN14CLoadingScreen21m_currDisplayedSplashE_ptr
43B604:  LDR             R0, [R0]; CLoadingScreen::m_currDisplayedSplash ...
43B606:  LDR             R1, [R0]; CLoadingScreen::m_currDisplayedSplash
43B608:  ADDS            R1, #1
43B60A:  STR             R1, [R0]; CLoadingScreen::m_currDisplayedSplash
43B60C:  POP.W           {R4,R6,R7,LR}
43B610:  BX              LR
