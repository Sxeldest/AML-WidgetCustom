; =========================================================
; Game Engine Function: _ZNK15CPedGroupPlacer19PlaceFormationGroupE8ePedTypeiRK7CVectori
; Address            : 0x4B7C28 - 0x4B8092
; =========================================================

4B7C28:  PUSH            {R4-R7,LR}
4B7C2A:  ADD             R7, SP, #0xC
4B7C2C:  PUSH.W          {R8-R11}
4B7C30:  SUB             SP, SP, #4
4B7C32:  VPUSH           {D8-D13}
4B7C36:  SUB             SP, SP, #0x68
4B7C38:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7C46)
4B7C3C:  MOV             R11, R3
4B7C3E:  STR             R1, [SP,#0xB8+var_88]
4B7C40:  MOV             R4, R2
4B7C42:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7C44:  MOV.W           R9, #0
4B7C48:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B7C4A:  LDRB            R1, [R0]; CPedGroups::ms_activeGroups
4B7C4C:  CBZ             R1, loc_4B7CBA
4B7C4E:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7C56)
4B7C52:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7C54:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B7C56:  LDRB.W          R1, [R0,#(byte_9EF9B1 - 0x9EF9B0)]!
4B7C5A:  CBZ             R1, loc_4B7CC0
4B7C5C:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7C64)
4B7C60:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7C62:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B7C64:  LDRB.W          R1, [R0,#(byte_9EF9B2 - 0x9EF9B0)]!
4B7C68:  CBZ             R1, loc_4B7CC6
4B7C6A:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7C72)
4B7C6E:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7C70:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B7C72:  LDRB.W          R1, [R0,#(byte_9EF9B3 - 0x9EF9B0)]!
4B7C76:  CBZ             R1, loc_4B7CCC
4B7C78:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7C80)
4B7C7C:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7C7E:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B7C80:  LDRB.W          R1, [R0,#(byte_9EF9B4 - 0x9EF9B0)]!
4B7C84:  CBZ             R1, loc_4B7CD2
4B7C86:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7C8E)
4B7C8A:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7C8C:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B7C8E:  LDRB.W          R1, [R0,#(byte_9EF9B5 - 0x9EF9B0)]!
4B7C92:  CBZ             R1, loc_4B7CD8
4B7C94:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7C9C)
4B7C98:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7C9A:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B7C9C:  LDRB.W          R1, [R0,#(byte_9EF9B6 - 0x9EF9B0)]!
4B7CA0:  CBZ             R1, loc_4B7CDE
4B7CA2:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7CAA)
4B7CA6:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7CA8:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B7CAA:  LDRB.W          R1, [R0,#(byte_9EF9B7 - 0x9EF9B0)]!
4B7CAE:  CMP             R1, #0
4B7CB0:  BNE.W           loc_4B8080
4B7CB4:  MOV.W           R10, #7
4B7CB8:  B               loc_4B7CE2
4B7CBA:  MOV.W           R10, #0
4B7CBE:  B               loc_4B7CE2
4B7CC0:  MOV.W           R10, #1
4B7CC4:  B               loc_4B7CE2
4B7CC6:  MOV.W           R10, #2
4B7CCA:  B               loc_4B7CE2
4B7CCC:  MOV.W           R10, #3
4B7CD0:  B               loc_4B7CE2
4B7CD2:  MOV.W           R10, #4
4B7CD6:  B               loc_4B7CE2
4B7CD8:  MOV.W           R10, #5
4B7CDC:  B               loc_4B7CE2
4B7CDE:  MOV.W           R10, #6
4B7CE2:  LDR.W           R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B7CF0)
4B7CE6:  MOV.W           R2, #0x2D4
4B7CEA:  MOVS            R6, #1
4B7CEC:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B7CEE:  STRB            R6, [R0]; CPedGroups::ms_activeGroups ...
4B7CF0:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B7CF2:  SMLABB.W        R5, R10, R2, R1
4B7CF6:  ADD.W           R8, R5, #8
4B7CFA:  MOV             R0, R8; this
4B7CFC:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B7D00:  ADD.W           R0, R5, #0x30 ; '0'; this
4B7D04:  STR             R0, [SP,#0xB8+var_90]
4B7D06:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B7D0A:  LDR             R0, =(TheCamera_ptr - 0x4B7D18)
4B7D0C:  MOVS            R2, #0x40400000; float
4B7D12:  MOV             R1, R11; CVector *
4B7D14:  ADD             R0, PC; TheCamera_ptr
4B7D16:  STRB.W          R9, [R5,#0x2D0]
4B7D1A:  LDR             R0, [R0]; TheCamera ; this
4B7D1C:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
4B7D20:  CMP             R0, #1
4B7D22:  BNE             loc_4B7D6C
4B7D24:  MOV.W           R0, #0xFFFFFFFF; int
4B7D28:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4B7D2C:  LDR             R1, [R0,#0x14]
4B7D2E:  VLDR            D16, [R11]
4B7D32:  ADD.W           R2, R1, #0x30 ; '0'
4B7D36:  CMP             R1, #0
4B7D38:  IT EQ
4B7D3A:  ADDEQ           R2, R0, #4
4B7D3C:  VLDR            D17, [R2]
4B7D40:  VSUB.F32        D16, D16, D17
4B7D44:  VMUL.F32        D0, D16, D16
4B7D48:  VADD.F32        S0, S0, S1
4B7D4C:  VSQRT.F32       S16, S0
4B7D50:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4B7D54:  VLDR            S0, =42.5
4B7D58:  VMOV            S2, R0
4B7D5C:  VMUL.F32        S0, S2, S0
4B7D60:  VCMPE.F32       S16, S0
4B7D64:  VMRS            APSR_nzcv, FPSCR
4B7D68:  BLT.W           loc_4B8080
4B7D6C:  MOVS            R1, #0
4B7D6E:  MOV             R0, R11; this
4B7D70:  MOVT            R1, #0x4040; CVector *
4B7D74:  MOV.W           R2, #0xFFFFFFFF; float
4B7D78:  MOVS            R3, #0; int
4B7D7A:  STRD.W          R6, R6, [SP,#0xB8+var_B8]; CEntity **
4B7D7E:  STR             R6, [SP,#0xB8+var_B0]; unsigned __int8
4B7D80:  MOVS            R6, #0
4B7D82:  BLX             j__ZN13CPedPlacement21IsPositionClearForPedERK7CVectorfiPP7CEntityhhh; CPedPlacement::IsPositionClearForPed(CVector const&,float,int,CEntity **,uchar,uchar,uchar)
4B7D86:  CMP             R0, #1
4B7D88:  BNE.W           loc_4B8082
4B7D8C:  VMOV.F32        S16, #1.0
4B7D90:  VLDR            S0, [R11,#8]
4B7D94:  LDRD.W          R0, R1, [R11]; float
4B7D98:  SUB.W           R3, R7, #-var_51; float
4B7D9C:  STR             R6, [SP,#0xB8+var_B8]; bool *
4B7D9E:  VADD.F32        S0, S0, S16
4B7DA2:  VMOV            R2, S0; float
4B7DA6:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
4B7DAA:  MOV             R5, R0
4B7DAC:  LDRB.W          R0, [R7,#var_51]
4B7DB0:  CMP             R0, #0
4B7DB2:  BEQ.W           loc_4B8082
4B7DB6:  MOV             R9, R4
4B7DB8:  LDR             R4, [SP,#0xB8+var_88]
4B7DBA:  STR.W           R10, [SP,#0xB8+var_9C]
4B7DBE:  SUB.W           R10, R4, #7
4B7DC2:  VLDR            S18, [R11,#8]
4B7DC6:  MOV             R0, R10; this
4B7DC8:  BLX             j__ZN11CPopulation20ChooseGangOccupationEi; CPopulation::ChooseGangOccupation(int)
4B7DCC:  MOV             R1, R0
4B7DCE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4B7DD4)
4B7DD0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4B7DD2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4B7DD4:  LDR.W           R0, [R0,R1,LSL#2]
4B7DD8:  LDR             R0, [R0,#0x34]
4B7DDA:  CMP             R0, #0
4B7DDC:  BEQ.W           loc_4B8080
4B7DE0:  VMOV            S0, R5
4B7DE4:  LDRD.W          R0, R2, [R11]
4B7DE8:  STRD.W          R0, R2, [SP,#0xB8+var_74]
4B7DEC:  ADD             R2, SP, #0xB8+var_74
4B7DEE:  VADD.F32        S0, S0, S16
4B7DF2:  MOV             R0, R4
4B7DF4:  MOVS            R3, #0
4B7DF6:  MOVS            R6, #0
4B7DF8:  VMAX.F32        D9, D9, D0
4B7DFC:  VSTR            S18, [SP,#0xB8+var_6C]
4B7E00:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
4B7E04:  CMP             R0, #0
4B7E06:  BEQ.W           loc_4B8082
4B7E0A:  CMP.W           R9, #2
4B7E0E:  STR             R0, [SP,#0xB8+var_74]
4B7E10:  BLT             loc_4B7E38
4B7E12:  LDR             R1, =(_ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr - 0x4B7E20)
4B7E14:  SUB.W           R6, R9, #1
4B7E18:  STR             R0, [SP,#0xB8+var_98]
4B7E1A:  ADDS            R0, #4
4B7E1C:  ADD             R1, PC; _ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr
4B7E1E:  STR             R0, [SP,#0xB8+var_94]
4B7E20:  MOVS            R0, #1
4B7E22:  VLDR            S20, =0.0
4B7E26:  STR             R0, [SP,#0xB8+var_A0]
4B7E28:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4B7E30)
4B7E2A:  LDR             R1, [R1]; int
4B7E2C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4B7E2E:  ADD.W           R5, R1, #8
4B7E32:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4B7E34:  STR             R0, [SP,#0xB8+var_8C]
4B7E36:  B               loc_4B7E66
4B7E38:  MOV.W           R9, #1
4B7E3C:  B               loc_4B7FBC
4B7E3E:  ADD.W           R0, R9, #0xC
4B7E42:  VSTR            S24, [R9,#4]
4B7E46:  VSTR            S22, [R9,#8]
4B7E4A:  VSTR            S26, [R0]
4B7E4E:  ADD             R0, SP, #0xB8+var_74
4B7E50:  LDR             R4, [SP,#0xB8+var_A0]
4B7E52:  MOVS            R1, #0
4B7E54:  STR.W           R9, [R0,R4,LSL#2]
4B7E58:  LDR.W           R0, [R9,#0x18]
4B7E5C:  BLX             j__ZN18CVisibilityPlugins13SetClumpAlphaEP7RpClumpi; CVisibilityPlugins::SetClumpAlpha(RpClump *,int)
4B7E60:  ADDS            R4, #1
4B7E62:  STR             R4, [SP,#0xB8+var_A0]
4B7E64:  B               loc_4B7FA8
4B7E66:  MOV             R0, R10; this
4B7E68:  BLX             j__ZN11CPopulation20ChooseGangOccupationEi; CPopulation::ChooseGangOccupation(int)
4B7E6C:  MOV             R1, R0
4B7E6E:  LDR             R0, [SP,#0xB8+var_8C]
4B7E70:  LDR.W           R0, [R0,R1,LSL#2]
4B7E74:  LDR             R0, [R0,#0x34]
4B7E76:  CMP             R0, #0
4B7E78:  BEQ.W           loc_4B7FAA
4B7E7C:  LDRD.W          R0, R2, [R11]
4B7E80:  MOVS            R3, #0
4B7E82:  STRD.W          R0, R2, [SP,#0xB8+var_81+1]
4B7E86:  ADD             R2, SP, #0xB8+var_81+1
4B7E88:  MOV             R0, R4
4B7E8A:  VSTR            S18, [SP,#0xB8+var_78]
4B7E8E:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
4B7E92:  MOV             R9, R0
4B7E94:  CMP.W           R9, #0
4B7E98:  BEQ.W           loc_4B7FA8
4B7E9C:  LDR             R4, [SP,#0xB8+var_98]
4B7E9E:  LDR             R1, [SP,#0xB8+var_94]
4B7EA0:  LDR             R0, [R4,#0x14]
4B7EA2:  CMP             R0, #0
4B7EA4:  IT NE
4B7EA6:  ADDNE.W         R1, R0, #0x30 ; '0'
4B7EAA:  VLDR            S6, [R5]
4B7EAE:  VLDR            S4, [R1]
4B7EB2:  VLDR            S0, [R1,#8]
4B7EB6:  VLDR            S2, [R1,#4]
4B7EBA:  VADD.F32        S4, S6, S4
4B7EBE:  VLDR            S8, [R5,#4]
4B7EC2:  VADD.F32        S0, S0, S20
4B7EC6:  LDR.W           R0, [R9,#0x14]
4B7ECA:  VADD.F32        S2, S8, S2
4B7ECE:  CBZ             R0, loc_4B7EE4
4B7ED0:  VSTR            S4, [R0,#0x30]
4B7ED4:  LDR.W           R0, [R9,#0x14]
4B7ED8:  VSTR            S2, [R0,#0x34]
4B7EDC:  LDR.W           R0, [R9,#0x14]
4B7EE0:  ADDS            R0, #0x38 ; '8'
4B7EE2:  B               loc_4B7EF0
4B7EE4:  ADD.W           R0, R9, #0xC
4B7EE8:  VSTR            S4, [R9,#4]
4B7EEC:  VSTR            S2, [R9,#8]
4B7EF0:  VSTR            S0, [R0]
4B7EF4:  MOVS            R3, #0
4B7EF6:  LDR.W           R0, [R9,#0x14]
4B7EFA:  ADD.W           R1, R0, #0x30 ; '0'
4B7EFE:  CMP             R0, #0
4B7F00:  IT EQ
4B7F02:  ADDEQ.W         R1, R9, #4
4B7F06:  VLDR            S26, [R1,#8]
4B7F0A:  VLDR            S24, [R1]
4B7F0E:  VADD.F32        S0, S26, S16
4B7F12:  VLDR            S22, [R1,#4]
4B7F16:  VMOV            R0, S24; this
4B7F1A:  STR             R3, [SP,#0xB8+var_B8]; bool *
4B7F1C:  VMOV            R1, S22; float
4B7F20:  SUB.W           R3, R7, #-var_81; float
4B7F24:  VMOV            R2, S0; float
4B7F28:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
4B7F2C:  LDRB.W          R1, [R7,#var_81]; CPed *
4B7F30:  CBZ             R1, loc_4B7FA2
4B7F32:  VMOV            S0, R0
4B7F36:  LDR             R0, [R4,#0x14]
4B7F38:  LDR             R1, [SP,#0xB8+var_94]
4B7F3A:  VADD.F32        S0, S0, S16
4B7F3E:  CMP             R0, #0
4B7F40:  IT NE
4B7F42:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
4B7F46:  VMAX.F32        D13, D13, D0
4B7F4A:  VLDR            S0, [R1,#8]
4B7F4E:  VSUB.F32        S0, S26, S0
4B7F52:  VABS.F32        S0, S0
4B7F56:  VCMPE.F32       S0, S16
4B7F5A:  VMRS            APSR_nzcv, FPSCR
4B7F5E:  BGT             loc_4B7FA2
4B7F60:  MOVS            R0, #0
4B7F62:  VSTR            S22, [SP,#0xB8+var_7C]
4B7F66:  VSTR            S24, [SP,#0xB8+var_81+1]
4B7F6A:  MOVS            R2, #(stderr+1); CVector *
4B7F6C:  VSTR            S26, [SP,#0xB8+var_78]
4B7F70:  MOVS            R3, #0; bool
4B7F72:  STRD.W          R0, R0, [SP,#0xB8+var_B8]; bool
4B7F76:  STRD.W          R0, R0, [SP,#0xB8+var_B0]; bool
4B7F7A:  STR             R0, [SP,#0xB8+var_A8]; bool
4B7F7C:  ADD             R0, SP, #0xB8+var_81+1; this
4B7F7E:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4B7F82:  CBZ             R0, loc_4B7FA2
4B7F84:  LDR.W           R0, [R9,#0x14]
4B7F88:  CMP             R0, #0
4B7F8A:  BEQ.W           loc_4B7E3E
4B7F8E:  VSTR            S24, [R0,#0x30]
4B7F92:  LDR.W           R0, [R9,#0x14]
4B7F96:  VSTR            S22, [R0,#0x34]
4B7F9A:  LDR.W           R0, [R9,#0x14]
4B7F9E:  ADDS            R0, #0x38 ; '8'
4B7FA0:  B               loc_4B7E4A
4B7FA2:  MOV             R0, R9; this
4B7FA4:  BLX             j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
4B7FA8:  LDR             R4, [SP,#0xB8+var_88]
4B7FAA:  ADDS            R5, #8
4B7FAC:  SUBS            R6, #1
4B7FAE:  BNE.W           loc_4B7E66
4B7FB2:  LDR.W           R9, [SP,#0xB8+var_A0]
4B7FB6:  CMP.W           R9, #1
4B7FBA:  BLT             loc_4B8080
4B7FBC:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B7FCA)
4B7FBE:  MOV.W           R2, #0x2D4
4B7FC2:  LDR.W           R10, [SP,#0xB8+var_9C]
4B7FC6:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B7FC8:  LDR             R1, =(_ZN30CPedGroupDefaultTaskAllocators26ms_followAnyMeansAllocatorE_ptr - 0x4B7FD0)
4B7FCA:  LDR             R0, [R0]; CPedGroups::ms_groups ...
4B7FCC:  ADD             R1, PC; _ZN30CPedGroupDefaultTaskAllocators26ms_followAnyMeansAllocatorE_ptr
4B7FCE:  SMLABB.W        R4, R10, R2, R0
4B7FD2:  LDR             R0, [R1]; this
4B7FD4:  MOVS            R2, #0; CPed *
4B7FD6:  ADD.W           R1, R4, #0x21C; CPedTaskPair *
4B7FDA:  STR.W           R0, [R4,#0x2BC]
4B7FDE:  BLX             j__ZN21CPedGroupIntelligence10FlushTasksEP12CPedTaskPairP4CPed; CPedGroupIntelligence::FlushTasks(CPedTaskPair *,CPed *)
4B7FE2:  LDR.W           R0, [R4,#0x2BC]
4B7FE6:  LDR.W           R11, [SP,#0xB8+var_90]
4B7FEA:  CBZ             R0, loc_4B7FF8
4B7FEC:  LDR             R2, [R0]
4B7FEE:  LDR.W           R1, [R11]
4B7FF2:  LDR             R3, [R2]
4B7FF4:  MOVS            R2, #0
4B7FF6:  BLX             R3
4B7FF8:  LDR             R4, [SP,#0xB8+var_74]
4B7FFA:  MOV             R0, R8; this
4B7FFC:  MOV             R1, R4; CPed *
4B7FFE:  BLX             j__ZN19CPedGroupMembership9SetLeaderEP4CPed; CPedGroupMembership::SetLeader(CPed *)
4B8002:  MOV             R0, R8; this
4B8004:  BLX             j__ZN19CPedGroupMembership7ProcessEv; CPedGroupMembership::Process(void)
4B8008:  MOV             R0, R11; this
4B800A:  BLX             j__ZN21CPedGroupIntelligence7ProcessEv; CPedGroupIntelligence::Process(void)
4B800E:  MOVS            R0, #word_28; this
4B8010:  LDR.W           R5, [R4,#0x440]
4B8014:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4B8018:  MOV             R1, R10; int
4B801A:  MOVS            R2, #1; bool
4B801C:  MOV             R4, R0
4B801E:  MOVS            R6, #1
4B8020:  BLX             j__ZN21CTaskComplexBeInGroupC2Eib; CTaskComplexBeInGroup::CTaskComplexBeInGroup(int,bool)
4B8024:  ADDS            R0, R5, #4; this
4B8026:  MOV             R1, R4; CTask *
4B8028:  MOVS            R2, #3; int
4B802A:  MOVS            R3, #0; bool
4B802C:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4B8030:  CMP.W           R9, #2
4B8034:  BLT             loc_4B8082
4B8036:  ADD             R0, SP, #0xB8+var_74
4B8038:  SUB.W           R5, R9, #1
4B803C:  ADDS            R6, R0, #4
4B803E:  LDR.W           R4, [R6],#4
4B8042:  MOV             R0, R8; this
4B8044:  MOV             R1, R4; CPed *
4B8046:  BLX             j__ZN19CPedGroupMembership11AddFollowerEP4CPed; CPedGroupMembership::AddFollower(CPed *)
4B804A:  MOV             R0, R8; this
4B804C:  BLX             j__ZN19CPedGroupMembership7ProcessEv; CPedGroupMembership::Process(void)
4B8050:  MOV             R0, R11; this
4B8052:  BLX             j__ZN21CPedGroupIntelligence7ProcessEv; CPedGroupIntelligence::Process(void)
4B8056:  MOVS            R0, #word_28; this
4B8058:  LDR.W           R9, [R4,#0x440]
4B805C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4B8060:  MOV             R1, R10; int
4B8062:  MOVS            R2, #0; bool
4B8064:  MOV             R4, R0
4B8066:  BLX             j__ZN21CTaskComplexBeInGroupC2Eib; CTaskComplexBeInGroup::CTaskComplexBeInGroup(int,bool)
4B806A:  ADD.W           R0, R9, #4; this
4B806E:  MOV             R1, R4; CTask *
4B8070:  MOVS            R2, #3; int
4B8072:  MOVS            R3, #0; bool
4B8074:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4B8078:  SUBS            R5, #1
4B807A:  BNE             loc_4B803E
4B807C:  MOVS            R6, #1
4B807E:  B               loc_4B8082
4B8080:  MOVS            R6, #0
4B8082:  MOV             R0, R6
4B8084:  ADD             SP, SP, #0x68 ; 'h'
4B8086:  VPOP            {D8-D13}
4B808A:  ADD             SP, SP, #4
4B808C:  POP.W           {R8-R11}
4B8090:  POP             {R4-R7,PC}
