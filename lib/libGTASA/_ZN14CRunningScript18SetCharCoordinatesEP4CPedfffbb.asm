; =========================================================
; Game Engine Function: _ZN14CRunningScript18SetCharCoordinatesEP4CPedfffbb
; Address            : 0x32E7EC - 0x32E8F8
; =========================================================

32E7EC:  PUSH            {R4-R7,LR}
32E7EE:  ADD             R7, SP, #0xC
32E7F0:  PUSH.W          {R8}
32E7F4:  VPUSH           {D8-D10}
32E7F8:  SUB             SP, SP, #0x10
32E7FA:  MOV             R4, R1
32E7FC:  VLDR            S20, [R7,#arg_0]
32E800:  LDRB.W          R0, [R4,#0x485]
32E804:  MOV             R8, R3
32E806:  VLDR            S0, =-100.0
32E80A:  MOV             R5, R2
32E80C:  VMOV            S18, R8
32E810:  LSLS            R0, R0, #0x1F
32E812:  VMOV            S16, R5
32E816:  ITE NE
32E818:  LDRNE.W         R6, [R4,#0x590]
32E81C:  MOVEQ           R6, #0
32E81E:  VCMPE.F32       S20, S0
32E822:  VMRS            APSR_nzcv, FPSCR
32E826:  BGT             loc_32E834
32E828:  MOV             R0, R5; this
32E82A:  MOV             R1, R8; float
32E82C:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
32E830:  VMOV            S20, R0
32E834:  CBZ             R6, loc_32E87A
32E836:  MOV             R0, R6; this
32E838:  BLX             j__ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv; CEntity::GetDistanceFromCentreOfMassToBaseOfModel(void)
32E83C:  VMOV            S0, R0
32E840:  LDR.W           R0, [R6,#(elf_hash_bucket+0x4A4)]
32E844:  MOV             R1, R5
32E846:  MOV             R2, R8
32E848:  VADD.F32        S20, S20, S0
32E84C:  CMP             R0, #9
32E84E:  IT NE
32E850:  CMPNE           R0, #5
32E852:  LDR             R0, [R6]
32E854:  LDR             R4, [R0,#0x3C]
32E856:  MOV.W           R0, #0
32E85A:  STR             R0, [SP,#0x38+var_38]
32E85C:  MOV             R0, R6
32E85E:  VMOV            R3, S20
32E862:  BLX             R4
32E864:  ADD             R0, SP, #0x38+var_34; this
32E866:  MOV             R1, R6; CVector *
32E868:  VSTR            S18, [SP,#0x38+var_30]
32E86C:  VSTR            S16, [SP,#0x38+var_34]
32E870:  VSTR            S20, [SP,#0x38+var_2C]
32E874:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
32E878:  B               loc_32E8EC
32E87A:  LDR             R0, [R7,#arg_8]
32E87C:  CMP             R0, #1
32E87E:  BNE             loc_32E88E
32E880:  MOV             R0, R4; this
32E882:  BLX             j__ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv; CEntity::GetDistanceFromCentreOfMassToBaseOfModel(void)
32E886:  VMOV            S0, R0
32E88A:  VADD.F32        S20, S20, S0
32E88E:  ADD             R0, SP, #0x38+var_34; this
32E890:  MOV             R1, R4; CVector *
32E892:  VSTR            S18, [SP,#0x38+var_30]
32E896:  VSTR            S16, [SP,#0x38+var_34]
32E89A:  VSTR            S20, [SP,#0x38+var_2C]
32E89E:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
32E8A2:  MOV             R0, R4; this
32E8A4:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
32E8A8:  MOV             R6, R0
32E8AA:  CMP             R6, #0
32E8AC:  BEQ             loc_32E8D8
32E8AE:  ADD.W           R0, R6, #8; this
32E8B2:  MOV             R1, R4; CPed *
32E8B4:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
32E8B8:  CMP             R0, #1
32E8BA:  ITT EQ
32E8BC:  LDREQ           R0, [R7,#arg_4]
32E8BE:  CMPEQ           R0, #1
32E8C0:  BNE             loc_32E8D8
32E8C2:  ADD             R1, SP, #0x38+var_34; CVector *
32E8C4:  MOV             R0, R6; this
32E8C6:  VSTR            S18, [SP,#0x38+var_30]
32E8CA:  VSTR            S16, [SP,#0x38+var_34]
32E8CE:  VSTR            S20, [SP,#0x38+var_2C]
32E8D2:  BLX             j__ZN9CPedGroup8TeleportERK7CVector; CPedGroup::Teleport(CVector const&)
32E8D6:  B               loc_32E8EC
32E8D8:  VMOV            R3, S20
32E8DC:  LDR             R0, [R4]
32E8DE:  MOV             R1, R5
32E8E0:  MOV             R2, R8
32E8E2:  LDR             R6, [R0,#0x3C]
32E8E4:  MOVS            R0, #0
32E8E6:  STR             R0, [SP,#0x38+var_38]
32E8E8:  MOV             R0, R4
32E8EA:  BLX             R6
32E8EC:  ADD             SP, SP, #0x10
32E8EE:  VPOP            {D8-D10}
32E8F2:  POP.W           {R8}
32E8F6:  POP             {R4-R7,PC}
