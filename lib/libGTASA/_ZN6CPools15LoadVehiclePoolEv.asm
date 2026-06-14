; =========================================================
; Game Engine Function: _ZN6CPools15LoadVehiclePoolEv
; Address            : 0x4881D4 - 0x488654
; =========================================================

4881D4:  PUSH            {R4-R7,LR}
4881D6:  ADD             R7, SP, #0xC
4881D8:  PUSH.W          {R8-R11}
4881DC:  SUB             SP, SP, #0x4C
4881DE:  ADD             R0, SP, #0x68+var_20; this
4881E0:  MOVS            R1, #byte_4; void *
4881E2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4881E6:  LDR             R0, [SP,#0x68+var_20]
4881E8:  CMP             R0, #1
4881EA:  BLT.W           loc_4884D8
4881EE:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x488200)
4881F2:  ADD.W           R11, SP, #0x68+var_2C
4881F6:  MOVS            R6, #0
4881F8:  MOV.W           R10, #1
4881FC:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4881FE:  LDR             R0, [R0]; CWorld::Players ...
488200:  STR             R0, [SP,#0x68+var_50]
488202:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x48820A)
488206:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
488208:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
48820A:  STR             R0, [SP,#0x68+var_54]
48820C:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x488214)
488210:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
488212:  LDR             R0, [R0]; CWorld::Players ...
488214:  STR             R0, [SP,#0x68+var_58]
488216:  LDR.W           R0, =(_ZN6CTrain20bDisableRandomTrainsE_ptr - 0x48821E)
48821A:  ADD             R0, PC; _ZN6CTrain20bDisableRandomTrainsE_ptr
48821C:  LDR             R0, [R0]; CTrain::bDisableRandomTrains ...
48821E:  STR             R0, [SP,#0x68+var_68]
488220:  LDR.W           R0, =(_ZN8CCarCtrl13NumRandomCarsE_ptr - 0x488228)
488224:  ADD             R0, PC; _ZN8CCarCtrl13NumRandomCarsE_ptr
488226:  LDR             R0, [R0]; CCarCtrl::NumRandomCars ...
488228:  STR             R0, [SP,#0x68+var_5C]
48822A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x488232)
48822E:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
488230:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
488232:  STR             R0, [SP,#0x68+var_60]
488234:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x48823C)
488238:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
48823A:  LDR             R0, [R0]; CTheScripts::MissionCleanUp ...
48823C:  STR             R0, [SP,#0x68+var_64]
48823E:  ADD             R0, SP, #0x68+var_24; this
488240:  MOVS            R1, #byte_4; void *
488242:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488246:  ADD             R0, SP, #0x68+var_28; this
488248:  MOVS            R1, #byte_4; void *
48824A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48824E:  LDR             R0, [SP,#0x68+var_28]; this
488250:  MOVS            R1, #8; int
488252:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
488256:  MOVS            R0, #0; this
488258:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
48825C:  LDR             R0, [SP,#0x68+var_50]
48825E:  LDR             R0, [R0]
488260:  ADD.W           R3, R0, #0x488
488264:  LDR.W           R8, [R0,#0x484]
488268:  LDM             R3, {R1-R3}; int
48826A:  BIC.W           R4, R8, #0x100
48826E:  STR.W           R4, [R0,#0x484]
488272:  ADD.W           R0, R0, #0x488
488276:  STM             R0!, {R1-R3}
488278:  LDR             R0, [SP,#0x68+var_28]
48827A:  LDR             R1, [SP,#0x68+var_54]
48827C:  LDR.W           R0, [R1,R0,LSL#2]
488280:  LDR             R0, [R0,#0x54]
488282:  SUBS            R0, #1; switch 11 cases
488284:  CMP             R0, #0xA
488286:  BHI             def_488288; jumptable 00488288 default case, cases 7,8
488288:  TBB.W           [PC,R0]; switch jump
48828C:  DCB 6; jump table for switch statement
48828D:  DCB 0x12
48828E:  DCB 0x1E
48828F:  DCB 0x2A
488290:  DCB 0x36
488291:  DCB 0x42
488292:  DCB 0x4E
488293:  DCB 0x4E
488294:  DCB 0x5B
488295:  DCB 0x67
488296:  DCB 0x79
488297:  ALIGN 2
488298:  LDR             R1, [SP,#0x68+var_24]; jumptable 00488288 case 1
48829A:  MOV.W           R0, #(elf_hash_bucket+0x8B4); this
48829E:  MOV             R9, R6
4882A0:  BLX             j__ZN8CVehiclenwEji; CVehicle::operator new(uint,int)
4882A4:  LDR             R1, [SP,#0x68+var_28]; int
4882A6:  MOVS            R2, #1; unsigned __int8
4882A8:  MOV             R4, R0
4882AA:  BLX             j__ZN13CMonsterTruckC2Eih; CMonsterTruck::CMonsterTruck(int,uchar)
4882AE:  B               loc_488394
4882B0:  LDR             R1, [SP,#0x68+var_24]; jumptable 00488288 case 2
4882B2:  MOV.W           R0, #(elf_hash_bucket+0x8D4); this
4882B6:  MOV             R9, R6
4882B8:  BLX             j__ZN8CVehiclenwEji; CVehicle::operator new(uint,int)
4882BC:  LDR             R1, [SP,#0x68+var_28]; int
4882BE:  MOVS            R2, #1; unsigned __int8
4882C0:  MOV             R4, R0
4882C2:  BLX             j__ZN9CQuadBikeC2Eih; CQuadBike::CQuadBike(int,uchar)
4882C6:  B               loc_488394
4882C8:  LDR             R1, [SP,#0x68+var_24]; jumptable 00488288 case 3
4882CA:  MOVW            R0, #(elf_hash_bucket+0x930); this
4882CE:  MOV             R9, R6
4882D0:  BLX             j__ZN8CVehiclenwEji; CVehicle::operator new(uint,int)
4882D4:  LDR             R1, [SP,#0x68+var_28]; int
4882D6:  MOVS            R2, #1; unsigned __int8
4882D8:  MOV             R4, R0
4882DA:  BLX             j__ZN5CHeliC2Eih; CHeli::CHeli(int,uchar)
4882DE:  B               loc_488394
4882E0:  LDR             R1, [SP,#0x68+var_24]; jumptable 00488288 case 4
4882E2:  MOVW            R0, #(elf_hash_bucket+0x91C); this
4882E6:  MOV             R9, R6
4882E8:  BLX             j__ZN8CVehiclenwEji; CVehicle::operator new(uint,int)
4882EC:  LDR             R1, [SP,#0x68+var_28]; int
4882EE:  MOVS            R2, #1; unsigned __int8
4882F0:  MOV             R4, R0
4882F2:  BLX             j__ZN6CPlaneC2Eih; CPlane::CPlane(int,uchar)
4882F6:  B               loc_488394
4882F8:  LDR             R1, [SP,#0x68+var_24]; jumptable 00488288 case 5
4882FA:  MOVW            R0, #(elf_hash_bucket+0x700); this
4882FE:  MOV             R9, R6
488300:  BLX             j__ZN8CVehiclenwEji; CVehicle::operator new(uint,int)
488304:  LDR             R1, [SP,#0x68+var_28]; int
488306:  MOVS            R2, #1; unsigned __int8
488308:  MOV             R4, R0
48830A:  BLX             j__ZN5CBoatC2Eih; CBoat::CBoat(int,uchar)
48830E:  B               loc_488394
488310:  LDR             R1, [SP,#0x68+var_24]; jumptable 00488288 case 6
488312:  MOV.W           R0, #(elf_hash_bucket+0x5C4); this
488316:  MOV             R9, R6
488318:  BLX             j__ZN8CVehiclenwEji; CVehicle::operator new(uint,int)
48831C:  LDR             R1, [SP,#0x68+var_28]; int
48831E:  MOVS            R2, #1; unsigned __int8
488320:  MOV             R4, R0
488322:  BLX             j__ZN6CTrainC2Eih; CTrain::CTrain(int,uchar)
488326:  B               loc_488394
488328:  LDR             R1, [SP,#0x68+var_24]; jumptable 00488288 default case, cases 7,8
48832A:  MOVW            R0, #(elf_hash_bucket+0x8A0); this
48832E:  MOV             R9, R6
488330:  BLX             j__ZN8CVehiclenwEji; CVehicle::operator new(uint,int)
488334:  LDR             R1, [SP,#0x68+var_28]; int
488336:  MOVS            R2, #1; unsigned __int8
488338:  MOVS            R3, #1; unsigned __int8
48833A:  MOV             R4, R0
48833C:  BLX             j__ZN11CAutomobileC2Eihh; CAutomobile::CAutomobile(int,uchar,uchar)
488340:  B               loc_488394
488342:  LDR             R1, [SP,#0x68+var_24]; jumptable 00488288 case 9
488344:  MOVW            R0, #(elf_hash_bucket+0x72C); this
488348:  MOV             R9, R6
48834A:  BLX             j__ZN8CVehiclenwEji; CVehicle::operator new(uint,int)
48834E:  LDR             R1, [SP,#0x68+var_28]; int
488350:  MOVS            R2, #1; unsigned __int8
488352:  MOV             R4, R0
488354:  BLX             j__ZN5CBikeC2Eih_0; CBike::CBike(int,uchar)
488358:  B               loc_488370
48835A:  LDR             R1, [SP,#0x68+var_24]; jumptable 00488288 case 10
48835C:  MOVW            R0, #(elf_hash_bucket+0x750); this
488360:  MOV             R9, R6
488362:  BLX             j__ZN8CVehiclenwEji; CVehicle::operator new(uint,int)
488366:  LDR             R1, [SP,#0x68+var_28]; int
488368:  MOVS            R2, #1; unsigned __int8
48836A:  MOV             R4, R0
48836C:  BLX             j__ZN4CBmxC2Eih; CBmx::CBmx(int,uchar)
488370:  LDRB.W          R0, [R4,#0x628]
488374:  ORR.W           R0, R0, #0x10
488378:  STRB.W          R0, [R4,#0x628]
48837C:  B               loc_488394
48837E:  LDR             R1, [SP,#0x68+var_24]; jumptable 00488288 case 11
488380:  MOVW            R0, #(elf_hash_bucket+0x90C); this
488384:  MOV             R9, R6
488386:  BLX             j__ZN8CVehiclenwEji; CVehicle::operator new(uint,int)
48838A:  LDR             R1, [SP,#0x68+var_28]; int
48838C:  MOVS            R2, #1; unsigned __int8
48838E:  MOV             R4, R0
488390:  BLX             j__ZN8CTrailerC2Eih; CTrailer::CTrailer(int,uchar)
488394:  LDR             R0, [SP,#0x68+var_58]
488396:  MOV.W           R6, R8,LSR#8
48839A:  LDR             R0, [R0]
48839C:  LDR.W           R1, [R0,#0x484]
4883A0:  LDR.W           R2, [R0,#0x488]
4883A4:  LDR.W           R3, [R0,#0x48C]
4883A8:  BFI.W           R1, R6, #8, #1
4883AC:  LDR.W           R5, [R0,#0x490]
4883B0:  STR.W           R1, [R0,#0x484]
4883B4:  STR.W           R2, [R0,#0x488]
4883B8:  STR.W           R3, [R0,#0x48C]
4883BC:  STR.W           R5, [R0,#0x490]
4883C0:  LDR             R0, [R4]
4883C2:  LDR.W           R1, [R0,#0x108]
4883C6:  MOV             R0, R4
4883C8:  BLX             R1
4883CA:  LDR.W           R0, [R4,#0x5A4]
4883CE:  CMP             R0, #6
4883D0:  BNE             loc_4883EC
4883D2:  ADDW            R0, R4, #0x5CC; this
4883D6:  MOVS            R1, #(stderr+2); void *
4883D8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4883DC:  LDRB.W          R0, [R4,#0x4A8]
4883E0:  CMP             R0, #2
4883E2:  BNE             loc_4883EC
4883E4:  LDR             R0, [SP,#0x68+var_68]; this
4883E6:  MOVS            R1, #(stderr+1); void *
4883E8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4883EC:  LDR             R1, [SP,#0x68+var_5C]
4883EE:  LDR             R0, [R1]
4883F0:  SUBS            R0, #1
4883F2:  STR             R0, [R1]
4883F4:  MOV             R0, R4; this
4883F6:  MOVS            R1, #0; CVehicle *
4883F8:  BLX             j__ZN8CCarCtrl14UpdateCarCountEP8CVehicleh; CCarCtrl::UpdateCarCount(CVehicle *,uchar)
4883FC:  MOV             R0, R4; this
4883FE:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
488402:  MOV.W           R0, #0xFFFFFFFF
488406:  MOVS            R1, #byte_4; void *
488408:  STR             R0, [SP,#0x68+var_2C]
48840A:  MOV             R0, R11; this
48840C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488410:  MOV             R6, R9
488412:  LDR             R0, [SP,#0x68+var_2C]; this
488414:  ADDS            R6, #1
488416:  ADDS            R1, R0, #1; int
488418:  BEQ             loc_48844A
48841A:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
48841E:  MOV             R5, R0
488420:  CBZ             R5, loc_48844A
488422:  LDR.W           R0, [R5,#0x440]; this
488426:  MOVS            R1, #0; bool
488428:  BLX             j__ZN16CPedIntelligence16FlushImmediatelyEb; CPedIntelligence::FlushImmediately(bool)
48842C:  ADD.W           R8, SP, #0x68+var_48
488430:  MOV             R1, R4; CVehicle *
488432:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
488434:  MOV             R0, R8; this
488436:  BLX             j__ZN30CTaskSimpleCarSetPedInAsDriverC2EP8CVehicleP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsDriver::CTaskSimpleCarSetPedInAsDriver(CVehicle *,CTaskUtilityLineUpPedWithCar *)
48843A:  MOV             R1, R5; CPed *
48843C:  STRB.W          R10, [SP,#0x68+var_30]
488440:  BLX             j__ZN30CTaskSimpleCarSetPedInAsDriver10ProcessPedEP4CPed; CTaskSimpleCarSetPedInAsDriver::ProcessPed(CPed *)
488444:  MOV             R0, R8; this
488446:  BLX             j__ZN30CTaskSimpleCarSetPedInAsDriverD2Ev; CTaskSimpleCarSetPedInAsDriver::~CTaskSimpleCarSetPedInAsDriver()
48844A:  MOV.W           R8, #0
48844E:  MOV             R0, R11; this
488450:  MOVS            R1, #byte_4; void *
488452:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488456:  LDR             R0, [SP,#0x68+var_2C]; this
488458:  ADDS            R1, R0, #1; int
48845A:  BEQ             loc_48849A
48845C:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
488460:  MOV             R9, R0
488462:  CMP.W           R9, #0
488466:  BEQ             loc_48849A
488468:  LDR.W           R0, [R9,#0x484]
48846C:  MOV             R1, R8; CVehicle *
48846E:  BIC.W           R0, R0, #0x100
488472:  STR.W           R0, [R9,#0x484]
488476:  MOV             R0, R4; this
488478:  BLX             j__ZN13CCarEnterExit35ComputeTargetDoorToEnterAsPassengerERK8CVehiclei; CCarEnterExit::ComputeTargetDoorToEnterAsPassenger(CVehicle const&,int)
48847C:  MOV             R5, R0
48847E:  MOVS            R0, #dword_20; this
488480:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
488484:  MOV             R1, R4; CVehicle *
488486:  MOV             R2, R5; int
488488:  MOVS            R3, #0; CTaskUtilityLineUpPedWithCar *
48848A:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsPassenger::CTaskSimpleCarSetPedInAsPassenger(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
48848E:  LDR             R1, [R0]
488490:  STRB.W          R10, [R0,#0x1C]
488494:  LDR             R2, [R1,#0x24]
488496:  MOV             R1, R9
488498:  BLX             R2
48849A:  ADD.W           R8, R8, #1
48849E:  CMP.W           R8, #8
4884A2:  BNE             loc_48844E
4884A4:  LDRB.W          R0, [R4,#0x4A8]
4884A8:  CMP             R0, #2
4884AA:  BNE             loc_4884D0
4884AC:  LDR             R0, [SP,#0x68+var_60]
4884AE:  MOV             R2, #0xBFE6D523
4884B6:  LDR             R0, [R0]
4884B8:  LDRD.W          R1, R0, [R0]
4884BC:  SUBS            R1, R4, R1
4884BE:  ASRS            R1, R1, #2
4884C0:  MULS            R1, R2
4884C2:  MOVS            R2, #1; unsigned __int8
4884C4:  LDRB            R0, [R0,R1]
4884C6:  ORR.W           R1, R0, R1,LSL#8; int
4884CA:  LDR             R0, [SP,#0x68+var_64]; this
4884CC:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
4884D0:  LDR             R0, [SP,#0x68+var_20]
4884D2:  CMP             R6, R0
4884D4:  BLT.W           loc_48823E
4884D8:  LDR             R0, =(UseDataFence_ptr - 0x4884DE)
4884DA:  ADD             R0, PC; UseDataFence_ptr
4884DC:  LDR             R0, [R0]; UseDataFence
4884DE:  LDRB            R4, [R0]
4884E0:  CBZ             R4, loc_4884F6
4884E2:  LDR             R0, =(UseDataFence_ptr - 0x4884EA)
4884E4:  MOVS            R1, #(stderr+2); void *
4884E6:  ADD             R0, PC; UseDataFence_ptr
4884E8:  LDR             R5, [R0]; UseDataFence
4884EA:  MOVS            R0, #0
4884EC:  STRB            R0, [R5]
4884EE:  ADD             R0, SP, #0x68+var_48; this
4884F0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4884F4:  STRB            R4, [R5]
4884F6:  ADD             R0, SP, #0x68+var_48; this
4884F8:  MOVS            R1, #byte_4; void *
4884FA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4884FE:  LDR             R0, [SP,#0x68+var_48]; this
488500:  ADDS            R1, R0, #1; int
488502:  BEQ             loc_488538
488504:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
488508:  CBZ             R0, loc_488538
48850A:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x488510)
48850C:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
48850E:  LDR             R1, [R1]; CWorld::Players ...
488510:  STR.W           R0, [R1,#(dword_96B74C - 0x96B69C)]
488514:  MOV.W           R0, #0xFFFFFFFF; int
488518:  MOVS            R1, #0; bool
48851A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
48851E:  CBZ             R0, loc_488538
488520:  MOV.W           R0, #0xFFFFFFFF; int
488524:  MOVS            R1, #0; bool
488526:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
48852A:  LDRB.W          R1, [R0,#0x3A]
48852E:  MOVS            R2, #9; int
488530:  BFI.W           R1, R2, #3, #0x1D
488534:  STRB.W          R1, [R0,#0x3A]
488538:  LDR             R0, =(UseDataFence_ptr - 0x48853E)
48853A:  ADD             R0, PC; UseDataFence_ptr
48853C:  LDR             R0, [R0]; UseDataFence
48853E:  LDRB            R4, [R0]
488540:  CBZ             R4, loc_488556
488542:  LDR             R0, =(UseDataFence_ptr - 0x48854A)
488544:  MOVS            R1, #(stderr+2); void *
488546:  ADD             R0, PC; UseDataFence_ptr
488548:  LDR             R5, [R0]; UseDataFence
48854A:  MOVS            R0, #0
48854C:  STRB            R0, [R5]
48854E:  ADD             R0, SP, #0x68+var_2C; this
488550:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488554:  STRB            R4, [R5]
488556:  ADD             R0, SP, #0x68+var_2C; this
488558:  MOVS            R1, #byte_4; void *
48855A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48855E:  LDR             R0, [SP,#0x68+var_2C]
488560:  CMP             R0, #2
488562:  BEQ             loc_4885A0
488564:  CMP             R0, #3
488566:  BNE             loc_4885DC
488568:  LDR             R0, =(UseDataFence_ptr - 0x48856E)
48856A:  ADD             R0, PC; UseDataFence_ptr
48856C:  LDR             R0, [R0]; UseDataFence
48856E:  LDRB            R4, [R0]
488570:  CBZ             R4, loc_488586
488572:  LDR             R0, =(UseDataFence_ptr - 0x48857A)
488574:  MOVS            R1, #(stderr+2); void *
488576:  ADD             R0, PC; UseDataFence_ptr
488578:  LDR             R5, [R0]; UseDataFence
48857A:  MOVS            R0, #0
48857C:  STRB            R0, [R5]
48857E:  ADD             R0, SP, #0x68+var_4C; this
488580:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488584:  STRB            R4, [R5]
488586:  ADD             R0, SP, #0x68+var_4C; this
488588:  MOVS            R1, #byte_4; void *
48858A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48858E:  LDR             R0, [SP,#0x68+var_4C]; this
488590:  ADDS            R1, R0, #1; int
488592:  BEQ             loc_4885DC
488594:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
488598:  CBZ             R0, loc_4885DC
48859A:  LDR             R1, =(TheCamera_ptr - 0x4885A0)
48859C:  ADD             R1, PC; TheCamera_ptr
48859E:  B               loc_4885D6
4885A0:  LDR             R0, =(UseDataFence_ptr - 0x4885A6)
4885A2:  ADD             R0, PC; UseDataFence_ptr
4885A4:  LDR             R0, [R0]; UseDataFence
4885A6:  LDRB            R4, [R0]
4885A8:  CBZ             R4, loc_4885BE
4885AA:  LDR             R0, =(UseDataFence_ptr - 0x4885B2)
4885AC:  MOVS            R1, #(stderr+2); void *
4885AE:  ADD             R0, PC; UseDataFence_ptr
4885B0:  LDR             R5, [R0]; UseDataFence
4885B2:  MOVS            R0, #0
4885B4:  STRB            R0, [R5]
4885B6:  ADD             R0, SP, #0x68+var_4C; this
4885B8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4885BC:  STRB            R4, [R5]
4885BE:  ADD             R0, SP, #0x68+var_4C; this
4885C0:  MOVS            R1, #byte_4; void *
4885C2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4885C6:  LDR             R0, [SP,#0x68+var_4C]; this
4885C8:  ADDS            R1, R0, #1; int
4885CA:  BEQ             loc_4885DC
4885CC:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
4885D0:  CBZ             R0, loc_4885DC
4885D2:  LDR             R1, =(TheCamera_ptr - 0x4885D8)
4885D4:  ADD             R1, PC; TheCamera_ptr
4885D6:  LDR             R1, [R1]; TheCamera
4885D8:  STR.W           R0, [R1,#(dword_95230C - 0x951FA8)]
4885DC:  LDR             R0, =(TheCamera_ptr - 0x4885E2)
4885DE:  ADD             R0, PC; TheCamera_ptr
4885E0:  LDR             R0, [R0]; TheCamera
4885E2:  LDR.W           R0, [R0,#(dword_95230C - 0x951FA8)]
4885E6:  CBNZ            R0, loc_4885FA
4885E8:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x4885F0)
4885EA:  LDR             R1, =(TheCamera_ptr - 0x4885F2)
4885EC:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4885EE:  ADD             R1, PC; TheCamera_ptr
4885F0:  LDR             R0, [R0]; CWorld::Players ...
4885F2:  LDR             R1, [R1]; TheCamera
4885F4:  LDR             R0, [R0]; CWorld::Players
4885F6:  STR.W           R0, [R1,#(dword_95230C - 0x951FA8)]
4885FA:  LDR             R0, =(UseDataFence_ptr - 0x488600)
4885FC:  ADD             R0, PC; UseDataFence_ptr
4885FE:  LDR             R0, [R0]; UseDataFence
488600:  LDRB            R4, [R0]
488602:  CBZ             R4, loc_488618
488604:  LDR             R0, =(UseDataFence_ptr - 0x48860C)
488606:  MOVS            R1, #(stderr+2); void *
488608:  ADD             R0, PC; UseDataFence_ptr
48860A:  LDR             R5, [R0]; UseDataFence
48860C:  MOVS            R0, #0
48860E:  STRB            R0, [R5]
488610:  ADD             R0, SP, #0x68+var_4C; this
488612:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488616:  STRB            R4, [R5]
488618:  ADD             R0, SP, #0x68+var_4C; this
48861A:  MOVS            R1, #byte_4; void *
48861C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488620:  LDR             R0, [SP,#0x68+var_4C]; this
488622:  CMP             R0, #0
488624:  BLT             loc_48864A
488626:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
48862A:  CBZ             R0, loc_48864A
48862C:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x488636)
48862E:  LDRB.W          R2, [R0,#0x3A]
488632:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
488634:  LDR             R1, [R1]; CWorld::Players ...
488636:  LDR             R1, [R1]; CWorld::Players
488638:  LDR.W           R1, [R1,#0x590]
48863C:  STR.W           R1, [R0,#0x4D0]
488640:  MOVS            R1, #0xA
488642:  BFI.W           R2, R1, #3, #0x1D
488646:  STRB.W          R2, [R0,#0x3A]
48864A:  MOVS            R0, #1
48864C:  ADD             SP, SP, #0x4C ; 'L'
48864E:  POP.W           {R8-R11}
488652:  POP             {R4-R7,PC}
