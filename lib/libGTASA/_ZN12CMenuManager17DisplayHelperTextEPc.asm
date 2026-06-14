; =========================================================
; Game Engine Function: _ZN12CMenuManager17DisplayHelperTextEPc
; Address            : 0x435230 - 0x4355C8
; =========================================================

435230:  PUSH            {R4-R7,LR}
435232:  ADD             R7, SP, #0xC
435234:  PUSH.W          {R8}
435238:  VPUSH           {D8}
43523C:  SUB             SP, SP, #0x10
43523E:  MOV             R4, R0
435240:  MOV             R5, R1
435242:  LDRB.W          R0, [R4,#0x121]
435246:  CMP             R0, #5
435248:  BNE             loc_435252
43524A:  MOV             R0, R4
43524C:  MOV.W           R1, #0x3F000000
435250:  B               loc_43525C
435252:  MOVW            R1, #0x999A
435256:  MOV             R0, R4; this
435258:  MOVT            R1, #0x3F19; float
43525C:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
435260:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
435264:  MOVS            R0, #(stderr+2); this
435266:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
43526A:  MOVS            R0, #(stderr+2); this
43526C:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
435270:  MOVS            R0, #0; this
435272:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
435276:  CBZ             R5, loc_4352E8
435278:  LDR.W           R0, =(TheText_ptr - 0x435282)
43527C:  MOV             R1, R5; CKeyGen *
43527E:  ADD             R0, PC; TheText_ptr
435280:  LDR             R0, [R0]; TheText ; this
435282:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
435286:  MOV             R5, R0
435288:  MOVS            R0, #0xFF
43528A:  STR             R0, [SP,#0x28+var_28]; unsigned __int8
43528C:  ADD             R0, SP, #0x28+var_1C; this
43528E:  MOVS            R1, #0xFF; unsigned __int8
435290:  MOVS            R2, #0xFF; unsigned __int8
435292:  MOVS            R3, #0xFF; unsigned __int8
435294:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
435298:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
43529C:  MOVW            R1, #0x8000
4352A0:  MOV             R0, R4; this
4352A2:  MOVT            R1, #0x4418; float
4352A6:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4352AA:  MOV             R6, R0
4352AC:  LDR.W           R0, =(RsGlobal_ptr - 0x4352B4)
4352B0:  ADD             R0, PC; RsGlobal_ptr
4352B2:  LDR             R0, [R0]; RsGlobal
4352B4:  MOVS            R1, #0x41200000; float
4352BA:  VLDR            S0, [R0,#8]
4352BE:  MOV             R0, R4; this
4352C0:  VCVT.F32.S32    S16, S0
4352C4:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
4352C8:  VMOV            S0, R0
4352CC:  MOV             R0, R6; this
4352CE:  MOV             R2, R5; float
4352D0:  VSUB.F32        S0, S16, S0
4352D4:  VMOV            R1, S0; float
4352D8:  BLX             j__ZN5CFont21PrintStringFromBottomEffPt; CFont::PrintStringFromBottom(float,float,ushort *)
4352DC:  ADD             SP, SP, #0x10
4352DE:  VPOP            {D8}
4352E2:  POP.W           {R8}
4352E6:  POP             {R4-R7,PC}
4352E8:  MOVW            R0, #0x1ADC
4352EC:  ADDS            R5, R4, R0
4352EE:  LDR             R1, [R4,R0]
4352F0:  CMP             R1, #2
4352F2:  BCS             loc_4352F8
4352F4:  MOVS            R0, #0xFF
4352F6:  B               loc_43533C
4352F8:  LDR             R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x435300)
4352FA:  LDR             R1, =(dword_990C20 - 0x435302)
4352FC:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
4352FE:  ADD             R1, PC; dword_990C20
435300:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
435302:  LDR             R1, [R1]
435304:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
435306:  SUBS            R1, R0, R1
435308:  CMP             R1, #0xA
43530A:  BLS             loc_43531E
43530C:  LDR             R1, =(dword_990C20 - 0x435312)
43530E:  ADD             R1, PC; dword_990C20
435310:  STR             R0, [R1]
435312:  MOVW            R1, #0x1AB0
435316:  LDR             R0, [R4,R1]
435318:  SUBS            R0, #2
43531A:  STR             R0, [R4,R1]
43531C:  B               loc_435324
43531E:  MOVW            R1, #0x1AB0
435322:  LDR             R0, [R4,R1]
435324:  ADD             R1, R4
435326:  CMP             R0, #0
435328:  BGT             loc_435334
43532A:  MOVS            R0, #0
43532C:  STR             R0, [R5]
43532E:  MOV.W           R0, #0x12C
435332:  STR             R0, [R1]
435334:  CMP             R0, #0xFF
435336:  IT GT
435338:  MOVGT.W         R0, #0xFFFFFFFF
43533C:  UXTB            R0, R0
43533E:  MOVS            R1, #0xFF; unsigned __int8
435340:  STR             R0, [SP,#0x28+var_28]; unsigned __int8
435342:  ADD             R0, SP, #0x28+var_20; this
435344:  MOVS            R2, #0xFF; unsigned __int8
435346:  MOVS            R3, #0xFF; unsigned __int8
435348:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43534C:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
435350:  LDR             R0, [R5]
435352:  SUBS            R0, #1; switch 6 cases
435354:  CMP             R0, #5
435356:  BHI             def_435358; jumptable 00435358 default case
435358:  TBH.W           [PC,R0,LSL#1]; switch jump
43535C:  DCW 6; jump table for switch statement
43535E:  DCW 0x9C
435360:  DCW 0x18
435362:  DCW 0xAE
435364:  DCW 0x2A
435366:  DCW 0xC0
435368:  LDR             R0, =(TheText_ptr - 0x435370); jumptable 00435358 case 1
43536A:  ADR             R1, aFetApp; "FET_APP"
43536C:  ADD             R0, PC; TheText_ptr
43536E:  LDR             R0, [R0]; TheText ; this
435370:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
435374:  MOVW            R1, #0x8000
435378:  MOV             R5, R0
43537A:  MOVT            R1, #0x4418; float
43537E:  MOV             R0, R4; this
435380:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
435384:  MOV             R6, R0
435386:  LDR             R0, =(RsGlobal_ptr - 0x43538C)
435388:  ADD             R0, PC; RsGlobal_ptr
43538A:  B               loc_4352B2
43538C:  LDR             R0, =(TheText_ptr - 0x435394); jumptable 00435358 case 3
43538E:  ADR             R1, aFetRso; "FET_RSO"
435390:  ADD             R0, PC; TheText_ptr
435392:  LDR             R0, [R0]; TheText ; this
435394:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
435398:  MOVW            R1, #0x8000
43539C:  MOV             R5, R0
43539E:  MOVT            R1, #0x4418; float
4353A2:  MOV             R0, R4; this
4353A4:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4353A8:  MOV             R6, R0
4353AA:  LDR             R0, =(RsGlobal_ptr - 0x4353B0)
4353AC:  ADD             R0, PC; RsGlobal_ptr
4353AE:  B               loc_4352B2
4353B0:  LDR             R0, =(TheText_ptr - 0x4353B8); jumptable 00435358 case 5
4353B2:  ADR             R1, aFeaScs; "FEA_SCS"
4353B4:  ADD             R0, PC; TheText_ptr
4353B6:  LDR             R0, [R0]; TheText ; this
4353B8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4353BC:  MOVW            R1, #0x8000
4353C0:  MOV             R5, R0
4353C2:  MOVT            R1, #0x4418; float
4353C6:  MOV             R0, R4; this
4353C8:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4353CC:  MOV             R6, R0
4353CE:  LDR             R0, =(RsGlobal_ptr - 0x4353D4)
4353D0:  ADD             R0, PC; RsGlobal_ptr
4353D2:  B               loc_4352B2
4353D4:  LDR             R1, =(aScreens_ptr - 0x4353E0); jumptable 00435358 default case
4353D6:  MOVS            R3, #0xE2
4353D8:  LDRSB.W         R0, [R4,#0x121]
4353DC:  ADD             R1, PC; aScreens_ptr
4353DE:  LDR             R2, [R4,#0x38]
4353E0:  LDR             R1, [R1]; "FEP_STA" ...
4353E2:  ADD.W           R2, R2, R2,LSL#3
4353E6:  SMLABB.W        R1, R0, R3, R1
4353EA:  ADD.W           R1, R1, R2,LSL#1
4353EE:  LDRB            R1, [R1,#0xA]
4353F0:  SUBS            R1, #2; switch 58 cases
4353F2:  CMP             R1, #0x39 ; '9'
4353F4:  BHI.W           def_4353F8; jumptable 004353F8 default case, cases 3,4,10-58
4353F8:  TBH.W           [PC,R1,LSL#1]; switch jump
4353FC:  DCW 0x82; jump table for switch statement
4353FE:  DCW 0x94
435400:  DCW 0x94
435402:  DCW 0x3A
435404:  DCW 0xB7
435406:  DCW 0x3A
435408:  DCW 0x3A
43540A:  DCW 0x3A
43540C:  DCW 0x94
43540E:  DCW 0x94
435410:  DCW 0x94
435412:  DCW 0x94
435414:  DCW 0x94
435416:  DCW 0x94
435418:  DCW 0x94
43541A:  DCW 0x94
43541C:  DCW 0x94
43541E:  DCW 0x94
435420:  DCW 0x94
435422:  DCW 0x94
435424:  DCW 0x94
435426:  DCW 0x94
435428:  DCW 0x94
43542A:  DCW 0x94
43542C:  DCW 0x94
43542E:  DCW 0x94
435430:  DCW 0x94
435432:  DCW 0x94
435434:  DCW 0x94
435436:  DCW 0x94
435438:  DCW 0x94
43543A:  DCW 0x94
43543C:  DCW 0x94
43543E:  DCW 0x94
435440:  DCW 0x94
435442:  DCW 0x94
435444:  DCW 0x94
435446:  DCW 0x94
435448:  DCW 0x94
43544A:  DCW 0x94
43544C:  DCW 0x94
43544E:  DCW 0x94
435450:  DCW 0x94
435452:  DCW 0x94
435454:  DCW 0x94
435456:  DCW 0x94
435458:  DCW 0x94
43545A:  DCW 0x94
43545C:  DCW 0x94
43545E:  DCW 0x94
435460:  DCW 0x94
435462:  DCW 0x94
435464:  DCW 0x94
435466:  DCW 0x94
435468:  DCW 0x94
43546A:  DCW 0x94
43546C:  DCW 0x94
43546E:  DCW 0xC9
435470:  LDR             R0, =(TheText_ptr - 0x435478); jumptable 004353F8 cases 5,7-9
435472:  ADR             R1, aFehJmp; "FEH_JMP"
435474:  ADD             R0, PC; TheText_ptr
435476:  LDR             R0, [R0]; TheText ; this
435478:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43547C:  MOVW            R1, #0x8000
435480:  MOV             R5, R0
435482:  MOVT            R1, #0x4418; float
435486:  MOV             R0, R4; this
435488:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
43548C:  MOV             R6, R0
43548E:  LDR             R0, =(RsGlobal_ptr - 0x435494)
435490:  ADD             R0, PC; RsGlobal_ptr
435492:  B               loc_4352B2
435494:  LDR             R0, =(TheText_ptr - 0x43549C); jumptable 00435358 case 2
435496:  ADR             R1, aFetHrd; "FET_HRD"
435498:  ADD             R0, PC; TheText_ptr
43549A:  LDR             R0, [R0]; TheText ; this
43549C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4354A0:  MOVW            R1, #0x8000
4354A4:  MOV             R5, R0
4354A6:  MOVT            R1, #0x4418; float
4354AA:  MOV             R0, R4; this
4354AC:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4354B0:  MOV             R6, R0
4354B2:  LDR             R0, =(RsGlobal_ptr - 0x4354B8)
4354B4:  ADD             R0, PC; RsGlobal_ptr
4354B6:  B               loc_4352B2
4354B8:  LDR             R0, =(TheText_ptr - 0x4354C0); jumptable 00435358 case 4
4354BA:  ADR             R1, aFeaScf; "FEA_SCF"
4354BC:  ADD             R0, PC; TheText_ptr
4354BE:  LDR             R0, [R0]; TheText ; this
4354C0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4354C4:  MOVW            R1, #0x8000
4354C8:  MOV             R5, R0
4354CA:  MOVT            R1, #0x4418; float
4354CE:  MOV             R0, R4; this
4354D0:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4354D4:  MOV             R6, R0
4354D6:  LDR             R0, =(RsGlobal_ptr - 0x4354DC)
4354D8:  ADD             R0, PC; RsGlobal_ptr
4354DA:  B               loc_4352B2
4354DC:  LDR             R0, =(TheText_ptr - 0x4354E4); jumptable 00435358 case 6
4354DE:  ADR             R1, aFetSts; "FET_STS"
4354E0:  ADD             R0, PC; TheText_ptr
4354E2:  LDR             R0, [R0]; TheText ; this
4354E4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4354E8:  MOVW            R1, #0x8000
4354EC:  MOV             R5, R0
4354EE:  MOVT            R1, #0x4418; float
4354F2:  MOV             R0, R4; this
4354F4:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4354F8:  MOV             R6, R0
4354FA:  LDR             R0, =(RsGlobal_ptr - 0x435500)
4354FC:  ADD             R0, PC; RsGlobal_ptr
4354FE:  B               loc_4352B2
435500:  LDR             R0, =(TheText_ptr - 0x435508); jumptable 004353F8 case 2
435502:  ADR             R1, aFehBpo; "FEH_BPO"
435504:  ADD             R0, PC; TheText_ptr
435506:  LDR             R0, [R0]; TheText ; this
435508:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43550C:  MOVW            R1, #0x8000
435510:  MOV             R5, R0
435512:  MOVT            R1, #0x4418; float
435516:  MOV             R0, R4; this
435518:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
43551C:  MOV             R6, R0
43551E:  LDR             R0, =(RsGlobal_ptr - 0x435524)
435520:  ADD             R0, PC; RsGlobal_ptr
435522:  B               loc_4352B2
435524:  LDR             R2, =(TheText_ptr - 0x435530); jumptable 004353F8 default case, cases 3,4,10-58
435526:  UXTB            R0, R0
435528:  ADR             R3, aFetMig; "FET_MIG"
43552A:  CMP             R0, #0
43552C:  ADD             R2, PC; TheText_ptr
43552E:  ADR             R1, aFehSsa; "FEH_SSA"
435530:  IT NE
435532:  MOVNE           R1, R3; CKeyGen *
435534:  LDR             R0, [R2]; TheText ; this
435536:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43553A:  MOVW            R1, #0x8000
43553E:  MOV             R8, R0
435540:  MOVT            R1, #0x4418; float
435544:  MOV             R0, R4; this
435546:  LDRB.W          R5, [R4,#0x121]
43554A:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
43554E:  MOV             R6, R0
435550:  LDR             R0, =(RsGlobal_ptr - 0x435558)
435552:  CMP             R5, #5
435554:  ADD             R0, PC; RsGlobal_ptr
435556:  LDR             R0, [R0]; RsGlobal
435558:  VLDR            S0, [R0,#8]
43555C:  VCVT.F32.S32    S16, S0
435560:  BNE             loc_4355B2
435562:  MOV             R0, R4
435564:  MOV.W           R1, #0x40000000
435568:  B               loc_4355BA
43556A:  LDR             R0, =(TheText_ptr - 0x435572); jumptable 004353F8 case 6
43556C:  ADR             R1, aFehSnc; "FEH_SNC"
43556E:  ADD             R0, PC; TheText_ptr
435570:  LDR             R0, [R0]; TheText ; this
435572:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
435576:  MOVW            R1, #0x8000
43557A:  MOV             R5, R0
43557C:  MOVT            R1, #0x4418; float
435580:  MOV             R0, R4; this
435582:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
435586:  MOV             R6, R0
435588:  LDR             R0, =(RsGlobal_ptr - 0x43558E)
43558A:  ADD             R0, PC; RsGlobal_ptr
43558C:  B               loc_4352B2
43558E:  LDR             R0, =(TheText_ptr - 0x435596); jumptable 004353F8 case 59
435590:  ADR             R1, aFetMig; "FET_MIG"
435592:  ADD             R0, PC; TheText_ptr
435594:  LDR             R0, [R0]; TheText ; this
435596:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43559A:  MOVW            R1, #0x8000
43559E:  MOV             R5, R0
4355A0:  MOVT            R1, #0x4418; float
4355A4:  MOV             R0, R4; this
4355A6:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4355AA:  MOV             R6, R0
4355AC:  LDR             R0, =(RsGlobal_ptr - 0x4355B2)
4355AE:  ADD             R0, PC; RsGlobal_ptr
4355B0:  B               loc_4352B2
4355B2:  MOVS            R1, #0
4355B4:  MOV             R0, R4; this
4355B6:  MOVT            R1, #0x4120; float
4355BA:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
4355BE:  VMOV            S0, R0
4355C2:  MOV             R0, R6
4355C4:  MOV             R2, R8
4355C6:  B               loc_4352D0
