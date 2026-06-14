; =========================================================
; Game Engine Function: _ZN6CWorld33CallOffChaseForAreaSectorListPedsER8CPtrListffffffff
; Address            : 0x42C7E8 - 0x42C950
; =========================================================

42C7E8:  PUSH            {R4-R7,LR}
42C7EA:  ADD             R7, SP, #0xC
42C7EC:  PUSH.W          {R8-R11}
42C7F0:  SUB             SP, SP, #4
42C7F2:  VPUSH           {D8-D11}
42C7F6:  SUB             SP, SP, #0x20
42C7F8:  LDR             R4, [R0]
42C7FA:  CMP             R4, #0
42C7FC:  BEQ.W           loc_42C942
42C800:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42C812)
42C802:  VMOV            S18, R3
42C806:  VLDR            S16, [R7,#arg_0]
42C80A:  VMOV            S20, R2
42C80E:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42C810:  VMOV            S22, R1
42C814:  ADD.W           R8, SP, #0x60+var_58
42C818:  MOV.W           R10, #0x41000000
42C81C:  LDR.W           R9, [R0]; CWorld::ms_nCurrentScanCode ...
42C820:  LDRD.W          R5, R4, [R4]
42C824:  LDRH.W          R0, [R9]; CWorld::ms_nCurrentScanCode
42C828:  LDRH            R1, [R5,#0x30]; CPed *
42C82A:  CMP             R1, R0
42C82C:  BEQ.W           loc_42C93C
42C830:  STRH            R0, [R5,#0x30]
42C832:  MOV             R0, R5; this
42C834:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
42C838:  CBZ             R0, loc_42C844
42C83A:  ADDS            R0, #8; this
42C83C:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
42C840:  MOV             R6, R0
42C842:  B               loc_42C846
42C844:  MOVS            R6, #0
42C846:  MOV.W           R0, #0xFFFFFFFF; int
42C84A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
42C84E:  CMP             R0, R5
42C850:  BEQ             loc_42C93C
42C852:  MOV.W           R0, #0xFFFFFFFF; int
42C856:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
42C85A:  CMP             R6, R0
42C85C:  BEQ             loc_42C93C
42C85E:  LDR             R1, [R5,#0x14]
42C860:  ADD.W           R0, R1, #0x30 ; '0'
42C864:  CMP             R1, #0
42C866:  IT EQ
42C868:  ADDEQ           R0, R5, #4
42C86A:  VLDR            S0, [R0]
42C86E:  VCMPE.F32       S0, S22
42C872:  VMRS            APSR_nzcv, FPSCR
42C876:  BLE             loc_42C93C
42C878:  VCMPE.F32       S0, S18
42C87C:  VMRS            APSR_nzcv, FPSCR
42C880:  BGE             loc_42C93C
42C882:  VLDR            S0, [R0,#4]
42C886:  VCMPE.F32       S0, S20
42C88A:  VMRS            APSR_nzcv, FPSCR
42C88E:  BLE             loc_42C93C
42C890:  VCMPE.F32       S0, S16
42C894:  VMRS            APSR_nzcv, FPSCR
42C898:  BGE             loc_42C93C
42C89A:  LDR.W           R0, [R5,#0x440]
42C89E:  MOV.W           R1, #0x3E8; int
42C8A2:  ADDS            R0, #4; this
42C8A4:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
42C8A8:  CMP             R0, #0
42C8AA:  MOVW            R1, #0x3EB; int
42C8AE:  ITE NE
42C8B0:  LDRNE.W         R11, [R0,#0x10]
42C8B4:  MOVEQ.W         R11, #0
42C8B8:  LDR.W           R0, [R5,#0x440]
42C8BC:  ADDS            R0, #4; this
42C8BE:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
42C8C2:  CMP             R0, #0
42C8C4:  ITE NE
42C8C6:  LDRNE           R6, [R0,#0x10]
42C8C8:  MOVEQ           R6, #0
42C8CA:  MOV.W           R0, #0xFFFFFFFF; int
42C8CE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
42C8D2:  CMP             R11, R0
42C8D4:  BEQ             loc_42C8E6
42C8D6:  CBZ             R6, loc_42C93C
42C8D8:  MOV.W           R0, #0xFFFFFFFF; int
42C8DC:  MOVS            R1, #0; bool
42C8DE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
42C8E2:  CMP             R6, R0
42C8E4:  BNE             loc_42C93C
42C8E6:  MOV             R0, R5; this
42C8E8:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
42C8EC:  CMP             R0, #1
42C8EE:  BNE             loc_42C93C
42C8F0:  LDR.W           R0, [R5,#0x59C]
42C8F4:  CMP             R0, #6
42C8F6:  BNE             loc_42C906
42C8F8:  MOV.W           R0, #0xFFFFFFFF; int
42C8FC:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
42C900:  MOV             R1, R5
42C902:  BLX             j__ZN7CWanted16RemovePursuitCopEP7CCopPed; CWanted::RemovePursuitCop(CCopPed *)
42C906:  MOVS            R0, #dword_20; this
42C908:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
42C90C:  MOVS            R1, #0; int
42C90E:  MOVS            R2, #1; bool
42C910:  MOVS            R3, #0; bool
42C912:  MOV             R6, R0
42C914:  STR.W           R10, [SP,#0x60+var_60]; float
42C918:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
42C91C:  MOV             R0, R8; this
42C91E:  MOVS            R1, #3; int
42C920:  MOV             R2, R6; CTask *
42C922:  MOVS            R3, #0; bool
42C924:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
42C928:  LDR.W           R0, [R5,#0x440]
42C92C:  MOV             R1, R8; CEvent *
42C92E:  MOVS            R2, #0; bool
42C930:  ADDS            R0, #0x68 ; 'h'; this
42C932:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
42C936:  MOV             R0, R8; this
42C938:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
42C93C:  CMP             R4, #0
42C93E:  BNE.W           loc_42C820
42C942:  ADD             SP, SP, #0x20 ; ' '
42C944:  VPOP            {D8-D11}
42C948:  ADD             SP, SP, #4
42C94A:  POP.W           {R8-R11}
42C94E:  POP             {R4-R7,PC}
