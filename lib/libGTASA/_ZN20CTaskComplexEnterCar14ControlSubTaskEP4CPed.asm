; =========================================================
; Game Engine Function: _ZN20CTaskComplexEnterCar14ControlSubTaskEP4CPed
; Address            : 0x4F661C - 0x4F6808
; =========================================================

4F661C:  PUSH            {R4-R7,LR}
4F661E:  ADD             R7, SP, #0xC
4F6620:  PUSH.W          {R8-R11}
4F6624:  SUB             SP, SP, #0x14; CTask *
4F6626:  MOV             R6, R1
4F6628:  MOV             R4, R0
4F662A:  MOV             R0, R6; this
4F662C:  LDR.W           R11, [R4,#8]
4F6630:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F6634:  CMP             R0, #1
4F6636:  BNE             loc_4F66FA
4F6638:  LDRB            R0, [R4,#0x10]
4F663A:  LSLS            R0, R0, #0x1D
4F663C:  BMI             loc_4F66FA
4F663E:  LDR             R1, [R4,#0xC]; CPed *
4F6640:  CMP             R1, #0
4F6642:  BEQ             loc_4F66FA
4F6644:  LDR             R3, [R4,#8]; int
4F6646:  MOV             R0, R6; this
4F6648:  LDR             R2, [R4,#0x4C]; CVehicle *
4F664A:  BLX             j__ZN13CCarEnterExit22IsPlayerToQuitCarEnterERK4CPedRK8CVehicleiP5CTask; CCarEnterExit::IsPlayerToQuitCarEnter(CPed const&,CVehicle const&,int,CTask *)
4F664E:  CMP             R0, #1
4F6650:  BNE             loc_4F66FA
4F6652:  LDRB            R0, [R4,#0x10]
4F6654:  AND.W           R0, R0, #7
4F6658:  CMP             R0, #1
4F665A:  BNE             loc_4F66C6
4F665C:  MOV             R0, R6; this
4F665E:  BLX             j__ZN10CPedGroups13IsGroupLeaderEP4CPed; CPedGroups::IsGroupLeader(CPed *)
4F6662:  CMP             R0, #1
4F6664:  BNE             loc_4F66C6
4F6666:  LDR             R0, [R4,#8]
4F6668:  LDR             R1, [R0]
4F666A:  LDR             R1, [R1,#0x14]
4F666C:  BLX             R1
4F666E:  MOVW            R1, #(elf_hash_bucket+0x22B); CPed *
4F6672:  CMP             R0, R1
4F6674:  BEQ             loc_4F66C6
4F6676:  MOV             R0, R6; this
4F6678:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4F667C:  MOV             R8, R0
4F667E:  CMP.W           R8, #0
4F6682:  BEQ             loc_4F66C6
4F6684:  ADD.W           R0, R8, #8; this
4F6688:  MOV             R1, R6; CPed *
4F668A:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
4F668E:  CMP             R0, #1
4F6690:  BNE             loc_4F66C6
4F6692:  MOVS            R0, #(byte_9+3); this
4F6694:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4F6698:  MOV             R9, R0
4F669A:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
4F669E:  LDR             R0, =(_ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr - 0x4F66AA)
4F66A0:  MOV             R10, SP
4F66A2:  MOV             R1, R6; CPed *
4F66A4:  MOV             R2, R9; CEvent *
4F66A6:  ADD             R0, PC; _ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr
4F66A8:  LDR             R0, [R0]; `vtable for'CEventLeaderQuitEnteringCarAsDriver ...
4F66AA:  ADDS            R0, #8
4F66AC:  STR.W           R0, [R9]
4F66B0:  MOV             R0, R10; this
4F66B2:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
4F66B6:  ADD.W           R0, R8, #0x30 ; '0'; this
4F66BA:  MOV             R1, R10; CEvent *
4F66BC:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
4F66C0:  MOV             R0, R10; this
4F66C2:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
4F66C6:  LDR             R1, [R4,#0x14]; CVehicle *
4F66C8:  CMP             R1, #1
4F66CA:  BLT             loc_4F66EE
4F66CC:  LDR             R0, [R4,#0xC]; this
4F66CE:  BLX             j__ZN13CCarEnterExit20ComputeSlowJackedPedERK8CVehiclei; CCarEnterExit::ComputeSlowJackedPed(CVehicle const&,int)
4F66D2:  MOVS            R1, #4
4F66D4:  CBZ             R0, loc_4F66F0
4F66D6:  LDRB.W          R0, [R0,#0x487]
4F66DA:  ANDS.W          R0, R0, #0x20 ; ' '
4F66DE:  MOV             R0, #0xFFFFFFFB
4F66E2:  IT NE
4F66E4:  MOVNE           R1, #2
4F66E6:  IT NE
4F66E8:  MOVNE           R0, #0xFFFFFFFD
4F66EC:  B               loc_4F66F2
4F66EE:  MOVS            R1, #byte_4; CVehicle *
4F66F0:  MOVS            R0, #0xFB
4F66F2:  LDRB            R2, [R4,#0x10]
4F66F4:  ANDS            R0, R2
4F66F6:  ORRS            R0, R1
4F66F8:  STRB            R0, [R4,#0x10]
4F66FA:  LDR             R0, [R4,#0xC]; this
4F66FC:  CBZ             R0, loc_4F673A
4F66FE:  BLX             j__ZN13CCarEnterExit16IsVehicleHealthyERK8CVehicle; CCarEnterExit::IsVehicleHealthy(CVehicle const&)
4F6702:  CMP             R0, #1
4F6704:  BNE             loc_4F673A
4F6706:  MOV             R0, R6; this
4F6708:  BLX             j__ZN13CCarEnterExit12IsPedHealthyERK4CPed; CCarEnterExit::IsPedHealthy(CPed const&)
4F670C:  CBZ             R0, loc_4F673A
4F670E:  LDRB            R0, [R4,#0x10]
4F6710:  LSLS            R0, R0, #0x1F
4F6712:  BNE             loc_4F671E
4F6714:  MOV             R0, R6; this
4F6716:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F671A:  CMP             R0, #1
4F671C:  BNE             loc_4F674E
4F671E:  LDR             R0, [R4,#8]
4F6720:  LDR             R1, [R0]
4F6722:  LDR             R1, [R1,#0x14]
4F6724:  BLX             R1
4F6726:  CMP.W           R0, #0x320
4F672A:  BGE             loc_4F677A
4F672C:  CMP             R0, #0xC8
4F672E:  BEQ             loc_4F6788
4F6730:  MOVW            R1, #0x2CB
4F6734:  CMP             R0, R1
4F6736:  BEQ             loc_4F6788
4F6738:  B               loc_4F674E
4F673A:  LDR             R0, [R4,#8]
4F673C:  MOVS            R1, #1
4F673E:  STRB.W          R1, [R4,#0x3C]
4F6742:  MOVS            R2, #0
4F6744:  MOVS            R3, #0
4F6746:  LDR             R1, [R0]
4F6748:  LDR             R5, [R1,#0x1C]
4F674A:  MOV             R1, R6
4F674C:  BLX             R5
4F674E:  LDR             R0, [R4,#8]
4F6750:  LDR             R1, [R0]
4F6752:  LDR             R1, [R1,#0x14]
4F6754:  BLX             R1
4F6756:  CMP.W           R0, #0x320
4F675A:  BNE             loc_4F6770
4F675C:  LDR             R0, [R4,#8]
4F675E:  LDR             R1, [R0,#0x34]
4F6760:  CMP             R1, #0
4F6762:  ITTTT NE
4F6764:  VLDRNE          D16, [R0,#0x38]
4F6768:  LDRNE           R0, [R0,#0x40]
4F676A:  STRNE           R0, [R4,#0x34]
4F676C:  VSTRNE          D16, [R4,#0x2C]
4F6770:  MOV             R0, R11
4F6772:  ADD             SP, SP, #0x14
4F6774:  POP.W           {R8-R11}
4F6778:  POP             {R4-R7,PC}; CTask *
4F677A:  MOVW            R1, #0x32A
4F677E:  CMP             R0, R1
4F6780:  IT NE
4F6782:  CMPNE.W         R0, #0x320
4F6786:  BNE             loc_4F674E
4F6788:  MOV             R0, R6; this
4F678A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F678E:  CMP             R0, #1
4F6790:  BNE             loc_4F674E
4F6792:  LDRD.W          R3, R1, [R4,#8]; int
4F6796:  MOV             R0, R6; this
4F6798:  LDR             R2, [R4,#0x4C]; CVehicle *
4F679A:  BLX             j__ZN13CCarEnterExit22IsPlayerToQuitCarEnterERK4CPedRK8CVehicleiP5CTask; CCarEnterExit::IsPlayerToQuitCarEnter(CPed const&,CVehicle const&,int,CTask *)
4F679E:  CMP             R0, #1
4F67A0:  BNE             loc_4F674E
4F67A2:  LDRB            R0, [R4,#0x10]
4F67A4:  AND.W           R0, R0, #7
4F67A8:  CMP             R0, #1
4F67AA:  BNE             loc_4F6802
4F67AC:  MOV             R0, R6; this
4F67AE:  BLX             j__ZN10CPedGroups13IsGroupLeaderEP4CPed; CPedGroups::IsGroupLeader(CPed *)
4F67B2:  CMP             R0, #1
4F67B4:  BNE             loc_4F6802
4F67B6:  MOV             R0, R6; this
4F67B8:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4F67BC:  MOV             R5, R0
4F67BE:  CBZ             R5, loc_4F6802
4F67C0:  ADD.W           R0, R5, #8; this
4F67C4:  MOV             R1, R6; CPed *
4F67C6:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
4F67CA:  CMP             R0, #1
4F67CC:  BNE             loc_4F6802
4F67CE:  MOVS            R0, #(byte_9+3); this
4F67D0:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4F67D4:  MOV             R8, R0
4F67D6:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
4F67DA:  LDR             R0, =(_ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr - 0x4F67E6)
4F67DC:  MOV             R9, SP
4F67DE:  MOV             R1, R6; CPed *
4F67E0:  MOV             R2, R8; CEvent *
4F67E2:  ADD             R0, PC; _ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr
4F67E4:  LDR             R0, [R0]; `vtable for'CEventLeaderQuitEnteringCarAsDriver ...
4F67E6:  ADDS            R0, #8
4F67E8:  STR.W           R0, [R8]
4F67EC:  MOV             R0, R9; this
4F67EE:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
4F67F2:  ADD.W           R0, R5, #0x30 ; '0'; this
4F67F6:  MOV             R1, R9; CEvent *
4F67F8:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
4F67FC:  MOV             R0, R9; this
4F67FE:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
4F6802:  MOV.W           R11, #0
4F6806:  B               loc_4F674E
