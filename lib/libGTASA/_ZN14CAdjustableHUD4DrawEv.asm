; =========================================================
; Game Engine Function: _ZN14CAdjustableHUD4DrawEv
; Address            : 0x28619C - 0x286E2E
; =========================================================

28619C:  PUSH            {R4-R7,LR}
28619E:  ADD             R7, SP, #0xC
2861A0:  PUSH.W          {R8-R11}
2861A4:  SUB             SP, SP, #4
2861A6:  VPUSH           {D8-D15}
2861AA:  SUB             SP, SP, #0x48
2861AC:  MOV             R4, SP
2861AE:  BFC.W           R4, #0, #4
2861B2:  MOV             SP, R4
2861B4:  MOV             R11, R0
2861B6:  LDR.W           R0, =(RsGlobal_ptr - 0x2861BE)
2861BA:  ADD             R0, PC; RsGlobal_ptr
2861BC:  LDR             R6, [R0]; RsGlobal
2861BE:  LDR.W           R8, [R6,#(dword_9FC900 - 0x9FC8FC)]
2861C2:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2861C6:  MOV             R4, R0
2861C8:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2861CC:  VLDR            S0, [R6,#4]
2861D0:  MOV             R9, R0
2861D2:  VCVT.F32.S32    S22, S0
2861D6:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2861DA:  MOV             R10, R0
2861DC:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2861E0:  VLDR            S0, [R6,#4]
2861E4:  MOV             R5, R0
2861E6:  VMOV            S16, R4
2861EA:  VCVT.F32.S32    S24, S0
2861EE:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2861F2:  MOV             R4, R0
2861F4:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2861F8:  VLDR            S2, [R6,#8]
2861FC:  VMOV            S4, R9
286200:  VLDR            S0, [R6,#4]
286204:  VCVT.F32.U32    S16, S16
286208:  VCVT.F32.U32    S18, S4
28620C:  VCVT.F32.S32    S26, S2
286210:  VMOV            S2, R10
286214:  VCVT.F32.U32    S20, S2
286218:  VMOV            S2, R5
28621C:  VCVT.F32.U32    S28, S2
286220:  VMOV            S2, R4
286224:  VCVT.F32.U32    S30, S2
286228:  VMOV            S2, R0
28622C:  VCVT.F32.S32    S17, S0
286230:  VCVT.F32.U32    S19, S2
286234:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
286238:  VMOV            S0, R0
28623C:  VCVT.F32.U32    S21, S0
286240:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
286244:  VDIV.F32        S2, S16, S18
286248:  VDIV.F32        S4, S20, S28
28624C:  VLDR            S20, =1.9
286250:  VMOV.F32        S18, #30.0
286254:  VLDR            S16, =0.0
286258:  VMOV            S0, R0
28625C:  VCMPE.F32       S2, S20
286260:  VMRS            APSR_nzcv, FPSCR
286264:  VMOV            S8, R8
286268:  VDIV.F32        S6, S30, S19
28626C:  VCMPE.F32       S4, S20
286270:  VLDR            S19, =70.0
286274:  VMOV.F32        S2, S16
286278:  VCVT.F32.U32    S0, S0
28627C:  VCVT.F32.S32    S8, S8
286280:  IT GT
286282:  VMOVGT.F32      S2, S18
286286:  VMRS            APSR_nzcv, FPSCR
28628A:  VMOV.F32        S4, S16
28628E:  VCMPE.F32       S6, S20
286292:  VMOV.F32        S6, S16
286296:  VMOV.F32        S12, #18.0
28629A:  VDIV.F32        S0, S21, S0
28629E:  IT GT
2862A0:  VMOVGT.F32      S4, S18
2862A4:  VMRS            APSR_nzcv, FPSCR
2862A8:  VCMPE.F32       S0, S20
2862AC:  VSUB.F32        S2, S8, S2
2862B0:  VMOV.F32        S0, S16
2862B4:  VSUB.F32        S4, S22, S4
2862B8:  VLDR            S22, =640.0
2862BC:  VDIV.F32        S2, S2, S22
2862C0:  IT GT
2862C2:  VMOVGT.F32      S6, S18
2862C6:  VMRS            APSR_nzcv, FPSCR
2862CA:  VSUB.F32        S6, S24, S6
2862CE:  VLDR            S24, =448.0
2862D2:  VDIV.F32        S4, S4, S22
2862D6:  IT GT
2862D8:  VMOVGT.F32      S0, S18
2862DC:  LDR             R0, [R6,#(dword_9FC904 - 0x9FC8FC)]
2862DE:  VSUB.F32        S0, S17, S0
2862E2:  VLDR            S17, =320.0
2862E6:  VMOV            S8, R0
2862EA:  VDIV.F32        S10, S26, S24
2862EE:  VCVT.F32.S32    S8, S8
2862F2:  VDIV.F32        S0, S0, S22
2862F6:  VDIV.F32        S8, S8, S24
2862FA:  VDIV.F32        S6, S6, S22
2862FE:  VMUL.F32        S26, S2, S19
286302:  VMUL.F32        S30, S4, S12
286306:  VLDR            S12, =0.1
28630A:  VMUL.F32        S2, S10, S19
28630E:  VLDR            S10, =3.1
286312:  VMUL.F32        S8, S8, S19
286316:  VMUL.F32        S4, S6, S17
28631A:  VMUL.F32        S0, S0, S17
28631E:  VMUL.F32        S21, S26, S10
286322:  VMUL.F32        S23, S26, S12
286326:  VSUB.F32        S2, S2, S30
28632A:  VADD.F32        S6, S30, S8
28632E:  VSUB.F32        S4, S4, S21
286332:  VSUB.F32        S0, S0, S23
286336:  VSTR            S4, [R11,#4]
28633A:  VSTR            S6, [R11,#8]
28633E:  VSTR            S0, [R11,#0xC]
286342:  VSTR            S2, [R11,#0x10]
286346:  LDR             R4, [R6,#(dword_9FC900 - 0x9FC8FC)]
286348:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28634C:  VMOV            S25, R0
286350:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
286354:  VLDR            S0, [R6,#4]
286358:  VMOV            S4, R0
28635C:  VLDR            S2, [R6,#8]
286360:  VCVT.F32.U32    S25, S25
286364:  VCVT.F32.U32    S27, S4
286368:  VCVT.F32.S32    S29, S2
28636C:  VCVT.F32.S32    S31, S0
286370:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
286374:  VMOV            S0, R0
286378:  VCVT.F32.U32    S28, S0
28637C:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
286380:  VDIV.F32        S2, S25, S27
286384:  VMOV            S0, R0
286388:  VCMPE.F32       S2, S20
28638C:  VCVT.F32.U32    S0, S0
286390:  VMRS            APSR_nzcv, FPSCR
286394:  VMOV            S4, R4
286398:  VMOV.F32        S2, S16
28639C:  VCVT.F32.S32    S4, S4
2863A0:  VDIV.F32        S0, S28, S0
2863A4:  IT GT
2863A6:  VMOVGT.F32      S2, S18
2863AA:  VCMPE.F32       S0, S20
2863AE:  VMRS            APSR_nzcv, FPSCR
2863B2:  VMOV.F32        S0, S16
2863B6:  VSUB.F32        S2, S4, S2
2863BA:  VDIV.F32        S4, S29, S24
2863BE:  IT GT
2863C0:  VMOVGT.F32      S0, S18
2863C4:  LDR             R0, [R6,#(dword_9FC904 - 0x9FC8FC)]
2863C6:  VSUB.F32        S0, S31, S0
2863CA:  VMOV            S6, R0
2863CE:  VDIV.F32        S2, S2, S22
2863D2:  VCVT.F32.S32    S6, S6
2863D6:  VDIV.F32        S0, S0, S22
2863DA:  VDIV.F32        S6, S6, S24
2863DE:  VMUL.F32        S4, S4, S19
2863E2:  VMUL.F32        S6, S6, S19
2863E6:  VMUL.F32        S2, S2, S17
2863EA:  VMUL.F32        S0, S0, S17
2863EE:  VSUB.F32        S4, S4, S30
2863F2:  VADD.F32        S6, S30, S6
2863F6:  VADD.F32        S2, S23, S2
2863FA:  VADD.F32        S0, S21, S0
2863FE:  VSTR            S2, [R11,#0x14]
286402:  VSTR            S6, [R11,#0x18]
286406:  VSTR            S0, [R11,#0x1C]
28640A:  VSTR            S4, [R11,#0x20]
28640E:  LDR             R4, [R6,#(dword_9FC900 - 0x9FC8FC)]
286410:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
286414:  VMOV            S28, R0
286418:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28641C:  VLDR            S0, [R6,#4]
286420:  VMOV            S4, R0
286424:  VLDR            S2, [R6,#8]
286428:  VCVT.F32.U32    S28, S28
28642C:  VCVT.F32.U32    S19, S4
286430:  VCVT.F32.S32    S21, S2
286434:  VCVT.F32.S32    S23, S0
286438:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28643C:  VMOV            S0, R0
286440:  VCVT.F32.U32    S25, S0
286444:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
286448:  VDIV.F32        S2, S28, S19
28644C:  ADD.W           R9, SP, #0xA8+var_88
286450:  MOVS            R5, #0x66 ; 'f'
286452:  MOVS            R1, #0xF0; unsigned __int8
286454:  MOVS            R2, #0xF0; unsigned __int8
286456:  MOVS            R3, #0xF0; unsigned __int8
286458:  VMOV            S0, R0
28645C:  VCMPE.F32       S2, S20
286460:  VCVT.F32.U32    S0, S0
286464:  VMRS            APSR_nzcv, FPSCR
286468:  VMOV            S4, R4
28646C:  VMOV.F32        S2, S16
286470:  VCVT.F32.S32    S4, S4
286474:  VMOV.F32        S8, #1.5
286478:  VDIV.F32        S0, S25, S0
28647C:  IT GT
28647E:  VMOVGT.F32      S2, S18
286482:  VCMPE.F32       S0, S20
286486:  VMRS            APSR_nzcv, FPSCR
28648A:  VMOV.F32        S0, S16
28648E:  VSUB.F32        S2, S4, S2
286492:  VDIV.F32        S4, S21, S24
286496:  IT GT
286498:  VMOVGT.F32      S0, S18
28649C:  LDR             R0, [R6,#(dword_9FC904 - 0x9FC8FC)]
28649E:  VSUB.F32        S0, S23, S0
2864A2:  VMOV            S6, R0
2864A6:  VDIV.F32        S2, S2, S22
2864AA:  VCVT.F32.S32    S6, S6
2864AE:  LDR.W           R0, [R11]
2864B2:  VDIV.F32        S0, S0, S22
2864B6:  CMP             R0, #1
2864B8:  MOV             R0, R9; this
2864BA:  VDIV.F32        S6, S6, S24
2864BE:  VMUL.F32        S4, S4, S18
2864C2:  VMUL.F32        S6, S6, S18
2864C6:  VMUL.F32        S8, S26, S8
2864CA:  VMUL.F32        S2, S2, S17
2864CE:  VMUL.F32        S0, S0, S17
2864D2:  VSUB.F32        S4, S4, S30
2864D6:  VADD.F32        S6, S30, S6
2864DA:  VSUB.F32        S2, S2, S8
2864DE:  VADD.F32        S0, S8, S0
2864E2:  VSTR            S2, [R11,#0x44]
2864E6:  VSTR            S6, [R11,#0x48]
2864EA:  VSTR            S0, [R11,#0x4C]
2864EE:  VSTR            S4, [R11,#0x50]
2864F2:  ITE NE
2864F4:  ADDNE.W         R4, R11, #0x14
2864F8:  ADDEQ.W         R4, R11, #4
2864FC:  STR             R5, [SP,#0xA8+var_A8]; unsigned __int8
2864FE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286502:  ADD.W           R8, SP, #0xA8+var_64
286506:  MOVS            R1, #0x99; unsigned __int8
286508:  MOVS            R2, #0xCC; unsigned __int8
28650A:  MOVS            R3, #0x99; unsigned __int8
28650C:  MOV             R0, R8; this
28650E:  STR             R5, [SP,#0xA8+var_A8]; unsigned __int8
286510:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286514:  ADD             R5, SP, #0xA8+var_68
286516:  MOVS            R6, #0x32 ; '2'
286518:  MOVS            R1, #0x99; unsigned __int8
28651A:  MOVS            R2, #0xCC; unsigned __int8
28651C:  MOV             R0, R5; this
28651E:  MOVS            R3, #0x99; unsigned __int8
286520:  STR             R6, [SP,#0xA8+var_A8]; unsigned __int8
286522:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286526:  ADD             R0, SP, #0xA8+var_6C; this
286528:  MOVS            R1, #0x99; unsigned __int8
28652A:  MOVS            R2, #0xCC; unsigned __int8
28652C:  MOVS            R3, #0x99; unsigned __int8
28652E:  STR             R6, [SP,#0xA8+var_A8]; unsigned __int8
286530:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286534:  STR             R0, [SP,#0xA8+var_A8]
286536:  MOV             R0, R4
286538:  MOV             R1, R9
28653A:  MOV             R2, R8
28653C:  MOV             R3, R5
28653E:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
286542:  BLX             j__ZN7CWidget17DrawTitleSafeAreaEv; CWidget::DrawTitleSafeArea(void)
286546:  MOVS            R0, #0; this
286548:  MOVS            R1, #0; unsigned __int8
28654A:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
28654E:  MOVS            R0, #0; this
286550:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
286554:  VLDR            S0, [R11,#4]
286558:  VMOV.F32        S24, #0.875
28655C:  VLDR            S2, [R11,#0xC]
286560:  VSUB.F32        S0, S2, S0
286564:  VABS.F32        S0, S0
286568:  VMUL.F32        S0, S0, S24
28656C:  VMOV            R0, S0; this
286570:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
286574:  MOVS            R0, #(stderr+1); this
286576:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
28657A:  MOVS            R0, #(stderr+1); this
28657C:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
286580:  MOVS            R0, #(stderr+2); this
286582:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
286586:  VLDR            S0, [R11,#8]
28658A:  VLDR            S2, [R11,#0x10]
28658E:  VSUB.F32        S0, S0, S2
286592:  VLDR            S2, =0.03
286596:  VABS.F32        S0, S0
28659A:  VMUL.F32        S26, S0, S2
28659E:  VMOV            R0, S26; this
2865A2:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2865A6:  LDR.W           R0, =(TheText_ptr - 0x2865B2)
2865AA:  ADR.W           R1, aHudFot; "HUD_FOT"
2865AE:  ADD             R0, PC; TheText_ptr
2865B0:  LDR             R0, [R0]; TheText ; this
2865B2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2865B6:  CMP             R0, #0
2865B8:  MOV             R10, R11
2865BA:  BEQ             loc_286626
2865BC:  B               loc_2865EC
2865BE:  ALIGN 0x10
2865C0:  DCFS 1.9
2865C4:  DCFS 0.0
2865C8:  DCFS 70.0
2865CC:  DCFS 640.0
2865D0:  DCFS 448.0
2865D4:  DCFS 320.0
2865D8:  DCFS 0.1
2865DC:  DCFS 3.1
2865E0:  DCFS 0.03
2865E4:  DCFS -0.067
2865E8:  DCFS 0.0375
2865EC:  MOVS            R1, #(stderr+1); unsigned __int16 *
2865EE:  MOVS            R2, #0; unsigned __int8
2865F0:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2865F4:  VLDR            S0, [R10,#4]
2865F8:  VLDR            S2, [R10,#0xC]
2865FC:  VSUB.F32        S0, S2, S0
286600:  VMOV            S2, R0
286604:  VABS.F32        S0, S0
286608:  VMUL.F32        S0, S0, S24
28660C:  VCMPE.F32       S2, S0
286610:  VMRS            APSR_nzcv, FPSCR
286614:  BLE             loc_286626
286616:  VDIV.F32        S0, S0, S2
28661A:  VMUL.F32        S26, S26, S0
28661E:  VMOV            R0, S26; this
286622:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
286626:  LDR.W           R0, =(TheText_ptr - 0x286632)
28662A:  ADR.W           R1, aHudVeh; "HUD_VEH"
28662E:  ADD             R0, PC; TheText_ptr
286630:  LDR             R0, [R0]; TheText ; this
286632:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
286636:  CBZ             R0, loc_286672
286638:  MOVS            R1, #(stderr+1); unsigned __int16 *
28663A:  MOVS            R2, #0; unsigned __int8
28663C:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
286640:  VLDR            S0, [R10,#0x14]
286644:  VLDR            S2, [R10,#0x1C]
286648:  VSUB.F32        S0, S2, S0
28664C:  VMOV            S2, R0
286650:  VABS.F32        S0, S0
286654:  VMUL.F32        S0, S0, S24
286658:  VCMPE.F32       S2, S0
28665C:  VMRS            APSR_nzcv, FPSCR
286660:  BLE             loc_286672
286662:  VDIV.F32        S0, S0, S2
286666:  VMUL.F32        S26, S26, S0
28666A:  VMOV            R0, S26; this
28666E:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
286672:  LDR.W           R0, =(TheText_ptr - 0x28667E)
286676:  ADR.W           R1, aHudDef; "HUD_DEF"
28667A:  ADD             R0, PC; TheText_ptr
28667C:  LDR             R0, [R0]; TheText ; this
28667E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
286682:  CBZ             R0, loc_2866BE
286684:  MOVS            R1, #(stderr+1); unsigned __int16 *
286686:  MOVS            R2, #0; unsigned __int8
286688:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
28668C:  VLDR            S0, [R10,#0x44]
286690:  VLDR            S2, [R10,#0x4C]
286694:  VSUB.F32        S0, S2, S0
286698:  VMOV            S2, R0
28669C:  VABS.F32        S0, S0
2866A0:  VMUL.F32        S0, S0, S24
2866A4:  VCMPE.F32       S2, S0
2866A8:  VMRS            APSR_nzcv, FPSCR
2866AC:  BLE             loc_2866BE
2866AE:  VDIV.F32        S0, S0, S2
2866B2:  VMUL.F32        S0, S26, S0
2866B6:  VMOV            R0, S0; this
2866BA:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2866BE:  ADD             R0, SP, #0xA8+var_70; this
2866C0:  MOVS            R4, #0xFF
2866C2:  MOVS            R1, #0xFF; unsigned __int8
2866C4:  MOVS            R2, #0xFF; unsigned __int8
2866C6:  MOVS            R3, #0xFF; unsigned __int8
2866C8:  STR             R4, [SP,#0xA8+var_A8]; unsigned __int8
2866CA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2866CE:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2866D2:  ADD             R0, SP, #0xA8+var_74; this
2866D4:  MOVS            R1, #0; unsigned __int8
2866D6:  MOVS            R2, #0; unsigned __int8
2866D8:  MOVS            R3, #0; unsigned __int8
2866DA:  STR             R4, [SP,#0xA8+var_A8]; unsigned __int8
2866DC:  MOVS            R4, #0
2866DE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2866E2:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2866E6:  VLDR            S0, [R10,#8]
2866EA:  MOVS            R0, #0; this
2866EC:  VLDR            S2, [R10,#0x10]
2866F0:  VMOV.F32        S26, #0.5
2866F4:  VLDR            S28, [R10,#4]
2866F8:  VLDR            S30, [R10,#0xC]
2866FC:  VADD.F32        S17, S0, S2
286700:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
286704:  VMOV            S0, R0
286708:  LDR.W           R0, =(TheText_ptr - 0x28671C)
28670C:  VADD.F32        S2, S28, S30
286710:  ADR.W           R1, aHudFot; "HUD_FOT"
286714:  VMUL.F32        S0, S0, S26
286718:  ADD             R0, PC; TheText_ptr
28671A:  VMUL.F32        S4, S17, S26
28671E:  LDR             R5, [R0]; TheText
286720:  MOV             R0, R5; this
286722:  VMUL.F32        S28, S2, S26
286726:  VSUB.F32        S30, S4, S0
28672A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
28672E:  MOV             R2, R0; CFont *
286730:  VMOV            R0, S28; this
286734:  VMOV            R1, S30; float
286738:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
28673C:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
286740:  VLDR            S0, [R10,#0x18]
286744:  MOVS            R0, #0; this
286746:  VLDR            S2, [R10,#0x20]
28674A:  VLDR            S28, [R10,#0x14]
28674E:  VLDR            S30, [R10,#0x1C]
286752:  VADD.F32        S17, S0, S2
286756:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
28675A:  VMOV            S0, R0
28675E:  ADR.W           R1, aHudVeh; "HUD_VEH"
286762:  VADD.F32        S2, S28, S30
286766:  MOV             R0, R5; this
286768:  VMUL.F32        S0, S0, S26
28676C:  VMUL.F32        S4, S17, S26
286770:  VMUL.F32        S28, S2, S26
286774:  VSUB.F32        S30, S4, S0
286778:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
28677C:  MOV             R2, R0; CFont *
28677E:  VMOV            R0, S28; this
286782:  VMOV            R1, S30; float
286786:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
28678A:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
28678E:  VLDR            S0, [R10,#0x48]
286792:  MOVS            R0, #0; this
286794:  VLDR            S2, [R10,#0x50]
286798:  VLDR            S28, [R10,#0x44]
28679C:  VLDR            S30, [R10,#0x4C]
2867A0:  VADD.F32        S17, S0, S2
2867A4:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2867A8:  VMOV            S0, R0
2867AC:  ADR.W           R1, aHudDef; "HUD_DEF"
2867B0:  VADD.F32        S2, S28, S30
2867B4:  MOV             R0, R5; this
2867B6:  VMUL.F32        S0, S0, S26
2867BA:  VMUL.F32        S4, S17, S26
2867BE:  VMUL.F32        S28, S2, S26
2867C2:  VSUB.F32        S30, S4, S0
2867C6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2867CA:  MOV             R2, R0; CFont *
2867CC:  VMOV            R0, S28; this
2867D0:  VMOV            R1, S30; float
2867D4:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2867D8:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2867DC:  LDR.W           R0, =(RsGlobal_ptr - 0x2867E8)
2867E0:  VLDR            S4, =-0.067
2867E4:  ADD             R0, PC; RsGlobal_ptr
2867E6:  VLDR            S6, =0.1
2867EA:  LDR             R0, [R0]; RsGlobal
2867EC:  VLDR            S0, [R0,#4]
2867F0:  VLDR            S2, [R0,#8]
2867F4:  MOVS            R0, #0; this
2867F6:  VCVT.F32.S32    S2, S2
2867FA:  VCVT.F32.S32    S0, S0
2867FE:  STR.W           R4, [R10,#0x24]
286802:  VMUL.F32        S4, S2, S4
286806:  VSTR            S2, [R10,#0x28]
28680A:  VMUL.F32        S6, S0, S6
28680E:  VADD.F32        S4, S2, S4
286812:  VSUB.F32        S8, S0, S6
286816:  VSTR            S6, [R10,#0x2C]
28681A:  VSTR            S4, [R10,#0x30]
28681E:  VSTR            S8, [R10,#0x34]
286822:  VSTR            S2, [R10,#0x38]
286826:  VSTR            S0, [R10,#0x3C]
28682A:  VSTR            S4, [R10,#0x40]
28682E:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
286832:  VLDR            S0, [R10,#0x38]
286836:  VLDR            S2, [R10,#0x40]
28683A:  VSUB.F32        S0, S0, S2
28683E:  VLDR            S2, =0.0375
286842:  VABS.F32        S0, S0
286846:  VMUL.F32        S28, S0, S2
28684A:  VMOV            R0, S28; this
28684E:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
286852:  ADR.W           R1, aHudSav; "HUD_SAV"
286856:  MOV             R0, R5; this
286858:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
28685C:  CBZ             R0, loc_286898
28685E:  MOVS            R1, #(stderr+1); unsigned __int16 *
286860:  MOVS            R2, #0; unsigned __int8
286862:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
286866:  VLDR            S0, [R10,#0x34]
28686A:  VLDR            S2, [R10,#0x3C]
28686E:  VSUB.F32        S0, S2, S0
286872:  VMOV            S2, R0
286876:  VABS.F32        S0, S0
28687A:  VMUL.F32        S0, S0, S24
28687E:  VCMPE.F32       S2, S0
286882:  VMRS            APSR_nzcv, FPSCR
286886:  BLE             loc_286898
286888:  VDIV.F32        S0, S0, S2
28688C:  VMUL.F32        S28, S28, S0
286890:  VMOV            R0, S28; this
286894:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
286898:  LDR.W           R0, =(TheText_ptr - 0x2868A4)
28689C:  ADR.W           R1, aHudCan; "HUD_CAN"
2868A0:  ADD             R0, PC; TheText_ptr
2868A2:  LDR             R0, [R0]; TheText ; this
2868A4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2868A8:  CBZ             R0, loc_2868E4
2868AA:  MOVS            R1, #(stderr+1); unsigned __int16 *
2868AC:  MOVS            R2, #0; unsigned __int8
2868AE:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2868B2:  VLDR            S0, [R10,#0x24]
2868B6:  VLDR            S2, [R10,#0x2C]
2868BA:  VSUB.F32        S0, S2, S0
2868BE:  VMOV            S2, R0
2868C2:  VABS.F32        S0, S0
2868C6:  VMUL.F32        S0, S0, S24
2868CA:  VCMPE.F32       S2, S0
2868CE:  VMRS            APSR_nzcv, FPSCR
2868D2:  BLE             loc_2868E4
2868D4:  VDIV.F32        S0, S0, S2
2868D8:  VMUL.F32        S0, S28, S0
2868DC:  VMOV            R0, S0; this
2868E0:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2868E4:  VLDR            S0, [R10,#0x38]
2868E8:  MOVS            R0, #0; this
2868EA:  VLDR            S2, [R10,#0x40]
2868EE:  VLDR            S28, [R10,#0x34]
2868F2:  VLDR            S30, [R10,#0x3C]
2868F6:  VADD.F32        S17, S0, S2
2868FA:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2868FE:  VMOV            S0, R0
286902:  LDR.W           R0, =(TheText_ptr - 0x286916)
286906:  VADD.F32        S2, S28, S30
28690A:  ADR.W           R1, aHudSav; "HUD_SAV"
28690E:  VMUL.F32        S0, S0, S26
286912:  ADD             R0, PC; TheText_ptr
286914:  VMUL.F32        S4, S17, S26
286918:  LDR             R4, [R0]; TheText
28691A:  MOV             R0, R4; this
28691C:  VMUL.F32        S28, S2, S26
286920:  VSUB.F32        S30, S4, S0
286924:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
286928:  MOV             R2, R0; CFont *
28692A:  VMOV            R0, S28; this
28692E:  VMOV            R1, S30; float
286932:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
286936:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
28693A:  VLDR            S0, [R10,#0x28]
28693E:  MOVS            R0, #0; this
286940:  VLDR            S2, [R10,#0x30]
286944:  VLDR            S28, [R10,#0x24]
286948:  VLDR            S30, [R10,#0x2C]
28694C:  VADD.F32        S17, S0, S2
286950:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
286954:  VMOV            S0, R0
286958:  ADR.W           R1, aHudCan; "HUD_CAN"
28695C:  VADD.F32        S2, S28, S30
286960:  MOV             R0, R4; this
286962:  VMUL.F32        S0, S0, S26
286966:  VMUL.F32        S4, S17, S26
28696A:  VMUL.F32        S28, S2, S26
28696E:  VSUB.F32        S30, S4, S0
286972:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
286976:  MOV             R2, R0; CFont *
286978:  VMOV            R0, S28; this
28697C:  VMOV            R1, S30; float
286980:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
286984:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
286988:  LDR.W           R0, =(byte_6DFE58 - 0x286990)
28698C:  ADD             R0, PC; byte_6DFE58
28698E:  LDRB            R0, [R0]
286990:  DMB.W           ISH
286994:  TST.W           R0, #1
286998:  BNE             loc_2869C4
28699A:  LDR.W           R0, =(byte_6DFE58 - 0x2869A2)
28699E:  ADD             R0, PC; byte_6DFE58 ; __guard *
2869A0:  BLX             j___cxa_guard_acquire
2869A4:  CBZ             R0, loc_2869C4
2869A6:  LDR.W           R0, =(dword_6DFE54 - 0x2869B4)
2869AA:  MOVS            R1, #0xFF
2869AC:  STR             R1, [SP,#0xA8+var_A8]; unsigned __int8
2869AE:  MOVS            R1, #0xFF; unsigned __int8
2869B0:  ADD             R0, PC; dword_6DFE54 ; this
2869B2:  MOVS            R2, #0x50 ; 'P'; unsigned __int8
2869B4:  MOVS            R3, #0x50 ; 'P'; unsigned __int8
2869B6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2869BA:  LDR.W           R0, =(byte_6DFE58 - 0x2869C2)
2869BE:  ADD             R0, PC; byte_6DFE58 ; __guard *
2869C0:  BLX             j___cxa_guard_release
2869C4:  LDR.W           R0, =(byte_6DFE60 - 0x2869CC)
2869C8:  ADD             R0, PC; byte_6DFE60
2869CA:  LDRB            R0, [R0]
2869CC:  DMB.W           ISH
2869D0:  TST.W           R0, #1
2869D4:  BNE             loc_286A00
2869D6:  LDR.W           R0, =(byte_6DFE60 - 0x2869DE)
2869DA:  ADD             R0, PC; byte_6DFE60 ; __guard *
2869DC:  BLX             j___cxa_guard_acquire
2869E0:  CBZ             R0, loc_286A00
2869E2:  LDR.W           R0, =(dword_6DFE5C - 0x2869F0)
2869E6:  MOVS            R1, #0xFF
2869E8:  STR             R1, [SP,#0xA8+var_A8]; unsigned __int8
2869EA:  MOVS            R1, #0xF0; unsigned __int8
2869EC:  ADD             R0, PC; dword_6DFE5C ; this
2869EE:  MOVS            R2, #0xF0; unsigned __int8
2869F0:  MOVS            R3, #0xF0; unsigned __int8
2869F2:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2869F6:  LDR.W           R0, =(byte_6DFE60 - 0x2869FE)
2869FA:  ADD             R0, PC; byte_6DFE60 ; __guard *
2869FC:  BLX             j___cxa_guard_release
286A00:  VMOV.I32        Q7, #0x40000000
286A04:  ADD             R4, SP, #0xA8+var_88
286A06:  MOVS            R6, #0
286A08:  MOV.W           R11, #0
286A0C:  STR.W           R10, [SP,#0xA8+var_98]
286A10:  B               loc_286A36
286A12:  MOVS            R0, #0xFF
286A14:  MOVS            R1, #0xFF; unsigned __int8
286A16:  STR             R0, [SP,#0xA8+var_A8]; unsigned __int8
286A18:  MOV             R0, R8; this
286A1A:  MOVS            R2, #0xFF; unsigned __int8
286A1C:  MOVS            R3, #0xFF; unsigned __int8
286A1E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286A22:  B               loc_286B1C
286A24:  MOVS            R0, #0xFF
286A26:  MOVS            R1, #0xFF; unsigned __int8
286A28:  STR             R0, [SP,#0xA8+var_A8]; unsigned __int8
286A2A:  ADD             R0, SP, #0xA8+var_64; this
286A2C:  MOVS            R2, #0xFF; unsigned __int8
286A2E:  MOVS            R3, #0xFF; unsigned __int8
286A30:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286A34:  B               loc_286AC6
286A36:  ADD.W           R5, R10, R6
286A3A:  LDRB.W          R0, [R5,#0x8D]
286A3E:  CMP             R0, #0
286A40:  ITTT NE
286A42:  LDRNE.W         R0, [R10]
286A46:  LDRNE.W         R1, [R5,#0x88]
286A4A:  TSTNE           R1, R0
286A4C:  BEQ             loc_286B26
286A4E:  ADD.W           R9, R5, #0x70 ; 'p'
286A52:  MOV             R8, R5
286A54:  VLD1.32         {D16-D17}, [R9]
286A58:  VADD.F32        Q9, Q8, Q7
286A5C:  VST1.64         {D16-D17}, [R4@128]
286A60:  VST1.64         {D18-D19}, [R4@128]
286A64:  LDR.W           R0, [R8,#0x80]!
286A68:  CBZ             R0, loc_286AAA
286A6A:  STR.W           R9, [SP,#0xA8+var_94]
286A6E:  MOV             R9, R10
286A70:  ADD.W           R10, SP, #0xA8+var_64
286A74:  MOVS            R0, #0xFF
286A76:  STR             R0, [SP,#0xA8+var_A8]; unsigned __int8
286A78:  MOVS            R1, #0; unsigned __int8
286A7A:  MOV             R0, R10; this
286A7C:  MOVS            R2, #0; unsigned __int8
286A7E:  MOVS            R3, #0; unsigned __int8
286A80:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286A84:  MOV             R0, R8
286A86:  MOV             R1, R4
286A88:  MOV             R2, R10
286A8A:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
286A8E:  ADD.W           R0, R11, R11,LSL#2
286A92:  LDRB.W          R1, [R5,#0x8C]
286A96:  ADD.W           R0, R9, R0,LSL#3
286A9A:  CMP             R1, #0
286A9C:  ADD.W           R10, R0, #0x8C
286AA0:  BEQ             loc_286AB4
286AA2:  LDR.W           R0, =(dword_6DFE54 - 0x286AAA)
286AA6:  ADD             R0, PC; dword_6DFE54
286AA8:  B               loc_286AC2
286AAA:  ADD.W           R10, R5, #0x8C
286AAE:  ADD.W           R8, SP, #0xA8+var_64
286AB2:  B               loc_286ADA
286AB4:  LDR.W           R0, [R9,#0x490]
286AB8:  CMP             R11, R0
286ABA:  BNE             loc_286A24
286ABC:  LDR.W           R0, =(dword_6DFE5C - 0x286AC4)
286AC0:  ADD             R0, PC; dword_6DFE5C
286AC2:  LDR             R0, [R0]
286AC4:  STR             R0, [SP,#0xA8+var_64]
286AC6:  LDR.W           R9, [SP,#0xA8+var_94]
286ACA:  MOV             R0, R8
286ACC:  ADD.W           R8, SP, #0xA8+var_64
286AD0:  MOV             R1, R9
286AD2:  MOV             R2, R8
286AD4:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
286AD8:  ADD             R4, SP, #0xA8+var_88
286ADA:  MOVS            R0, #0xFF
286ADC:  MOVS            R1, #0; unsigned __int8
286ADE:  STR             R0, [SP,#0xA8+var_A8]; unsigned __int8
286AE0:  MOV             R0, R8; this
286AE2:  MOVS            R2, #0; unsigned __int8
286AE4:  MOVS            R3, #0; unsigned __int8
286AE6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286AEA:  ADDS            R5, #0x84
286AEC:  MOV             R1, R4
286AEE:  MOV             R2, R8
286AF0:  MOV             R0, R5
286AF2:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
286AF6:  LDRB.W          R0, [R10]
286AFA:  CBZ             R0, loc_286B06
286AFC:  LDR             R0, =(dword_6DFE54 - 0x286B06)
286AFE:  LDR.W           R10, [SP,#0xA8+var_98]
286B02:  ADD             R0, PC; dword_6DFE54
286B04:  B               loc_286B18
286B06:  LDR.W           R10, [SP,#0xA8+var_98]
286B0A:  LDR.W           R0, [R10,#0x490]
286B0E:  CMP             R11, R0
286B10:  BNE.W           loc_286A12
286B14:  LDR             R0, =(dword_6DFE5C - 0x286B1A)
286B16:  ADD             R0, PC; dword_6DFE5C
286B18:  LDR             R0, [R0]
286B1A:  STR             R0, [SP,#0xA8+var_64]
286B1C:  MOV             R0, R5
286B1E:  MOV             R1, R9
286B20:  MOV             R2, R8
286B22:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
286B26:  ADDS            R6, #0x28 ; '('
286B28:  ADD.W           R11, R11, #1
286B2C:  CMP.W           R6, #0x2F8
286B30:  BNE.W           loc_286A36
286B34:  LDRB.W          R0, [R10,#0x495]
286B38:  CMP             R0, #0
286B3A:  BEQ.W           loc_286E1C
286B3E:  LDR             R0, =(RsGlobal_ptr - 0x286B44)
286B40:  ADD             R0, PC; RsGlobal_ptr
286B42:  LDR             R6, [R0]; RsGlobal
286B44:  LDR.W           R8, [R6,#(dword_9FC900 - 0x9FC8FC)]
286B48:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
286B4C:  MOV             R4, R0
286B4E:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
286B52:  VLDR            S2, [R6,#8]
286B56:  MOV             R9, R0
286B58:  VLDR            S0, [R6,#4]
286B5C:  VCVT.F32.S32    S2, S2
286B60:  VSTR            S2, [SP,#0xA8+var_94]
286B64:  VCVT.F32.S32    S0, S0
286B68:  VSTR            S0, [SP,#0xA8+var_9C]
286B6C:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
286B70:  MOV             R10, R0
286B72:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
286B76:  VLDR            S0, [R6,#4]
286B7A:  MOV             R5, R0
286B7C:  VMOV            S19, R4
286B80:  VCVT.F32.S32    S30, S0
286B84:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
286B88:  MOV             R4, R0
286B8A:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
286B8E:  VLDR            S2, [R6,#8]
286B92:  VMOV            S4, R9
286B96:  VLDR            S0, [R6,#4]
286B9A:  VCVT.F32.U32    S19, S19
286B9E:  LDR             R6, [SP,#0xA8+var_98]
286BA0:  VCVT.F32.U32    S21, S4
286BA4:  VCVT.F32.S32    S23, S2
286BA8:  VMOV            S2, R10
286BAC:  VMOV.F32        S17, S26
286BB0:  VCVT.F32.U32    S25, S2
286BB4:  VMOV            S2, R5
286BB8:  VMOV.F32        S26, S24
286BBC:  VCVT.F32.U32    S27, S2
286BC0:  VMOV            S2, R4
286BC4:  VCVT.F32.U32    S29, S2
286BC8:  VMOV            S2, R0
286BCC:  VCVT.F32.S32    S31, S0
286BD0:  VCVT.F32.U32    S24, S2
286BD4:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
286BD8:  VMOV            S0, R0
286BDC:  VMOV.F32        S28, S22
286BE0:  VMOV.F32        S22, S20
286BE4:  VCVT.F32.U32    S20, S0
286BE8:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
286BEC:  VDIV.F32        S2, S19, S21
286BF0:  MOVS            R5, #0x40 ; '@'
286BF2:  MOVS            R1, #0; unsigned __int8
286BF4:  MOVS            R2, #0; unsigned __int8
286BF6:  MOVS            R3, #0; unsigned __int8
286BF8:  VCMPE.F32       S2, S22
286BFC:  VLDR            S10, =120.0
286C00:  VDIV.F32        S4, S25, S27
286C04:  VMRS            APSR_nzcv, FPSCR
286C08:  VMOV            S0, R0
286C0C:  VMOV            S8, R8
286C10:  VLDR            S12, =80.0
286C14:  VDIV.F32        S6, S29, S24
286C18:  ADD.W           R8, SP, #0xA8+var_88
286C1C:  MOV             R0, R8; this
286C1E:  VCMPE.F32       S4, S22
286C22:  VMOV.F32        S2, S16
286C26:  VCVT.F32.U32    S0, S0
286C2A:  VCVT.F32.S32    S8, S8
286C2E:  IT GT
286C30:  VMOVGT.F32      S2, S18
286C34:  VMRS            APSR_nzcv, FPSCR
286C38:  VMOV.F32        S4, S16
286C3C:  VCMPE.F32       S6, S22
286C40:  VMOV.F32        S6, S16
286C44:  VMUL.F32        S1, S30, S17
286C48:  VMOV.F32        S24, S26
286C4C:  VDIV.F32        S0, S20, S0
286C50:  IT GT
286C52:  VMOVGT.F32      S4, S18
286C56:  VMRS            APSR_nzcv, FPSCR
286C5A:  VCMPE.F32       S0, S22
286C5E:  VSUB.F32        S0, S8, S2
286C62:  VMUL.F32        S8, S8, S17
286C66:  VDIV.F32        S0, S0, S28
286C6A:  IT GT
286C6C:  VMOVGT.F32      S6, S18
286C70:  VMRS            APSR_nzcv, FPSCR
286C74:  VMUL.F32        S0, S0, S10
286C78:  VSUB.F32        S0, S8, S0
286C7C:  IT GT
286C7E:  VMOVGT.F32      S16, S18
286C82:  VLDR            S2, [SP,#0xA8+var_9C]
286C86:  VLDR            S14, [SP,#0xA8+var_94]
286C8A:  VSUB.F32        S2, S2, S4
286C8E:  VSTR            S0, [R6,#0x54]
286C92:  VSUB.F32        S4, S30, S6
286C96:  VSUB.F32        S6, S31, S16
286C9A:  VMUL.F32        S14, S14, S17
286C9E:  VDIV.F32        S2, S2, S28
286CA2:  VDIV.F32        S4, S4, S28
286CA6:  VDIV.F32        S6, S6, S28
286CAA:  VMUL.F32        S4, S4, S10
286CAE:  VMUL.F32        S2, S2, S12
286CB2:  VMUL.F32        S10, S23, S17
286CB6:  VMUL.F32        S6, S6, S12
286CBA:  VADD.F32        S4, S1, S4
286CBE:  VSUB.F32        S2, S14, S2
286CC2:  VADD.F32        S6, S10, S6
286CC6:  VSTR            S6, [R6,#0x58]
286CCA:  VSTR            S4, [R6,#0x5C]
286CCE:  VSTR            S2, [R6,#0x60]
286CD2:  STR             R5, [SP,#0xA8+var_A8]; unsigned __int8
286CD4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286CD8:  ADD.W           R9, SP, #0xA8+var_64
286CDC:  MOVS            R1, #0; unsigned __int8
286CDE:  MOVS            R2, #0; unsigned __int8
286CE0:  MOVS            R3, #0; unsigned __int8
286CE2:  MOV             R0, R9; this
286CE4:  STR             R5, [SP,#0xA8+var_A8]; unsigned __int8
286CE6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286CEA:  ADD             R5, SP, #0xA8+var_68
286CEC:  MOVS            R4, #0xC0
286CEE:  MOVS            R1, #0; unsigned __int8
286CF0:  MOVS            R2, #0; unsigned __int8
286CF2:  MOV             R0, R5; this
286CF4:  MOVS            R3, #0; unsigned __int8
286CF6:  STR             R4, [SP,#0xA8+var_A8]; unsigned __int8
286CF8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286CFC:  ADD             R0, SP, #0xA8+var_6C; this
286CFE:  MOVS            R1, #0; unsigned __int8
286D00:  MOVS            R2, #0; unsigned __int8
286D02:  MOVS            R3, #0; unsigned __int8
286D04:  STR             R4, [SP,#0xA8+var_A8]; unsigned __int8
286D06:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286D0A:  STR             R0, [SP,#0xA8+var_A8]
286D0C:  ADD.W           R0, R6, #0x54 ; 'T'
286D10:  MOV             R1, R8
286D12:  MOV             R2, R9
286D14:  MOV             R3, R5
286D16:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
286D1A:  MOVS            R0, #(stderr+2); this
286D1C:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
286D20:  VLDR            S0, [R6,#0x54]
286D24:  VLDR            S2, [R6,#0x5C]
286D28:  VSUB.F32        S0, S2, S0
286D2C:  VABS.F32        S0, S0
286D30:  VMUL.F32        S0, S0, S24
286D34:  VMOV            R0, S0; this
286D38:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
286D3C:  ADD             R0, SP, #0xA8+var_8C; this
286D3E:  MOVS            R4, #0xFF
286D40:  MOVS            R1, #0xF0; unsigned __int8
286D42:  MOVS            R2, #0xF0; unsigned __int8
286D44:  MOVS            R3, #0xF0; unsigned __int8
286D46:  STR             R4, [SP,#0xA8+var_A8]; unsigned __int8
286D48:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286D4C:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
286D50:  ADD             R0, SP, #0xA8+var_90; this
286D52:  MOVS            R1, #0; unsigned __int8
286D54:  MOVS            R2, #0; unsigned __int8
286D56:  MOVS            R3, #0; unsigned __int8
286D58:  STR             R4, [SP,#0xA8+var_A8]; unsigned __int8
286D5A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
286D5E:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
286D62:  VLDR            S0, [R6,#0x58]
286D66:  VLDR            S2, [R6,#0x60]
286D6A:  VSUB.F32        S0, S0, S2
286D6E:  VLDR            S2, =0.00625
286D72:  VABS.F32        S0, S0
286D76:  VMUL.F32        S16, S0, S2
286D7A:  VMOV            R0, S16; this
286D7E:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
286D82:  LDR             R0, =(TheText_ptr - 0x286D8A)
286D84:  ADR             R1, aHudFot; "HUD_FOT"
286D86:  ADD             R0, PC; TheText_ptr
286D88:  LDR             R0, [R0]; TheText ; this
286D8A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
286D8E:  CBZ             R0, loc_286DCA
286D90:  MOVS            R1, #(stderr+1); unsigned __int16 *
286D92:  MOVS            R2, #0; unsigned __int8
286D94:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
286D98:  VLDR            S0, [R6,#0x54]
286D9C:  VLDR            S2, [R6,#0x5C]
286DA0:  VSUB.F32        S0, S2, S0
286DA4:  VMOV            S2, R0
286DA8:  VABS.F32        S0, S0
286DAC:  VMUL.F32        S0, S0, S24
286DB0:  VCMPE.F32       S2, S0
286DB4:  VMRS            APSR_nzcv, FPSCR
286DB8:  BLE             loc_286DCA
286DBA:  VDIV.F32        S0, S0, S2
286DBE:  VMUL.F32        S0, S16, S0
286DC2:  VMOV            R0, S0; this
286DC6:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
286DCA:  LDR             R0, =(RsGlobal_ptr - 0x286DD0)
286DCC:  ADD             R0, PC; RsGlobal_ptr
286DCE:  LDR             R0, [R0]; RsGlobal
286DD0:  VLDR            S0, [R0,#4]
286DD4:  VLDR            S2, [R0,#8]
286DD8:  MOVS            R0, #0; this
286DDA:  VCVT.F32.S32    S16, S0
286DDE:  VCVT.F32.S32    S18, S2
286DE2:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
286DE6:  VMOV.F32        S0, #-2.5
286DEA:  ADR             R1, aHudOvr; "HUD_OVR"
286DEC:  VMOV            S2, R0
286DF0:  LDR             R0, =(TheText_ptr - 0x286DFA)
286DF2:  VMUL.F32        S16, S16, S17
286DF6:  ADD             R0, PC; TheText_ptr
286DF8:  LDR             R0, [R0]; TheText ; this
286DFA:  VMUL.F32        S0, S2, S0
286DFE:  VMUL.F32        S2, S18, S17
286E02:  VADD.F32        S18, S2, S0
286E06:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
286E0A:  MOV             R2, R0; CFont *
286E0C:  VMOV            R0, S16; this
286E10:  VMOV            R1, S18; float
286E14:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
286E18:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
286E1C:  SUB.W           R4, R7, #-var_60
286E20:  MOV             SP, R4
286E22:  VPOP            {D8-D15}
286E26:  ADD             SP, SP, #4
286E28:  POP.W           {R8-R11}
286E2C:  POP             {R4-R7,PC}
