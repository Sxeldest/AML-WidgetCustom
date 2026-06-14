; =========================================================
; Game Engine Function: _ZN13CEventHandler22ComputeSpecialResponseEP6CEventP5CTaskS3_
; Address            : 0x383300 - 0x38356E
; =========================================================

383300:  PUSH            {R4-R7,LR}
383302:  ADD             R7, SP, #0xC
383304:  PUSH.W          {R11}
383308:  SUB             SP, SP, #0x10
38330A:  MOV             R4, R0
38330C:  LDRSH.W         R0, [R1,#0xA]
383310:  MOVW            R1, #0x38D; unsigned int
383314:  CMP             R0, R1
383316:  BGT             loc_38334A
383318:  CMP.W           R0, #0x106
38331C:  BGE             loc_38336C
38331E:  CMP             R0, #0xC8
383320:  BEQ             loc_383368
383322:  CMP.W           R0, #0x102
383326:  BEQ.W           loc_383432
38332A:  MOVW            R1, #0x105; unsigned int
38332E:  CMP             R0, R1
383330:  BNE.W           loc_383566; jumptable 00383376 cases 705,708-725
383334:  MOVS            R0, #word_10; this
383336:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38333A:  MOVS            R1, #0; bool
38333C:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb_0; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
383340:  LDR             R1, =(_ZTV46CTaskComplexUseClosestFreeScriptedAttractorRun_ptr - 0x38334A)
383342:  MOVS            R2, #6
383344:  STR             R2, [R0,#0xC]
383346:  ADD             R1, PC; _ZTV46CTaskComplexUseClosestFreeScriptedAttractorRun_ptr
383348:  B               loc_38355E
38334A:  CMP.W           R0, #0x3E8
38334E:  BLT             loc_3833D2
383350:  BEQ.W           loc_383440
383354:  MOVW            R1, #0x44D; unsigned int
383358:  CMP             R0, R1
38335A:  BEQ.W           loc_38346C
38335E:  MOVW            R1, #0x451
383362:  CMP             R0, R1
383364:  BNE.W           loc_383566; jumptable 00383376 cases 705,708-725
383368:  MOVS            R0, #0
38336A:  B               loc_383564
38336C:  SUB.W           R1, R0, #0x2C0; switch 23 cases
383370:  CMP             R1, #0x16
383372:  BHI.W           def_383376; jumptable 00383376 default case
383376:  TBH.W           [PC,R1,LSL#1]; switch jump
38337A:  DCW 0x17; jump table for switch statement
38337C:  DCW 0xF6
38337E:  DCW 0xB1
383380:  DCW 0xD1
383382:  DCW 0xF6
383384:  DCW 0xF6
383386:  DCW 0xF6
383388:  DCW 0xF6
38338A:  DCW 0xF6
38338C:  DCW 0xF6
38338E:  DCW 0xF6
383390:  DCW 0xF6
383392:  DCW 0xF6
383394:  DCW 0xF6
383396:  DCW 0xF6
383398:  DCW 0xF6
38339A:  DCW 0xF6
38339C:  DCW 0xF6
38339E:  DCW 0xF6
3833A0:  DCW 0xF6
3833A2:  DCW 0xF6
3833A4:  DCW 0xF6
3833A6:  DCW 0xE2
3833A8:  LDR             R0, [R4]; jumptable 00383376 case 704
3833AA:  LDR.W           R0, [R0,#0x590]
3833AE:  CMP             R0, #0
3833B0:  BEQ.W           loc_383566; jumptable 00383376 cases 705,708-725
3833B4:  MOVS            R0, #dword_34; this
3833B6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3833BA:  LDR             R1, [R4]
3833BC:  MOVS            R2, #0
3833BE:  MOVS            R3, #1
3833C0:  LDR.W           R1, [R1,#0x590]; CVehicle *
3833C4:  STRD.W          R3, R2, [SP,#0x20+var_20]; bool
3833C8:  MOVS            R2, #0; int
3833CA:  MOVS            R3, #0; int
3833CC:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
3833D0:  B               loc_383564
3833D2:  MOVW            R1, #0x38E; unsigned int
3833D6:  CMP             R0, R1
3833D8:  BEQ             loc_383488
3833DA:  MOVW            R1, #0x38F; unsigned int
3833DE:  CMP             R0, R1
3833E0:  BNE.W           loc_383566; jumptable 00383376 cases 705,708-725
3833E4:  MOVS            R0, #dword_40; this
3833E6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3833EA:  MOV             R5, R0
3833EC:  MOV.W           R0, #0xFFFFFFFF; int
3833F0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3833F4:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x383402)
3833F8:  MOV             LR, R0
3833FA:  LDR             R0, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x383406)
3833FC:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x383408)
3833FE:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
383400:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x38340E)
383402:  ADD             R0, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
383404:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
383406:  LDR.W           R1, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
38340A:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
38340C:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
38340E:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
383410:  LDR             R6, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
383412:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
383414:  LDR             R3, [R0]; float
383416:  VLDR            S0, [R2]
38341A:  MOVS            R2, #0; bool
38341C:  LDR             R0, [R6]; CTaskComplexSmartFleeEntity::ms_iFleeTime
38341E:  STRD.W          R0, R1, [SP,#0x20+var_20]; int
383422:  MOV             R0, R5; this
383424:  MOV             R1, LR; CEntity *
383426:  VSTR            S0, [SP,#0x20+var_18]
38342A:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
38342E:  STR             R5, [R4,#0x24]
383430:  B               loc_383566; jumptable 00383376 cases 705,708-725
383432:  MOVS            R0, #word_10; this
383434:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383438:  MOVS            R1, #0; bool
38343A:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
38343E:  B               loc_383564
383440:  MOVS            R0, #dword_38; this
383442:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383446:  MOV             R5, R0
383448:  MOV.W           R0, #0xFFFFFFFF; int
38344C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
383450:  MOV             R1, R0; CPed *
383452:  MOVS            R2, #0
383454:  MOVS            R0, #1
383456:  STRD.W          R2, R2, [SP,#0x20+var_20]; unsigned int
38345A:  STR             R0, [SP,#0x20+var_18]; int
38345C:  MOV             R0, R5; this
38345E:  MOV.W           R2, #0xFFFFFFFF; int
383462:  MOVS            R3, #0; unsigned int
383464:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
383468:  STR             R5, [R4,#0x24]
38346A:  B               loc_383566; jumptable 00383376 cases 705,708-725
38346C:  MOVS            R0, #dword_24; this
38346E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383472:  MOV             R5, R0
383474:  MOV.W           R0, #0xFFFFFFFF; int
383478:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
38347C:  MOV             R1, R0; CPed *
38347E:  MOV             R0, R5; this
383480:  BLX             j__ZN21CTaskComplexArrestPedC2EP4CPed; CTaskComplexArrestPed::CTaskComplexArrestPed(CPed *)
383484:  STR             R5, [R4,#0x24]
383486:  B               loc_383566; jumptable 00383376 cases 705,708-725
383488:  MOVS            R0, #dword_44; this
38348A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38348E:  MOV             R5, R0
383490:  MOV.W           R0, #0xFFFFFFFF; int
383494:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
383498:  MOVW            R1, #:lower16:(elf_hash_chain+0x8538)
38349C:  LDR             R2, [R0,#0x14]
38349E:  MOVT            R1, #:upper16:(elf_hash_chain+0x8538)
3834A2:  MOVS            R3, #0
3834A4:  STR             R1, [SP,#0x20+var_20]; int
3834A6:  ADD.W           R1, R2, #0x30 ; '0'
3834AA:  CMP             R2, #0
3834AC:  MOVT            R3, #0x447A; float
3834B0:  IT EQ
3834B2:  ADDEQ           R1, R0, #4; CVector *
3834B4:  MOV             R0, R5; this
3834B6:  MOVS            R2, #0; bool
3834B8:  BLX             j__ZN26CTaskComplexSmartFleePointC2ERK7CVectorbfi; CTaskComplexSmartFleePoint::CTaskComplexSmartFleePoint(CVector const&,bool,float,int)
3834BC:  STR             R5, [R4,#0x24]
3834BE:  B               loc_383566; jumptable 00383376 cases 705,708-725
3834C0:  CMP.W           R0, #0x106; jumptable 00383376 default case
3834C4:  BNE             loc_383566; jumptable 00383376 cases 705,708-725
3834C6:  MOVS            R0, #word_10; this
3834C8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3834CC:  MOVS            R1, #0; bool
3834CE:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb_0; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
3834D2:  LDR             R1, =(_ZTV49CTaskComplexUseClosestFreeScriptedAttractorSprint_ptr - 0x3834DC)
3834D4:  MOVS            R2, #7
3834D6:  STR             R2, [R0,#0xC]
3834D8:  ADD             R1, PC; _ZTV49CTaskComplexUseClosestFreeScriptedAttractorSprint_ptr
3834DA:  B               loc_38355E
3834DC:  LDR             R0, [R4]; jumptable 00383376 case 706
3834DE:  LDR.W           R0, [R0,#0x590]
3834E2:  CMP             R0, #0
3834E4:  BEQ             loc_383566; jumptable 00383376 cases 705,708-725
3834E6:  MOVS            R0, #word_28; this
3834E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3834EC:  MOV             R5, R0
3834EE:  LDR             R0, [R4]
3834F0:  LDR.W           R6, [R0,#0x590]
3834F4:  MOV.W           R0, #0xFFFFFFFF; int
3834F8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3834FC:  LDR             R1, [R0,#0x14]
3834FE:  MOVS            R2, #0
383500:  STRD.W          R2, R2, [SP,#0x20+var_20]; int
383504:  MOVS            R3, #0; int
383506:  ADD.W           R2, R1, #0x30 ; '0'
38350A:  CMP             R1, #0
38350C:  IT EQ
38350E:  ADDEQ           R2, R0, #4; CVector *
383510:  MOV             R0, R5; this
383512:  MOV             R1, R6; CVehicle *
383514:  BLX             j__ZN27CTaskComplexLeaveCarAndFleeC2EP8CVehicleRK7CVectoriib; CTaskComplexLeaveCarAndFlee::CTaskComplexLeaveCarAndFlee(CVehicle *,CVector const&,int,int,bool)
383518:  STR             R5, [R4,#0x24]
38351A:  B               loc_383566; jumptable 00383376 cases 705,708-725
38351C:  LDR             R0, [R4]; jumptable 00383376 case 707
38351E:  LDR.W           R0, [R0,#0x590]
383522:  CBZ             R0, loc_383566; jumptable 00383376 cases 705,708-725
383524:  MOVS            R0, #dword_1C; this
383526:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38352A:  LDR             R1, [R4]
38352C:  MOVS            R2, #1
38352E:  MOVS            R3, #0; int
383530:  LDR.W           R1, [R1,#0x590]; CVehicle *
383534:  STR             R2, [SP,#0x20+var_20]; bool
383536:  MOVS            R2, #0; int
383538:  BLX             j__ZN29CTaskComplexLeaveCarAndWanderC2EP8CVehicleiib; CTaskComplexLeaveCarAndWander::CTaskComplexLeaveCarAndWander(CVehicle *,int,int,bool)
38353C:  B               loc_383564
38353E:  MOVS            R0, #word_2C; jumptable 00383376 case 726
383540:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383544:  MOVS            R1, #0
383546:  MOVS            R2, #2
383548:  MOVT            R1, #0x4220
38354C:  MOVS            R3, #1; int
38354E:  STRD.W          R2, R1, [SP,#0x20+var_20]; int
383552:  MOVS            R1, #0; CVehicle *
383554:  MOVS            R2, #0; CEntity *
383556:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
38355A:  LDR             R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x383560)
38355C:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
38355E:  LDR             R1, [R1]; `vtable for'CTaskComplexCarDriveMissionFleeScene
383560:  ADDS            R1, #8
383562:  STR             R1, [R0]
383564:  STR             R0, [R4,#0x24]
383566:  ADD             SP, SP, #0x10; jumptable 00383376 cases 705,708-725
383568:  POP.W           {R11}
38356C:  POP             {R4-R7,PC}
