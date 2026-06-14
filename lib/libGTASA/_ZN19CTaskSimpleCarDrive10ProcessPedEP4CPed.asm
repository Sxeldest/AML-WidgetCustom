; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarDrive10ProcessPedEP4CPed
; Address            : 0x4FA214 - 0x4FAA9C
; =========================================================

4FA214:  PUSH            {R4-R7,LR}
4FA216:  ADD             R7, SP, #0xC
4FA218:  PUSH.W          {R8-R11}
4FA21C:  SUB             SP, SP, #0x24
4FA21E:  MOV             R11, R0
4FA220:  LDR.W           R0, =(AudioEngine_ptr - 0x4FA22A)
4FA224:  MOV             R4, R1
4FA226:  ADD             R0, PC; AudioEngine_ptr
4FA228:  LDR             R0, [R0]; AudioEngine ; this
4FA22A:  BLX             j__ZN12CAudioEngine25HasRadioRetuneJustStartedEv; CAudioEngine::HasRadioRetuneJustStarted(void)
4FA22E:  MOV             R9, R0
4FA230:  LDRB.W          R0, [R11,#0x5C]
4FA234:  LSLS            R0, R0, #0x1D
4FA236:  BPL             loc_4FA26E
4FA238:  LDRB.W          R0, [R4,#0x485]
4FA23C:  LSLS            R0, R0, #0x1F
4FA23E:  BEQ             loc_4FA26E
4FA240:  LDR.W           R0, [R4,#0x590]; this
4FA244:  CMP             R0, #0
4FA246:  ITTT NE
4FA248:  MOVNE           R6, R11
4FA24A:  LDRNE.W         R1, [R6,#8]!
4FA24E:  CMPNE           R0, R1
4FA250:  BEQ             loc_4FA26E
4FA252:  CBZ             R1, loc_4FA266
4FA254:  MOV             R0, R1; this
4FA256:  MOV             R1, R6; CEntity **
4FA258:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FA25C:  LDR.W           R0, [R4,#0x590]
4FA260:  STR             R0, [R6]
4FA262:  CBNZ            R0, loc_4FA268
4FA264:  B               loc_4FA26E
4FA266:  STR             R0, [R6]
4FA268:  MOV             R1, R6; CEntity **
4FA26A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FA26E:  ADD.W           R2, R4, #0x488
4FA272:  LDR.W           R3, [R4,#0x484]
4FA276:  ADDW            R5, R4, #0x484
4FA27A:  LDM             R2, {R0-R2}; CPed *
4FA27C:  LDR.W           R6, [R11,#8]
4FA280:  CMP             R6, #0
4FA282:  IT NE
4FA284:  ANDSNE.W        R6, R3, #0x100
4FA288:  BNE             loc_4FA2BC
4FA28A:  LDR.W           R6, =(g_ikChainMan_ptr - 0x4FA29A)
4FA28E:  BIC.W           R3, R3, #0x100
4FA292:  STRD.W          R3, R0, [R5]
4FA296:  ADD             R6, PC; g_ikChainMan_ptr
4FA298:  STRD.W          R1, R2, [R5,#8]
4FA29C:  MOV             R1, R4; CPed *
4FA29E:  LDR             R0, [R6]; g_ikChainMan ; this
4FA2A0:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
4FA2A4:  CMP             R0, #0
4FA2A6:  BEQ             loc_4FA384
4FA2A8:  LDR.W           R0, =(g_ikChainMan_ptr - 0x4FA2B4)
4FA2AC:  MOV             R1, R4; CPed *
4FA2AE:  MOVS            R2, #0xFA; int
4FA2B0:  ADD             R0, PC; g_ikChainMan_ptr
4FA2B2:  LDR             R0, [R0]; g_ikChainMan ; this
4FA2B4:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
4FA2B8:  MOVS            R6, #1
4FA2BA:  B               loc_4FA7E4
4FA2BC:  MOV             R0, R4; this
4FA2BE:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4FA2C2:  MOV             R6, R0
4FA2C4:  LDR.W           R0, =(_ZN11CTheScripts14UpsideDownCarsE_ptr - 0x4FA2D0)
4FA2C8:  LDR.W           R1, [R11,#8]; CVehicle *
4FA2CC:  ADD             R0, PC; _ZN11CTheScripts14UpsideDownCarsE_ptr
4FA2CE:  LDR             R0, [R0]; this
4FA2D0:  BLX             j__ZN19CUpsideDownCarCheck15IsCarUpsideDownEPK8CVehicle; CUpsideDownCarCheck::IsCarUpsideDown(CVehicle const*)
4FA2D4:  CMP             R0, #0
4FA2D6:  BEQ             loc_4FA388
4FA2D8:  MOV.W           R0, #0xFFFFFFFF; int
4FA2DC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4FA2E0:  CMP             R0, R4
4FA2E2:  BEQ             loc_4FA31E
4FA2E4:  MOV.W           R0, #0xFFFFFFFF; int
4FA2E8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4FA2EC:  LDRB.W          R0, [R0,#0x485]
4FA2F0:  LSLS            R0, R0, #0x1F
4FA2F2:  BEQ             loc_4FA31E
4FA2F4:  MOV.W           R0, #0xFFFFFFFF; int
4FA2F8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4FA2FC:  LDR.W           R1, [R11,#8]
4FA300:  LDR.W           R0, [R0,#0x590]
4FA304:  CMP             R0, R1
4FA306:  BNE             loc_4FA31E
4FA308:  MOVS            R0, #0
4FA30A:  MOVS            R1, #0x22 ; '"'; unsigned __int16
4FA30C:  STRD.W          R0, R0, [SP,#0x40+var_40]; unsigned __int8
4FA310:  MOVS            R2, #0; unsigned int
4FA312:  STR             R0, [SP,#0x40+var_38]; unsigned __int8
4FA314:  MOV             R0, R4; this
4FA316:  MOV.W           R3, #0x3F800000; float
4FA31A:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4FA31E:  CBZ             R6, loc_4FA32E
4FA320:  ADD.W           R0, R6, #8; this
4FA324:  MOV             R1, R4; CPed *
4FA326:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
4FA32A:  CMP             R0, #1
4FA32C:  BNE             loc_4FA38E
4FA32E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4FA33A)
4FA332:  VLDR            S0, =50.0
4FA336:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4FA338:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4FA33A:  VLDR            S2, [R0]
4FA33E:  LDR.W           R0, [R11,#0x4C]
4FA342:  VDIV.F32        S0, S2, S0
4FA346:  VLDR            S2, =1000.0
4FA34A:  VMUL.F32        S0, S0, S2
4FA34E:  VCVT.U32.F32    S0, S0
4FA352:  VMOV            R1, S0
4FA356:  ADD             R0, R1
4FA358:  STR.W           R0, [R11,#0x4C]
4FA35C:  CMP.W           R0, #0x7D0
4FA360:  BLS             loc_4FA38E
4FA362:  ADD             R6, SP, #0x40+var_34
4FA364:  LDR.W           R1, [R11,#8]; CVehicle *
4FA368:  MOV             R0, R6; this
4FA36A:  BLX             j__ZN19CEventCarUpsideDownC2EP8CVehicle; CEventCarUpsideDown::CEventCarUpsideDown(CVehicle *)
4FA36E:  LDR.W           R0, [R4,#0x440]
4FA372:  MOV             R1, R6; CEvent *
4FA374:  MOVS            R2, #0; bool
4FA376:  ADDS            R0, #0x68 ; 'h'; this
4FA378:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4FA37C:  MOV             R0, R6; this
4FA37E:  BLX             j__ZN19CEventCarUpsideDownD2Ev; CEventCarUpsideDown::~CEventCarUpsideDown()
4FA382:  B               loc_4FA38E
4FA384:  MOVS            R6, #1
4FA386:  B               loc_4FA7E4
4FA388:  MOVS            R0, #0
4FA38A:  STR.W           R0, [R11,#0x4C]
4FA38E:  MOV             R0, R4; this
4FA390:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4FA394:  CMP             R0, #1
4FA396:  BNE             loc_4FA418
4FA398:  LDR.W           R0, [R11,#8]; this
4FA39C:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
4FA3A0:  CBZ             R0, loc_4FA418
4FA3A2:  LDRB.W          R0, [R11,#0x58]
4FA3A6:  CBZ             R0, loc_4FA3C6
4FA3A8:  LDRB.W          R0, [R11,#0x59]
4FA3AC:  CBZ             R0, loc_4FA3D2
4FA3AE:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FA3B8)
4FA3B2:  MOVS            R1, #0
4FA3B4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FA3B6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4FA3B8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4FA3BA:  STRB.W          R1, [R11,#0x59]
4FA3BE:  STR.W           R0, [R11,#0x50]
4FA3C2:  MOV             R1, R0
4FA3C4:  B               loc_4FA3E0
4FA3C6:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FA3CE)
4FA3CA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FA3CC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4FA3CE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4FA3D0:  B               loc_4FA3EA
4FA3D2:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FA3DE)
4FA3D6:  LDR.W           R1, [R11,#0x50]
4FA3DA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FA3DC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4FA3DE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4FA3E0:  LDR.W           R2, [R11,#0x54]
4FA3E4:  ADD             R1, R2
4FA3E6:  CMP             R1, R0
4FA3E8:  BHI             loc_4FA418
4FA3EA:  MOV.W           R1, #0x7D0
4FA3EE:  ADD             R6, SP, #0x40+var_34
4FA3F0:  STRD.W          R0, R1, [R11,#0x50]
4FA3F4:  MOVS            R0, #1
4FA3F6:  STRB.W          R0, [R11,#0x58]
4FA3FA:  MOV             R0, R6; this
4FA3FC:  LDR.W           R2, [R11,#8]; CVehicle *
4FA400:  MOV             R1, R4; CPed *
4FA402:  BLX             j__ZN23CEventCopCarBeingStolenC2EP4CPedP8CVehicle; CEventCopCarBeingStolen::CEventCopCarBeingStolen(CPed *,CVehicle *)
4FA406:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
4FA40A:  MOV             R1, R6; CEvent *
4FA40C:  MOVS            R2, #0; bool
4FA40E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4FA412:  MOV             R0, R6; this
4FA414:  BLX             j__ZN23CEventCopCarBeingStolenD2Ev; CEventCopCarBeingStolen::~CEventCopCarBeingStolen()
4FA418:  LDR.W           R0, [R11,#8]
4FA41C:  LDR.W           R1, [R0,#0x5A0]
4FA420:  CMP             R1, #9
4FA422:  ITT NE
4FA424:  LDRNE.W         R1, [R0,#0x5A4]
4FA428:  CMPNE           R1, #2
4FA42A:  BEQ             loc_4FA436
4FA42C:  LDRH            R0, [R0,#0x26]
4FA42E:  MOVW            R1, #0x213
4FA432:  CMP             R0, R1
4FA434:  BNE             loc_4FA43E
4FA436:  LDR             R0, [R5,#0xC]
4FA438:  ORR.W           R0, R0, #0x100000
4FA43C:  STR             R0, [R5,#0xC]
4FA43E:  MOV             R0, R4; this
4FA440:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4FA444:  MOV             R1, R0
4FA446:  LDR.W           R0, [R11,#8]; this
4FA44A:  CMP             R1, #1
4FA44C:  LDR.W           R2, [R0,#0x464]
4FA450:  IT EQ
4FA452:  CMPEQ           R2, R4
4FA454:  BNE.W           loc_4FA5C2
4FA458:  MOV             R0, R4; this
4FA45A:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
4FA45E:  MOV             R8, R0
4FA460:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x4FA468)
4FA464:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
4FA466:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
4FA468:  LDRB.W          R0, [R0,#(byte_796845 - 0x7967F4)]
4FA46C:  CMP             R0, #0
4FA46E:  ITT NE
4FA470:  LDRNE.W         R0, [R4,#0x614]
4FA474:  CMPNE           R0, #0
4FA476:  BEQ             loc_4FA4D6
4FA478:  LDR.W           R0, [R4,#0x620]
4FA47C:  CMP             R0, #1
4FA47E:  BLT             loc_4FA4D6
4FA480:  LDR.W           R0, [R11,#8]; this
4FA484:  MOV             R1, R4; CPed *
4FA486:  BLX             j__ZNK8CVehicle13CanPedLeanOutEP4CPed; CVehicle::CanPedLeanOut(CPed *)
4FA48A:  CMP             R0, #1
4FA48C:  BNE             loc_4FA4D6
4FA48E:  MOVS            R0, #dword_44; this
4FA490:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FA494:  MOVS            R3, #0
4FA496:  MOV             R6, R0
4FA498:  MOVS            R0, #0
4FA49A:  MOVS            R1, #8
4FA49C:  MOVS            R2, #0x64 ; 'd'
4FA49E:  MOVT            R3, #0x42C8; float
4FA4A2:  STRD.W          R2, R1, [SP,#0x40+var_40]; signed __int8
4FA4A6:  MOVS            R1, #0; CEntity *
4FA4A8:  STR             R0, [SP,#0x40+var_38]; bool
4FA4AA:  MOV             R0, R6; this
4FA4AC:  MOVS            R2, #0; CVector *
4FA4AE:  BLX             j__ZN22CTaskSimpleGangDriveByC2EP7CEntityPK7CVectorfaab; CTaskSimpleGangDriveBy::CTaskSimpleGangDriveBy(CEntity *,CVector const*,float,signed char,signed char,bool)
4FA4B2:  ADD.W           R10, SP, #0x40+var_34
4FA4B6:  MOVS            R1, #3; int
4FA4B8:  MOV             R2, R6; CTask *
4FA4BA:  MOVS            R3, #0; bool
4FA4BC:  MOV             R0, R10; this
4FA4BE:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
4FA4C2:  LDR.W           R0, [R4,#0x440]
4FA4C6:  MOV             R1, R10; CEvent *
4FA4C8:  MOVS            R2, #0; bool
4FA4CA:  ADDS            R0, #0x68 ; 'h'; this
4FA4CC:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4FA4D0:  MOV             R0, R10; this
4FA4D2:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
4FA4D6:  LDR.W           R0, [R4,#0x590]
4FA4DA:  MOVW            R2, #0x23A
4FA4DE:  LDRH            R1, [R0,#0x26]
4FA4E0:  CMP             R1, R2
4FA4E2:  BEQ             loc_4FA4FE
4FA4E4:  LDR.W           R1, [R0,#0x5A0]
4FA4E8:  CMP             R1, #6
4FA4EA:  BNE             loc_4FA4FE
4FA4EC:  ADDW            R0, R0, #0x61C; this
4FA4F0:  BLX             j__ZNK5CDoor8IsClosedEv; CDoor::IsClosed(void)
4FA4F4:  CMP             R0, #1
4FA4F6:  BNE.W           loc_4FA8A0
4FA4FA:  LDR.W           R0, [R4,#0x590]
4FA4FE:  LDR.W           R1, [R0,#0x5A0]
4FA502:  CMP             R1, #0
4FA504:  BNE             loc_4FA5BC
4FA506:  ADDW            R0, R0, #0x5B4
4FA50A:  MOVS            R1, #2
4FA50C:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
4FA510:  CMP             R0, #1
4FA512:  BNE             loc_4FA5BC
4FA514:  LDR.W           R0, [R4,#0x590]
4FA518:  LDR             R1, [R0]
4FA51A:  LDR.W           R2, [R1,#0x88]
4FA51E:  MOVS            R1, #2
4FA520:  BLX             R2
4FA522:  CMP             R0, #0
4FA524:  BNE.W           loc_4FA6E6
4FA528:  LDR             R0, [R4,#0x18]
4FA52A:  MOV.W           R1, #0x182
4FA52E:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FA532:  MOV             R6, R0
4FA534:  LDR.W           R0, [R4,#0x590]
4FA538:  LDRB.W          R1, [R0,#0x48B]
4FA53C:  LSLS            R1, R1, #0x1F
4FA53E:  BNE             loc_4FA572
4FA540:  CMP             R6, #0
4FA542:  ITT EQ
4FA544:  LDRBEQ.W        R1, [R0,#0x48A]
4FA548:  ANDSEQ.W        R1, R1, #1
4FA54C:  BNE             loc_4FA572
4FA54E:  CMP.W           R8, #0
4FA552:  BEQ.W           loc_4FAA4C
4FA556:  MOV             R0, R8; this
4FA558:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
4FA55C:  CBNZ            R0, loc_4FA572
4FA55E:  MOV             R0, R8; this
4FA560:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
4FA564:  CBNZ            R0, loc_4FA572
4FA566:  MOV             R0, R8; this
4FA568:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
4FA56C:  CMP             R0, #0
4FA56E:  BEQ.W           loc_4FAA48
4FA572:  CBZ             R6, loc_4FA5B4
4FA574:  LDR.W           R0, [R11,#8]
4FA578:  MOVS            R2, #0x94
4FA57A:  LDR.W           R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x4FA586)
4FA57E:  LDR.W           R0, [R0,#0x388]
4FA582:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
4FA584:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
4FA586:  LDRB.W          R0, [R0,#0xDE]
4FA58A:  SMLABB.W        R0, R0, R2, R1; this
4FA58E:  LDRSH.W         R1, [R6,#0x2C]; int
4FA592:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
4FA596:  MOV             R3, R0
4FA598:  LDR.W           R0, [R4,#0x590]
4FA59C:  VLDR            S0, [R6,#0x20]
4FA5A0:  MOVS            R2, #0xA
4FA5A2:  LDR             R1, [R0]
4FA5A4:  LDR             R6, [R1,#0x74]
4FA5A6:  MOV.W           R1, #0x182
4FA5AA:  VSTR            S0, [SP,#0x40+var_3C]
4FA5AE:  STR             R1, [SP,#0x40+var_40]
4FA5B0:  MOV             R1, R4
4FA5B2:  BLX             R6
4FA5B4:  MOV             R0, R11
4FA5B6:  MOV             R1, R4
4FA5B8:  MOVS            R2, #0
4FA5BA:  B               loc_4FA6E2
4FA5BC:  LDR.W           R0, [R11,#8]
4FA5C0:  B               loc_4FA6D0
4FA5C2:  CMP             R2, R4
4FA5C4:  BEQ.W           loc_4FA6D0
4FA5C8:  MOV             R1, R4; CPed *
4FA5CA:  BLX             j__ZNK8CVehicle11IsPassengerEPK4CPed; CVehicle::IsPassenger(CPed const*)
4FA5CE:  CMP             R0, #1
4FA5D0:  BNE.W           loc_4FA6E6
4FA5D4:  LDRB.W          R0, [R11,#0x5C]
4FA5D8:  TST.W           R0, #0x18
4FA5DC:  BNE             loc_4FA614
4FA5DE:  LDR.W           R0, [R11,#8]
4FA5E2:  LDR             R1, [R0]
4FA5E4:  LDR.W           R1, [R1,#0xC0]
4FA5E8:  BLX             R1
4FA5EA:  CBZ             R0, loc_4FA608
4FA5EC:  LDR.W           R0, [R11,#8]
4FA5F0:  LDR             R6, [R4,#0x18]
4FA5F2:  LDR             R1, [R0]
4FA5F4:  LDR.W           R1, [R1,#0xC0]
4FA5F8:  BLX             R1
4FA5FA:  LDR             R1, [R0]; int
4FA5FC:  MOV             R0, R6; int
4FA5FE:  MOVS            R2, #0xCD; unsigned int
4FA600:  MOV.W           R3, #0x41000000
4FA604:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4FA608:  LDRB.W          R0, [R11,#0x5C]
4FA60C:  ORR.W           R0, R0, #0x10
4FA610:  STRB.W          R0, [R11,#0x5C]
4FA614:  MOV             R0, R11; this
4FA616:  MOV             R1, R4; CPed *
4FA618:  MOVS            R2, #1; unsigned __int8
4FA61A:  BLX             j__ZN19CTaskSimpleCarDrive14ProcessBoppingEP4CPedh; CTaskSimpleCarDrive::ProcessBopping(CPed *,uchar)
4FA61E:  MOV             R0, R4; this
4FA620:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4FA624:  CMP             R0, #1
4FA626:  BNE             loc_4FA6E6
4FA628:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
4FA62C:  CMP             R0, #1
4FA62E:  BNE             loc_4FA6E6
4FA630:  LDR.W           R0, [R4,#0x614]
4FA634:  CMP             R0, #0
4FA636:  BEQ             loc_4FA6E6
4FA638:  LDR.W           R0, [R4,#0x620]
4FA63C:  CMP             R0, #1
4FA63E:  BLT             loc_4FA6E6
4FA640:  LDR.W           R0, [R11,#8]; this
4FA644:  MOV             R1, R4; CPed *
4FA646:  BLX             j__ZNK8CVehicle13CanPedLeanOutEP4CPed; CVehicle::CanPedLeanOut(CPed *)
4FA64A:  CMP             R0, #1
4FA64C:  BNE             loc_4FA6E6
4FA64E:  LDR.W           R0, =(TheCamera_ptr - 0x4FA656)
4FA652:  ADD             R0, PC; TheCamera_ptr
4FA654:  LDR             R0, [R0]; TheCamera
4FA656:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
4FA65A:  ADD.W           R1, R1, R1,LSL#5; unsigned int
4FA65E:  ADD.W           R0, R0, R1,LSL#4
4FA662:  LDRH.W          R0, [R0,#0x17E]
4FA666:  CMP             R0, #0x31 ; '1'
4FA668:  BNE             loc_4FA6E6
4FA66A:  LDR.W           R0, [R11,#8]
4FA66E:  MOVS            R5, #0
4FA670:  LDR.W           R0, [R0,#0x46C]
4FA674:  CMP             R0, R4
4FA676:  MOV.W           R0, #dword_44; this
4FA67A:  IT NE
4FA67C:  MOVNE           R5, #1
4FA67E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FA682:  MOVS            R3, #0
4FA684:  MOV             R6, R0
4FA686:  MOVS            R0, #8
4FA688:  MOVS            R1, #0x64 ; 'd'
4FA68A:  STRD.W          R1, R0, [SP,#0x40+var_40]; signed __int8
4FA68E:  MOVT            R3, #0x42C8; float
4FA692:  MOV             R0, R6; this
4FA694:  MOVS            R1, #0; CEntity *
4FA696:  MOVS            R2, #0; CVector *
4FA698:  STR             R5, [SP,#0x40+var_38]; bool
4FA69A:  BLX             j__ZN22CTaskSimpleGangDriveByC2EP7CEntityPK7CVectorfaab; CTaskSimpleGangDriveBy::CTaskSimpleGangDriveBy(CEntity *,CVector const*,float,signed char,signed char,bool)
4FA69E:  ADD.W           R8, SP, #0x40+var_34
4FA6A2:  MOVS            R1, #3; int
4FA6A4:  MOV             R2, R6; CTask *
4FA6A6:  MOVS            R3, #0; bool
4FA6A8:  MOV             R0, R8; this
4FA6AA:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
4FA6AE:  LDR.W           R0, [R4,#0x440]
4FA6B2:  MOV             R1, R8; CEvent *
4FA6B4:  MOVS            R2, #0; bool
4FA6B6:  ADDS            R0, #0x68 ; 'h'; this
4FA6B8:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4FA6BC:  MOV             R0, R8; this
4FA6BE:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
4FA6C2:  B               loc_4FA6E6
4FA6C4:  DCFS 50.0
4FA6C8:  DCFS 1000.0
4FA6CC:  DCFS 0.000015259
4FA6D0:  LDR             R1, [R0]
4FA6D2:  MOV             R2, R9
4FA6D4:  LDR.W           R3, [R1,#0xBC]
4FA6D8:  MOV             R1, R4
4FA6DA:  BLX             R3
4FA6DC:  MOV             R0, R11; this
4FA6DE:  MOV             R1, R4; CPed *
4FA6E0:  MOVS            R2, #1; unsigned __int8
4FA6E2:  BLX             j__ZN19CTaskSimpleCarDrive14ProcessBoppingEP4CPedh; CTaskSimpleCarDrive::ProcessBopping(CPed *,uchar)
4FA6E6:  MOV             R0, R4; this
4FA6E8:  BLX             j__ZN4CPed29GetEntityThatThisPedIsHoldingEv; CPed::GetEntityThatThisPedIsHolding(void)
4FA6EC:  CBZ             R0, loc_4FA766
4FA6EE:  LDR.W           R1, =(MI_GANG_SMOKE_ptr - 0x4FA6FA)
4FA6F2:  LDRSH.W         R0, [R0,#0x26]
4FA6F6:  ADD             R1, PC; MI_GANG_SMOKE_ptr
4FA6F8:  LDR             R1, [R1]; MI_GANG_SMOKE
4FA6FA:  LDRH            R1, [R1]
4FA6FC:  CMP             R0, R1
4FA6FE:  BNE             loc_4FA766
4FA700:  LDR.W           R0, =(g_ikChainMan_ptr - 0x4FA70A)
4FA704:  MOV             R1, R4; CPed *
4FA706:  ADD             R0, PC; g_ikChainMan_ptr
4FA708:  LDR             R0, [R0]; g_ikChainMan ; this
4FA70A:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
4FA70E:  CBNZ            R0, loc_4FA766
4FA710:  BLX             rand
4FA714:  UXTH            R0, R0
4FA716:  VLDR            S2, =0.000015259
4FA71A:  VMOV            S0, R0
4FA71E:  VCVT.F32.S32    S0, S0
4FA722:  VMUL.F32        S0, S0, S2
4FA726:  VLDR            S2, =60.0
4FA72A:  VMUL.F32        S0, S0, S2
4FA72E:  VCVT.S32.F32    S0, S0
4FA732:  VMOV            R0, S0
4FA736:  CMP             R0, #0xF
4FA738:  BNE             loc_4FA766
4FA73A:  LDR.W           R0, [R4,#0x440]
4FA73E:  MOVW            R1, #0x133; int
4FA742:  ADDS            R0, #4; this
4FA744:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4FA748:  MOV             R6, R0
4FA74A:  CBZ             R6, loc_4FA766
4FA74C:  LDR.W           R0, [R11,#8]; this
4FA750:  MOV             R1, R4; CPed *
4FA752:  BLX             j__ZNK8CVehicle11IsPassengerEPK4CPed; CVehicle::IsPassenger(CPed const*)
4FA756:  CMP             R0, #1
4FA758:  MOV             R0, R6
4FA75A:  ITE NE
4FA75C:  MOVNE           R1, #0xA9
4FA75E:  MOVEQ           R1, #0xAA
4FA760:  MOVS            R2, #0
4FA762:  BLX             j__ZN21CTaskSimpleHoldEntity8PlayAnimE11AnimationId12AssocGroupId; CTaskSimpleHoldEntity::PlayAnim(AnimationId,AssocGroupId)
4FA766:  LDR             R0, [R4,#0x18]
4FA768:  MOVS            R1, #0xA9
4FA76A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FA76E:  CBZ             R0, loc_4FA79E
4FA770:  LDR             R0, =(g_ikChainMan_ptr - 0x4FA778)
4FA772:  MOV             R1, R4; CPed *
4FA774:  ADD             R0, PC; g_ikChainMan_ptr
4FA776:  LDR             R0, [R0]; g_ikChainMan ; this
4FA778:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
4FA77C:  CBZ             R0, loc_4FA78C
4FA77E:  LDR             R0, =(g_ikChainMan_ptr - 0x4FA788)
4FA780:  MOV             R1, R4; CPed *
4FA782:  MOVS            R2, #0xFA; int
4FA784:  ADD             R0, PC; g_ikChainMan_ptr
4FA786:  LDR             R0, [R0]; g_ikChainMan ; this
4FA788:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
4FA78C:  LDR.W           R0, [R11,#0x20]
4FA790:  ADDS            R0, #1
4FA792:  ITT NE
4FA794:  MOVNE.W         R0, #0xFFFFFFFF
4FA798:  STRNE.W         R0, [R11,#0x20]
4FA79C:  B               loc_4FA7A6
4FA79E:  MOV             R0, R11; this
4FA7A0:  MOV             R1, R4; CPed *
4FA7A2:  BLX             j__ZN19CTaskSimpleCarDrive9TriggerIKEP4CPed; CTaskSimpleCarDrive::TriggerIK(CPed *)
4FA7A6:  LDRB.W          R0, [R4,#0x448]
4FA7AA:  CMP             R0, #1
4FA7AC:  BNE             loc_4FA7D2
4FA7AE:  MOV             R0, R4; this
4FA7B0:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4FA7B4:  CBNZ            R0, loc_4FA7D2
4FA7B6:  LDR.W           R0, [R11,#8]
4FA7BA:  LDR.W           R1, [R0,#0x464]
4FA7BE:  CMP             R1, #0
4FA7C0:  ITT EQ
4FA7C2:  LDREQ.W         R0, [R0,#0x468]
4FA7C6:  CMPEQ           R0, R4
4FA7C8:  BEQ.W           loc_4FA908
4FA7CC:  MOVS            R0, #0
4FA7CE:  STRB.W          R0, [R11,#0x1C]
4FA7D2:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x4FA7DA)
4FA7D4:  LDRH            R1, [R4,#0x24]
4FA7D6:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
4FA7D8:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
4FA7DA:  LDR             R0, [R0]; CTimer::m_FrameCounter
4FA7DC:  ADD             R0, R1
4FA7DE:  LSLS            R0, R0, #0x12
4FA7E0:  BEQ             loc_4FA7EE
4FA7E2:  MOVS            R6, #0
4FA7E4:  MOV             R0, R6
4FA7E6:  ADD             SP, SP, #0x24 ; '$'
4FA7E8:  POP.W           {R8-R11}
4FA7EC:  POP             {R4-R7,PC}
4FA7EE:  LDR.W           R0, [R11,#8]
4FA7F2:  MOVS            R6, #0
4FA7F4:  LDR.W           R0, [R0,#0x464]; this
4FA7F8:  CMP             R0, #0
4FA7FA:  IT NE
4FA7FC:  CMPNE           R0, R4
4FA7FE:  BEQ             loc_4FA7E4
4FA800:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4FA804:  CMP             R0, #1
4FA806:  BNE             loc_4FA7E2
4FA808:  LDR.W           R0, [R11,#8]
4FA80C:  VLDR            S0, [R0,#0x48]
4FA810:  VLDR            S2, [R0,#0x4C]
4FA814:  VMUL.F32        S6, S0, S0
4FA818:  VMUL.F32        S4, S2, S2
4FA81C:  VADD.F32        S4, S6, S4
4FA820:  VLDR            S6, =0.7
4FA824:  VSQRT.F32       S4, S4
4FA828:  VCMPE.F32       S4, S6
4FA82C:  VMRS            APSR_nzcv, FPSCR
4FA830:  BLE             loc_4FA854
4FA832:  MOVS            R0, #0
4FA834:  MOVS            R1, #0x20 ; ' '; unsigned __int16
4FA836:  STRD.W          R0, R0, [SP,#0x40+var_40]; unsigned __int8
4FA83A:  MOVS            R2, #0; unsigned int
4FA83C:  STR             R0, [SP,#0x40+var_38]; unsigned __int8
4FA83E:  MOV             R0, R4; this
4FA840:  MOV.W           R3, #0x3F800000; float
4FA844:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4FA848:  LDR.W           R0, [R11,#8]
4FA84C:  VLDR            S0, [R0,#0x48]
4FA850:  VLDR            S2, [R0,#0x4C]
4FA854:  VMUL.F32        S2, S2, S2
4FA858:  VMUL.F32        S0, S0, S0
4FA85C:  VADD.F32        S0, S0, S2
4FA860:  VLDR            S2, =0.1
4FA864:  VSQRT.F32       S0, S0
4FA868:  VCMPE.F32       S0, S2
4FA86C:  VMRS            APSR_nzcv, FPSCR
4FA870:  BGE             loc_4FA888
4FA872:  MOVS            R0, #0
4FA874:  MOVS            R1, #0x27 ; '''; unsigned __int16
4FA876:  STRD.W          R0, R0, [SP,#0x40+var_40]; unsigned __int8
4FA87A:  MOVS            R2, #0; unsigned int
4FA87C:  STR             R0, [SP,#0x40+var_38]; unsigned __int8
4FA87E:  MOV             R0, R4; this
4FA880:  MOV.W           R3, #0x3F800000; float
4FA884:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4FA888:  MOVS            R6, #0
4FA88A:  MOV             R0, R4; this
4FA88C:  MOVS            R1, #0x29 ; ')'; unsigned __int16
4FA88E:  MOVS            R2, #0; unsigned int
4FA890:  MOV.W           R3, #0x3F800000; float
4FA894:  STRD.W          R6, R6, [SP,#0x40+var_40]; unsigned __int8
4FA898:  STR             R6, [SP,#0x40+var_38]; unsigned __int8
4FA89A:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4FA89E:  B               loc_4FA7E4
4FA8A0:  CMP.W           R8, #0
4FA8A4:  BEQ             loc_4FA8CA
4FA8A6:  MOV             R0, R8; this
4FA8A8:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
4FA8AC:  CMP             R0, #0
4FA8AE:  BNE.W           loc_4FA6E6
4FA8B2:  MOV             R0, R8; this
4FA8B4:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
4FA8B8:  CMP             R0, #0
4FA8BA:  BNE.W           loc_4FA6E6
4FA8BE:  MOV             R0, R8; this
4FA8C0:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
4FA8C4:  CMP             R0, #0
4FA8C6:  BNE.W           loc_4FA6E6
4FA8CA:  LDR.W           R0, [R11,#8]
4FA8CE:  MOVS            R2, #0x94
4FA8D0:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x4FA8DE)
4FA8D2:  MOV.W           R5, #0x182
4FA8D6:  LDR.W           R0, [R0,#0x388]
4FA8DA:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
4FA8DC:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
4FA8DE:  LDRB.W          R0, [R0,#0xDE]
4FA8E2:  SMLABB.W        R0, R0, R2, R1; this
4FA8E6:  MOV.W           R1, #0x182; int
4FA8EA:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
4FA8EE:  MOV             R3, R0
4FA8F0:  LDR.W           R0, [R4,#0x590]
4FA8F4:  MOVS            R2, #0xA
4FA8F6:  LDR             R1, [R0]
4FA8F8:  LDR             R6, [R1,#0x74]
4FA8FA:  MOV.W           R1, #0x3F800000
4FA8FE:  STRD.W          R5, R1, [SP,#0x40+var_40]
4FA902:  MOV             R1, R4
4FA904:  BLX             R6
4FA906:  B               loc_4FA6E6
4FA908:  LDRB.W          R0, [R11,#0x1C]
4FA90C:  CBNZ            R0, loc_4FA924
4FA90E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FA918)
4FA910:  MOV.W           R1, #0xFA0
4FA914:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FA916:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4FA918:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4FA91A:  STRD.W          R0, R1, [R11,#0x14]
4FA91E:  MOVS            R0, #1
4FA920:  STRB.W          R0, [R11,#0x1C]
4FA924:  LDRB.W          R0, [R11,#0x1D]
4FA928:  CBZ             R0, loc_4FA940
4FA92A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FA932)
4FA92C:  MOVS            R1, #0
4FA92E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FA930:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4FA932:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4FA934:  STRB.W          R1, [R11,#0x1D]
4FA938:  STR.W           R0, [R11,#0x14]
4FA93C:  MOV             R1, R0
4FA93E:  B               loc_4FA94C
4FA940:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FA94A)
4FA942:  LDR.W           R1, [R11,#0x14]
4FA946:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FA948:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4FA94A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4FA94C:  LDR.W           R2, [R11,#0x18]
4FA950:  ADD             R1, R2; unsigned int
4FA952:  CMP             R1, R0
4FA954:  BHI.W           loc_4FA7D2
4FA958:  MOVS            R0, #dword_40; this
4FA95A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FA95E:  MOV             R8, R0
4FA960:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
4FA964:  MOVS            R0, #dword_34; this
4FA966:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FA96A:  MOV             R6, R0
4FA96C:  LDR.W           R9, [R11,#8]
4FA970:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FA974:  LDR             R0, =(_ZTV20CTaskComplexLeaveCar_ptr - 0x4FA984)
4FA976:  MOVS            R5, #0
4FA978:  MOV.W           R10, #1
4FA97C:  MOV.W           R1, #0x40800000
4FA980:  ADD             R0, PC; _ZTV20CTaskComplexLeaveCar_ptr
4FA982:  MOV.W           R2, #0x3F800000
4FA986:  ADD.W           R3, R6, #0x24 ; '$'
4FA98A:  CMP.W           R9, #0
4FA98E:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCar ...
4FA990:  ADD.W           R0, R0, #8
4FA994:  STR             R0, [R6]
4FA996:  MOV.W           R0, #0xF
4FA99A:  STRD.W          R5, R5, [R6,#0x10]
4FA99E:  STRH.W          R10, [R6,#0x18]
4FA9A2:  STRB            R5, [R6,#0x1A]
4FA9A4:  STR             R5, [R6,#0x1C]
4FA9A6:  STRB.W          R5, [R6,#0x20]
4FA9AA:  STRB.W          R5, [R6,#0x21]
4FA9AE:  STM             R3!, {R0-R2}
4FA9B0:  MOV             R1, R6
4FA9B2:  STRB.W          R5, [R6,#0x30]
4FA9B6:  STR.W           R9, [R1,#0xC]!; CEntity **
4FA9BA:  ITT NE
4FA9BC:  MOVNE           R0, R9; this
4FA9BE:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FA9C2:  MOV             R0, R8; this
4FA9C4:  MOV             R1, R6; CTask *
4FA9C6:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
4FA9CA:  MOVS            R0, #dword_24; this
4FA9CC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FA9D0:  MOV             R6, R0
4FA9D2:  LDR.W           R9, [R11,#8]
4FA9D6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FA9DA:  LDR             R0, =(_ZTV20CTaskComplexCarDrive_ptr - 0x4FA9EC)
4FA9DC:  MOV.W           R1, #0xFFFFFFFF
4FA9E0:  ADD.W           R2, R6, #0x10
4FA9E4:  CMP.W           R9, #0
4FA9E8:  ADD             R0, PC; _ZTV20CTaskComplexCarDrive_ptr
4FA9EA:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDrive ...
4FA9EC:  ADD.W           R0, R0, #8
4FA9F0:  STR             R0, [R6]
4FA9F2:  MOV             R0, #0x41200000
4FA9FA:  STM             R2!, {R0,R1,R5}
4FA9FC:  MOV             R1, R6
4FA9FE:  STRB.W          R10, [R6,#0x1C]
4FAA02:  STRB.W          R5, [R6,#0x20]
4FAA06:  STR.W           R9, [R1,#0xC]!; CEntity **
4FAA0A:  ITT NE
4FAA0C:  MOVNE           R0, R9; this
4FAA0E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FAA12:  LDR             R0, =(_ZTV26CTaskComplexCarDriveWander_ptr - 0x4FAA1A)
4FAA14:  MOV             R1, R6; CTask *
4FAA16:  ADD             R0, PC; _ZTV26CTaskComplexCarDriveWander_ptr
4FAA18:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDriveWander ...
4FAA1A:  ADDS            R0, #8
4FAA1C:  STR             R0, [R6]
4FAA1E:  MOV             R0, R8; this
4FAA20:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
4FAA24:  ADD             R6, SP, #0x40+var_34
4FAA26:  MOVS            R1, #3; int
4FAA28:  MOV             R2, R8; CTask *
4FAA2A:  MOVS            R3, #0; bool
4FAA2C:  MOV             R0, R6; this
4FAA2E:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
4FAA32:  LDR.W           R0, [R4,#0x440]
4FAA36:  MOV             R1, R6; CEvent *
4FAA38:  MOVS            R2, #0; bool
4FAA3A:  ADDS            R0, #0x68 ; 'h'; this
4FAA3C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4FAA40:  MOV             R0, R6; this
4FAA42:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
4FAA46:  B               loc_4FA7D2
4FAA48:  LDR.W           R0, [R4,#0x590]; this
4FAA4C:  MOVS            R1, #1; unsigned __int8
4FAA4E:  BLX             j__ZN8CVehicle18SetGettingOutFlagsEh; CVehicle::SetGettingOutFlags(uchar)
4FAA52:  LDRB.W          R0, [R11,#0x5C]
4FAA56:  MOVS            R2, #0x94
4FAA58:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x4FAA6A)
4FAA5A:  ORR.W           R0, R0, #0x20 ; ' '
4FAA5E:  STRB.W          R0, [R11,#0x5C]
4FAA62:  LDR.W           R0, [R4,#0x590]
4FAA66:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
4FAA68:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
4FAA6A:  LDR.W           R0, [R0,#0x388]
4FAA6E:  LDRB.W          R0, [R0,#0xDE]
4FAA72:  SMLABB.W        R0, R0, R2, R1; this
4FAA76:  MOV.W           R1, #0x182; int
4FAA7A:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
4FAA7E:  MOV             R1, R0; int
4FAA80:  LDR             R0, [R4,#0x18]; int
4FAA82:  MOV.W           R2, #0x182; unsigned int
4FAA86:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
4FAA8A:  LDR             R1, =(_ZN19CTaskSimpleCarDrive28FinishAnimCloseDoorRollingCBEP21CAnimBlendAssociationPv_ptr - 0x4FAA96)
4FAA8C:  MOV             R2, R11; void *
4FAA8E:  STR.W           R0, [R11,#0xC]
4FAA92:  ADD             R1, PC; _ZN19CTaskSimpleCarDrive28FinishAnimCloseDoorRollingCBEP21CAnimBlendAssociationPv_ptr
4FAA94:  LDR             R1, [R1]; CTaskSimpleCarDrive::FinishAnimCloseDoorRollingCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4FAA96:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4FAA9A:  B               loc_4FA7E2
