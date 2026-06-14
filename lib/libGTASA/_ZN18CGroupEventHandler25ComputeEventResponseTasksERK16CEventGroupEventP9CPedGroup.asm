; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler25ComputeEventResponseTasksERK16CEventGroupEventP9CPedGroup
; Address            : 0x4B44D8 - 0x4B4708
; =========================================================

4B44D8:  PUSH            {R4-R7,LR}
4B44DA:  ADD             R7, SP, #0xC
4B44DC:  PUSH.W          {R8}
4B44E0:  SUB             SP, SP, #0x38
4B44E2:  LDRD.W          R6, R5, [R0,#0xC]
4B44E6:  MOV             R4, R1
4B44E8:  LDR             R0, [R5]
4B44EA:  LDR             R1, [R0,#8]
4B44EC:  MOV             R0, R5
4B44EE:  BLX             R1
4B44F0:  SUBS            R0, #7; switch 86 cases
4B44F2:  CMP             R0, #0x55 ; 'U'
4B44F4:  BHI.W           def_4B44F8; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B44F8:  TBH.W           [PC,R0,LSL#1]; switch jump
4B44FC:  DCW 0x7A; jump table for switch statement
4B44FE:  DCW 0x101
4B4500:  DCW 0x84
4B4502:  DCW 0x101
4B4504:  DCW 0x101
4B4506:  DCW 0x101
4B4508:  DCW 0x101
4B450A:  DCW 0x101
4B450C:  DCW 0x8E
4B450E:  DCW 0x101
4B4510:  DCW 0x101
4B4512:  DCW 0x101
4B4514:  DCW 0x101
4B4516:  DCW 0x98
4B4518:  DCW 0x101
4B451A:  DCW 0x101
4B451C:  DCW 0x101
4B451E:  DCW 0x101
4B4520:  DCW 0x101
4B4522:  DCW 0x101
4B4524:  DCW 0x101
4B4526:  DCW 0x101
4B4528:  DCW 0x101
4B452A:  DCW 0x101
4B452C:  DCW 0x9E
4B452E:  DCW 0x101
4B4530:  DCW 0x101
4B4532:  DCW 0x101
4B4534:  DCW 0x101
4B4536:  DCW 0x56
4B4538:  DCW 0x56
4B453A:  DCW 0x60
4B453C:  DCW 0x60
4B453E:  DCW 0x101
4B4540:  DCW 0x66
4B4542:  DCW 0x101
4B4544:  DCW 0x101
4B4546:  DCW 0x101
4B4548:  DCW 0x101
4B454A:  DCW 0x101
4B454C:  DCW 0x101
4B454E:  DCW 0x101
4B4550:  DCW 0x101
4B4552:  DCW 0x101
4B4554:  DCW 0x101
4B4556:  DCW 0x101
4B4558:  DCW 0x101
4B455A:  DCW 0xA8
4B455C:  DCW 0xAD
4B455E:  DCW 0x101
4B4560:  DCW 0xB1
4B4562:  DCW 0x101
4B4564:  DCW 0x101
4B4566:  DCW 0x101
4B4568:  DCW 0x101
4B456A:  DCW 0x101
4B456C:  DCW 0x101
4B456E:  DCW 0x101
4B4570:  DCW 0x101
4B4572:  DCW 0x101
4B4574:  DCW 0x101
4B4576:  DCW 0x101
4B4578:  DCW 0x101
4B457A:  DCW 0x101
4B457C:  DCW 0x70
4B457E:  DCW 0xB5
4B4580:  DCW 0x66
4B4582:  DCW 0x101
4B4584:  DCW 0xBF
4B4586:  DCW 0x70
4B4588:  DCW 0xD5
4B458A:  DCW 0x101
4B458C:  DCW 0x101
4B458E:  DCW 0x101
4B4590:  DCW 0x101
4B4592:  DCW 0x101
4B4594:  DCW 0x101
4B4596:  DCW 0x101
4B4598:  DCW 0x101
4B459A:  DCW 0x101
4B459C:  DCW 0x101
4B459E:  DCW 0x101
4B45A0:  DCW 0x101
4B45A2:  DCW 0xD9
4B45A4:  DCW 0x101
4B45A6:  DCW 0xDE
4B45A8:  MOV             R0, R5; jumptable 004B44F8 cases 36,37
4B45AA:  MOV             R1, R4; CEvent *
4B45AC:  MOV             R2, R6; CPedGroup *
4B45AE:  ADD             SP, SP, #0x38 ; '8'
4B45B0:  POP.W           {R8}
4B45B4:  POP.W           {R4-R7,LR}
4B45B8:  B.W             _ZN18CGroupEventHandler24ComputeResponsePedThreatERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponsePedThreat(CEvent const&,CPedGroup *,CPed *)
4B45BC:  MOV             R0, R5; jumptable 004B44F8 cases 38,39
4B45BE:  MOV             R1, R4; CEvent *
4B45C0:  MOV             R2, R6; CPedGroup *
4B45C2:  BLX             j__ZN18CGroupEventHandler24ComputeResponsePedFriendERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponsePedFriend(CEvent const&,CPedGroup *,CPed *)
4B45C6:  B               def_4B44F8; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B45C8:  MOV             R0, R5; jumptable 004B44F8 cases 41,73
4B45CA:  MOV             R1, R4; CEvent *
4B45CC:  MOV             R2, R6; CPedGroup *
4B45CE:  ADD             SP, SP, #0x38 ; '8'
4B45D0:  POP.W           {R8}
4B45D4:  POP.W           {R4-R7,LR}
4B45D8:  B.W             _ZN18CGroupEventHandler28ComputeResponseVehicleDamageERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponseVehicleDamage(CEvent const&,CPedGroup *,CPed *)
4B45DC:  MOV             R0, R5; jumptable 004B44F8 cases 71,76
4B45DE:  MOV             R1, R4; CEvent *
4B45E0:  MOV             R2, R6; CPedGroup *
4B45E2:  ADD             SP, SP, #0x38 ; '8'
4B45E4:  POP.W           {R8}
4B45E8:  POP.W           {R4-R7,LR}
4B45EC:  B.W             _ZN18CGroupEventHandler28ComputeResponsePlayerCommandERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponsePlayerCommand(CEvent const&,CPedGroup *,CPed *)
4B45F0:  MOV             R0, R5; jumptable 004B44F8 case 7
4B45F2:  MOV             R1, R4; CEvent *
4B45F4:  MOV             R2, R6; CPedGroup *
4B45F6:  ADD             SP, SP, #0x38 ; '8'
4B45F8:  POP.W           {R8}
4B45FC:  POP.W           {R4-R7,LR}
4B4600:  B.W             _ZN18CGroupEventHandler28ComputeResponseDraggedOutCarERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponseDraggedOutCar(CEvent const&,CPedGroup *,CPed *)
4B4604:  MOV             R0, R5; jumptable 004B44F8 case 9
4B4606:  MOV             R1, R4; CEvent *
4B4608:  MOV             R2, R6; CPedGroup *
4B460A:  ADD             SP, SP, #0x38 ; '8'
4B460C:  POP.W           {R8}
4B4610:  POP.W           {R4-R7,LR}
4B4614:  B.W             _ZN18CGroupEventHandler21ComputeResponseDamageERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponseDamage(CEvent const&,CPedGroup *,CPed *)
4B4618:  MOV             R0, R5; jumptable 004B44F8 case 15
4B461A:  MOV             R1, R4; CEvent *
4B461C:  MOV             R2, R6; CPedGroup *
4B461E:  ADD             SP, SP, #0x38 ; '8'
4B4620:  POP.W           {R8}
4B4624:  POP.W           {R4-R7,LR}
4B4628:  B.W             _ZN18CGroupEventHandler24ComputeResponseShotFiredERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponseShotFired(CEvent const&,CPedGroup *,CPed *)
4B462C:  MOV             R0, R5; jumptable 004B44F8 case 20
4B462E:  MOV             R1, R4; CEvent *
4B4630:  MOV             R2, R6; CPedGroup *
4B4632:  BLX             j__ZN18CGroupEventHandler22ComputeResponseSexyPedERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponseSexyPed(CEvent const&,CPedGroup *,CPed *)
4B4636:  B               def_4B44F8; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B4638:  MOV             R0, R5; jumptable 004B44F8 case 31
4B463A:  MOV             R1, R4; CEvent *
4B463C:  MOV             R2, R6; CPedGroup *
4B463E:  ADD             SP, SP, #0x38 ; '8'
4B4640:  POP.W           {R8}
4B4644:  POP.W           {R4-R7,LR}
4B4648:  B.W             _ZN18CGroupEventHandler25ComputeResponseGunAimedAtERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponseGunAimedAt(CEvent const&,CPedGroup *,CPed *)
4B464C:  MOV             R0, R5; jumptable 004B44F8 case 54
4B464E:  MOV             R1, R4; CEvent *
4B4650:  BLX             j__ZN18CGroupEventHandler31ComputeResponseLeaderEnteredCarERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponseLeaderEnteredCar(CEvent const&,CPedGroup *,CPed *)
4B4654:  B               def_4B44F8; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B4656:  MOV             R1, R4; jumptable 004B44F8 case 55
4B4658:  BLX             j__ZN18CGroupEventHandler30ComputeResponseLeaderExitedCarERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponseLeaderExitedCar(CEvent const&,CPedGroup *,CPed *)
4B465C:  B               def_4B44F8; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B465E:  MOV             R1, R4; jumptable 004B44F8 case 57
4B4660:  BLX             j__ZN18CGroupEventHandler35ComputeResponsLeaderQuitEnteringCarERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponsLeaderQuitEnteringCar(CEvent const&,CPedGroup *,CPed *)
4B4664:  B               def_4B44F8; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B4666:  MOV             R0, R5; jumptable 004B44F8 case 72
4B4668:  MOV             R1, R4; CEvent *
4B466A:  MOV             R2, R6; CPedGroup *
4B466C:  ADD             SP, SP, #0x38 ; '8'
4B466E:  POP.W           {R8}
4B4672:  POP.W           {R4-R7,LR}
4B4676:  B.W             _ZN18CGroupEventHandler22ComputeResponseSeenCopERK6CEventP9CPedGroupP4CPed; unsigned __int8
4B467A:  LDR             R0, [R5]; jumptable 004B44F8 case 75
4B467C:  LDR             R1, [R0,#0x2C]
4B467E:  MOV             R0, R5
4B4680:  BLX             R1
4B4682:  MOV             R1, R0; CPedGroup *
4B4684:  CBZ             R1, def_4B44F8; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B4686:  LDRB.W          R0, [R1,#0x3A]
4B468A:  AND.W           R0, R0, #7
4B468E:  CMP             R0, #3
4B4690:  BNE             def_4B44F8; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B4692:  LDRH            R0, [R5,#0xA]
4B4694:  MOVW            R2, #(elf_hash_bucket+0x4E5); CPed *
4B4698:  CMP             R0, R2
4B469A:  BNE             def_4B44F8; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B469C:  MOV             R0, R4; this
4B469E:  MOVS            R3, #0; CPed *
4B46A0:  BLX             j__ZN18CGroupEventHandler22ComputeFleePedResponseEP9CPedGroupP4CPedS3_h; CGroupEventHandler::ComputeFleePedResponse(CPedGroup *,CPed *,CPed *,uchar)
4B46A4:  B               def_4B44F8; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B46A6:  MOV             R1, R4; jumptable 004B44F8 case 77
4B46A8:  BLX             j__ZN18CGroupEventHandler30ComputeResponseLeaderEnterExitERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponseLeaderEnterExit(CEvent const&,CPedGroup *,CPed *)
4B46AC:  B               def_4B44F8; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B46AE:  MOV             R0, R5; jumptable 004B44F8 case 90
4B46B0:  MOV             R1, R4; CEvent *
4B46B2:  BLX             j__ZN18CGroupEventHandler28ComputeResponseNewGangMemberERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeResponseNewGangMember(CEvent const&,CPedGroup *,CPed *)
4B46B6:  B               def_4B44F8; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B46B8:  LDR             R6, [R4,#0x28]; jumptable 004B44F8 case 92
4B46BA:  CBZ             R6, def_4B44F8; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B46BC:  LDRD.W          R1, R2, [R5,#0xC]; int
4B46C0:  ADD             R5, SP, #0x48+var_34
4B46C2:  MOV             R0, R5; this
4B46C4:  BLX             j__ZN23CTaskGoToVehicleAndLeanC2EP8CVehiclei; CTaskGoToVehicleAndLean::CTaskGoToVehicleAndLean(CVehicle *,int)
4B46C8:  ADD.W           R8, SP, #0x48+var_3C
4B46CC:  MOV             R0, R8; this
4B46CE:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4B46D2:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4B46E2)
4B46D4:  MOV.W           R1, #0xFFFFFFFF
4B46D8:  ADD.W           R3, R4, #0x3C ; '<'; CPedTaskPair *
4B46DC:  MOV             R2, R5; CTask *
4B46DE:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4B46E0:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4B46E2:  ADDS            R0, #8
4B46E4:  STR             R0, [SP,#0x48+var_3C]
4B46E6:  MOVS            R0, #0; this
4B46E8:  STRD.W          R1, R0, [SP,#0x48+var_48]; int
4B46EC:  MOV             R1, R6; CPed *
4B46EE:  BLX             j__ZN21CPedGroupIntelligence7SetTaskEP4CPedRK5CTaskP12CPedTaskPairib; CPedGroupIntelligence::SetTask(CPed *,CTask const&,CPedTaskPair *,int,bool)
4B46F2:  MOV             R0, R8; this
4B46F4:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4B46F8:  MOV             R0, R5; this
4B46FA:  BLX             j__ZN23CTaskGoToVehicleAndLeanD2Ev; CTaskGoToVehicleAndLean::~CTaskGoToVehicleAndLean()
4B46FE:  MOVS            R0, #0; jumptable 004B44F8 default case, cases 8,10-14,16-19,21-30,32-35,40,42-53,56,58-70,74,78-89,91
4B4700:  ADD             SP, SP, #0x38 ; '8'
4B4702:  POP.W           {R8}
4B4706:  POP             {R4-R7,PC}
