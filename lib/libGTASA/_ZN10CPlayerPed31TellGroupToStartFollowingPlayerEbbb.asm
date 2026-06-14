; =========================================================
; Game Engine Function: _ZN10CPlayerPed31TellGroupToStartFollowingPlayerEbbb
; Address            : 0x4C44E4 - 0x4C46B8
; =========================================================

4C44E4:  PUSH            {R4-R7,LR}
4C44E6:  ADD             R7, SP, #0xC
4C44E8:  PUSH.W          {R8,R9,R11}
4C44EC:  SUB             SP, SP, #0x38
4C44EE:  MOV             R4, R0
4C44F0:  MOV             R5, R1
4C44F2:  LDR.W           R0, [R4,#0x444]
4C44F6:  MOV             R6, R2
4C44F8:  LDRH            R1, [R0,#0x34]
4C44FA:  TST.W           R1, #0x200
4C44FE:  IT NE
4C4500:  CMPNE           R5, #1
4C4502:  BNE.W           loc_4C46B0
4C4506:  LSLS            R1, R1, #0x15
4C4508:  BPL             loc_4C4510
4C450A:  CMP             R5, #0
4C450C:  BNE.W           loc_4C46B0
4C4510:  CBNZ            R3, loc_4C4532
4C4512:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C451E)
4C4514:  MOV.W           R2, #0x2D4
4C4518:  LDR             R0, [R0,#0x38]
4C451A:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C451C:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4C451E:  MLA.W           R0, R0, R2, R1
4C4522:  ADDS            R0, #8; this
4C4524:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
4C4528:  CMP             R0, #0
4C452A:  BEQ.W           loc_4C46B0
4C452E:  LDR.W           R0, [R4,#0x444]
4C4532:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C453E)
4C4534:  MOV.W           R9, #0x2D4
4C4538:  LDR             R0, [R0,#0x38]
4C453A:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C453C:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4C453E:  MLA.W           R0, R0, R9, R1
4C4542:  STRB            R5, [R0,#4]
4C4544:  LDR.W           R0, [R4,#0x444]
4C4548:  LDR             R0, [R0,#0x38]
4C454A:  MLA.W           R0, R0, R9, R1
4C454E:  MOVS            R1, #5; int
4C4550:  ADDS            R0, #0x30 ; '0'; this
4C4552:  BLX             j__ZN21CPedGroupIntelligence27SetDefaultTaskAllocatorTypeEi; CPedGroupIntelligence::SetDefaultTaskAllocatorType(int)
4C4556:  CMP             R5, #1
4C4558:  BNE             loc_4C45EC
4C455A:  ADD.W           R8, SP, #0x50+var_30
4C455E:  MOVS            R1, #0; int
4C4560:  MOVS            R2, #0; CPed *
4C4562:  MOV             R0, R8; this
4C4564:  BLX             j__ZN26CEventPlayerCommandToGroupC2EiP4CPed; CEventPlayerCommandToGroup::CEventPlayerCommandToGroup(int,CPed *)
4C4568:  LDR             R0, =(_ZTV32CEventPlayerCommandToGroupAttack_ptr - 0x4C4570)
4C456A:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C4572)
4C456C:  ADD             R0, PC; _ZTV32CEventPlayerCommandToGroupAttack_ptr
4C456E:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C4570:  LDR             R0, [R0]; `vtable for'CEventPlayerCommandToGroupAttack ...
4C4572:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4C4574:  ADDS            R0, #8
4C4576:  STR             R0, [SP,#0x50+var_30]
4C4578:  LDR.W           R0, [R4,#0x444]
4C457C:  LDR             R0, [R0,#0x38]
4C457E:  MLA.W           R1, R0, R9, R1; CPedGroup *
4C4582:  MOV             R0, R8; this
4C4584:  BLX             j__ZN22CEventEditableResponse23ComputeResponseTaskTypeEP9CPedGroup; CEventEditableResponse::ComputeResponseTaskType(CPedGroup *)
4C4588:  MOV             R0, R8; this
4C458A:  BLX             j__ZNK22CEventEditableResponse11WillRespondEv; CEventEditableResponse::WillRespond(void)
4C458E:  CMP             R0, #1
4C4590:  BNE             loc_4C45E6
4C4592:  MOVS            R0, #off_18; this
4C4594:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4C4598:  MOVS            R1, #2; int
4C459A:  MOVS            R2, #0; CPed *
4C459C:  MOV             R8, R0
4C459E:  BLX             j__ZN26CEventPlayerCommandToGroupC2EiP4CPed; CEventPlayerCommandToGroup::CEventPlayerCommandToGroup(int,CPed *)
4C45A2:  LDR             R0, =(_ZTV32CEventPlayerCommandToGroupGather_ptr - 0x4C45B0)
4C45A4:  ADD.W           R9, SP, #0x50+var_44
4C45A8:  MOV             R1, R4; CPed *
4C45AA:  MOV             R2, R8; CEvent *
4C45AC:  ADD             R0, PC; _ZTV32CEventPlayerCommandToGroupGather_ptr
4C45AE:  LDR             R0, [R0]; `vtable for'CEventPlayerCommandToGroupGather ...
4C45B0:  ADDS            R0, #8
4C45B2:  STR.W           R0, [R8]
4C45B6:  LDRH.W          R0, [SP,#0x50+var_26]
4C45BA:  STRH.W          R0, [R8,#0xA]
4C45BE:  MOV             R0, R9; this
4C45C0:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
4C45C4:  LDR.W           R0, [R4,#0x444]
4C45C8:  MOV.W           R2, #0x2D4
4C45CC:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C45D4)
4C45CE:  LDR             R0, [R0,#0x38]
4C45D0:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C45D2:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4C45D4:  MLA.W           R0, R0, R2, R1
4C45D8:  MOV             R1, R9; CEvent *
4C45DA:  ADDS            R0, #0x30 ; '0'; this
4C45DC:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
4C45E0:  MOV             R0, R9; this
4C45E2:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
4C45E6:  ADD             R0, SP, #0x50+var_30; this
4C45E8:  BLX             j__ZN26CEventPlayerCommandToGroupD2Ev; CEventPlayerCommandToGroup::~CEventPlayerCommandToGroup()
4C45EC:  CMP             R6, #1
4C45EE:  BNE             loc_4C46B0
4C45F0:  LDR.W           R0, [R4,#0x444]
4C45F4:  MOV.W           R8, #0x2D4
4C45F8:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C4600)
4C45FA:  LDR             R0, [R0,#0x38]
4C45FC:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C45FE:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4C4600:  MLA.W           R0, R0, R8, R1
4C4604:  ADDS            R0, #8; this
4C4606:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
4C460A:  MOV             R6, R0
4C460C:  CMP             R6, #1
4C460E:  BLT             loc_4C46B0
4C4610:  LDR.W           R0, [R4,#0x444]
4C4614:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C461C)
4C4616:  LDR             R0, [R0,#0x38]
4C4618:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C461A:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4C461C:  MLA.W           R0, R0, R8, R1; this
4C4620:  BLX             j__ZN9CPedGroup28FindDistanceToFurthestMemberEv; CPedGroup::FindDistanceToFurthestMember(void)
4C4624:  CMP             R5, #1
4C4626:  BNE             loc_4C4644
4C4628:  VMOV.F32        S2, #3.0
4C462C:  CMP             R6, #1
4C462E:  VMOV            S0, R0
4C4632:  VCMPE.F32       S0, S2
4C4636:  BNE             loc_4C4658
4C4638:  VMRS            APSR_nzcv, FPSCR
4C463C:  BGE             loc_4C466C
4C463E:  MOVS            R0, #0
4C4640:  MOVS            R1, #0x9C
4C4642:  B               loc_4C4662
4C4644:  MOVS            R0, #0
4C4646:  CMP             R6, #1
4C4648:  STRD.W          R0, R0, [SP,#0x50+var_50]
4C464C:  STR             R0, [SP,#0x50+var_48]
4C464E:  ITE NE
4C4650:  MOVNE           R1, #0x9F
4C4652:  MOVEQ           R1, #0xA0
4C4654:  MOV             R0, R4
4C4656:  B               loc_4C46A6
4C4658:  VMRS            APSR_nzcv, FPSCR
4C465C:  BGE             loc_4C468A
4C465E:  MOVS            R0, #0
4C4660:  MOVS            R1, #0x9B
4C4662:  STRD.W          R0, R0, [SP,#0x50+var_50]
4C4666:  STR             R0, [SP,#0x50+var_48]
4C4668:  MOV             R0, R4
4C466A:  B               loc_4C46A6
4C466C:  VMOV.F32        S2, #10.0
4C4670:  MOVS            R0, #0
4C4672:  STRD.W          R0, R0, [SP,#0x50+var_50]
4C4676:  STR             R0, [SP,#0x50+var_48]
4C4678:  MOV             R0, R4
4C467A:  VCMPE.F32       S0, S2
4C467E:  VMRS            APSR_nzcv, FPSCR
4C4682:  ITE GE
4C4684:  MOVGE           R1, #0x98
4C4686:  MOVLT           R1, #0x9A
4C4688:  B               loc_4C46A6
4C468A:  VMOV.F32        S2, #10.0
4C468E:  MOVS            R0, #0
4C4690:  STRD.W          R0, R0, [SP,#0x50+var_50]; unsigned __int8
4C4694:  STR             R0, [SP,#0x50+var_48]; unsigned __int8
4C4696:  MOV             R0, R4; this
4C4698:  VCMPE.F32       S0, S2
4C469C:  VMRS            APSR_nzcv, FPSCR
4C46A0:  ITE GE
4C46A2:  MOVGE           R1, #0x97
4C46A4:  MOVLT           R1, #0x99; unsigned __int16
4C46A6:  MOVS            R2, #0; unsigned int
4C46A8:  MOV.W           R3, #0x3F800000; float
4C46AC:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4C46B0:  ADD             SP, SP, #0x38 ; '8'
4C46B2:  POP.W           {R8,R9,R11}
4C46B6:  POP             {R4-R7,PC}
