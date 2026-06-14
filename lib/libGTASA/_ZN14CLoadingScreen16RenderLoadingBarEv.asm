; =========================================================
; Game Engine Function: _ZN14CLoadingScreen16RenderLoadingBarEv
; Address            : 0x43B410 - 0x43B57C
; =========================================================

43B410:  PUSH            {R4-R7,LR}
43B412:  ADD             R7, SP, #0xC
43B414:  PUSH.W          {R11}
43B418:  VPUSH           {D8-D14}
43B41C:  SUB             SP, SP, #0x28
43B41E:  LDR             R1, =(HudColour_ptr - 0x43B428)
43B420:  ADD             R0, SP, #0x70+var_4C; this
43B422:  MOVS            R2, #5
43B424:  ADD             R1, PC; HudColour_ptr
43B426:  LDR             R4, [R1]; HudColour
43B428:  MOV             R1, R4; unsigned __int8
43B42A:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
43B42E:  ADD             R0, SP, #0x70+var_4C; this
43B430:  MOV             R1, R4; unsigned __int8
43B432:  MOVS            R2, #5
43B434:  LDRB.W          R5, [SP,#0x70+var_4C]
43B438:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
43B43C:  ADD             R0, SP, #0x70+var_4C; this
43B43E:  MOV             R1, R4; unsigned __int8
43B440:  MOVS            R2, #5
43B442:  LDRB.W          R6, [SP,#0x70+var_4B]
43B446:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
43B44A:  LDR             R0, =(RsGlobal_ptr - 0x43B454)
43B44C:  LDRB.W          R4, [SP,#0x70+var_4A]
43B450:  ADD             R0, PC; RsGlobal_ptr
43B452:  LDR             R0, [R0]; RsGlobal ; this
43B454:  VLDR            S0, [R0,#4]
43B458:  VLDR            S2, [R0,#8]
43B45C:  VCVT.F32.S32    S18, S2
43B460:  VCVT.F32.S32    S20, S0
43B464:  BLX             j__ZN7CWidget17DrawTitleSafeAreaEv; CWidget::DrawTitleSafeArea(void)
43B468:  LDR             R0, =(_ZN14CLoadingScreen15m_PercentLoadedE_ptr - 0x43B472)
43B46A:  VLDR            S0, =100.0
43B46E:  ADD             R0, PC; _ZN14CLoadingScreen15m_PercentLoadedE_ptr
43B470:  LDR             R0, [R0]; CLoadingScreen::m_PercentLoaded ...
43B472:  VLDR            S16, [R0]
43B476:  VCMPE.F32       S16, S0
43B47A:  VMRS            APSR_nzcv, FPSCR
43B47E:  BGT             loc_43B570
43B480:  LDR             R0, =(_ZN14CLoadingScreen14m_bLegalScreenE_ptr - 0x43B486)
43B482:  ADD             R0, PC; _ZN14CLoadingScreen14m_bLegalScreenE_ptr
43B484:  LDR             R0, [R0]; CLoadingScreen::m_bLegalScreen ...
43B486:  LDRB            R0, [R0]; CLoadingScreen::m_bLegalScreen
43B488:  CMP             R0, #0
43B48A:  BNE             loc_43B570
43B48C:  VCMPE.F32       S16, #0.0
43B490:  VMRS            APSR_nzcv, FPSCR
43B494:  BLT             loc_43B570
43B496:  VLDR            S0, =448.0
43B49A:  ORR.W           R0, R5, R6,LSL#8
43B49E:  VLDR            S24, =0.0
43B4A2:  ORR.W           R0, R0, R4,LSL#16
43B4A6:  VDIV.F32        S22, S18, S0
43B4AA:  ORR.W           R0, R0, #0xFF000000
43B4AE:  STR             R0, [SP,#0x70+var_50]
43B4B0:  ADD             R0, SP, #0x70+var_54; this
43B4B2:  MOVS            R5, #0
43B4B4:  MOVS            R1, #0; unsigned __int8
43B4B6:  MOVS            R2, #0; unsigned __int8
43B4B8:  MOVS            R3, #0; unsigned __int8
43B4BA:  STR             R5, [SP,#0x70+var_70]; unsigned __int8
43B4BC:  VMOV.F32        S0, #10.0
43B4C0:  VMUL.F32        S2, S20, S24
43B4C4:  VMUL.F32        S26, S22, S0
43B4C8:  VADD.F32        S28, S2, S26
43B4CC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43B4D0:  VLDR            S0, =640.0
43B4D4:  VMOV.F32        S2, #-14.0
43B4D8:  VMUL.F32        S4, S18, S24
43B4DC:  VDIV.F32        S6, S20, S0
43B4E0:  VMUL.F32        S2, S22, S2
43B4E4:  VSUB.F32        S4, S18, S4
43B4E8:  VMUL.F32        S0, S6, S0
43B4EC:  VMOV            R4, S28
43B4F0:  VADD.F32        S2, S4, S2
43B4F4:  VMOV.F32        S4, #-2.0
43B4F8:  VMOV            R1, S2
43B4FC:  VMUL.F32        S2, S28, S4
43B500:  VADD.F32        S0, S0, S2
43B504:  VCVT.S32.F32    S2, S26
43B508:  STR             R0, [SP,#0x70+var_5C]
43B50A:  ADD             R0, SP, #0x70+var_50
43B50C:  STR             R0, [SP,#0x70+var_60]
43B50E:  MOVS            R0, #1
43B510:  STRD.W          R5, R0, [SP,#0x70+var_68]
43B514:  VCVT.S32.F32    S0, S0
43B518:  STR             R5, [SP,#0x70+var_6C]
43B51A:  VSTR            S16, [SP,#0x70+var_70]
43B51E:  VMOV            R0, S0
43B522:  UXTH            R2, R0
43B524:  VMOV            R0, S2
43B528:  UXTB            R3, R0
43B52A:  MOV             R0, R4
43B52C:  BLX             j__ZN9CSprite2d12DrawBarChartEffthfahh5CRGBAS0_; CSprite2d::DrawBarChart(float,float,ushort,uchar,float,signed char,uchar,uchar,CRGBA,CRGBA)
43B530:  LDR             R0, =(_ZN14CLoadingScreen17m_TimeBarAppearedE_ptr - 0x43B536)
43B532:  ADD             R0, PC; _ZN14CLoadingScreen17m_TimeBarAppearedE_ptr
43B534:  LDR             R0, [R0]; CLoadingScreen::m_TimeBarAppeared ...
43B536:  VLDR            S0, [R0]
43B53A:  VCMP.F32        S0, #0.0
43B53E:  VMRS            APSR_nzcv, FPSCR
43B542:  BNE             loc_43B570
43B544:  BLX             j__Z7RsTimerv; RsTimer(void)
43B548:  VMOV            S0, R0
43B54C:  VLDR            S2, =1000.0
43B550:  LDR             R0, =(_ZN14CLoadingScreen11m_PauseTimeE_ptr - 0x43B55A)
43B552:  VCVT.F32.U32    S0, S0
43B556:  ADD             R0, PC; _ZN14CLoadingScreen11m_PauseTimeE_ptr
43B558:  LDR             R0, [R0]; CLoadingScreen::m_PauseTime ...
43B55A:  VDIV.F32        S0, S0, S2
43B55E:  VLDR            S2, [R0]
43B562:  LDR             R0, =(_ZN14CLoadingScreen17m_TimeBarAppearedE_ptr - 0x43B56C)
43B564:  VSUB.F32        S0, S0, S2
43B568:  ADD             R0, PC; _ZN14CLoadingScreen17m_TimeBarAppearedE_ptr
43B56A:  LDR             R0, [R0]; CLoadingScreen::m_TimeBarAppeared ...
43B56C:  VSTR            S0, [R0]
43B570:  ADD             SP, SP, #0x28 ; '('
43B572:  VPOP            {D8-D14}
43B576:  POP.W           {R11}
43B57A:  POP             {R4-R7,PC}
