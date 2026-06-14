; =========================================================
; Game Engine Function: _ZN11CPopulation17AddPedAtAttractorEiP9C2dEffect7CVectorP7CEntityi
; Address            : 0x4D1344 - 0x4D14A8
; =========================================================

4D1344:  PUSH            {R4-R7,LR}
4D1346:  ADD             R7, SP, #0xC
4D1348:  PUSH.W          {R8,R9,R11}
4D134C:  SUB             SP, SP, #0x28; float
4D134E:  MOV             R5, R0
4D1350:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x4D135A)
4D1352:  MOV             R9, R1
4D1354:  LDR             R1, [R7,#arg_0]
4D1356:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
4D1358:  STR             R3, [SP,#0x40+var_20]
4D135A:  STR             R2, [SP,#0x40+var_24]
4D135C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
4D135E:  STR             R1, [SP,#0x40+var_1C]
4D1360:  LDR             R0, [R0]; CPools::ms_pPedPool
4D1362:  LDR             R1, [R0,#8]
4D1364:  CBZ             R1, loc_4D13E0
4D1366:  VMOV            S4, R2
4D136A:  LDR             R2, [R0,#4]
4D136C:  VMOV            S2, R3
4D1370:  VLDR            S0, =3.4028e38
4D1374:  VLDR            S6, =0.0
4D1378:  MOVW            R12, #0x7CC
4D137C:  MUL.W           R6, R1, R12
4D1380:  SUBS            R1, #1
4D1382:  SUBW            R6, R6, #0x7CC
4D1386:  LDRSB           R4, [R2,R1]
4D1388:  CMP             R4, #0
4D138A:  BLT             loc_4D1392
4D138C:  LDR             R4, [R0]
4D138E:  ADDS            R4, R4, R6
4D1390:  BNE             loc_4D139E
4D1392:  SUBS            R1, #1
4D1394:  SUBW            R6, R6, #0x7CC
4D1398:  ADDS            R4, R1, #1
4D139A:  BNE             loc_4D1386
4D139C:  B               loc_4D13D2
4D139E:  LDR             R6, [R4,#0x14]
4D13A0:  ADD.W           R3, R6, #0x30 ; '0'
4D13A4:  CMP             R6, #0
4D13A6:  IT EQ
4D13A8:  ADDEQ           R3, R4, #4
4D13AA:  CMP             R1, #0
4D13AC:  VLDR            S8, [R3]
4D13B0:  VLDR            S10, [R3,#4]
4D13B4:  VSUB.F32        S8, S4, S8
4D13B8:  VSUB.F32        S10, S2, S10
4D13BC:  VMUL.F32        S8, S8, S8
4D13C0:  VMUL.F32        S10, S10, S10
4D13C4:  VADD.F32        S8, S8, S10
4D13C8:  VADD.F32        S8, S8, S6
4D13CC:  VMIN.F32        D0, D4, D0
4D13D0:  BNE             loc_4D137C
4D13D2:  VLDR            S2, =0.1225
4D13D6:  VCMPE.F32       S0, S2
4D13DA:  VMRS            APSR_nzcv, FPSCR
4D13DE:  BLE             loc_4D149C
4D13E0:  LDR.W           R8, [R7,#arg_4]
4D13E4:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
4D13E8:  MOV             R1, R9
4D13EA:  MOV             R2, R8
4D13EC:  BLX             j__ZN20CPedAttractorManager25HasQueueTailArrivedAtSlotEPK9C2dEffectPK7CEntity; CPedAttractorManager::HasQueueTailArrivedAtSlot(C2dEffect const*,CEntity const*)
4D13F0:  CMP             R0, #1
4D13F2:  BNE             loc_4D149C
4D13F4:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D1400)
4D13F6:  ADD             R2, SP, #0x40+var_24
4D13F8:  MOV             R1, R5
4D13FA:  MOVS            R3, #0
4D13FC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D13FE:  MOVS            R6, #0
4D1400:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D1402:  LDR.W           R0, [R0,R5,LSL#2]
4D1406:  LDR             R0, [R0,#0x40]
4D1408:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
4D140C:  MOV             R5, R0
4D140E:  CMP             R5, #0
4D1410:  BEQ             loc_4D149E
4D1412:  MOV             R0, R5; this
4D1414:  MOVS            R1, #1; unsigned __int8
4D1416:  LDR             R4, [R7,#arg_8]
4D1418:  MOVS            R6, #1
4D141A:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
4D141E:  ADDS            R0, R4, #1
4D1420:  LDR.W           R0, [R5,#0x440]; this
4D1424:  IT EQ
4D1426:  MOVEQ           R4, #2
4D1428:  MOV             R1, R4; int
4D142A:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
4D142E:  MOV             R0, R5; this
4D1430:  LDR.W           R4, [R5,#0x440]
4D1434:  BLX             j__ZN18CTaskComplexWander22GetWanderTaskByPedTypeERK4CPed; CTaskComplexWander::GetWanderTaskByPedType(CPed const&)
4D1438:  MOV             R1, R0; CTask *
4D143A:  ADDS            R0, R4, #4; this
4D143C:  MOVS            R2, #4; int
4D143E:  MOVS            R3, #0; bool
4D1440:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4D1444:  MOVW            R3, #0xD70A
4D1448:  MOV             R0, R9; this
4D144A:  MOVT            R3, #0x3CA3; CPed *
4D144E:  MOV             R1, R8; C2dEffect *
4D1450:  MOV             R2, R5; CEntity *
4D1452:  BLX             j__ZN22CPedAttractorPedPlacer16PlacePedAtEffectERK9C2dEffectP7CEntityP4CPedf; CPedAttractorPedPlacer::PlacePedAtEffect(C2dEffect const&,CEntity *,CPed *,float)
4D1456:  LDR.W           R0, [R5,#0x48C]
4D145A:  MOV             R4, SP
4D145C:  MOV             R1, R9; int
4D145E:  MOV             R2, R8; this
4D1460:  ORR.W           R0, R0, #0x200000
4D1464:  STR.W           R0, [R5,#0x48C]
4D1468:  MOV             R0, R4; int
4D146A:  MOVS            R3, #1
4D146C:  BLX             j__ZN15CEventAttractorC2EP9C2dEffectP7CEntityh_0; CEventAttractor::CEventAttractor(C2dEffect *,CEntity *,uchar)
4D1470:  MOVS            R0, #0xE9
4D1472:  MOV             R1, R4; CEvent *
4D1474:  STRH.W          R0, [SP,#0x40+var_36]
4D1478:  MOVS            R2, #0; bool
4D147A:  LDR.W           R0, [R5,#0x440]
4D147E:  ADDS            R0, #0x68 ; 'h'; this
4D1480:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4D1484:  LDR.W           R0, [R5,#0x440]; this
4D1488:  BLX             j__ZN16CPedIntelligence19ProcessEventHandlerEv; CPedIntelligence::ProcessEventHandler(void)
4D148C:  LDR.W           R0, [R5,#0x440]; this
4D1490:  BLX             j__ZN16CPedIntelligence7ProcessEv; CPedIntelligence::Process(void)
4D1494:  MOV             R0, R4; this
4D1496:  BLX             j__ZN15CEventAttractorD2Ev_0; CEventAttractor::~CEventAttractor()
4D149A:  B               loc_4D149E
4D149C:  MOVS            R6, #0
4D149E:  MOV             R0, R6
4D14A0:  ADD             SP, SP, #0x28 ; '('
4D14A2:  POP.W           {R8,R9,R11}
4D14A6:  POP             {R4-R7,PC}
