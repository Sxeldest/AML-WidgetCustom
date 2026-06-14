; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCreateCarAndGetIn10ProcessPedEP4CPed
; Address            : 0x5063D4 - 0x50660E
; =========================================================

5063D4:  PUSH            {R4-R7,LR}
5063D6:  ADD             R7, SP, #0xC
5063D8:  PUSH.W          {R8-R10}
5063DC:  SUB             SP, SP, #0x68
5063DE:  MOV             R4, R0
5063E0:  LDR             R0, =(ThePaths_ptr - 0x5063EC)
5063E2:  ADD.W           R3, R4, #8
5063E6:  MOVS            R5, #0
5063E8:  ADD             R0, PC; ThePaths_ptr
5063EA:  MOVS            R6, #1
5063EC:  MOV             R10, R1
5063EE:  LDM             R3, {R1-R3}
5063F0:  STR             R5, [SP,#0x80+var_68]
5063F2:  STRD.W          R5, R5, [SP,#0x80+var_70]
5063F6:  STRD.W          R6, R6, [SP,#0x80+var_78]
5063FA:  LDR             R6, [R0]; ThePaths
5063FC:  MOV             R0, #0x497423FE
506404:  STRD.W          R5, R0, [SP,#0x80+var_80]
506408:  MOV             R0, R6
50640A:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
50640E:  MOV             R2, R0
506410:  ADD             R0, SP, #0x80+var_28
506412:  SUB.W           R3, R7, #-var_19
506416:  MOV             R1, R6
506418:  BLX             j__ZN9CPathFind22FindNodeCoorsForScriptE12CNodeAddressPb; CPathFind::FindNodeCoorsForScript(CNodeAddress,bool *)
50641C:  LDRB.W          R0, [R7,#var_19]
506420:  CMP             R0, #0
506422:  BEQ.W           loc_50652C
506426:  STRB.W          R5, [R4,#0x30]
50642A:  LDR             R1, [R4,#0x18]
50642C:  VLDR            D16, [SP,#0x80+var_28]
506430:  LDR             R0, [SP,#0x80+var_20]
506432:  CMP             R1, #0
506434:  STR             R0, [R4,#0x24]
506436:  VSTR            D16, [R4,#0x1C]
50643A:  BEQ.W           loc_506562
50643E:  MOV.W           R0, #0x41000000
506442:  MOVS            R1, #0; int
506444:  STR             R0, [SP,#0x80+var_80]; float
506446:  ADD             R0, SP, #0x80+var_48; this
506448:  MOVS            R2, #0; bool
50644A:  MOVS            R3, #0; bool
50644C:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
506450:  MOV             R1, R10; CPed *
506452:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
506456:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x50645E)
506458:  LDR             R6, [R4,#0x14]
50645A:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
50645C:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
50645E:  ADD.W           R1, R6, R6,LSL#2
506462:  ADD.W           R0, R0, R1,LSL#2
506466:  LDRB            R0, [R0,#0x10]
506468:  CMP             R0, #1
50646A:  BNE.W           loc_50657C
50646E:  LDR             R0, [R4,#0x18]
506470:  CBNZ            R0, loc_5064EA
506472:  ADD.W           R3, R4, #0x1C
506476:  MOV.W           R9, #1
50647A:  MOV             R0, R6
50647C:  LDM             R3, {R1-R3}
50647E:  STR.W           R9, [SP,#0x80+var_80]
506482:  BLX             j__ZN8CCarCtrl18CreateCarForScriptEi7CVectorh; CCarCtrl::CreateCarForScript(int,CVector,uchar)
506486:  MOV             R6, R0
506488:  ADD             R0, SP, #0x80+var_64; this
50648A:  STR             R6, [R4,#0x18]
50648C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506490:  LDR             R1, =(_ZTV30CTaskSimpleCarSetPedInAsDriver_ptr - 0x50649E)
506492:  ADD.W           R8, R0, #0x10
506496:  MOVS            R2, #0
506498:  CMP             R6, #0
50649A:  ADD             R1, PC; _ZTV30CTaskSimpleCarSetPedInAsDriver_ptr
50649C:  STRB.W          R2, [SP,#0x80+var_5C]
5064A0:  LDR             R1, [R1]; `vtable for'CTaskSimpleCarSetPedInAsDriver ...
5064A2:  ADD.W           R1, R1, #8
5064A6:  STR             R1, [SP,#0x80+var_64]
5064A8:  STRD.W          R2, R6, [SP,#0x80+var_58]
5064AC:  STRB.W          R2, [SP,#0x80+var_4A]
5064B0:  STRH.W          R2, [SP,#0x80+var_4C]
5064B4:  STR             R2, [SP,#0x80+var_50]
5064B6:  ITTT NE
5064B8:  MOVNE           R0, R6; this
5064BA:  MOVNE           R1, R8; CEntity **
5064BC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5064C0:  ADD             R0, SP, #0x80+var_64; this
5064C2:  MOV             R1, R10; CPed *
5064C4:  STRB.W          R9, [SP,#0x80+var_4C]
5064C8:  BLX             j__ZN30CTaskSimpleCarSetPedInAsDriver10ProcessPedEP4CPed; CTaskSimpleCarSetPedInAsDriver::ProcessPed(CPed *)
5064CC:  LDR             R0, =(_ZTV30CTaskSimpleCarSetPedInAsDriver_ptr - 0x5064D2)
5064CE:  ADD             R0, PC; _ZTV30CTaskSimpleCarSetPedInAsDriver_ptr
5064D0:  LDR             R1, [R0]; `vtable for'CTaskSimpleCarSetPedInAsDriver ...
5064D2:  LDR             R0, [SP,#0x80+var_54]; this
5064D4:  ADDS            R1, #8
5064D6:  STR             R1, [SP,#0x80+var_64]
5064D8:  CMP             R0, #0
5064DA:  ITT NE
5064DC:  MOVNE           R1, R8; CEntity **
5064DE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5064E2:  ADD             R0, SP, #0x80+var_64; this
5064E4:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
5064E8:  LDR             R0, [R4,#0x18]; this
5064EA:  LDR             R1, [R0,#0x1C]; CVehicle *
5064EC:  MOVS            R6, #0
5064EE:  TST.W           R1, #0x40004
5064F2:  BNE             loc_506586
5064F4:  BLX             j__ZN11CTheScripts18CleanUpThisVehicleEP8CVehicle; CTheScripts::CleanUpThisVehicle(CVehicle *)
5064F8:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x506500)
5064FA:  LDR             R1, [R4,#0x18]
5064FC:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
5064FE:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
506500:  LDR             R0, [R0]; CPools::ms_pVehiclePool
506502:  LDRD.W          R2, R0, [R0]
506506:  SUBS            R1, R1, R2
506508:  MOV             R2, #0xBFE6D523
506510:  ASRS            R1, R1, #2
506512:  MULS            R1, R2
506514:  LDR             R2, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x50651A)
506516:  ADD             R2, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
506518:  LDRB            R3, [R0,R1]
50651A:  LDR             R0, [R2]; this
50651C:  ORR.W           R1, R3, R1,LSL#8; int
506520:  MOVS            R2, #1; unsigned __int8
506522:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
506526:  STR             R6, [R4,#0x18]
506528:  MOVS            R6, #1
50652A:  B               loc_506586
50652C:  LDRB.W          R0, [R4,#0x30]
506530:  CBNZ            R0, loc_506548
506532:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x50653C)
506534:  MOV.W           R1, #0x7D0
506538:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
50653A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
50653C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
50653E:  STRD.W          R0, R1, [R4,#0x28]
506542:  MOVS            R0, #1
506544:  STRB.W          R0, [R4,#0x30]
506548:  LDRB.W          R0, [R4,#0x31]
50654C:  CBZ             R0, loc_50658E
50654E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x506556)
506550:  MOVS            R1, #0
506552:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
506554:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
506556:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
506558:  STRB.W          R1, [R4,#0x31]
50655C:  STR             R0, [R4,#0x28]
50655E:  MOV             R1, R0
506560:  B               loc_506598
506562:  LDR             R0, =(TheCamera_ptr - 0x506572)
506564:  MOVS            R2, #0
506566:  ADD.W           R1, R4, #0x1C; CVector *
50656A:  MOVT            R2, #0x4040; float
50656E:  ADD             R0, PC; TheCamera_ptr
506570:  LDR             R0, [R0]; TheCamera ; this
506572:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
506576:  CBZ             R0, loc_5065AE
506578:  MOVS            R6, #1
50657A:  B               loc_5065A4
50657C:  MOV             R0, R6; this
50657E:  MOVS            R1, #0xC; int
506580:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
506584:  MOVS            R6, #0
506586:  ADD             R0, SP, #0x80+var_48; this
506588:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
50658C:  B               loc_5065A4
50658E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x506596)
506590:  LDR             R1, [R4,#0x28]
506592:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
506594:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
506596:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
506598:  LDR             R2, [R4,#0x2C]
50659A:  MOVS            R6, #0
50659C:  ADD             R1, R2
50659E:  CMP             R1, R0
5065A0:  IT LS
5065A2:  MOVLS           R6, #1
5065A4:  MOV             R0, R6
5065A6:  ADD             SP, SP, #0x68 ; 'h'
5065A8:  POP.W           {R8-R10}
5065AC:  POP             {R4-R7,PC}
5065AE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5065BC)
5065B0:  ADD.W           R8, R10, #4
5065B4:  LDRSH.W         R1, [R10,#0x26]
5065B8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5065BA:  LDR.W           R3, [R10,#0x14]
5065BE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5065C0:  CMP             R3, #0
5065C2:  LDR.W           R0, [R0,R1,LSL#2]
5065C6:  LDR             R1, =(TheCamera_ptr - 0x5065CE)
5065C8:  LDR             R2, [R0,#0x2C]
5065CA:  ADD             R1, PC; TheCamera_ptr
5065CC:  LDR             R0, [R1]; TheCamera ; this
5065CE:  MOV             R1, R8
5065D0:  LDR             R2, [R2,#0x24]; float
5065D2:  IT NE
5065D4:  ADDNE.W         R1, R3, #0x30 ; '0'; CVector *
5065D8:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
5065DC:  MOVS            R6, #(stderr+1)
5065DE:  CMP             R0, #0
5065E0:  BNE             loc_5065A4
5065E2:  LDR.W           R0, [R10,#0x14]
5065E6:  MOVS            R1, #0
5065E8:  STRD.W          R6, R6, [SP,#0x80+var_80]; CEntity **
5065EC:  MOVT            R1, #0x4040; CVector *
5065F0:  CMP             R0, #0
5065F2:  STR             R6, [SP,#0x80+var_78]; unsigned __int8
5065F4:  IT NE
5065F6:  ADDNE.W         R8, R0, #0x30 ; '0'
5065FA:  MOV.W           R2, #0xFFFFFFFF; float
5065FE:  MOV             R0, R8; this
506600:  MOVS            R3, #0; int
506602:  BLX             j__ZN13CPedPlacement21IsPositionClearForPedERK7CVectorfiPP7CEntityhhh; CPedPlacement::IsPositionClearForPed(CVector const&,float,int,CEntity **,uchar,uchar,uchar)
506606:  CMP             R0, #1
506608:  BEQ.W           loc_50643E
50660C:  B               loc_5065A4
