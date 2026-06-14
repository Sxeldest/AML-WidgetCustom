; =========================================================
; Game Engine Function: _ZN15CTaskSimpleJump10ProcessPedEP4CPed
; Address            : 0x52D768 - 0x52D8A8
; =========================================================

52D768:  PUSH            {R4-R7,LR}
52D76A:  ADD             R7, SP, #0xC
52D76C:  PUSH.W          {R11}
52D770:  SUB             SP, SP, #0x30
52D772:  MOV             R5, R0
52D774:  MOV             R4, R1
52D776:  LDRB.W          R0, [R5,#0x20]
52D77A:  CBZ             R0, loc_52D78A
52D77C:  MOV             R0, R4; this
52D77E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52D782:  CBZ             R0, loc_52D794
52D784:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x52D78A)
52D786:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
52D788:  B               loc_52D79E
52D78A:  LDR             R0, [R5,#0x28]
52D78C:  CMP             R0, #0
52D78E:  BEQ             loc_52D87A
52D790:  MOVS            R0, #0
52D792:  B               loc_52D8A0
52D794:  LDRB.W          R0, [R5,#0x24]
52D798:  CBZ             R0, loc_52D7BC
52D79A:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x52D7A0)
52D79C:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
52D79E:  LDR             R0, [R0]; CGame::currArea ...
52D7A0:  LDR             R0, [R0]; CGame::currArea
52D7A2:  CBNZ            R0, loc_52D7BC
52D7A4:  MOVS            R0, #(stderr+1)
52D7A6:  ADD.W           R1, R5, #8; CPed *
52D7AA:  ADD.W           R2, R5, #0x14; CVector *
52D7AE:  ADD.W           R3, R5, #0x18; float *
52D7B2:  STR             R0, [SP,#0x40+var_40]; unsigned __int8 *
52D7B4:  MOV             R0, R4; this
52D7B6:  BLX             j__ZN16CTaskSimpleClimb12TestForClimbEP4CPedR7CVectorRfRhb; CTaskSimpleClimb::TestForClimb(CPed *,CVector &,float &,uchar &,bool)
52D7BA:  STR             R0, [R5,#0x1C]
52D7BC:  LDR             R0, [R5,#0x1C]
52D7BE:  CBNZ            R0, loc_52D7C8
52D7C0:  MOV             R0, R5; this
52D7C2:  MOV             R1, R4; CPed *
52D7C4:  BLX             j__ZN15CTaskSimpleJump13HasPedHitHeadEP4CPed; CTaskSimpleJump::HasPedHitHead(CPed *)
52D7C8:  LDRB.W          R0, [R5,#0x21]
52D7CC:  CMP             R0, #0
52D7CE:  BEQ             loc_52D870
52D7D0:  MOV             R0, R4; this
52D7D2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52D7D6:  CMP             R0, #1
52D7D8:  BNE             loc_52D89E
52D7DA:  ADD             R6, SP, #0x40+var_38
52D7DC:  MOV             R0, R6; this
52D7DE:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
52D7E2:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x52D7F0)
52D7E4:  MOVS            R1, #0x42340000
52D7EA:  STR             R4, [SP,#0x40+var_28]
52D7EC:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
52D7EE:  STR             R1, [SP,#0x40+var_24]
52D7F0:  MOV.W           R1, #0xFFFFFFFF
52D7F4:  ADD.W           R5, R6, #0x10
52D7F8:  LDR             R0, [R0]; `vtable for'CEventSoundQuiet ...
52D7FA:  CMP             R4, #0
52D7FC:  STR             R1, [SP,#0x40+var_20]
52D7FE:  MOV.W           R1, #0
52D802:  STRD.W          R1, R1, [SP,#0x40+var_1C]
52D806:  ADD.W           R0, R0, #8
52D80A:  STR             R1, [SP,#0x40+var_14]
52D80C:  STR             R0, [SP,#0x40+var_38]
52D80E:  BEQ             loc_52D820
52D810:  MOV             R0, R4; this
52D812:  MOV             R1, R5; CEntity **
52D814:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
52D818:  LDR             R0, [SP,#0x40+var_20]
52D81A:  ADDS            R0, #1
52D81C:  BNE             loc_52D846
52D81E:  LDR             R4, [SP,#0x40+var_28]
52D820:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52D82A)
52D822:  ADD.W           R0, R6, #0x1C
52D826:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52D828:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
52D82A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
52D82C:  STR             R1, [SP,#0x40+var_20]
52D82E:  LDR             R1, [R4,#0x14]
52D830:  ADD.W           R2, R1, #0x30 ; '0'
52D834:  CMP             R1, #0
52D836:  IT EQ
52D838:  ADDEQ           R2, R4, #4
52D83A:  VLDR            D16, [R2]
52D83E:  LDR             R1, [R2,#8]
52D840:  STR             R1, [R0,#8]
52D842:  VSTR            D16, [R0]
52D846:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
52D84A:  ADD             R1, SP, #0x40+var_38; CEvent *
52D84C:  MOVS            R2, #0; bool
52D84E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
52D852:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x52D858)
52D854:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
52D856:  LDR             R1, [R0]; `vtable for'CEventSoundQuiet ...
52D858:  LDR             R0, [SP,#0x40+var_28]; this
52D85A:  ADDS            R1, #8
52D85C:  STR             R1, [SP,#0x40+var_38]
52D85E:  CMP             R0, #0
52D860:  ITT NE
52D862:  MOVNE           R1, R5; CEntity **
52D864:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
52D868:  ADD             R0, SP, #0x40+var_38; this
52D86A:  BLX             j__ZN6CEventD2Ev_0; CEvent::~CEvent()
52D86E:  B               loc_52D89E
52D870:  MOV             R0, R5; this
52D872:  MOV             R1, R4; CPed *
52D874:  BLX             j__ZN15CTaskSimpleJump6LaunchEP4CPed; CTaskSimpleJump::Launch(CPed *)
52D878:  B               loc_52D89E
52D87A:  MOV             R0, R5; this
52D87C:  MOV             R1, R4; CPed *
52D87E:  BLX             j__ZN15CTaskSimpleJump15StartLaunchAnimEP4CPed; CTaskSimpleJump::StartLaunchAnim(CPed *)
52D882:  CMP             R0, #1
52D884:  BNE             loc_52D898
52D886:  LDRB.W          R0, [R5,#0x20]
52D88A:  MOVS            R1, #1
52D88C:  STRB.W          R1, [R5,#0x23]
52D890:  CMP             R0, #0
52D892:  IT NE
52D894:  MOVNE           R0, #1
52D896:  B               loc_52D8A0
52D898:  MOVS            R0, #0
52D89A:  STRB.W          R0, [R5,#0x23]
52D89E:  MOVS            R0, #1
52D8A0:  ADD             SP, SP, #0x30 ; '0'
52D8A2:  POP.W           {R11}
52D8A6:  POP             {R4-R7,PC}
