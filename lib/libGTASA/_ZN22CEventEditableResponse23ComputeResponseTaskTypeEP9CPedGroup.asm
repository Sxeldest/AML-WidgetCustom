; =========================================================
; Game Engine Function: _ZN22CEventEditableResponse23ComputeResponseTaskTypeEP9CPedGroup
; Address            : 0x370518 - 0x37065C
; =========================================================

370518:  PUSH            {R4-R7,LR}
37051A:  ADD             R7, SP, #0xC
37051C:  PUSH.W          {R8-R11}
370520:  SUB             SP, SP, #0x14
370522:  MOV             R11, R0
370524:  MOV             R9, R1
370526:  LDRH.W          R0, [R11,#0xA]
37052A:  CMP             R0, #0xC8
37052C:  BNE.W           loc_370654
370530:  LDR.W           R0, [R11]
370534:  LDR             R1, [R0,#8]
370536:  MOV             R0, R11
370538:  BLX             R1
37053A:  ADD.W           R6, R9, #8
37053E:  MOV             R8, R0
370540:  MOV             R0, R6; this
370542:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
370546:  MOV             R5, R0
370548:  CBZ             R5, loc_370554
37054A:  MOV             R0, R5; this
37054C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
370550:  CMP             R0, #1
370552:  BNE             loc_37056C
370554:  MOVS            R4, #0
370556:  MOV             R0, R6; this
370558:  MOV             R1, R4; int
37055A:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
37055E:  MOV             R5, R0
370560:  CMP             R4, #5
370562:  BGT             loc_37056A
370564:  ADDS            R4, #1
370566:  CMP             R5, #0
370568:  BEQ             loc_370556
37056A:  CBZ             R5, loc_3705D2
37056C:  MOV             R0, R11; this
37056E:  MOV             R1, R5; CEvent *
370570:  BLX             j__ZN12CEventSource22ComputeEventSourceTypeERK6CEventRK4CPed; CEventSource::ComputeEventSourceType(CEvent const&,CPed const&)
370574:  MOV             R10, R0
370576:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x370580)
370578:  LDR.W           R1, [R5,#0x484]
37057C:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
37057E:  AND.W           R4, R1, #0x100
370582:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
370584:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
370586:  CBNZ            R0, loc_37059C
370588:  MOVW            R0, #0xF1C0; unsigned int
37058C:  BLX             _Znwj; operator new(uint)
370590:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
370594:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x37059A)
370596:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
370598:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
37059A:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
37059C:  CMP             R4, #0
37059E:  MOV.W           R1, #0xFFFFFFFF
3705A2:  MOV.W           R2, #0x12C
3705A6:  MOVW            R3, #0x6A4
3705AA:  MOV.W           R5, #0x4B0
3705AE:  IT NE
3705B0:  MOVNE           R4, #1
3705B2:  STRD.W          R4, R5, [SP,#0x30+var_30]; bool
3705B6:  STRD.W          R3, R2, [SP,#0x30+var_28]; int
3705BA:  MOV             R2, R8; int
3705BC:  STR             R1, [SP,#0x30+var_20]; int
3705BE:  MOV             R1, R9; CPedGroup *
3705C0:  MOV             R3, R10; int
3705C2:  BLX             j__ZNK19CDecisionMakerTypes12MakeDecisionERK9CPedGroupiibiiii; CDecisionMakerTypes::MakeDecision(CPedGroup const&,int,int,bool,int,int,int,int)
3705C6:  STRH.W          R0, [R11,#0xA]
3705CA:  UXTH            R0, R0
3705CC:  CMP             R0, #0xC8
3705CE:  BEQ             loc_3705D8
3705D0:  B               loc_370654
3705D2:  MOVS            R0, #0xC8
3705D4:  STRH.W          R0, [R11,#0xA]
3705D8:  MOV             R0, R6; this
3705DA:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
3705DE:  CBZ             R0, loc_370654
3705E0:  MOV             R0, R6; this
3705E2:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
3705E6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3705EA:  CMP             R0, #1
3705EC:  BNE             loc_370654
3705EE:  MOV             R0, R6; this
3705F0:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
3705F4:  MOV             R4, R0
3705F6:  MOV             R0, R11; this
3705F8:  MOV             R1, R4; CEvent *
3705FA:  BLX             j__ZN12CEventSource22ComputeEventSourceTypeERK6CEventRK4CPed; CEventSource::ComputeEventSourceType(CEvent const&,CPed const&)
3705FE:  MOV             R5, R0
370600:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x37060A)
370602:  LDR.W           R1, [R4,#0x484]
370606:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
370608:  AND.W           R4, R1, #0x100
37060C:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
37060E:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
370610:  CBNZ            R0, loc_370626
370612:  MOVW            R0, #0xF1C0; unsigned int
370616:  BLX             _Znwj; operator new(uint)
37061A:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
37061E:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x370624)
370620:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
370622:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
370624:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
370626:  CMP             R4, #0
370628:  MOV.W           R1, #0xFFFFFFFF
37062C:  MOV.W           R2, #0x12C
370630:  MOVW            R3, #0x6A4
370634:  MOV.W           R6, #0x4B0
370638:  IT NE
37063A:  MOVNE           R4, #1
37063C:  STRD.W          R4, R6, [SP,#0x30+var_30]; bool
370640:  STRD.W          R3, R2, [SP,#0x30+var_28]; int
370644:  MOV             R2, R8; int
370646:  STR             R1, [SP,#0x30+var_20]; int
370648:  MOV             R1, R9; CPedGroup *
37064A:  MOV             R3, R5; int
37064C:  BLX             j__ZNK19CDecisionMakerTypes12MakeDecisionERK9CPedGroupiibiiii; CDecisionMakerTypes::MakeDecision(CPedGroup const&,int,int,bool,int,int,int,int)
370650:  STRH.W          R0, [R11,#0xA]
370654:  ADD             SP, SP, #0x14
370656:  POP.W           {R8-R11}
37065A:  POP             {R4-R7,PC}
