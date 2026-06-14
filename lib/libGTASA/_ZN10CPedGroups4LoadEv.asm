; =========================================================
; Game Engine Function: _ZN10CPedGroups4LoadEv
; Address            : 0x48A354 - 0x48A5E0
; =========================================================

48A354:  PUSH            {R4-R7,LR}
48A356:  ADD             R7, SP, #0xC
48A358:  PUSH.W          {R8-R11}
48A35C:  SUB             SP, SP, #0x74
48A35E:  LDR             R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x48A366)
48A360:  MOVS            R1, #byte_8; void *
48A362:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
48A364:  LDR             R0, [R0]; this
48A366:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A36A:  LDR             R0, =(_ZN10CPedGroups20ScriptReferenceIndexE_ptr - 0x48A372)
48A36C:  MOVS            R1, #byte_8; void *
48A36E:  ADD             R0, PC; _ZN10CPedGroups20ScriptReferenceIndexE_ptr
48A370:  LDR             R0, [R0]; this
48A372:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A376:  LDR             R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x48A384)
48A378:  ADD             R5, SP, #0x90+var_48
48A37A:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x48A38A)
48A37C:  MOV.W           R8, #0
48A380:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
48A382:  MOV.W           R2, #0x2D4; int
48A386:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
48A388:  MOVS            R4, #0
48A38A:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
48A38C:  STR             R0, [SP,#0x90+var_5C]
48A38E:  LDR             R0, =(UseDataFence_ptr - 0x48A394)
48A390:  ADD             R0, PC; UseDataFence_ptr
48A392:  LDR             R0, [R0]; UseDataFence
48A394:  STR             R0, [SP,#0x90+var_60]
48A396:  LDR             R0, [R1]; CPedGroups::ms_groups ...
48A398:  STR             R0, [SP,#0x90+var_64]
48A39A:  LDR             R0, =(UseDataFence_ptr - 0x48A3A0)
48A39C:  ADD             R0, PC; UseDataFence_ptr
48A39E:  LDR             R0, [R0]; UseDataFence
48A3A0:  STR             R0, [SP,#0x90+var_68]
48A3A2:  LDR             R0, =(UseDataFence_ptr - 0x48A3A8)
48A3A4:  ADD             R0, PC; UseDataFence_ptr
48A3A6:  LDR             R0, [R0]; UseDataFence
48A3A8:  STR             R0, [SP,#0x90+var_6C]
48A3AA:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x48A3B0)
48A3AC:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
48A3AE:  LDR             R0, [R0]; CPedGroups::ms_groups ...
48A3B0:  STR             R0, [SP,#0x90+var_70]
48A3B2:  LDR             R0, =(UseDataFence_ptr - 0x48A3B8)
48A3B4:  ADD             R0, PC; UseDataFence_ptr
48A3B6:  LDR             R0, [R0]; UseDataFence
48A3B8:  STR             R0, [SP,#0x90+var_74]
48A3BA:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x48A3C0)
48A3BC:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
48A3BE:  LDR             R0, [R0]; CPedGroups::ms_groups ...
48A3C0:  STR             R0, [SP,#0x90+var_78]
48A3C2:  LDR             R0, =(UseDataFence_ptr - 0x48A3C8)
48A3C4:  ADD             R0, PC; UseDataFence_ptr
48A3C6:  LDR.W           R9, [R0]; UseDataFence
48A3CA:  LDR             R0, =(UseDataFence_ptr - 0x48A3D0)
48A3CC:  ADD             R0, PC; UseDataFence_ptr
48A3CE:  LDR.W           R10, [R0]; UseDataFence
48A3D2:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x48A3D8)
48A3D4:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
48A3D6:  LDR             R0, [R0]; CPedGroups::ms_groups ...
48A3D8:  STR             R0, [SP,#0x90+var_8C]
48A3DA:  LDR             R0, =(UseDataFence_ptr - 0x48A3E0)
48A3DC:  ADD             R0, PC; UseDataFence_ptr
48A3DE:  LDR             R0, [R0]; UseDataFence
48A3E0:  STR             R0, [SP,#0x90+var_7C]
48A3E2:  LDR             R0, =(UseDataFence_ptr - 0x48A3E8)
48A3E4:  ADD             R0, PC; UseDataFence_ptr
48A3E6:  LDR             R0, [R0]; UseDataFence
48A3E8:  STR             R0, [SP,#0x90+var_80]
48A3EA:  LDR             R0, =(UseDataFence_ptr - 0x48A3F0)
48A3EC:  ADD             R0, PC; UseDataFence_ptr
48A3EE:  LDR             R0, [R0]; UseDataFence
48A3F0:  STR             R0, [SP,#0x90+var_84]
48A3F2:  LDR             R0, =(UseDataFence_ptr - 0x48A3F8)
48A3F4:  ADD             R0, PC; UseDataFence_ptr
48A3F6:  LDR             R0, [R0]; UseDataFence
48A3F8:  STR             R0, [SP,#0x90+var_88]
48A3FA:  LDR             R0, [SP,#0x90+var_5C]
48A3FC:  LDRB            R0, [R0,R4]
48A3FE:  CMP             R0, #0
48A400:  BEQ.W           loc_48A5D0
48A404:  LDR             R0, [SP,#0x90+var_60]
48A406:  LDRB            R6, [R0]
48A408:  CBZ             R6, loc_48A41E
48A40A:  LDR.W           R11, [SP,#0x90+var_88]
48A40E:  ADD             R0, SP, #0x90+var_44; this
48A410:  MOVS            R1, #(stderr+2); void *
48A412:  STRB.W          R8, [R11]
48A416:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A41A:  STRB.W          R6, [R11]
48A41E:  ADD             R0, SP, #0x90+var_20; this
48A420:  MOVS            R1, #byte_4; void *
48A422:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A426:  LDR             R0, [SP,#0x90+var_20]; this
48A428:  ADDS            R1, R0, #1; int
48A42A:  IT NE
48A42C:  BLXNE           j__ZN6CPools6GetPedEi; CPools::GetPed(int)
48A430:  LDR             R0, [SP,#0x90+var_68]
48A432:  LDRB            R6, [R0]
48A434:  CBZ             R6, loc_48A44A
48A436:  LDR.W           R11, [SP,#0x90+var_84]
48A43A:  ADD             R0, SP, #0x90+var_44; this
48A43C:  MOVS            R1, #(stderr+2); void *
48A43E:  STRB.W          R8, [R11]
48A442:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A446:  STRB.W          R6, [R11]
48A44A:  SUB.W           R0, R7, #-var_21; this
48A44E:  MOVS            R1, #(stderr+1); void *
48A450:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A454:  LDR             R0, [SP,#0x90+var_6C]
48A456:  LDRB            R6, [R0]
48A458:  CBZ             R6, loc_48A46E
48A45A:  LDR.W           R11, [SP,#0x90+var_80]
48A45E:  ADD             R0, SP, #0x90+var_44; this
48A460:  MOVS            R1, #(stderr+2); void *
48A462:  STRB.W          R8, [R11]
48A466:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A46A:  STRB.W          R6, [R11]
48A46E:  LDR             R0, [SP,#0x90+var_64]
48A470:  MOV.W           R6, #0x2D4
48A474:  MLA.W           R0, R4, R6, R0
48A478:  MOVS            R1, #byte_4; void *
48A47A:  STR             R0, [SP,#0x90+var_54]
48A47C:  ADD             R0, SP, #0x90+var_28; this
48A47E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A482:  LDR             R0, [SP,#0x90+var_70]
48A484:  MLA.W           R0, R4, R6, R0
48A488:  LDR             R1, [SP,#0x90+var_28]; int
48A48A:  ADDS            R0, #0x30 ; '0'; this
48A48C:  BLX             j__ZN21CPedGroupIntelligence27SetDefaultTaskAllocatorTypeEi; CPedGroupIntelligence::SetDefaultTaskAllocatorType(int)
48A490:  LDR             R0, [SP,#0x90+var_74]
48A492:  LDRB            R6, [R0]
48A494:  CBZ             R6, loc_48A4AA
48A496:  LDR.W           R11, [SP,#0x90+var_7C]
48A49A:  ADD             R0, SP, #0x90+var_44; this
48A49C:  MOVS            R1, #(stderr+2); void *
48A49E:  STRB.W          R8, [R11]
48A4A2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A4A6:  STRB.W          R6, [R11]
48A4AA:  ADD             R0, SP, #0x90+var_2C; this
48A4AC:  MOVS            R1, #byte_4; void *
48A4AE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A4B2:  LDR             R0, [SP,#0x90+var_2C]; this
48A4B4:  STR             R4, [SP,#0x90+var_50]
48A4B6:  ADDS            R1, R0, #1; int
48A4B8:  BEQ             loc_48A52E
48A4BA:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
48A4BE:  MOV             R6, R0
48A4C0:  CBZ             R6, loc_48A52E
48A4C2:  LDR             R0, [SP,#0x90+var_8C]
48A4C4:  MOV.W           R1, #0x2D4
48A4C8:  MLA.W           R0, R4, R1, R0
48A4CC:  ADD.W           R8, R0, #8
48A4D0:  MOV             R0, R6; this
48A4D2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
48A4D6:  CMP             R0, #1
48A4D8:  STR             R6, [SP,#0x90+var_4C]
48A4DA:  BNE             loc_48A4E4
48A4DC:  MOV             R0, R8; this
48A4DE:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
48A4E2:  CBNZ            R0, loc_48A526
48A4E4:  MOVS            R0, #word_28; this
48A4E6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
48A4EA:  LDR             R1, [SP,#0x90+var_50]; int
48A4EC:  MOVS            R2, #1; bool
48A4EE:  MOV             R11, R0
48A4F0:  BLX             j__ZN21CTaskComplexBeInGroupC2Eib; CTaskComplexBeInGroup::CTaskComplexBeInGroup(int,bool)
48A4F4:  ADD             R5, SP, #0x90+var_44
48A4F6:  MOVS            R1, #3; int
48A4F8:  MOV             R2, R11; CTask *
48A4FA:  MOVS            R3, #0; bool
48A4FC:  MOV             R0, R5; this
48A4FE:  LDR             R4, [SP,#0x90+var_50]
48A500:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
48A504:  LDR.W           R0, [R6,#0x440]
48A508:  MOV             R1, R5; CEvent *
48A50A:  MOVS            R2, #0; bool
48A50C:  ADDS            R0, #0x68 ; 'h'; this
48A50E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
48A512:  MOV             R0, R8; this
48A514:  MOV             R1, R6; CPed *
48A516:  BLX             j__ZN19CPedGroupMembership9SetLeaderEP4CPed; CPedGroupMembership::SetLeader(CPed *)
48A51A:  LDR             R0, [SP,#0x90+var_54]; this
48A51C:  BLX             j__ZN9CPedGroup7ProcessEv; CPedGroup::Process(void)
48A520:  MOV             R0, R5; this
48A522:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
48A526:  ADD             R5, SP, #0x90+var_48
48A528:  MOV.W           R8, #0
48A52C:  B               loc_48A532
48A52E:  MOVS            R0, #0
48A530:  STR             R0, [SP,#0x90+var_4C]
48A532:  LDR             R0, [SP,#0x90+var_78]
48A534:  MOV.W           R1, #0x2D4
48A538:  MLA.W           R0, R4, R1, R0
48A53C:  MOVS            R6, #8
48A53E:  ADDS            R0, #8
48A540:  STR             R0, [SP,#0x90+var_58]
48A542:  LDRB.W          R4, [R9]
48A546:  CBZ             R4, loc_48A558
48A548:  ADD             R0, SP, #0x90+var_44; this
48A54A:  MOVS            R1, #(stderr+2); void *
48A54C:  STRB.W          R8, [R10]
48A550:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A554:  STRB.W          R4, [R10]
48A558:  MOV             R0, R5; this
48A55A:  MOVS            R1, #byte_4; void *
48A55C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A560:  LDR             R0, [SP,#0x90+var_48]; this
48A562:  ADDS            R1, R0, #1; int
48A564:  BEQ             loc_48A5C6
48A566:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
48A56A:  MOV             R11, R0
48A56C:  CMP.W           R11, #0
48A570:  BEQ             loc_48A5C6
48A572:  MOV             R0, R11; this
48A574:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
48A578:  LDR             R1, [SP,#0x90+var_4C]; unsigned int
48A57A:  CMP             R1, R11
48A57C:  BEQ             loc_48A5C6
48A57E:  CBNZ            R0, loc_48A5C6
48A580:  MOVS            R0, #word_28; this
48A582:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
48A586:  LDR             R1, [SP,#0x90+var_50]; int
48A588:  MOVS            R2, #0; bool
48A58A:  MOV             R8, R0
48A58C:  BLX             j__ZN21CTaskComplexBeInGroupC2Eib; CTaskComplexBeInGroup::CTaskComplexBeInGroup(int,bool)
48A590:  ADD             R4, SP, #0x90+var_44
48A592:  MOV             R2, R8; CTask *
48A594:  MOVS            R1, #3; int
48A596:  MOVS            R3, #0; bool
48A598:  MOV             R0, R4; this
48A59A:  ADD             R5, SP, #0x90+var_48
48A59C:  MOV.W           R8, #0
48A5A0:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
48A5A4:  LDR.W           R0, [R11,#0x440]
48A5A8:  MOV             R1, R4; CEvent *
48A5AA:  MOVS            R2, #0; bool
48A5AC:  ADDS            R0, #0x68 ; 'h'; this
48A5AE:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
48A5B2:  LDR             R0, [SP,#0x90+var_58]; this
48A5B4:  MOV             R1, R11; CPed *
48A5B6:  BLX             j__ZN19CPedGroupMembership11AddFollowerEP4CPed; CPedGroupMembership::AddFollower(CPed *)
48A5BA:  LDR             R0, [SP,#0x90+var_54]; this
48A5BC:  BLX             j__ZN9CPedGroup7ProcessEv; CPedGroup::Process(void)
48A5C0:  MOV             R0, R4; this
48A5C2:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
48A5C6:  SUBS            R6, #1
48A5C8:  BNE             loc_48A542
48A5CA:  LDR             R4, [SP,#0x90+var_50]
48A5CC:  MOV.W           R2, #0x2D4
48A5D0:  ADDS            R4, #1
48A5D2:  CMP             R4, #8
48A5D4:  BNE.W           loc_48A3FA
48A5D8:  ADD             SP, SP, #0x74 ; 't'
48A5DA:  POP.W           {R8-R11}
48A5DE:  POP             {R4-R7,PC}
