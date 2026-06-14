; =========================================================
; Game Engine Function: sub_1A94E8
; Address            : 0x1A94E8 - 0x1A9642
; =========================================================

1A94E8:  PUSH            {R4-R7,LR}
1A94EA:  ADD             R7, SP, #0xC
1A94EC:  PUSH.W          {R11}
1A94F0:  SUB             SP, SP, #8
1A94F2:  LDR             R0, =(unk_A47678 - 0x1A94FE)
1A94F4:  MOVS            R5, #0xFF
1A94F6:  MOVS            R1, #0xFF; unsigned __int8
1A94F8:  MOVS            R2, #0; unsigned __int8
1A94FA:  ADD             R0, PC; unk_A47678 ; this
1A94FC:  MOVS            R3, #0; unsigned __int8
1A94FE:  STR             R5, [SP,#0x18+var_18]; unsigned __int8
1A9500:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A9504:  LDR             R0, =(unk_A4767C - 0x1A9510)
1A9506:  MOVS            R1, #0xFF; unsigned __int8
1A9508:  MOVS            R2, #0xFF; unsigned __int8
1A950A:  MOVS            R3, #0; unsigned __int8
1A950C:  ADD             R0, PC; unk_A4767C ; this
1A950E:  STR             R5, [SP,#0x18+var_18]; unsigned __int8
1A9510:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A9514:  LDR             R0, =(unk_A47680 - 0x1A9520)
1A9516:  MOVS            R1, #0x64 ; 'd'
1A9518:  STR             R1, [SP,#0x18+var_18]; unsigned __int8
1A951A:  MOVS            R1, #0xFF; unsigned __int8
1A951C:  ADD             R0, PC; unk_A47680 ; this
1A951E:  MOVS            R2, #0; unsigned __int8
1A9520:  MOVS            R3, #0; unsigned __int8
1A9522:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A9526:  LDR             R0, =(unk_A47684 - 0x1A9532)
1A9528:  MOVS            R1, #0xFF; unsigned __int8
1A952A:  MOVS            R2, #0; unsigned __int8
1A952C:  MOVS            R3, #0; unsigned __int8
1A952E:  ADD             R0, PC; unk_A47684 ; this
1A9530:  STR             R5, [SP,#0x18+var_18]; unsigned __int8
1A9532:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A9536:  LDR             R0, =(_ZN12CPostEffects20m_NightVisionMainColE_ptr - 0x1A9542)
1A9538:  MOVS            R1, #0; unsigned __int8
1A953A:  MOVS            R2, #0x82; unsigned __int8
1A953C:  MOVS            R3, #0; unsigned __int8
1A953E:  ADD             R0, PC; _ZN12CPostEffects20m_NightVisionMainColE_ptr
1A9540:  STR             R5, [SP,#0x18+var_18]; unsigned __int8
1A9542:  LDR             R0, [R0]; this
1A9544:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A9548:  LDR             R0, =(_ZN12CPostEffects28m_fNightVisionSwitchOnFXTimeE_ptr - 0x1A9552)
1A954A:  LDR             R1, =(_ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr - 0x1A9556)
1A954C:  LDR             R2, =(_ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr - 0x1A9558)
1A954E:  ADD             R0, PC; _ZN12CPostEffects28m_fNightVisionSwitchOnFXTimeE_ptr
1A9550:  LDR             R3, =(_ZN12CPostEffects19m_InfraredVisionColE_ptr - 0x1A955C)
1A9552:  ADD             R1, PC; _ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr
1A9554:  ADD             R2, PC; _ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr
1A9556:  LDR             R4, [R0]; CPostEffects::m_fNightVisionSwitchOnFXTime ...
1A9558:  ADD             R3, PC; _ZN12CPostEffects19m_InfraredVisionColE_ptr
1A955A:  LDR             R1, [R1]; CPostEffects::m_fNightVisionSwitchOnFXCount ...
1A955C:  LDR             R2, [R2]; CPostEffects::m_fInfraredVisionSwitchOnFXCount ...
1A955E:  LDR             R0, [R3]; this
1A9560:  LDR             R3, [R4]; CPostEffects::m_fNightVisionSwitchOnFXTime
1A9562:  STR             R3, [R1]; CPostEffects::m_fNightVisionSwitchOnFXCount
1A9564:  MOVS            R1, #0x6E ; 'n'; unsigned __int8
1A9566:  STR             R3, [R2]; CPostEffects::m_fInfraredVisionSwitchOnFXCount
1A9568:  MOVS            R2, #0x28 ; '('; unsigned __int8
1A956A:  MOVS            R3, #0x3C ; '<'; unsigned __int8
1A956C:  STR             R5, [SP,#0x18+var_18]; unsigned __int8
1A956E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A9572:  LDR             R0, =(_ZN12CPostEffects23m_InfraredVisionMainColE_ptr - 0x1A957E)
1A9574:  MOVS            R1, #0x64 ; 'd'; unsigned __int8
1A9576:  MOVS            R2, #0; unsigned __int8
1A9578:  MOVS            R3, #0xC8; unsigned __int8
1A957A:  ADD             R0, PC; _ZN12CPostEffects23m_InfraredVisionMainColE_ptr
1A957C:  STR             R5, [SP,#0x18+var_18]; unsigned __int8
1A957E:  LDR             R0, [R0]; this
1A9580:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A9584:  LDR             R0, =(_ZN12CPostEffects21m_DarknessFilterAlphaE_ptr - 0x1A958C)
1A9586:  LDR             R4, =(_ZN12CPostEffects9m_CCTVcolE_ptr - 0x1A9592)
1A9588:  ADD             R0, PC; _ZN12CPostEffects21m_DarknessFilterAlphaE_ptr
1A958A:  LDR.W           R12, =(_ZN12CPostEffects21m_HeatHazeFXScanSizeXE_ptr - 0x1A9598)
1A958E:  ADD             R4, PC; _ZN12CPostEffects9m_CCTVcolE_ptr
1A9590:  LDR             R5, =(_ZN12CPostEffects23m_HeatHazeFXRenderSizeYE_ptr - 0x1A959C)
1A9592:  LDR             R1, [R0]; CPostEffects::m_DarknessFilterAlpha ...
1A9594:  ADD             R12, PC; _ZN12CPostEffects21m_HeatHazeFXScanSizeXE_ptr
1A9596:  LDR             R0, [R4]; this
1A9598:  ADD             R5, PC; _ZN12CPostEffects23m_HeatHazeFXRenderSizeYE_ptr
1A959A:  LDR             R4, =(_ZN12CPostEffects28m_DarknessFilterAlphaDefaultE_ptr - 0x1A95A4)
1A959C:  LDR.W           R2, [R12]; CPostEffects::m_HeatHazeFXScanSizeX ...
1A95A0:  ADD             R4, PC; _ZN12CPostEffects28m_DarknessFilterAlphaDefaultE_ptr
1A95A2:  LDR.W           R12, [R5]; CPostEffects::m_HeatHazeFXRenderSizeY ...
1A95A6:  VLDR            S4, =640.0
1A95AA:  LDR             R4, [R4]; CPostEffects::m_DarknessFilterAlphaDefault ...
1A95AC:  VLDR            S6, =448.0
1A95B0:  LDR.W           LR, =(_ZN12CPostEffects21m_HeatHazeFXScanSizeYE_ptr - 0x1A95BC)
1A95B4:  LDR             R5, [R4]; CPostEffects::m_DarknessFilterAlphaDefault
1A95B6:  LDR             R4, =(RsGlobal_ptr - 0x1A95C0)
1A95B8:  ADD             LR, PC; _ZN12CPostEffects21m_HeatHazeFXScanSizeYE_ptr
1A95BA:  LDR             R6, =(_ZN12CPostEffects23m_HeatHazeFXRenderSizeXE_ptr - 0x1A95C6)
1A95BC:  ADD             R4, PC; RsGlobal_ptr
1A95BE:  LDR.W           R3, [LR]; CPostEffects::m_HeatHazeFXScanSizeY ...
1A95C2:  ADD             R6, PC; _ZN12CPostEffects23m_HeatHazeFXRenderSizeXE_ptr
1A95C4:  LDR             R4, [R4]; RsGlobal
1A95C6:  LDR             R6, [R6]; CPostEffects::m_HeatHazeFXRenderSizeX ...
1A95C8:  VLDR            S0, [R4,#4]
1A95CC:  VLDR            S2, [R4,#8]
1A95D0:  VCVT.F32.S32    S0, S0
1A95D4:  VCVT.F32.S32    S2, S2
1A95D8:  VDIV.F32        S0, S0, S4
1A95DC:  VDIV.F32        S2, S2, S6
1A95E0:  VMOV.F32        S4, #24.0
1A95E4:  VMUL.F32        S0, S0, S4
1A95E8:  VMUL.F32        S2, S2, S4
1A95EC:  VCVT.S32.F32    S0, S0
1A95F0:  VCVT.S32.F32    S2, S2
1A95F4:  STR             R5, [R1]; CPostEffects::m_DarknessFilterAlpha
1A95F6:  MOVS            R5, #0x40 ; '@'
1A95F8:  MOVS            R1, #0; unsigned __int8
1A95FA:  STR             R5, [SP,#0x18+var_18]; unsigned __int8
1A95FC:  VSTR            S0, [R2]
1A9600:  MOVS            R2, #0; unsigned __int8
1A9602:  VSTR            S2, [R3]
1A9606:  MOVS            R3, #0; unsigned __int8
1A9608:  VSTR            S0, [R6]
1A960C:  VSTR            S2, [R12]
1A9610:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A9614:  LDR             R0, =(_ZN12CPostEffects18m_RadiosityPixelsXE_ptr - 0x1A961E)
1A9616:  LDR             R1, =(_ZN12CPostEffects18m_RadiosityPixelsYE_ptr - 0x1A9620)
1A9618:  LDR             R2, =(_ZN12CPostEffects10m_waterColE_ptr - 0x1A9626)
1A961A:  ADD             R0, PC; _ZN12CPostEffects18m_RadiosityPixelsXE_ptr
1A961C:  ADD             R1, PC; _ZN12CPostEffects18m_RadiosityPixelsYE_ptr
1A961E:  LDRD.W          R6, R4, [R4,#(dword_9FC900 - 0x9FC8FC)]
1A9622:  ADD             R2, PC; _ZN12CPostEffects10m_waterColE_ptr
1A9624:  LDR             R3, [R0]; CPostEffects::m_RadiosityPixelsX ...
1A9626:  LDR             R1, [R1]; CPostEffects::m_RadiosityPixelsY ...
1A9628:  LDR             R0, [R2]; this
1A962A:  MOVS            R2, #0x40 ; '@'; unsigned __int8
1A962C:  STR             R6, [R3]; CPostEffects::m_RadiosityPixelsX
1A962E:  MOVS            R3, #0x40 ; '@'; unsigned __int8
1A9630:  STR             R4, [R1]; CPostEffects::m_RadiosityPixelsY
1A9632:  MOVS            R1, #0x40 ; '@'; unsigned __int8
1A9634:  STR             R5, [SP,#0x18+var_18]; unsigned __int8
1A9636:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A963A:  ADD             SP, SP, #8
1A963C:  POP.W           {R11}
1A9640:  POP             {R4-R7,PC}
