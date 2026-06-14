; =========================================================
; Game Engine Function: _Z26CheckForTargetToPutHandsUpP10CPlayerPedP4CPed
; Address            : 0x53769C - 0x537798
; =========================================================

53769C:  PUSH            {R4-R7,LR}
53769E:  ADD             R7, SP, #0xC
5376A0:  PUSH.W          {R8}
5376A4:  SUB             SP, SP, #0x20
5376A6:  MOV             R5, R0
5376A8:  MOV             R4, R1
5376AA:  LDRSB.W         R0, [R5,#0x71C]
5376AE:  MOVS            R1, #1
5376B0:  RSB.W           R0, R0, R0,LSL#3
5376B4:  ADD.W           R0, R5, R0,LSL#2
5376B8:  LDR.W           R0, [R0,#0x5A4]
5376BC:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5376C0:  CMP             R4, #0
5376C2:  BEQ             loc_537788
5376C4:  LDR             R0, [R0]
5376C6:  CMP             R0, #1
5376C8:  BNE             loc_537788
5376CA:  LDR             R2, [R5,#0x14]
5376CC:  LDR.W           R0, [R4,#0x440]; this
5376D0:  ADD.W           R1, R2, #0x30 ; '0'
5376D4:  CMP             R2, #0
5376D6:  IT EQ
5376D8:  ADDEQ           R1, R5, #4; CVector *
5376DA:  BLX             j__ZNK16CPedIntelligence15IsInSeeingRangeERK7CVector; CPedIntelligence::IsInSeeingRange(CVector const&)
5376DE:  CMP             R0, #1
5376E0:  BNE             loc_537788
5376E2:  LDR.W           R1, [R4,#0x440]
5376E6:  LDR             R0, [R1,#4]
5376E8:  CMP             R0, #0
5376EA:  ITT EQ
5376EC:  LDREQ           R0, [R1,#8]
5376EE:  CMPEQ           R0, #0
5376F0:  BEQ             loc_537790
5376F2:  LDR             R1, [R0]
5376F4:  LDR             R1, [R1,#0x14]
5376F6:  BLX             R1
5376F8:  MOVW            R1, #0x259
5376FC:  CMP             R0, R1
5376FE:  BEQ             loc_537788
537700:  LDRSB.W         R0, [R5,#0x71C]
537704:  RSB.W           R0, R0, R0,LSL#3
537708:  ADD.W           R0, R5, R0,LSL#2
53770C:  LDR.W           R0, [R0,#0x5A4]
537710:  CMP             R0, #0x17
537712:  BEQ             loc_53772A
537714:  MOVS            R0, #0
537716:  MOVS            R1, #0xB0; unsigned __int16
537718:  STRD.W          R0, R0, [SP,#0x30+var_30]; unsigned __int8
53771C:  MOVS            R2, #0; unsigned int
53771E:  STR             R0, [SP,#0x30+var_28]; unsigned __int8
537720:  MOV             R0, R5; this
537722:  MOV.W           R3, #0x3F800000; float
537726:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
53772A:  MOV             R0, R4; this
53772C:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
537730:  MOV             R6, R0
537732:  CBZ             R6, loc_53776A
537734:  MOV             R0, R4; this
537736:  MOV             R1, R5; CPed *
537738:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
53773C:  CBNZ            R0, loc_537788
53773E:  MOVS            R0, #dword_14; this
537740:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
537744:  MOV             R1, R5; CPed *
537746:  MOV             R8, R0
537748:  BLX             j__ZN16CEventGunAimedAtC2EP4CPed; CEventGunAimedAt::CEventGunAimedAt(CPed *)
53774C:  ADD             R5, SP, #0x30+var_24
53774E:  MOV             R1, R4; CPed *
537750:  MOV             R2, R8; CEvent *
537752:  MOV             R0, R5; this
537754:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
537758:  ADD.W           R0, R6, #0x30 ; '0'; this
53775C:  MOV             R1, R5; CEvent *
53775E:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
537762:  MOV             R0, R5; this
537764:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
537768:  B               loc_537788
53776A:  ADD             R6, SP, #0x30+var_24
53776C:  MOV             R1, R5; CPed *
53776E:  MOV             R0, R6; this
537770:  BLX             j__ZN16CEventGunAimedAtC2EP4CPed; CEventGunAimedAt::CEventGunAimedAt(CPed *)
537774:  LDR.W           R0, [R4,#0x440]
537778:  MOV             R1, R6; CEvent *
53777A:  MOVS            R2, #0; bool
53777C:  ADDS            R0, #0x68 ; 'h'; this
53777E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
537782:  MOV             R0, R6; this
537784:  BLX             j__ZN16CEventGunAimedAtD2Ev; CEventGunAimedAt::~CEventGunAimedAt()
537788:  ADD             SP, SP, #0x20 ; ' '
53778A:  POP.W           {R8}
53778E:  POP             {R4-R7,PC}
537790:  LDR             R0, [R1,#0xC]
537792:  CMP             R0, #0
537794:  BNE             loc_5376F2
537796:  B               loc_537700
