; =========================================================
; Game Engine Function: _ZN22CInformGroupEventQueue3AddEP4CPedP9CPedGroupP6CEvent
; Address            : 0x3703DC - 0x370502
; =========================================================

3703DC:  PUSH            {R4-R7,LR}
3703DE:  ADD             R7, SP, #0xC
3703E0:  PUSH.W          {R8-R11}
3703E4:  SUB             SP, SP, #4
3703E6:  MOV             R10, R0
3703E8:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x3703F2)
3703EA:  MOV             R9, R2
3703EC:  MOV             R8, R1
3703EE:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
3703F0:  MOV.W           R4, #0xFFFFFFFF
3703F4:  MOV.W           R11, #0xFFFFFFFF
3703F8:  LDR             R0, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
3703FA:  ADD.W           R6, R0, #8
3703FE:  LDR.W           R0, [R6,#-8]; CInformGroupEventQueue::ms_informGroupEvents
370402:  ADDS            R4, #1
370404:  CMP             R0, R10
370406:  BEQ             loc_37041C
370408:  ADDS.W          R0, R11, #1
37040C:  BNE             loc_370434
37040E:  LDR             R0, [R6]
370410:  MOV.W           R11, #0xFFFFFFFF
370414:  CMP             R0, #0
370416:  IT EQ
370418:  MOVEQ           R11, R4
37041A:  B               loc_370434
37041C:  LDR.W           R0, [R9]
370420:  LDR             R1, [R0,#8]
370422:  MOV             R0, R9
370424:  BLX             R1
370426:  MOV             R5, R0
370428:  LDR             R0, [R6]
37042A:  LDR             R1, [R0]
37042C:  LDR             R1, [R1,#8]
37042E:  BLX             R1
370430:  CMP             R5, R0
370432:  BEQ             loc_3704A6
370434:  ADDS            R6, #0x10
370436:  CMP             R4, #7
370438:  BLT             loc_3703FE
37043A:  ADDS.W          R0, R11, #1
37043E:  BEQ             loc_3704A6
370440:  LDR.W           R0, [R9]
370444:  LDR             R1, [R0,#8]
370446:  MOV             R0, R9
370448:  BLX             R1
37044A:  CMP             R0, #0x24 ; '$'
37044C:  BEQ             loc_37045C
37044E:  LDR.W           R0, [R9]
370452:  LDR             R1, [R0,#8]
370454:  MOV             R0, R9
370456:  BLX             R1
370458:  CMP             R0, #0x25 ; '%'
37045A:  BNE             loc_37048A
37045C:  MOV             R0, R9; this
37045E:  MOV             R1, R8; CPedGroup *
370460:  BLX             j__ZN22CEventEditableResponse23ComputeResponseTaskTypeEP9CPedGroup; CEventEditableResponse::ComputeResponseTaskType(CPedGroup *)
370464:  MOV.W           R0, #0xFFFFFFFF; int
370468:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
37046C:  LDR.W           R0, [R0,#0x444]
370470:  MOV.W           R2, #0x2D4
370474:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x37047C)
370476:  LDR             R0, [R0,#0x38]
370478:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
37047A:  LDR             R1, [R1]; CPedGroups::ms_groups ...
37047C:  MLA.W           R0, R0, R2, R1
370480:  MOV             R1, R10; CPed *
370482:  ADDS            R0, #8; this
370484:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
370488:  CBZ             R0, loc_3704AA
37048A:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x37049A)
37048C:  MOV.W           R1, R11,LSL#4
370490:  MOVS            R4, #0
370492:  CMP.W           R10, #0
370496:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
370498:  LDR             R0, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
37049A:  ADD.W           R5, R0, R11,LSL#4
37049E:  STR.W           R10, [R0,R1]
3704A2:  BNE             loc_3704DA
3704A4:  B               loc_3704E2
3704A6:  MOVS            R0, #0
3704A8:  B               loc_3704F4
3704AA:  LDRB.W          R0, [R10,#0x448]
3704AE:  CMP             R0, #2
3704B0:  BEQ             loc_3704C6
3704B2:  LDR.W           R0, [R9,#0x10]
3704B6:  LDRB.W          R0, [R0,#0x485]
3704BA:  LSLS            R0, R0, #0x1F
3704BC:  ITT NE
3704BE:  LDRHNE.W        R0, [R9,#0xA]
3704C2:  CMPNE           R0, #0xC8
3704C4:  BNE             loc_3704FC
3704C6:  MOVS            R4, #0
3704C8:  LDR             R0, =(_ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr - 0x3704D2)
3704CA:  MOV.W           R1, R11,LSL#4
3704CE:  ADD             R0, PC; _ZN22CInformGroupEventQueue20ms_informGroupEventsE_ptr
3704D0:  LDR             R0, [R0]; CInformGroupEventQueue::ms_informGroupEvents ...
3704D2:  ADD.W           R5, R0, R11,LSL#4
3704D6:  STR.W           R10, [R0,R1]
3704DA:  MOV             R0, R10; this
3704DC:  MOV             R1, R5; CEntity **
3704DE:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3704E2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3704E8)
3704E4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3704E6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3704E8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3704EA:  STRD.W          R8, R9, [R5,#4]
3704EE:  ADD             R0, R4
3704F0:  STR             R0, [R5,#0xC]
3704F2:  MOVS            R0, #1
3704F4:  ADD             SP, SP, #4
3704F6:  POP.W           {R8-R11}
3704FA:  POP             {R4-R7,PC}
3704FC:  MOVW            R4, #0x1388
370500:  B               loc_3704C8
