; =========================================================
; Game Engine Function: _ZN14CLoadingScreen14NewChunkLoadedEv
; Address            : 0x43AEBC - 0x43AF10
; =========================================================

43AEBC:  LDR             R0, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x43AEC2)
43AEBE:  ADD             R0, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
43AEC0:  LDR             R0, [R0]; CLoadingScreen::m_bActive ...
43AEC2:  LDRB            R0, [R0]; CLoadingScreen::m_bActive
43AEC4:  CMP             R0, #0
43AEC6:  IT EQ
43AEC8:  BXEQ            LR
43AECA:  LDR             R0, =(_ZN14CLoadingScreen17m_numChunksLoadedE_ptr - 0x43AED2)
43AECC:  LDR             R1, =(_ZN14CLoadingScreen15m_nChunksToLoadE_ptr - 0x43AED8)
43AECE:  ADD             R0, PC; _ZN14CLoadingScreen17m_numChunksLoadedE_ptr
43AED0:  VLDR            S4, =99.999
43AED4:  ADD             R1, PC; _ZN14CLoadingScreen15m_nChunksToLoadE_ptr
43AED6:  LDR             R3, =(_ZN14CLoadingScreen15m_PercentLoadedE_ptr - 0x43AEE0)
43AED8:  LDR             R0, [R0]; CLoadingScreen::m_numChunksLoaded ...
43AEDA:  LDR             R1, [R1]; CLoadingScreen::m_nChunksToLoad ...
43AEDC:  ADD             R3, PC; _ZN14CLoadingScreen15m_PercentLoadedE_ptr
43AEDE:  LDR             R2, [R0]; CLoadingScreen::m_numChunksLoaded
43AEE0:  LDR.W           R12, [R3]; CLoadingScreen::m_PercentLoaded ...
43AEE4:  MOVS            R3, #1
43AEE6:  VMOV            S0, R2
43AEEA:  VCVT.F32.S32    S0, S0
43AEEE:  VLDR            S2, [R1]
43AEF2:  LDR             R1, =(_ZN14CLoadingScreen18m_chunkBarAppearedE_ptr - 0x43AEFC)
43AEF4:  VCVT.F32.S32    S2, S2
43AEF8:  ADD             R1, PC; _ZN14CLoadingScreen18m_chunkBarAppearedE_ptr
43AEFA:  LDR             R1, [R1]; CLoadingScreen::m_chunkBarAppeared ...
43AEFC:  VMUL.F32        S0, S0, S4
43AF00:  STR             R3, [R1]; CLoadingScreen::m_chunkBarAppeared
43AF02:  ADDS            R1, R2, #1
43AF04:  STR             R1, [R0]; CLoadingScreen::m_numChunksLoaded
43AF06:  VDIV.F32        S0, S0, S2
43AF0A:  VSTR            S0, [R12]
43AF0E:  BX              LR
