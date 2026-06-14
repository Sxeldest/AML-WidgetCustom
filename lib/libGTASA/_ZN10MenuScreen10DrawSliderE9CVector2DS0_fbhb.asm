; =========================================================
; Game Engine Function: _ZN10MenuScreen10DrawSliderE9CVector2DS0_fbhb
; Address            : 0x2992D8 - 0x29980C
; =========================================================

2992D8:  PUSH            {R4-R7,LR}
2992DA:  ADD             R7, SP, #0xC
2992DC:  PUSH.W          {R8-R10}
2992E0:  VPUSH           {D8-D15}
2992E4:  SUB             SP, SP, #0xB8
2992E6:  MOV             R8, R2
2992E8:  MOV             R6, R1
2992EA:  VLDR            S0, [R7,#arg_0]
2992EE:  VMOV            S18, R8
2992F2:  VMOV            S16, R6
2992F6:  VLDR            S17, [R7,#arg_4]
2992FA:  VMOV            S2, R3
2992FE:  VLDR            S21, =0.0
299302:  VSUB.F32        S20, S0, S18
299306:  MOV             R9, R0
299308:  VSUB.F32        S22, S2, S16
29930C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x299320)
299310:  VMOV.F32        S26, #1.0
299314:  LDR.W           R10, [R7,#arg_C]
299318:  VMOV.F32        S2, #-2.0
29931C:  ADD             R0, PC; __stack_chk_guard_ptr
29931E:  LDR             R0, [R0]; __stack_chk_guard
299320:  VDIV.F32        S0, S20, S22
299324:  VDIV.F32        S8, S17, S0
299328:  VSUB.F32        S4, S26, S0
29932C:  VMUL.F32        S2, S0, S2
299330:  VCMPE.F32       S8, #0.0
299334:  VSUB.F32        S6, S17, S0
299338:  VMRS            APSR_nzcv, FPSCR
29933C:  VMIN.F32        D14, D4, D13
299340:  VSUB.F32        S4, S17, S4
299344:  VADD.F32        S2, S2, S26
299348:  VDIV.F32        S0, S4, S0
29934C:  IT LT
29934E:  VMOVLT.F32      S28, S21
299352:  VDIV.F32        S2, S6, S2
299356:  VCMPE.F32       S0, #0.0
29935A:  VMRS            APSR_nzcv, FPSCR
29935E:  VMIN.F32        D12, D0, D13
299362:  VCMPE.F32       S2, #0.0
299366:  VMIN.F32        D15, D1, D13
29936A:  IT LT
29936C:  VMOVLT.F32      S24, S21
299370:  VMRS            APSR_nzcv, FPSCR
299374:  VCMP.F32        S28, #0.0
299378:  IT LT
29937A:  VMOVLT.F32      S30, S21
29937E:  LDR             R0, [R0]
299380:  VMRS            APSR_nzcv, FPSCR
299384:  STR             R0, [SP,#0x110+var_5C]
299386:  BEQ             loc_2993FC
299388:  B               loc_29939C
29938A:  ALIGN 4
29938C:  DCFS 0.0
299390:  DCFD 0.2
299398:  DCFS 0.6
29939C:  LDR.W           R0, =(gMobileMenu_ptr - 0x2993AA)
2993A0:  ADD             R4, SP, #0x110+var_80
2993A2:  MOVS            R1, #0xFF; unsigned __int8
2993A4:  MOVS            R2, #0xFF; unsigned __int8
2993A6:  ADD             R0, PC; gMobileMenu_ptr
2993A8:  MOVS            R3, #0xFF; unsigned __int8
2993AA:  STR.W           R10, [SP,#0x110+var_110]; unsigned __int8
2993AE:  LDR             R0, [R0]; gMobileMenu
2993B0:  LDR             R5, [R0,#(dword_6E00A4 - 0x6E006C)]
2993B2:  MOV             R0, R4; this
2993B4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2993B8:  VCVT.F64.F32    D16, S28
2993BC:  MOV.W           R0, #0x3F800000
2993C0:  STR             R0, [SP,#0x110+var_F8]; int
2993C2:  MOVS            R0, #0
2993C4:  STRD.W          R0, R0, [SP,#0x110+var_104]; int
2993C8:  MOV             R0, R9; int
2993CA:  MOV             R1, R5; int
2993CC:  MOV             R2, R4; int
2993CE:  MOV             R3, R6; int
2993D0:  VLDR            D17, =0.2
2993D4:  VMUL.F32        S0, S20, S28
2993D8:  VADD.F32        S2, S20, S18
2993DC:  VMUL.F64        D16, D16, D17
2993E0:  VCVT.F32.F64    S4, D16
2993E4:  VADD.F32        S0, S0, S16
2993E8:  VSTR            S2, [SP,#0x110+var_108]
2993EC:  STR.W           R8, [SP,#0x110+var_110]; float
2993F0:  VSTR            S0, [SP,#0x110+var_10C]
2993F4:  VSTR            S4, [SP,#0x110+var_FC]
2993F8:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,CVector2D,CVector2D)
2993FC:  VSUB.F32        S19, S22, S20
299400:  VCMP.F32        S30, #0.0
299404:  VMRS            APSR_nzcv, FPSCR
299408:  BEQ             loc_29947C
29940A:  LDR.W           R0, =(gMobileMenu_ptr - 0x299418)
29940E:  ADD             R5, SP, #0x110+var_84
299410:  MOVS            R1, #0xFF; unsigned __int8
299412:  MOVS            R2, #0xFF; unsigned __int8
299414:  ADD             R0, PC; gMobileMenu_ptr
299416:  MOVS            R3, #0xFF; unsigned __int8
299418:  STR.W           R10, [SP,#0x110+var_110]; unsigned __int8
29941C:  LDR             R0, [R0]; gMobileMenu
29941E:  LDR             R6, [R0,#(dword_6E00A4 - 0x6E006C)]
299420:  MOV             R0, R5; this
299422:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
299426:  VADD.F32        S0, S20, S16
29942A:  VLDR            S4, =0.6
29942E:  VSUB.F32        S2, S19, S20
299432:  VLDR            S6, =0.2
299436:  VMUL.F32        S4, S30, S4
29943A:  MOVW            R1, #0xCCCD
29943E:  VADD.F32        S8, S20, S18
299442:  MOV.W           R0, #0x3F800000
299446:  STR             R0, [SP,#0x110+var_F8]; int
299448:  MOVS            R0, #0
29944A:  MOVT            R1, #0x3E4C
29944E:  MOV             R2, R5; int
299450:  STRD.W          R1, R0, [SP,#0x110+var_104]; int
299454:  MOV             R0, R9; int
299456:  VMOV            R3, S0; int
29945A:  MOV             R1, R6; int
29945C:  VMUL.F32        S2, S2, S30
299460:  VADD.F32        S4, S4, S6
299464:  VSTR            S8, [SP,#0x110+var_108]
299468:  STR.W           R8, [SP,#0x110+var_110]; float
29946C:  VADD.F32        S0, S0, S2
299470:  VSTR            S4, [SP,#0x110+var_FC]
299474:  VSTR            S0, [SP,#0x110+var_10C]
299478:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,CVector2D,CVector2D)
29947C:  VCMP.F32        S24, #0.0
299480:  VMRS            APSR_nzcv, FPSCR
299484:  BEQ             loc_2994F6
299486:  LDR             R0, =(gMobileMenu_ptr - 0x299492)
299488:  ADD             R5, SP, #0x110+var_88
29948A:  MOVS            R1, #0xFF; unsigned __int8
29948C:  MOVS            R2, #0xFF; unsigned __int8
29948E:  ADD             R0, PC; gMobileMenu_ptr
299490:  MOVS            R3, #0xFF; unsigned __int8
299492:  STR.W           R10, [SP,#0x110+var_110]; unsigned __int8
299496:  LDR             R0, [R0]; gMobileMenu
299498:  LDR             R6, [R0,#(dword_6E00A4 - 0x6E006C)]
29949A:  MOV             R0, R5; this
29949C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2994A0:  VADD.F32        S0, S19, S16
2994A4:  VLDR            S4, =0.2
2994A8:  VSUB.F32        S2, S22, S19
2994AC:  VLDR            S6, =0.8
2994B0:  VMUL.F32        S4, S24, S4
2994B4:  MOVW            R1, #0xCCCD
2994B8:  VADD.F32        S8, S20, S18
2994BC:  MOV.W           R0, #0x3F800000
2994C0:  STR             R0, [SP,#0x110+var_F8]; int
2994C2:  MOVS            R0, #0
2994C4:  MOVT            R1, #0x3F4C
2994C8:  MOV             R2, R5; int
2994CA:  STRD.W          R1, R0, [SP,#0x110+var_104]; int
2994CE:  MOV             R0, R9; int
2994D0:  VMOV            R3, S0; int
2994D4:  MOV             R1, R6; int
2994D6:  VMUL.F32        S2, S2, S24
2994DA:  VADD.F32        S4, S4, S6
2994DE:  VSTR            S8, [SP,#0x110+var_108]
2994E2:  STR.W           R8, [SP,#0x110+var_110]; float
2994E6:  VADD.F32        S0, S0, S2
2994EA:  VSTR            S4, [SP,#0x110+var_FC]
2994EE:  VSTR            S0, [SP,#0x110+var_10C]
2994F2:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,CVector2D,CVector2D)
2994F6:  VCMP.F32        S28, S26
2994FA:  VMRS            APSR_nzcv, FPSCR
2994FE:  BEQ             loc_299564
299500:  LDR             R0, =(gMobileMenu_ptr - 0x29950C)
299502:  ADD             R5, SP, #0x110+var_8C
299504:  MOVS            R1, #0xFF; unsigned __int8
299506:  MOVS            R2, #0xFF; unsigned __int8
299508:  ADD             R0, PC; gMobileMenu_ptr
29950A:  MOVS            R3, #0xFF; unsigned __int8
29950C:  STR.W           R10, [SP,#0x110+var_110]; unsigned __int8
299510:  LDR             R0, [R0]; gMobileMenu
299512:  LDR             R4, [R0,#(dword_6E00A0 - 0x6E006C)]
299514:  MOV             R0, R5; this
299516:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29951A:  VMUL.F32        S0, S20, S28
29951E:  MOVW            R1, #0xCCCD
299522:  VADD.F32        S2, S20, S16
299526:  MOV.W           R0, #0x3F800000
29952A:  VADD.F32        S4, S20, S18
29952E:  MOVT            R1, #0x3E4C
299532:  MOVS            R2, #0
299534:  STRD.W          R2, R1, [SP,#0x110+var_100]; int
299538:  MOV             R1, R4; int
29953A:  STR             R0, [SP,#0x110+var_F8]; int
29953C:  MOV             R0, R9; int
29953E:  MOV             R2, R5; int
299540:  VADD.F32        S0, S0, S16
299544:  VSTR            S2, [SP,#0x110+var_10C]
299548:  VSTR            S4, [SP,#0x110+var_108]
29954C:  VMOV            R3, S0; int
299550:  VLDR            S0, =0.2
299554:  VMUL.F32        S0, S28, S0
299558:  VSTR            S0, [SP,#0x110+var_104]
29955C:  STR.W           R8, [SP,#0x110+var_110]; float
299560:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,CVector2D,CVector2D)
299564:  VCMP.F32        S30, S26
299568:  VMRS            APSR_nzcv, FPSCR
29956C:  BEQ             loc_2995EA
29956E:  LDR             R0, =(gMobileMenu_ptr - 0x29957A)
299570:  ADD             R5, SP, #0x110+var_90
299572:  MOVS            R1, #0xFF; unsigned __int8
299574:  MOVS            R2, #0xFF; unsigned __int8
299576:  ADD             R0, PC; gMobileMenu_ptr
299578:  MOVS            R3, #0xFF; unsigned __int8
29957A:  STR.W           R10, [SP,#0x110+var_110]; unsigned __int8
29957E:  LDR             R0, [R0]; gMobileMenu
299580:  LDR             R6, [R0,#(dword_6E00A0 - 0x6E006C)]
299582:  MOV             R0, R5; this
299584:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
299588:  VLDR            S0, =0.6
29958C:  VSUB.F32        S2, S19, S20
299590:  VLDR            D17, =0.2
299594:  VADD.F32        S4, S19, S16
299598:  VMUL.F32        S0, S30, S0
29959C:  MOVW            R1, #0xCCCD
2995A0:  MOV.W           R0, #0x3F800000
2995A4:  MOVT            R1, #0x3F4C
2995A8:  MOVS            R2, #0
2995AA:  STRD.W          R2, R1, [SP,#0x110+var_100]; int
2995AE:  MOV             R1, R6; int
2995B0:  STR             R0, [SP,#0x110+var_F8]; int
2995B2:  MOV             R0, R9; int
2995B4:  VMUL.F32        S2, S2, S30
2995B8:  MOV             R2, R5; int
2995BA:  VCVT.F64.F32    D16, S0
2995BE:  VADD.F32        S0, S20, S16
2995C2:  VADD.F64        D16, D16, D17
2995C6:  VADD.F32        S0, S0, S2
2995CA:  VADD.F32        S2, S20, S18
2995CE:  VMOV            R3, S0; int
2995D2:  VCVT.F32.F64    S0, D16
2995D6:  VSTR            S2, [SP,#0x110+var_108]
2995DA:  VSTR            S4, [SP,#0x110+var_10C]
2995DE:  STR.W           R8, [SP,#0x110+var_110]; float
2995E2:  VSTR            S0, [SP,#0x110+var_104]
2995E6:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,CVector2D,CVector2D)
2995EA:  VCMP.F32        S24, S26
2995EE:  VMRS            APSR_nzcv, FPSCR
2995F2:  BEQ             loc_299660
2995F4:  LDR             R0, =(gMobileMenu_ptr - 0x299600)
2995F6:  ADD             R6, SP, #0x110+var_94
2995F8:  MOVS            R1, #0xFF; unsigned __int8
2995FA:  MOVS            R2, #0xFF; unsigned __int8
2995FC:  ADD             R0, PC; gMobileMenu_ptr
2995FE:  MOVS            R3, #0xFF; unsigned __int8
299600:  STR.W           R10, [SP,#0x110+var_110]; unsigned __int8
299604:  LDR             R0, [R0]; gMobileMenu
299606:  LDR             R5, [R0,#(dword_6E00A0 - 0x6E006C)]
299608:  MOV             R0, R6; this
29960A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29960E:  VSUB.F32        S0, S22, S19
299612:  MOV.W           R0, #0x3F800000
299616:  VADD.F32        S2, S19, S16
29961A:  MOVS            R1, #0
29961C:  VADD.F32        S4, S20, S18
299620:  STRD.W          R1, R0, [SP,#0x110+var_100]; int
299624:  VADD.F32        S6, S22, S16
299628:  STR             R0, [SP,#0x110+var_F8]; int
29962A:  MOV             R0, R9; int
29962C:  MOV             R1, R5; int
29962E:  MOV             R2, R6; int
299630:  VMUL.F32        S0, S0, S24
299634:  VSTR            S4, [SP,#0x110+var_108]
299638:  VSTR            S6, [SP,#0x110+var_10C]
29963C:  STR.W           R8, [SP,#0x110+var_110]; float
299640:  VADD.F32        S0, S2, S0
299644:  VLDR            S2, =0.2
299648:  VMOV            R3, S0; int
29964C:  VMUL.F32        S0, S24, S2
299650:  VLDR            S2, =0.8
299654:  VADD.F32        S0, S0, S2
299658:  VSTR            S0, [SP,#0x110+var_104]
29965C:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,CVector2D,CVector2D)
299660:  VLDR            S0, =100.0
299664:  ADD             R4, SP, #0x110+var_7C
299666:  ADR             R1, aD; "%d%%"
299668:  VMUL.F32        S0, S17, S0
29966C:  MOV             R0, R4
29966E:  VCVT.S32.F32    S0, S0
299672:  VMOV            R2, S0
299676:  BL              sub_5E6BC0
29967A:  ADD             R1, SP, #0x110+var_D4; unsigned __int16 *
29967C:  MOV             R0, R4; char *
29967E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
299682:  VMOV.F32        S0, #5.0
299686:  VSUB.F32        S2, S26, S30
29968A:  VMUL.F32        S0, S2, S0
29968E:  VMIN.F32        D12, D0, D13
299692:  VCMPE.F32       S0, #0.0
299696:  VMRS            APSR_nzcv, FPSCR
29969A:  IT LT
29969C:  VMOVLT.F32      S24, S21
2996A0:  VCMP.F32        S24, #0.0
2996A4:  VMRS            APSR_nzcv, FPSCR
2996A8:  BEQ             loc_299716
2996AA:  VMOV            S0, R10
2996AE:  MOVS            R1, #0xF0; unsigned __int8
2996B0:  MOVS            R2, #0xF0; unsigned __int8
2996B2:  MOVS            R3, #0xF0; unsigned __int8
2996B4:  VCVT.F32.U32    S0, S0
2996B8:  VMUL.F32        S0, S24, S0
2996BC:  VCVT.U32.F32    S0, S0
2996C0:  VMOV            R0, S0
2996C4:  STR             R0, [SP,#0x110+var_110]; unsigned __int8
2996C6:  ADD             R0, SP, #0x110+var_D8; this
2996C8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2996CC:  VMOV.F32        S0, #-5.0
2996D0:  MOVS            R1, #0
2996D2:  VMOV.F32        S2, #-8.0
2996D6:  MOVS            R2, #1
2996D8:  VMOV.F32        S4, #4.0
2996DC:  STRD.W          R1, R1, [SP,#0x110+var_F4]
2996E0:  VMOV.F32        S6, #3.0
2996E4:  MOVS            R3, #2
2996E6:  VADD.F32        S0, S20, S0
2996EA:  VADD.F32        S2, S22, S2
2996EE:  VADD.F32        S4, S16, S4
2996F2:  VADD.F32        S6, S18, S6
2996F6:  VSTR            S4, [SP,#0x110+var_104]
2996FA:  VSTR            S6, [SP,#0x110+var_100]
2996FE:  VSTR            S2, [SP,#0x110+var_FC]
299702:  VSTR            S0, [SP,#0x110+var_F8]
299706:  STRD.W          R2, R0, [SP,#0x110+var_110]
29970A:  ADD             R0, SP, #0x110+var_E0
29970C:  ADD             R2, SP, #0x110+var_D4
29970E:  STR             R1, [SP,#0x110+var_108]
299710:  MOV             R1, R9
299712:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
299716:  VSUB.F32        S0, S26, S24
29971A:  LDR             R4, [R7,#arg_8]
29971C:  VCMP.F32        S0, #0.0
299720:  VMRS            APSR_nzcv, FPSCR
299724:  BEQ             loc_299792
299726:  VMOV            S2, R10
29972A:  MOVS            R1, #0; unsigned __int8
29972C:  MOVS            R2, #0; unsigned __int8
29972E:  MOVS            R3, #0; unsigned __int8
299730:  VCVT.F32.U32    S2, S2
299734:  MOVS            R5, #0
299736:  VMUL.F32        S0, S0, S2
29973A:  VCVT.U32.F32    S0, S0
29973E:  VMOV            R0, S0
299742:  STR             R0, [SP,#0x110+var_110]; unsigned __int8
299744:  ADD             R0, SP, #0x110+var_E4; this
299746:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29974A:  VMOV.F32        S0, #-5.0
29974E:  MOVS            R1, #1
299750:  VMOV.F32        S2, #-8.0
299754:  STRD.W          R5, R5, [SP,#0x110+var_F4]
299758:  VMOV.F32        S4, #4.0
29975C:  ADD             R2, SP, #0x110+var_D4
29975E:  VMOV.F32        S6, #3.0
299762:  MOVS            R3, #0
299764:  VADD.F32        S0, S20, S0
299768:  VADD.F32        S2, S22, S2
29976C:  VADD.F32        S4, S16, S4
299770:  VADD.F32        S6, S18, S6
299774:  VSTR            S4, [SP,#0x110+var_104]
299778:  VSTR            S6, [SP,#0x110+var_100]
29977C:  VSTR            S2, [SP,#0x110+var_FC]
299780:  VSTR            S0, [SP,#0x110+var_F8]
299784:  STRD.W          R1, R0, [SP,#0x110+var_110]
299788:  ADD             R0, SP, #0x110+var_E0
29978A:  MOV             R1, R9
29978C:  STR             R5, [SP,#0x110+var_108]
29978E:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
299792:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
299796:  CMP             R4, #1
299798:  BNE             loc_2997EE
29979A:  LDR             R0, =(gMobileMenu_ptr - 0x2997A6)
29979C:  ADD             R5, SP, #0x110+var_E8
29979E:  MOVS            R1, #0xFF; unsigned __int8
2997A0:  MOVS            R2, #0xFF; unsigned __int8
2997A2:  ADD             R0, PC; gMobileMenu_ptr
2997A4:  MOVS            R3, #0xFF; unsigned __int8
2997A6:  STR.W           R10, [SP,#0x110+var_110]; unsigned __int8
2997AA:  LDR             R0, [R0]; gMobileMenu
2997AC:  LDR             R4, [R0,#(dword_6E00A8 - 0x6E006C)]
2997AE:  MOV             R0, R5; this
2997B0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2997B4:  VADD.F32        S0, S22, S16
2997B8:  MOVS            R0, #0
2997BA:  VADD.F32        S2, S20, S18
2997BE:  STR             R0, [SP,#0x110+var_104]
2997C0:  MOV             R0, R9
2997C2:  MOV             R1, R4
2997C4:  MOV             R2, R5
2997C6:  VSUB.F32        S0, S0, S20
2997CA:  VSTR            S2, [SP,#0x110+var_108]
2997CE:  STR.W           R8, [SP,#0x110+var_110]
2997D2:  VSUB.F32        S0, S0, S16
2997D6:  VMUL.F32        S0, S0, S17
2997DA:  VADD.F32        S0, S0, S16
2997DE:  VMOV            R3, S0
2997E2:  VADD.F32        S0, S20, S0
2997E6:  VSTR            S0, [SP,#0x110+var_10C]
2997EA:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_b; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,bool)
2997EE:  LDR             R0, =(__stack_chk_guard_ptr - 0x2997F6)
2997F0:  LDR             R1, [SP,#0x110+var_5C]
2997F2:  ADD             R0, PC; __stack_chk_guard_ptr
2997F4:  LDR             R0, [R0]; __stack_chk_guard
2997F6:  LDR             R0, [R0]
2997F8:  SUBS            R0, R0, R1
2997FA:  ITTTT EQ
2997FC:  ADDEQ           SP, SP, #0xB8
2997FE:  VPOPEQ          {D8-D15}
299802:  POPEQ.W         {R8-R10}
299806:  POPEQ           {R4-R7,PC}
299808:  BLX             __stack_chk_fail
