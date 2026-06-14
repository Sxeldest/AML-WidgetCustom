; =========================================================
; Game Engine Function: _ZN8CPickups29GivePlayerGoodiesWithPickUpMIEti
; Address            : 0x31F7AC - 0x31F9BE
; =========================================================

31F7AC:  PUSH            {R4-R7,LR}
31F7AE:  ADD             R7, SP, #0xC
31F7B0:  PUSH.W          {R11}
31F7B4:  SUB             SP, SP, #0x20
31F7B6:  LDR             R2, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x31F7C4)
31F7B8:  CMP             R1, #0
31F7BA:  LDR             R3, =(_ZN6CWorld7PlayersE_ptr - 0x31F7C8)
31F7BC:  MOV.W           R5, #0x194
31F7C0:  ADD             R2, PC; _ZN6CWorld13PlayerInFocusE_ptr
31F7C2:  LDR             R6, =(MI_PICKUP_ADRENALINE_ptr - 0x31F7CC)
31F7C4:  ADD             R3, PC; _ZN6CWorld7PlayersE_ptr
31F7C6:  LDR             R2, [R2]; CWorld::PlayerInFocus ...
31F7C8:  ADD             R6, PC; MI_PICKUP_ADRENALINE_ptr
31F7CA:  LDR             R3, [R3]; CWorld::Players ...
31F7CC:  LDR             R6, [R6]; MI_PICKUP_ADRENALINE
31F7CE:  LDR             R2, [R2]; CWorld::PlayerInFocus
31F7D0:  IT GT
31F7D2:  MOVGT           R2, R1
31F7D4:  MULS            R2, R5
31F7D6:  LDRH            R6, [R6]
31F7D8:  CMP             R6, R0
31F7DA:  LDR             R4, [R3,R2]
31F7DC:  BNE             loc_31F80E
31F7DE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x31F7E8)
31F7E0:  LDR.W           R1, [R4,#0x444]
31F7E4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
31F7E6:  LDRH            R2, [R1,#0x34]
31F7E8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
31F7EA:  ORR.W           R2, R2, #2
31F7EE:  STRH            R2, [R1,#0x34]
31F7F0:  LDR.W           R1, [R4,#0x444]
31F7F4:  MOVW            R2, #0x4E20
31F7F8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
31F7FA:  ADD             R0, R2
31F7FC:  STR             R0, [R1,#0x3C]
31F7FE:  MOV             R0, R4; this
31F800:  BLX             j__ZN10CPlayerPed17ResetSprintEnergyEv; CPlayerPed::ResetSprintEnergy(void)
31F804:  LDR             R0, =(AudioEngine_ptr - 0x31F80C)
31F806:  MOVS            R1, #9
31F808:  ADD             R0, PC; AudioEngine_ptr
31F80A:  LDR             R0, [R0]; AudioEngine
31F80C:  B               loc_31F92A
31F80E:  LDR             R2, =(MI_PICKUP_BODYARMOUR_ptr - 0x31F814)
31F810:  ADD             R2, PC; MI_PICKUP_BODYARMOUR_ptr
31F812:  LDR             R2, [R2]; MI_PICKUP_BODYARMOUR
31F814:  LDRH            R2, [R2]
31F816:  CMP             R2, R0
31F818:  BNE             loc_31F846
31F81A:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x31F824)
31F81C:  MOV.W           R2, #0x194
31F820:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
31F822:  LDR             R0, [R0]; CWorld::Players ...
31F824:  MLA.W           R0, R1, R2, R0
31F828:  ADDW            R1, R4, #0x54C
31F82C:  LDRB.W          R0, [R0,#0x150]
31F830:  VMOV            S0, R0
31F834:  LDR             R0, =(AudioEngine_ptr - 0x31F83E)
31F836:  VCVT.F32.U32    S0, S0
31F83A:  ADD             R0, PC; AudioEngine_ptr
31F83C:  LDR             R0, [R0]; AudioEngine
31F83E:  VSTR            S0, [R1]
31F842:  MOVS            R1, #0xA; unsigned int
31F844:  B               loc_31F92A
31F846:  LDR             R2, =(MI_PICKUP_INFO_ptr - 0x31F84C)
31F848:  ADD             R2, PC; MI_PICKUP_INFO_ptr
31F84A:  LDR             R2, [R2]; MI_PICKUP_INFO
31F84C:  LDRH            R2, [R2]
31F84E:  CMP             R2, R0
31F850:  BNE             loc_31F858
31F852:  LDR             R0, =(AudioEngine_ptr - 0x31F858)
31F854:  ADD             R0, PC; AudioEngine_ptr
31F856:  B               loc_31F926
31F858:  LDR             R2, =(MI_PICKUP_HEALTH_ptr - 0x31F85E)
31F85A:  ADD             R2, PC; MI_PICKUP_HEALTH_ptr
31F85C:  LDR             R2, [R2]; MI_PICKUP_HEALTH
31F85E:  LDRH            R2, [R2]
31F860:  CMP             R2, R0
31F862:  BNE             loc_31F8B0
31F864:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x31F872)
31F866:  MOV.W           R2, #0x194
31F86A:  ADDW            R4, R4, #0x544
31F86E:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
31F870:  LDR             R0, [R0]; CWorld::Players ...
31F872:  MLA.W           R5, R1, R2, R0
31F876:  LDRB.W          R0, [R5,#0x14F]
31F87A:  VMOV            S0, R0
31F87E:  VCVT.F32.U32    S0, S0
31F882:  VLDR            S2, [R4]
31F886:  VSUB.F32        S0, S0, S2
31F88A:  VCVT.U32.F32    S0, S0
31F88E:  VMOV            R0, S0; this
31F892:  BLX             j__ZN6CStats22UpdateStatsAddToHealthEj; CStats::UpdateStatsAddToHealth(uint)
31F896:  LDRB.W          R0, [R5,#0x14F]
31F89A:  MOVS            R1, #8
31F89C:  VMOV            S0, R0
31F8A0:  LDR             R0, =(AudioEngine_ptr - 0x31F8AA)
31F8A2:  VCVT.F32.U32    S0, S0
31F8A6:  ADD             R0, PC; AudioEngine_ptr
31F8A8:  LDR             R0, [R0]; AudioEngine
31F8AA:  VSTR            S0, [R4]
31F8AE:  B               loc_31F92A
31F8B0:  LDR             R1, =(MI_PICKUP_BONUS_ptr - 0x31F8B6)
31F8B2:  ADD             R1, PC; MI_PICKUP_BONUS_ptr
31F8B4:  LDR             R1, [R1]; MI_PICKUP_BONUS
31F8B6:  LDRH            R1, [R1]
31F8B8:  CMP             R1, R0
31F8BA:  BNE             loc_31F8C2
31F8BC:  LDR             R0, =(AudioEngine_ptr - 0x31F8C2)
31F8BE:  ADD             R0, PC; AudioEngine_ptr
31F8C0:  B               loc_31F926
31F8C2:  LDR             R1, =(MI_PICKUP_BRIBE_ptr - 0x31F8C8)
31F8C4:  ADD             R1, PC; MI_PICKUP_BRIBE_ptr
31F8C6:  LDR             R1, [R1]; MI_PICKUP_BRIBE
31F8C8:  LDRH            R1, [R1]
31F8CA:  CMP             R1, R0
31F8CC:  BNE             loc_31F916
31F8CE:  MOVS            R0, #0; int
31F8D0:  MOVS            R5, #0
31F8D2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
31F8D6:  MOV             R4, R0
31F8D8:  MOV.W           R0, #0xFFFFFFFF; int
31F8DC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
31F8E0:  LDR.W           R0, [R0,#0x444]
31F8E4:  LDR             R0, [R0]
31F8E6:  LDR             R0, [R0,#0x2C]
31F8E8:  CMP             R0, #1
31F8EA:  BLT             loc_31F8FE
31F8EC:  MOV.W           R0, #0xFFFFFFFF; int
31F8F0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
31F8F4:  LDR.W           R0, [R0,#0x444]
31F8F8:  LDR             R0, [R0]
31F8FA:  LDR             R0, [R0,#0x2C]
31F8FC:  SUBS            R5, R0, #1
31F8FE:  MOV             R0, R4; this
31F900:  MOV             R1, R5; int
31F902:  BLX             j__ZN10CPlayerPed14SetWantedLevelEi; CPlayerPed::SetWantedLevel(int)
31F906:  MOVS            R0, #(dword_B4+2); this
31F908:  MOV.W           R1, #0x3F800000; unsigned __int16
31F90C:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
31F910:  LDR             R0, =(AudioEngine_ptr - 0x31F916)
31F912:  ADD             R0, PC; AudioEngine_ptr
31F914:  B               loc_31F926
31F916:  LDR             R1, =(MI_PICKUP_KILLFRENZY_ptr - 0x31F91C)
31F918:  ADD             R1, PC; MI_PICKUP_KILLFRENZY_ptr
31F91A:  LDR             R1, [R1]; MI_PICKUP_KILLFRENZY
31F91C:  LDRH            R1, [R1]; unsigned int
31F91E:  CMP             R1, R0
31F920:  BNE             loc_31F93E
31F922:  LDR             R0, =(AudioEngine_ptr - 0x31F928)
31F924:  ADD             R0, PC; AudioEngine_ptr
31F926:  LDR             R0, [R0]; AudioEngine ; this
31F928:  MOVS            R1, #0xB; int
31F92A:  MOVS            R2, #0; float
31F92C:  MOV.W           R3, #0x3F800000; float
31F930:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
31F934:  MOVS            R0, #1
31F936:  ADD             SP, SP, #0x20 ; ' '
31F938:  POP.W           {R11}
31F93C:  POP             {R4-R7,PC}
31F93E:  CMP.W           R0, #0x172
31F942:  BNE             loc_31F996
31F944:  MOVS            R0, #dword_70; this
31F946:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
31F94A:  MOVS            R2, #0
31F94C:  MOV             R5, R0
31F94E:  MOVS            R0, #0
31F950:  MOVT            R2, #0x4120; float
31F954:  STR             R0, [SP,#0x30+var_30]; CEntity *
31F956:  MOV             R0, R5; this
31F958:  MOVS            R1, #0; CVector *
31F95A:  MOVS            R3, #0; int
31F95C:  BLX             j__ZN18CTaskSimpleJetPackC2EPK7CVectorfiP7CEntity; CTaskSimpleJetPack::CTaskSimpleJetPack(CVector const*,float,int,CEntity *)
31F960:  ADD             R6, SP, #0x30+var_28
31F962:  MOVS            R1, #3; int
31F964:  MOV             R2, R5; CTask *
31F966:  MOVS            R3, #0; bool
31F968:  MOV             R0, R6; this
31F96A:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
31F96E:  LDR.W           R0, [R4,#0x440]
31F972:  MOV             R1, R6; CEvent *
31F974:  MOVS            R2, #0; bool
31F976:  ADDS            R0, #0x68 ; 'h'; this
31F978:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
31F97C:  LDR             R0, =(AudioEngine_ptr - 0x31F98A)
31F97E:  MOVS            R1, #0xB; int
31F980:  MOVS            R2, #0; float
31F982:  MOV.W           R3, #0x3F800000; float
31F986:  ADD             R0, PC; AudioEngine_ptr
31F988:  LDR             R0, [R0]; AudioEngine ; this
31F98A:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
31F98E:  MOV             R0, R6; this
31F990:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
31F994:  B               loc_31F934
31F996:  LDR             R1, =(MI_OYSTER_ptr - 0x31F99C)
31F998:  ADD             R1, PC; MI_OYSTER_ptr
31F99A:  LDR             R1, [R1]; MI_OYSTER
31F99C:  LDRH            R1, [R1]
31F99E:  CMP             R1, R0
31F9A0:  BNE             loc_31F9A8
31F9A2:  BLX             j__ZN8CPickups14PickedUpOysterEv; CPickups::PickedUpOyster(void)
31F9A6:  B               loc_31F934
31F9A8:  LDR             R1, =(MI_HORSESHOE_ptr - 0x31F9AE)
31F9AA:  ADD             R1, PC; MI_HORSESHOE_ptr
31F9AC:  LDR             R1, [R1]; MI_HORSESHOE
31F9AE:  LDRH            R1, [R1]
31F9B0:  CMP             R1, R0
31F9B2:  BNE             loc_31F9BA
31F9B4:  BLX             j__ZN8CPickups17PickedUpHorseShoeEv; CPickups::PickedUpHorseShoe(void)
31F9B8:  B               loc_31F934
31F9BA:  MOVS            R0, #0
31F9BC:  B               loc_31F936
