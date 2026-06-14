; =========================================================
; Game Engine Function: _ZN14CLoadingScreen6UpdateEv
; Address            : 0x43B68C - 0x43B958
; =========================================================

43B68C:  PUSH            {R7,LR}
43B68E:  MOV             R7, SP
43B690:  LDR             R0, =(_ZN14CLoadingScreen17m_TimeBarAppearedE_ptr - 0x43B696)
43B692:  ADD             R0, PC; _ZN14CLoadingScreen17m_TimeBarAppearedE_ptr
43B694:  LDR             R0, [R0]; CLoadingScreen::m_TimeBarAppeared ...
43B696:  VLDR            S0, [R0]
43B69A:  VCMPE.F32       S0, #0.0
43B69E:  VMRS            APSR_nzcv, FPSCR
43B6A2:  BLE             loc_43B704
43B6A4:  BLX             j__Z7RsTimerv; RsTimer(void)
43B6A8:  VMOV            S0, R0
43B6AC:  VLDR            S2, =1000.0
43B6B0:  LDR             R0, =(_ZN14CLoadingScreen11m_PauseTimeE_ptr - 0x43B6BC)
43B6B2:  VCVT.F32.U32    S0, S0
43B6B6:  LDR             R1, =(_ZN14CLoadingScreen20m_TimeStartedLoadingE_ptr - 0x43B6C0)
43B6B8:  ADD             R0, PC; _ZN14CLoadingScreen11m_PauseTimeE_ptr
43B6BA:  LDR             R2, =(_ZN14CLoadingScreen17m_TimeBarAppearedE_ptr - 0x43B6C8)
43B6BC:  ADD             R1, PC; _ZN14CLoadingScreen20m_TimeStartedLoadingE_ptr
43B6BE:  VLDR            S6, =100.0
43B6C2:  LDR             R0, [R0]; CLoadingScreen::m_PauseTime ...
43B6C4:  ADD             R2, PC; _ZN14CLoadingScreen17m_TimeBarAppearedE_ptr
43B6C6:  VDIV.F32        S0, S0, S2
43B6CA:  VLDR            S2, [R0]
43B6CE:  LDR             R0, [R1]; CLoadingScreen::m_TimeStartedLoading ...
43B6D0:  VSUB.F32        S0, S0, S2
43B6D4:  LDR             R1, [R2]; CLoadingScreen::m_TimeBarAppeared ...
43B6D6:  VLDR            S2, [R0]
43B6DA:  VLDR            S4, [R1]
43B6DE:  LDR             R0, =(_ZN14CLoadingScreen15m_PercentLoadedE_ptr - 0x43B6E8)
43B6E0:  VSUB.F32        S2, S4, S2
43B6E4:  ADD             R0, PC; _ZN14CLoadingScreen15m_PercentLoadedE_ptr
43B6E6:  VSUB.F32        S0, S0, S4
43B6EA:  VLDR            S4, =36.0
43B6EE:  LDR             R0, [R0]; CLoadingScreen::m_PercentLoaded ...
43B6F0:  VSUB.F32        S2, S4, S2
43B6F4:  VMUL.F32        S0, S0, S6
43B6F8:  VDIV.F32        S0, S0, S2
43B6FC:  VMIN.F32        D0, D0, D3
43B700:  VSTR            S0, [R0]
43B704:  LDR             R0, =(_ZN14CLoadingScreen16m_bReadyToDeleteE_ptr - 0x43B70A)
43B706:  ADD             R0, PC; _ZN14CLoadingScreen16m_bReadyToDeleteE_ptr
43B708:  LDR             R0, [R0]; CLoadingScreen::m_bReadyToDelete ...
43B70A:  LDRB            R0, [R0]; CLoadingScreen::m_bReadyToDelete
43B70C:  CBZ             R0, loc_43B77E
43B70E:  LDR             R0, =(_ZN14CLoadingScreen9m_bFadingE_ptr - 0x43B714)
43B710:  ADD             R0, PC; _ZN14CLoadingScreen9m_bFadingE_ptr
43B712:  LDR             R0, [R0]; CLoadingScreen::m_bFading ...
43B714:  LDRB            R0, [R0]; CLoadingScreen::m_bFading
43B716:  CMP             R0, #0
43B718:  BEQ.W           loc_43B850
43B71C:  BLX             j__Z7RsTimerv; RsTimer(void)
43B720:  VMOV            S0, R0
43B724:  VLDR            S2, =1000.0
43B728:  LDR             R0, =(_ZN14CLoadingScreen11m_PauseTimeE_ptr - 0x43B734)
43B72A:  VCVT.F32.U32    S0, S0
43B72E:  LDR             R1, =(_ZN14CLoadingScreen15m_StartFadeTimeE_ptr - 0x43B736)
43B730:  ADD             R0, PC; _ZN14CLoadingScreen11m_PauseTimeE_ptr
43B732:  ADD             R1, PC; _ZN14CLoadingScreen15m_StartFadeTimeE_ptr
43B734:  LDR             R0, [R0]; CLoadingScreen::m_PauseTime ...
43B736:  VDIV.F32        S0, S0, S2
43B73A:  VLDR            S2, [R0]
43B73E:  LDR             R0, [R1]; CLoadingScreen::m_StartFadeTime ...
43B740:  VSUB.F32        S0, S0, S2
43B744:  LDR             R1, =(_ZN14CLoadingScreen21m_currDisplayedSplashE_ptr - 0x43B74E)
43B746:  VLDR            S2, [R0]
43B74A:  ADD             R1, PC; _ZN14CLoadingScreen21m_currDisplayedSplashE_ptr
43B74C:  LDR             R0, [R1]; CLoadingScreen::m_currDisplayedSplash ...
43B74E:  VSUB.F32        S0, S0, S2
43B752:  LDR             R0, [R0]; CLoadingScreen::m_currDisplayedSplash
43B754:  CMP             R0, #0
43B756:  BLT.W           loc_43B85A
43B75A:  LDR             R0, =(_ZN14CLoadingScreen14m_bLegalScreenE_ptr - 0x43B766)
43B75C:  VMOV.F32        S4, #2.0
43B760:  LDR             R1, =(_ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr - 0x43B76C)
43B762:  ADD             R0, PC; _ZN14CLoadingScreen14m_bLegalScreenE_ptr
43B764:  VLDR            S2, =0.6
43B768:  ADD             R1, PC; _ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr
43B76A:  LDR             R0, [R0]; CLoadingScreen::m_bLegalScreen ...
43B76C:  LDR             R1, [R1]; CLoadingScreen::m_bFadeInNextSplashFromBlack ...
43B76E:  LDRB            R0, [R0]; CLoadingScreen::m_bLegalScreen
43B770:  LDRB            R1, [R1]; CLoadingScreen::m_bFadeInNextSplashFromBlack
43B772:  ORRS            R0, R1
43B774:  LSLS            R0, R0, #0x18
43B776:  IT EQ
43B778:  VMOVEQ.F32      S2, S4
43B77C:  B               loc_43B85E
43B77E:  LDR             R0, =(_ZN14CLoadingScreen14m_bLegalScreenE_ptr - 0x43B784)
43B780:  ADD             R0, PC; _ZN14CLoadingScreen14m_bLegalScreenE_ptr
43B782:  LDR             R0, [R0]; CLoadingScreen::m_bLegalScreen ...
43B784:  LDRB            R0, [R0]; CLoadingScreen::m_bLegalScreen
43B786:  CBZ             R0, loc_43B7CA
43B788:  BLX             j__Z7RsTimerv; RsTimer(void)
43B78C:  VMOV            S0, R0
43B790:  VLDR            S2, =1000.0
43B794:  LDR             R0, =(_ZN14CLoadingScreen11m_PauseTimeE_ptr - 0x43B7A4)
43B796:  VMOV.F32        S4, #5.5
43B79A:  VCVT.F32.U32    S0, S0
43B79E:  LDR             R1, =(_ZN14CLoadingScreen20m_TimeStartedLoadingE_ptr - 0x43B7A6)
43B7A0:  ADD             R0, PC; _ZN14CLoadingScreen11m_PauseTimeE_ptr
43B7A2:  ADD             R1, PC; _ZN14CLoadingScreen20m_TimeStartedLoadingE_ptr
43B7A4:  LDR             R0, [R0]; CLoadingScreen::m_PauseTime ...
43B7A6:  VDIV.F32        S0, S0, S2
43B7AA:  VLDR            S2, [R0]
43B7AE:  LDR             R0, [R1]; this
43B7B0:  VSUB.F32        S0, S0, S2
43B7B4:  VLDR            S2, [R0]
43B7B8:  VSUB.F32        S0, S0, S2
43B7BC:  VCMPE.F32       S0, S4
43B7C0:  VMRS            APSR_nzcv, FPSCR
43B7C4:  IT GT
43B7C6:  BLXGT           j__ZN14CLoadingScreen17DisplayNextSplashEv; CLoadingScreen::DisplayNextSplash(void)
43B7CA:  LDR             R0, =(_ZN14CLoadingScreen15m_bSignalDeleteE_ptr - 0x43B7D0)
43B7CC:  ADD             R0, PC; _ZN14CLoadingScreen15m_bSignalDeleteE_ptr
43B7CE:  LDR             R0, [R0]; CLoadingScreen::m_bSignalDelete ...
43B7D0:  LDRB            R0, [R0]; CLoadingScreen::m_bSignalDelete
43B7D2:  CMP             R0, #0
43B7D4:  BEQ             loc_43B70E
43B7D6:  LDR             R0, =(_ZN14CLoadingScreen9m_bFadingE_ptr - 0x43B7DC)
43B7D8:  ADD             R0, PC; _ZN14CLoadingScreen9m_bFadingE_ptr
43B7DA:  LDR             R0, [R0]; CLoadingScreen::m_bFading ...
43B7DC:  LDRB            R0, [R0]; CLoadingScreen::m_bFading
43B7DE:  CMP             R0, #0
43B7E0:  BNE             loc_43B716
43B7E2:  LDR             R1, =(_ZN14CLoadingScreen15m_PercentLoadedE_ptr - 0x43B7EC)
43B7E4:  VLDR            S2, =100.0
43B7E8:  ADD             R1, PC; _ZN14CLoadingScreen15m_PercentLoadedE_ptr
43B7EA:  LDR             R1, [R1]; CLoadingScreen::m_PercentLoaded ...
43B7EC:  VLDR            S0, [R1]
43B7F0:  VCMPE.F32       S0, S2
43B7F4:  VMRS            APSR_nzcv, FPSCR
43B7F8:  BLT             loc_43B716
43B7FA:  LDR             R0, =(_ZN14CLoadingScreen27m_bFadeOutCurrSplashToBlackE_ptr - 0x43B804)
43B7FC:  LDR             R1, =(_ZN14CLoadingScreen11m_FadeAlphaE_ptr - 0x43B808)
43B7FE:  LDR             R2, =(_ZN14CLoadingScreen16m_bReadyToDeleteE_ptr - 0x43B80A)
43B800:  ADD             R0, PC; _ZN14CLoadingScreen27m_bFadeOutCurrSplashToBlackE_ptr
43B802:  LDR             R3, =(_ZN14CLoadingScreen9m_bFadingE_ptr - 0x43B80E)
43B804:  ADD             R1, PC; _ZN14CLoadingScreen11m_FadeAlphaE_ptr
43B806:  ADD             R2, PC; _ZN14CLoadingScreen16m_bReadyToDeleteE_ptr
43B808:  LDR             R0, [R0]; CLoadingScreen::m_bFadeOutCurrSplashToBlack ...
43B80A:  ADD             R3, PC; _ZN14CLoadingScreen9m_bFadingE_ptr
43B80C:  LDR.W           R12, [R1]; CLoadingScreen::m_FadeAlpha ...
43B810:  LDR             R2, [R2]; CLoadingScreen::m_bReadyToDelete ...
43B812:  MOVS            R1, #1
43B814:  LDR             R3, [R3]; CLoadingScreen::m_bFading ...
43B816:  STRB            R1, [R0]; CLoadingScreen::m_bFadeOutCurrSplashToBlack
43B818:  MOVS            R0, #0
43B81A:  STRB            R1, [R2]; CLoadingScreen::m_bReadyToDelete
43B81C:  STRB            R1, [R3]; CLoadingScreen::m_bFading
43B81E:  STRB.W          R0, [R12]; CLoadingScreen::m_FadeAlpha
43B822:  BLX             j__Z7RsTimerv; RsTimer(void)
43B826:  VMOV            S0, R0
43B82A:  VLDR            S2, =1000.0
43B82E:  LDR             R0, =(_ZN14CLoadingScreen11m_PauseTimeE_ptr - 0x43B838)
43B830:  VCVT.F32.U32    S0, S0
43B834:  ADD             R0, PC; _ZN14CLoadingScreen11m_PauseTimeE_ptr
43B836:  LDR             R0, [R0]; CLoadingScreen::m_PauseTime ...
43B838:  VDIV.F32        S0, S0, S2
43B83C:  VLDR            S2, [R0]
43B840:  LDR             R0, =(_ZN14CLoadingScreen15m_StartFadeTimeE_ptr - 0x43B84A)
43B842:  VSUB.F32        S0, S0, S2
43B846:  ADD             R0, PC; _ZN14CLoadingScreen15m_StartFadeTimeE_ptr
43B848:  LDR             R0, [R0]; CLoadingScreen::m_StartFadeTime ...
43B84A:  VSTR            S0, [R0]
43B84E:  B               loc_43B70E
43B850:  LDR             R0, =(_ZN14CLoadingScreen11m_FadeAlphaE_ptr - 0x43B858)
43B852:  MOVS            R1, #0xFF
43B854:  ADD             R0, PC; _ZN14CLoadingScreen11m_FadeAlphaE_ptr
43B856:  LDR             R0, [R0]; CLoadingScreen::m_FadeAlpha ...
43B858:  B               loc_43B8D8
43B85A:  VMOV.F32        S2, #2.0
43B85E:  VCMPE.F32       S0, S2
43B862:  VMRS            APSR_nzcv, FPSCR
43B866:  BLE             loc_43B8BE
43B868:  LDR             R0, =(_ZN14CLoadingScreen11m_FadeAlphaE_ptr - 0x43B874)
43B86A:  MOVS            R2, #0xFF
43B86C:  LDR             R3, =(_ZN14CLoadingScreen14m_bLegalScreenE_ptr - 0x43B87A)
43B86E:  LDR             R1, =(_ZN14CLoadingScreen9m_bFadingE_ptr - 0x43B87C)
43B870:  ADD             R0, PC; _ZN14CLoadingScreen11m_FadeAlphaE_ptr
43B872:  LDR.W           R12, =(_ZN14CLoadingScreen27m_bFadeOutCurrSplashToBlackE_ptr - 0x43B880)
43B876:  ADD             R3, PC; _ZN14CLoadingScreen14m_bLegalScreenE_ptr
43B878:  ADD             R1, PC; _ZN14CLoadingScreen9m_bFadingE_ptr
43B87A:  LDR             R0, [R0]; CLoadingScreen::m_FadeAlpha ...
43B87C:  ADD             R12, PC; _ZN14CLoadingScreen27m_bFadeOutCurrSplashToBlackE_ptr
43B87E:  LDR             R3, [R3]; CLoadingScreen::m_bLegalScreen ...
43B880:  LDR.W           LR, [R1]; CLoadingScreen::m_bFading ...
43B884:  LDR.W           R1, [R12]; CLoadingScreen::m_bFadeOutCurrSplashToBlack ...
43B888:  STRB            R2, [R0]; CLoadingScreen::m_FadeAlpha
43B88A:  MOVS            R0, #0
43B88C:  LDRB            R2, [R3]; CLoadingScreen::m_bLegalScreen
43B88E:  LDRB            R1, [R1]; CLoadingScreen::m_bFadeOutCurrSplashToBlack
43B890:  CMP             R2, #0
43B892:  STRB.W          R0, [LR]; CLoadingScreen::m_bFading
43B896:  IT NE
43B898:  CMPNE           R1, #0
43B89A:  BEQ             loc_43B946
43B89C:  LDR             R0, =(_ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr - 0x43B8A8)
43B89E:  MOVS            R3, #1
43B8A0:  LDR             R1, =(_ZN14CLoadingScreen27m_bFadeOutCurrSplashToBlackE_ptr - 0x43B8AA)
43B8A2:  LDR             R2, =(_ZN14CLoadingScreen14m_bLegalScreenE_ptr - 0x43B8AC)
43B8A4:  ADD             R0, PC; _ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr
43B8A6:  ADD             R1, PC; _ZN14CLoadingScreen27m_bFadeOutCurrSplashToBlackE_ptr
43B8A8:  ADD             R2, PC; _ZN14CLoadingScreen14m_bLegalScreenE_ptr
43B8AA:  LDR             R0, [R0]; CLoadingScreen::m_bFadeInNextSplashFromBlack ...
43B8AC:  LDR             R1, [R1]; CLoadingScreen::m_bFadeOutCurrSplashToBlack ...
43B8AE:  LDR             R2, [R2]; CLoadingScreen::m_bLegalScreen ...
43B8B0:  STRB            R3, [R0]; CLoadingScreen::m_bFadeInNextSplashFromBlack
43B8B2:  MOVS            R0, #0; this
43B8B4:  STRB            R0, [R1]; CLoadingScreen::m_bFadeOutCurrSplashToBlack
43B8B6:  STRB            R0, [R2]; CLoadingScreen::m_bLegalScreen
43B8B8:  BLX             j__ZN14CLoadingScreen17DisplayNextSplashEv; CLoadingScreen::DisplayNextSplash(void)
43B8BC:  B               loc_43B8DA
43B8BE:  VDIV.F32        S0, S0, S2
43B8C2:  LDR             R0, =(_ZN14CLoadingScreen11m_FadeAlphaE_ptr - 0x43B8C8)
43B8C4:  ADD             R0, PC; _ZN14CLoadingScreen11m_FadeAlphaE_ptr
43B8C6:  LDR             R0, [R0]; CLoadingScreen::m_FadeAlpha ...
43B8C8:  VLDR            S2, =255.0
43B8CC:  VMUL.F32        S0, S0, S2
43B8D0:  VCVT.U32.F32    S0, S0
43B8D4:  VMOV            R1, S0
43B8D8:  STRB            R1, [R0]; CLoadingScreen::m_FadeAlpha
43B8DA:  LDR             R0, =(_ZN14CLoadingScreen14m_bLegalScreenE_ptr - 0x43B8E0)
43B8DC:  ADD             R0, PC; _ZN14CLoadingScreen14m_bLegalScreenE_ptr
43B8DE:  LDR             R0, [R0]; CLoadingScreen::m_bLegalScreen ...
43B8E0:  LDRB            R0, [R0]; CLoadingScreen::m_bLegalScreen
43B8E2:  CMP             R0, #0
43B8E4:  IT NE
43B8E6:  POPNE           {R7,PC}
43B8E8:  LDR             R0, =(_ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr - 0x43B8EE)
43B8EA:  ADD             R0, PC; _ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr
43B8EC:  LDR             R0, [R0]; CLoadingScreen::m_bFadeInNextSplashFromBlack ...
43B8EE:  LDRB            R0, [R0]; CLoadingScreen::m_bFadeInNextSplashFromBlack
43B8F0:  CBZ             R0, loc_43B908
43B8F2:  LDR             R0, =(_ZN14CLoadingScreen11m_FadeAlphaE_ptr - 0x43B8FC)
43B8F4:  VLDR            S2, =255.0
43B8F8:  ADD             R0, PC; _ZN14CLoadingScreen11m_FadeAlphaE_ptr
43B8FA:  LDR             R0, [R0]; CLoadingScreen::m_FadeAlpha ...
43B8FC:  LDRB            R0, [R0]; CLoadingScreen::m_FadeAlpha
43B8FE:  VMOV            S0, R0
43B902:  VCVT.F32.U32    S0, S0
43B906:  B               loc_43B92A
43B908:  LDR             R0, =(_ZN14CLoadingScreen27m_bFadeOutCurrSplashToBlackE_ptr - 0x43B90E)
43B90A:  ADD             R0, PC; _ZN14CLoadingScreen27m_bFadeOutCurrSplashToBlackE_ptr
43B90C:  LDR             R0, [R0]; CLoadingScreen::m_bFadeOutCurrSplashToBlack ...
43B90E:  LDRB            R0, [R0]; CLoadingScreen::m_bFadeOutCurrSplashToBlack
43B910:  CBZ             R0, loc_43B940
43B912:  LDR             R0, =(_ZN14CLoadingScreen11m_FadeAlphaE_ptr - 0x43B91C)
43B914:  VLDR            S2, =255.0
43B918:  ADD             R0, PC; _ZN14CLoadingScreen11m_FadeAlphaE_ptr
43B91A:  LDR             R0, [R0]; CLoadingScreen::m_FadeAlpha ...
43B91C:  LDRB            R0, [R0]; CLoadingScreen::m_FadeAlpha
43B91E:  VMOV            S0, R0
43B922:  VCVT.F32.U32    S0, S0
43B926:  VSUB.F32        S0, S2, S0
43B92A:  VDIV.F32        S0, S0, S2
43B92E:  LDR             R0, =(AudioEngine_ptr - 0x43B938)
43B930:  VMOV            R1, S0; float
43B934:  ADD             R0, PC; AudioEngine_ptr
43B936:  LDR             R0, [R0]; AudioEngine ; this
43B938:  POP.W           {R7,LR}
43B93C:  B.W             sub_18BBCC
43B940:  VMOV.F32        S0, #1.0
43B944:  B               loc_43B92E
43B946:  LDR             R1, =(_ZN14CLoadingScreen27m_bFadeOutCurrSplashToBlackE_ptr - 0x43B94E)
43B948:  LDR             R2, =(_ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr - 0x43B950)
43B94A:  ADD             R1, PC; _ZN14CLoadingScreen27m_bFadeOutCurrSplashToBlackE_ptr
43B94C:  ADD             R2, PC; _ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr
43B94E:  LDR             R1, [R1]; CLoadingScreen::m_bFadeOutCurrSplashToBlack ...
43B950:  LDR             R2, [R2]; CLoadingScreen::m_bFadeInNextSplashFromBlack ...
43B952:  STRB            R0, [R1]; CLoadingScreen::m_bFadeOutCurrSplashToBlack
43B954:  STRB            R0, [R2]; CLoadingScreen::m_bFadeInNextSplashFromBlack
43B956:  B               loc_43B8DA
