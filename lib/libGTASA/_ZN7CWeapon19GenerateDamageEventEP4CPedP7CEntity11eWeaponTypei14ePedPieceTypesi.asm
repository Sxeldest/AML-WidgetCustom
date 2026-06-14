; =========================================================
; Game Engine Function: _ZN7CWeapon19GenerateDamageEventEP4CPedP7CEntity11eWeaponTypei14ePedPieceTypesi
; Address            : 0x5E1344 - 0x5E15C6
; =========================================================

5E1344:  PUSH            {R4-R7,LR}
5E1346:  ADD             R7, SP, #0xC
5E1348:  PUSH.W          {R8-R11}
5E134C:  SUB             SP, SP, #0x64
5E134E:  VMOV            S0, R3
5E1352:  MOV             R8, R2
5E1354:  MOV             R4, R0
5E1356:  ADD             R0, SP, #0x80+var_30
5E1358:  VCVT.F32.S32    S0, S0
5E135C:  LDR             R5, [R7,#arg_0]
5E135E:  MOVS            R6, #0
5E1360:  MOV             R3, R8
5E1362:  MOV             R11, R1
5E1364:  STRD.W          R5, R6, [SP,#0x80+var_80]
5E1368:  VMOV            R2, S0
5E136C:  BLX.W           j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
5E1370:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5E137C)
5E1372:  MOV             R3, R8; int
5E1374:  LDR.W           R1, [R4,#0x484]
5E1378:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5E137A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5E137C:  LDR             R2, [R0]; int
5E137E:  UBFX.W          R0, R1, #8, #1
5E1382:  STR             R0, [SP,#0x80+var_74]; int
5E1384:  MOV             R1, R11; this
5E1386:  LDRB            R0, [R7,#arg_4]
5E1388:  STR             R6, [SP,#0x80+var_78]; int
5E138A:  STRD.W          R5, R0, [SP,#0x80+var_80]; int
5E138E:  ADD             R0, SP, #0x80+var_70; int
5E1390:  BLX.W           j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
5E1394:  ADDW            R9, R4, #0x544
5E1398:  VLDR            S0, [R9]
5E139C:  VCMPE.F32       S0, #0.0
5E13A0:  VMRS            APSR_nzcv, FPSCR
5E13A4:  BGT             loc_5E1412
5E13A6:  BLX.W           j__ZN13CLocalisation5BloodEv; CLocalisation::Blood(void)
5E13AA:  CBZ             R0, loc_5E1412
5E13AC:  BLX.W           j__ZN13CLocalisation15KickingWhenDownEv; CLocalisation::KickingWhenDown(void)
5E13B0:  CBZ             R0, loc_5E1412
5E13B2:  LDR.W           R0, [R4,#0x440]
5E13B6:  ADDS            R0, #4; this
5E13B8:  BLX.W           j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
5E13BC:  CBZ             R0, loc_5E1412
5E13BE:  LDR.W           R0, [R4,#0x440]
5E13C2:  ADDS            R0, #4; this
5E13C4:  BLX.W           j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
5E13C8:  LDR             R1, [R0]
5E13CA:  LDR             R1, [R1,#0x14]
5E13CC:  BLX             R1
5E13CE:  CMP             R0, #0xDA
5E13D0:  BNE             loc_5E1412
5E13D2:  LDR             R0, [R4,#0x18]
5E13D4:  MOV.W           R1, #0x800
5E13D8:  BLX.W           j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClumpj; RpAnimBlendClumpGetFirstAssociation(RpClump *,uint)
5E13DC:  LDR             R1, [R4,#0x18]
5E13DE:  CMP             R0, #0
5E13E0:  MOV.W           R2, #0x27 ; '''
5E13E4:  MOV.W           R3, #0x41000000
5E13E8:  IT EQ
5E13EA:  MOVEQ           R2, #0x24 ; '$'; unsigned int
5E13EC:  MOV             R0, R1; int
5E13EE:  MOVS            R1, #0; int
5E13F0:  BLX.W           j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5E13F4:  MOV             R4, R0
5E13F6:  CMP             R4, #0
5E13F8:  BEQ             loc_5E149A
5E13FA:  MOV             R0, R4; this
5E13FC:  MOVS            R1, #0; float
5E13FE:  BLX.W           j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
5E1402:  LDRH            R0, [R4,#0x2E]
5E1404:  MOVS            R5, #1
5E1406:  BIC.W           R0, R0, #9
5E140A:  ORR.W           R0, R0, #1
5E140E:  STRH            R0, [R4,#0x2E]
5E1410:  B               loc_5E15B0
5E1412:  MOV             R0, R4; this
5E1414:  BLX.W           j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
5E1418:  CMP             R0, #1
5E141A:  BNE             loc_5E149A
5E141C:  ADD             R5, SP, #0x80+var_70
5E141E:  MOV             R1, R4; CPed *
5E1420:  MOV             R0, R5; this
5E1422:  BLX.W           j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
5E1426:  CMP             R0, #1
5E1428:  BNE             loc_5E149E
5E142A:  MOV.W           R0, #0xFFFFFFFF; int
5E142E:  ADDW            R10, R4, #0x484
5E1432:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5E1436:  CMP             R0, R11
5E1438:  BNE             loc_5E1444
5E143A:  MOVS            R0, #2
5E143C:  MOV             R1, R4
5E143E:  MOV             R2, R11
5E1440:  BLX.W           j__ZN6CCrime11ReportCrimeE10eCrimeTypeP7CEntityP4CPed; CCrime::ReportCrime(eCrimeType,CEntity *,CPed *)
5E1444:  ADD.W           R2, R5, #0x34 ; '4'
5E1448:  ADD             R0, SP, #0x80+var_30; int
5E144A:  MOV             R1, R4; this
5E144C:  MOVS            R3, #1
5E144E:  BLX.W           j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
5E1452:  MOV             R0, R8
5E1454:  MOVS            R1, #1
5E1456:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5E145A:  LDR             R0, [R0]
5E145C:  CBZ             R0, loc_5E1478
5E145E:  MOVS            R5, #1
5E1460:  CMP.W           R11, #0
5E1464:  BEQ             loc_5E14A4
5E1466:  CMP.W           R8, #0x36 ; '6'
5E146A:  BNE             loc_5E14A4
5E146C:  LDRB.W          R0, [R11,#0x3A]
5E1470:  AND.W           R1, R0, #7
5E1474:  CMP             R1, #4
5E1476:  BNE             loc_5E14AC
5E1478:  LDRB.W          R0, [R10,#1]
5E147C:  LSLS            R0, R0, #0x1F
5E147E:  BNE             loc_5E14A2
5E1480:  VLDR            S0, [R9]
5E1484:  ADD             R0, SP, #0x80+var_70; this
5E1486:  MOV             R1, R4; CPed *
5E1488:  MOVS            R2, #1; bool
5E148A:  VCMPE.F32       S0, #0.0
5E148E:  VMRS            APSR_nzcv, FPSCR
5E1492:  BLE             loc_5E14B0
5E1494:  BLX.W           j__ZN12CEventDamage17ComputeDamageAnimEP4CPedb; CEventDamage::ComputeDamageAnim(CPed *,bool)
5E1498:  B               loc_5E14B4
5E149A:  MOVS            R5, #1
5E149C:  B               loc_5E15B0
5E149E:  MOVS            R5, #0
5E14A0:  B               loc_5E15B0
5E14A2:  MOVS            R5, #1
5E14A4:  CMP.W           R11, #0
5E14A8:  BNE             loc_5E1520
5E14AA:  B               loc_5E154A
5E14AC:  MOVS            R5, #1
5E14AE:  B               loc_5E1524
5E14B0:  BLX.W           j__ZN12CEventDamage16ComputeDeathAnimEP4CPedb; CEventDamage::ComputeDeathAnim(CPed *,bool)
5E14B4:  LDR             R2, [SP,#0x80+var_48]; unsigned int
5E14B6:  CMP             R2, #0x1C
5E14B8:  BLT             loc_5E14FE
5E14BA:  CMP             R2, #0x1F
5E14BC:  BGT             loc_5E14E6
5E14BE:  LDR             R0, [R4,#0x18]
5E14C0:  MOV             R1, R2
5E14C2:  BLX.W           j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5E14C6:  CBNZ            R0, loc_5E14D2
5E14C8:  LDRD.W          R1, R2, [SP,#0x80+var_4C]; unsigned int
5E14CC:  LDR             R0, [R4,#0x18]; int
5E14CE:  BLX.W           j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
5E14D2:  MOVS            R1, #0
5E14D4:  STR             R1, [R0,#0x18]
5E14D6:  LDR             R1, [SP,#0x80+var_44]
5E14D8:  STR             R1, [R0,#0x1C]
5E14DA:  LDR             R1, [SP,#0x80+var_40]
5E14DC:  STR             R1, [R0,#0x24]
5E14DE:  MOVS            R1, #0; float
5E14E0:  BLX.W           j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
5E14E4:  B               loc_5E150C
5E14E6:  SUB.W           R0, R2, #0xBF
5E14EA:  CMP             R0, #2
5E14EC:  BCS             loc_5E14FE
5E14EE:  MOVS            R5, #0
5E14F0:  CMP             R2, #0xC0
5E14F2:  IT NE
5E14F4:  MOVNE           R5, #1
5E14F6:  CMP.W           R11, #0
5E14FA:  BNE             loc_5E1520
5E14FC:  B               loc_5E154A
5E14FE:  LDR             R1, [SP,#0x80+var_4C]; int
5E1500:  LDR             R3, [SP,#0x80+var_44]
5E1502:  LDR             R0, [R4,#0x18]; int
5E1504:  BLX.W           j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5E1508:  LDR             R1, [SP,#0x80+var_40]
5E150A:  STR             R1, [R0,#0x24]
5E150C:  LDRB.W          R0, [SP,#0x80+var_4F]
5E1510:  MOVS            R5, #1
5E1512:  ORR.W           R0, R0, #4
5E1516:  STRB.W          R0, [SP,#0x80+var_4F]
5E151A:  CMP.W           R11, #0
5E151E:  BEQ             loc_5E154A
5E1520:  LDRB.W          R0, [R11,#0x3A]
5E1524:  AND.W           R0, R0, #7
5E1528:  CMP             R0, #3
5E152A:  BNE             loc_5E154A
5E152C:  LDR.W           R0, [R11,#0x440]
5E1530:  ADDS            R0, #4; this
5E1532:  BLX.W           j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
5E1536:  CBZ             R0, loc_5E154E
5E1538:  LDR             R1, [R0]
5E153A:  LDR             R1, [R1,#0x14]
5E153C:  BLX             R1
5E153E:  MOVW            R1, #0x403
5E1542:  CMP             R0, R1
5E1544:  BNE             loc_5E154E
5E1546:  MOVS            R0, #0x10
5E1548:  B               loc_5E155A
5E154A:  MOVS            R0, #0
5E154C:  B               loc_5E155A
5E154E:  MOVS            R0, #0
5E1550:  CMP.W           R8, #0x17
5E1554:  IT EQ
5E1556:  MOVEQ           R0, #1
5E1558:  LSLS            R0, R0, #4
5E155A:  LDRB.W          R1, [SP,#0x80+var_4F]
5E155E:  AND.W           R1, R1, #0xEF
5E1562:  ORRS            R0, R1
5E1564:  STRB.W          R0, [SP,#0x80+var_4F]
5E1568:  LDRB.W          R0, [R10,#1]
5E156C:  LSLS            R0, R0, #0x1F
5E156E:  BEQ             loc_5E15A2
5E1570:  VLDR            S0, [R9]
5E1574:  VCMPE.F32       S0, #0.0
5E1578:  VMRS            APSR_nzcv, FPSCR
5E157C:  BLE             loc_5E15A2
5E157E:  LDR.W           R0, [R4,#0x440]
5E1582:  ADDS            R0, #4; this
5E1584:  BLX.W           j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
5E1588:  CBZ             R0, loc_5E15A2
5E158A:  LDR.W           R0, [R4,#0x440]
5E158E:  ADDS            R0, #4; this
5E1590:  BLX.W           j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
5E1594:  LDR             R1, [R0]
5E1596:  LDR             R1, [R1,#0x14]
5E1598:  BLX             R1
5E159A:  MOVW            R1, #0x3FE
5E159E:  CMP             R0, R1
5E15A0:  BEQ             loc_5E15B0
5E15A2:  LDR.W           R0, [R4,#0x440]
5E15A6:  ADD             R1, SP, #0x80+var_70; CEvent *
5E15A8:  MOVS            R2, #0; bool
5E15AA:  ADDS            R0, #0x68 ; 'h'; this
5E15AC:  BLX.W           j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5E15B0:  ADD             R0, SP, #0x80+var_70; this
5E15B2:  BLX.W           j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
5E15B6:  ADD             R0, SP, #0x80+var_30; this
5E15B8:  BLX.W           j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
5E15BC:  MOV             R0, R5
5E15BE:  ADD             SP, SP, #0x64 ; 'd'
5E15C0:  POP.W           {R8-R11}
5E15C4:  POP             {R4-R7,PC}
