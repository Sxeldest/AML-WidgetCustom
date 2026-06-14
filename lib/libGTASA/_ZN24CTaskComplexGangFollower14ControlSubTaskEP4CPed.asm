; =========================================================
; Game Engine Function: _ZN24CTaskComplexGangFollower14ControlSubTaskEP4CPed
; Address            : 0x516C70 - 0x517768
; =========================================================

516C70:  PUSH            {R4-R7,LR}
516C72:  ADD             R7, SP, #0xC
516C74:  PUSH.W          {R8-R11}
516C78:  SUB             SP, SP, #4
516C7A:  VPUSH           {D8-D14}
516C7E:  SUB             SP, SP, #0x48
516C80:  MOV             R4, R1
516C82:  MOV             R11, R0
516C84:  LDR.W           R0, [R4,#0x48C]
516C88:  ADDW            R8, R4, #0x484
516C8C:  MOV             R9, #0xFFFEFFFF
516C90:  MOV.W           R5, #0xFFFFFFFF
516C94:  BIC.W           R0, R0, #0x400000
516C98:  STR.W           R0, [R4,#0x48C]
516C9C:  LDR.W           R1, [R11,#0x10]
516CA0:  LDR.W           R0, [R11,#8]
516CA4:  CMP             R1, #0
516CA6:  BEQ             loc_516D42
516CA8:  LDR             R1, [R0]
516CAA:  LDR             R1, [R1,#0x14]
516CAC:  BLX             R1
516CAE:  MOVW            R1, #0x2C5
516CB2:  CMP             R0, R1
516CB4:  BEQ.W           def_517492; jumptable 00517492 default case
516CB8:  LDR             R0, [R4,#0x18]
516CBA:  MOVS            R1, #0
516CBC:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
516CC0:  MOV             R9, R0
516CC2:  LDR.W           R0, [R11,#0x10]
516CC6:  LDR.W           R0, [R0,#0x440]; this
516CCA:  BLX             j__ZNK16CPedIntelligence24GetMoveStateFromGoToTaskEv; CPedIntelligence::GetMoveStateFromGoToTask(void)
516CCE:  ADD.W           R1, R11, #0x20 ; ' '; CVector *
516CD2:  MOV             R5, R0
516CD4:  MOV             R0, R11; this
516CD6:  BLX             j__ZN24CTaskComplexGangFollower23CalculateOffsetPositionER7CVector; CTaskComplexGangFollower::CalculateOffsetPosition(CVector &)
516CDA:  LDR.W           R1, [R11,#0x10]
516CDE:  ADD.W           R10, R4, #4
516CE2:  LDR             R2, [R4,#0x14]
516CE4:  LDR.W           R0, [R11,#8]
516CE8:  MOV             R6, R10
516CEA:  LDR             R3, [R1,#0x14]
516CEC:  CMP             R2, #0
516CEE:  IT NE
516CF0:  ADDNE.W         R6, R2, #0x30 ; '0'
516CF4:  ADD.W           R2, R3, #0x30 ; '0'
516CF8:  CMP             R3, #0
516CFA:  VLDR            S18, [R6]
516CFE:  VLDR            S16, [R6,#4]
516D02:  IT EQ
516D04:  ADDEQ           R2, R1, #4
516D06:  LDR             R1, [R0]
516D08:  VLDR            S20, [R2]
516D0C:  VLDR            S22, [R2,#4]
516D10:  LDR             R1, [R1,#0x14]
516D12:  BLX             R1
516D14:  MOVW            R1, #0x38B
516D18:  CMP             R0, R1
516D1A:  STR             R4, [SP,#0xA0+var_70]
516D1C:  BNE             loc_516D6C
516D1E:  MOV             R1, R11
516D20:  LDRB.W          R0, [R1,#0x3D]!
516D24:  STR             R1, [SP,#0xA0+var_74]
516D26:  TST.W           R0, #4
516D2A:  BNE.W           loc_516E64
516D2E:  MOV.W           R9, #0
516D32:  LDR.W           R10, [SP,#0xA0+var_74]
516D36:  CMP.W           R9, #0
516D3A:  IT NE
516D3C:  MOVNE.W         R9, #1
516D40:  B               loc_516D74
516D42:  LDR             R1, [R0]
516D44:  MOVS            R2, #1
516D46:  MOVS            R3, #0
516D48:  LDR             R6, [R1,#0x1C]
516D4A:  MOV             R1, R4
516D4C:  BLX             R6
516D4E:  CMP             R0, #1
516D50:  BNE.W           def_517492; jumptable 00517492 default case
516D54:  LDM.W           R8, {R0-R3}
516D58:  MOVS            R4, #0
516D5A:  ANDS            R2, R5
516D5C:  ANDS            R1, R5
516D5E:  ANDS            R0, R5
516D60:  AND.W           R3, R3, R9
516D64:  STM.W           R8, {R0-R3}
516D68:  B.W             loc_517686
516D6C:  ADD.W           R10, R11, #0x3D ; '='
516D70:  MOV.W           R9, #0
516D74:  LDR.W           R6, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x516D84)
516D78:  MOV.W           R5, #0xFFFFFFFF
516D7C:  LDM.W           R8, {R0-R3}
516D80:  ADD             R6, PC; _ZN6CWorld13PlayerInFocusE_ptr
516D82:  ANDS            R1, R5
516D84:  ANDS            R0, R5
516D86:  ANDS            R2, R5
516D88:  STR.W           R2, [R8,#8]
516D8C:  STR.W           R1, [R8,#4]
516D90:  MOV             R1, #0xFFFEFFFF
516D94:  STR.W           R0, [R8]
516D98:  ANDS            R1, R3
516D9A:  LDR             R0, [R6]; CWorld::PlayerInFocus ...
516D9C:  ORR.W           R1, R1, R9,LSL#16
516DA0:  STR.W           R1, [R8,#0xC]
516DA4:  MOV.W           R2, #0x194
516DA8:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x516DB2)
516DAC:  LDR             R0, [R0]; CWorld::PlayerInFocus
516DAE:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
516DB0:  SMULBB.W        R0, R0, R2
516DB4:  LDR             R1, [R1]; CWorld::Players ...
516DB6:  LDRB.W          R2, [R10]
516DBA:  AND.W           R6, R2, #1
516DBE:  LDR             R1, [R1,R0]
516DC0:  LDR.W           R0, [R1,#0x590]; this
516DC4:  CMP             R0, #0
516DC6:  ITT NE
516DC8:  LDRNE.W         R1, [R1,#0x484]
516DCC:  ANDSNE.W        R1, R1, #0x100
516DD0:  BEQ             loc_516E04
516DD2:  VLDR            S0, [R0,#0x48]
516DD6:  VLDR            S2, [R0,#0x4C]
516DDA:  VMUL.F32        S0, S0, S0
516DDE:  VLDR            S4, [R0,#0x50]
516DE2:  VMUL.F32        S2, S2, S2
516DE6:  VMUL.F32        S4, S4, S4
516DEA:  VADD.F32        S0, S0, S2
516DEE:  VLDR            S2, =0.04
516DF2:  VADD.F32        S0, S0, S4
516DF6:  VCMPE.F32       S0, S2
516DFA:  VMRS            APSR_nzcv, FPSCR
516DFE:  BLE             loc_516E04
516E00:  MOVS            R0, #0
516E02:  B               loc_516E0C
516E04:  BLX             j__ZN10CStreaming10IsVeryBusyEv; CStreaming::IsVeryBusy(void)
516E08:  EOR.W           R0, R0, #1
516E0C:  LDR             R5, [SP,#0xA0+var_70]
516E0E:  CBNZ            R6, loc_516E42
516E10:  CMP             R0, #0
516E12:  BEQ.W           loc_517002
516E16:  LDR.W           R0, =(aGangs - 0x516E1E); "gangs"
516E1A:  ADD             R0, PC; "gangs"
516E1C:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
516E20:  LDR.W           R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x516E28)
516E24:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
516E26:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
516E28:  ADD.W           R1, R1, R0,LSL#5
516E2C:  LDRB            R1, [R1,#0x10]; int
516E2E:  CMP             R1, #1
516E30:  BNE.W           loc_516FF6
516E34:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
516E38:  LDRB.W          R0, [R10]
516E3C:  ORR.W           R0, R0, #1
516E40:  B               loc_516E5E
516E42:  CMP             R0, #0
516E44:  BNE.W           loc_517002
516E48:  LDR.W           R0, =(aGangs - 0x516E50); "gangs"
516E4C:  ADD             R0, PC; "gangs"
516E4E:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
516E52:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
516E56:  LDRB.W          R0, [R10]
516E5A:  AND.W           R0, R0, #0xFE
516E5E:  STRB.W          R0, [R10]
516E62:  B               loc_517002
516E64:  VSUB.F32        S16, S22, S16
516E68:  STR.W           R9, [SP,#0xA0+var_7C]
516E6C:  VSUB.F32        S18, S20, S18
516E70:  LDR.W           R0, [R4,#0x440]
516E74:  ADD.W           R3, R11, #0x20 ; ' '
516E78:  MOV.W           R6, #0x40000000
516E7C:  VLDR            S28, =0.0
516E80:  LDR.W           R0, [R0,#0x278]
516E84:  STR             R0, [SP,#0xA0+var_78]
516E86:  LDR.W           R0, [R11,#8]
516E8A:  VMUL.F32        S0, S16, S16
516E8E:  LDM             R3, {R1-R3}
516E90:  VMUL.F32        S2, S18, S18
516E94:  STR             R6, [R0,#0x20]
516E96:  ADDS            R0, #0x44 ; 'D'
516E98:  STM             R0!, {R1-R3}
516E9A:  MOV.W           R1, #0x384; int
516E9E:  LDR.W           R0, [R4,#0x440]
516EA2:  ADDS            R0, #4; this
516EA4:  VADD.F32        S0, S2, S0
516EA8:  VADD.F32        S20, S0, S28
516EAC:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
516EB0:  MOV             R6, R0
516EB2:  LDR.W           R0, [R4,#0x440]
516EB6:  MOVW            R1, #0x38A; int
516EBA:  ADDS            R0, #4; this
516EBC:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
516EC0:  MOV.W           R9, #0
516EC4:  CMP             R6, #0
516EC6:  BEQ.W           loc_517548
516ECA:  CMP             R0, #0
516ECC:  BNE.W           loc_517548
516ED0:  LDR.W           R0, [R11,#0x10]
516ED4:  MOV.W           R9, #0
516ED8:  VLDR            S0, [R11,#0x20]
516EDC:  VLDR            S2, [R11,#0x24]
516EE0:  LDR             R1, [R0,#0x14]
516EE2:  VLDR            S4, [R11,#0x28]
516EE6:  ADD.W           R2, R1, #0x30 ; '0'
516EEA:  CMP             R1, #0
516EEC:  IT EQ
516EEE:  ADDEQ           R2, R0, #4
516EF0:  LDR             R1, [SP,#0xA0+var_70]
516EF2:  VLDR            S6, [R2]
516EF6:  VLDR            S8, [R2,#4]
516EFA:  VLDR            S10, [R2,#8]
516EFE:  VADD.F32        S24, S6, S0
516F02:  VADD.F32        S22, S8, S2
516F06:  LDR             R1, [R1,#0x14]
516F08:  VADD.F32        S26, S10, S4
516F0C:  CMP             R1, #0
516F0E:  IT NE
516F10:  ADDNE.W         R10, R1, #0x30 ; '0'
516F14:  CMP             R5, #7
516F16:  BHI.W           loc_5174EA
516F1A:  MOVS            R1, #1
516F1C:  LSLS            R1, R5
516F1E:  TST.W           R1, #0xD0
516F22:  BEQ.W           loc_5174EA
516F26:  LDR             R0, [R0,#0x14]
516F28:  VLDR            S6, [R10]
516F2C:  VLDR            S8, [R10,#4]
516F30:  VLDR            S0, [R0,#0x10]
516F34:  VLDR            S2, [R0,#0x14]
516F38:  VMUL.F32        S12, S24, S0
516F3C:  VLDR            S4, [R0,#0x18]
516F40:  VMUL.F32        S10, S22, S2
516F44:  VLDR            S3, [R10,#8]
516F48:  VMUL.F32        S14, S8, S2
516F4C:  VMUL.F32        S1, S6, S0
516F50:  VMUL.F32        S5, S26, S4
516F54:  VADD.F32        S10, S12, S10
516F58:  VMUL.F32        S12, S3, S4
516F5C:  VADD.F32        S14, S1, S14
516F60:  VADD.F32        S10, S10, S5
516F64:  VADD.F32        S12, S14, S12
516F68:  VSUB.F32        S10, S12, S10
516F6C:  VCMPE.F32       S10, #0.0
516F70:  VMRS            APSR_nzcv, FPSCR
516F74:  BGE.W           loc_5174E6
516F78:  VSUB.F32        S8, S22, S8
516F7C:  VLDR            S12, [R6,#0x18]
516F80:  VSUB.F32        S6, S24, S6
516F84:  VMOV.F32        S10, #1.0
516F88:  VMUL.F32        S8, S8, S8
516F8C:  VMUL.F32        S6, S6, S6
516F90:  VADD.F32        S10, S12, S10
516F94:  VADD.F32        S6, S6, S8
516F98:  VMUL.F32        S8, S10, S10
516F9C:  VADD.F32        S6, S6, S28
516FA0:  VCMPE.F32       S6, S8
516FA4:  VMRS            APSR_nzcv, FPSCR
516FA8:  BLE.W           loc_5174AA
516FAC:  LDR             R4, [SP,#0xA0+var_7C]
516FAE:  CMP             R4, #0
516FB0:  BEQ.W           loc_5174E6
516FB4:  LDR             R0, [SP,#0xA0+var_70]; this
516FB6:  MOV             R1, R4; CAnimBlendAssociation *
516FB8:  VLDR            S28, [R4,#0x24]
516FBC:  BLX             j__ZN4CPed16SetMoveAnimSpeedEP21CAnimBlendAssociation; CPed::SetMoveAnimSpeed(CAnimBlendAssociation *)
516FC0:  VLDR            S0, [R4,#0x24]
516FC4:  VLDR            S4, =0.013
516FC8:  VSUB.F32        S2, S28, S0
516FCC:  VABS.F32        S2, S2
516FD0:  VCMPE.F32       S2, S4
516FD4:  VMRS            APSR_nzcv, FPSCR
516FD8:  BLT             loc_516FF0
516FDA:  VCMPE.F32       S28, S0
516FDE:  VMRS            APSR_nzcv, FPSCR
516FE2:  ITE LE
516FE4:  VLDRLE          S0, =0.0125
516FE8:  VLDRGT          S0, =-0.0125
516FEC:  VADD.F32        S28, S28, S0
516FF0:  VSTR            S28, [R4,#0x24]
516FF4:  B               loc_5174E0
516FF6:  MOVW            R1, #0x63E7
516FFA:  ADD             R0, R1; this
516FFC:  MOVS            R1, #8; int
516FFE:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
517002:  LDR.W           R0, [R11,#0xC]
517006:  LDRB.W          R1, [R0,#0x2D0]
51700A:  CBNZ            R1, loc_517056
51700C:  LDRB.W          R1, [R10]
517010:  LSLS            R1, R1, #0x1C
517012:  BMI             loc_517056
517014:  ADDS            R0, #8; this
517016:  BLX             j__ZNK19CPedGroupMembership12CountMembersEv; CPedGroupMembership::CountMembers(void)
51701A:  CMP             R0, #4
51701C:  BLT             loc_517056
51701E:  BLX             rand
517022:  UXTH            R0, R0
517024:  VLDR            S2, =0.000015259
517028:  VMOV            S0, R0
51702C:  VCVT.F32.S32    S0, S0
517030:  VMUL.F32        S0, S0, S2
517034:  VLDR            S2, =2000.0
517038:  VMUL.F32        S0, S0, S2
51703C:  VCVT.S32.F32    S0, S0
517040:  VMOV            R0, S0
517044:  CMP.W           R0, #0x1F4
517048:  ITTT EQ
51704A:  LDRBEQ.W        R0, [R10]
51704E:  ORREQ.W         R0, R0, #2
517052:  STRBEQ.W        R0, [R10]
517056:  LDRB.W          R0, [R11,#0x48]
51705A:  CMP             R0, #0
51705C:  BEQ             loc_517100
51705E:  LDRB.W          R0, [R11,#0x49]
517062:  CBZ             R0, loc_5170A0
517064:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51706E)
517068:  MOVS            R1, #0
51706A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51706C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
51706E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
517070:  STRB.W          R1, [R11,#0x49]
517074:  STR.W           R0, [R11,#0x40]
517078:  MOV             R1, R0
51707A:  B               loc_5170AE
51707C:  DCFS 0.04
517080:  DCFS 0.0
517084:  DCFS 0.013
517088:  DCFS 0.0125
51708C:  DCFS -0.0125
517090:  DCFS 0.000015259
517094:  DCFS 2000.0
517098:  DCFS 100.0
51709C:  DCFS 500.0
5170A0:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5170AC)
5170A4:  LDR.W           R1, [R11,#0x40]
5170A8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5170AA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5170AC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5170AE:  LDR.W           R2, [R11,#0x44]
5170B2:  ADD             R1, R2
5170B4:  CMP             R1, R0
5170B6:  BHI             loc_517100
5170B8:  LDR             R0, [R5,#0x18]
5170BA:  CBZ             R0, loc_517100
5170BC:  LDR.W           R2, =(g_fxMan_ptr - 0x5170CE)
5170C0:  MOVW            R3, #0xCCCD
5170C4:  LDR             R0, [R0,#4]
5170C6:  MOVT            R3, #0x3DCC
5170CA:  ADD             R2, PC; g_fxMan_ptr
5170CC:  LDR.W           R1, =(aExhale - 0x5170DC); "exhale"
5170D0:  STR             R3, [SP,#0xA0+var_68]
5170D2:  ADD.W           R3, R0, #0x10; int
5170D6:  LDR             R0, [R2]; g_fxMan ; int
5170D8:  ADD             R1, PC; "exhale"
5170DA:  ADD             R2, SP, #0xA0+var_6C; int
5170DC:  MOVS            R4, #0
5170DE:  STR             R4, [SP,#0xA0+var_6C]
5170E0:  STR             R4, [SP,#0xA0+var_64]
5170E2:  STR             R4, [SP,#0xA0+var_A0]; int
5170E4:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
5170E8:  MOV             R6, R0
5170EA:  CBZ             R6, loc_5170FC
5170EC:  MOV             R0, R6; this
5170EE:  MOV             R1, R5; CEntity *
5170F0:  MOVS            R2, #5; int
5170F2:  BLX             j__ZN10FxSystem_c12AttachToBoneEP7CEntityi; FxSystem_c::AttachToBone(CEntity *,int)
5170F6:  MOV             R0, R6; this
5170F8:  BLX             j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
5170FC:  STRB.W          R4, [R11,#0x48]
517100:  MOV             R0, R5; this
517102:  BLX             j__ZN7CEntity9IsVisibleEv; CEntity::IsVisible(void)
517106:  CMP             R0, #1
517108:  BNE.W           def_517492; jumptable 00517492 default case
51710C:  LDR.W           R0, =(g_ikChainMan_ptr - 0x517116)
517110:  MOV             R1, R5; CPed *
517112:  ADD             R0, PC; g_ikChainMan_ptr
517114:  LDR             R0, [R0]; g_ikChainMan ; this
517116:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
51711A:  CMP             R0, #0
51711C:  BNE             loc_5171F8
51711E:  BLX             rand
517122:  UXTH            R0, R0
517124:  VLDR            S16, =0.000015259
517128:  VMOV            S0, R0
51712C:  VLDR            S2, =100.0
517130:  VCVT.F32.S32    S0, S0
517134:  VMUL.F32        S0, S0, S16
517138:  VMUL.F32        S0, S0, S2
51713C:  VCVT.S32.F32    S0, S0
517140:  VMOV            R0, S0
517144:  CMP             R0, #0x60 ; '`'
517146:  BLT             loc_5171F8
517148:  BLX             rand
51714C:  MOV             R6, R0
51714E:  BLX             rand
517152:  UXTH            R0, R0
517154:  VMOV.F32        S4, #8.0
517158:  VMOV            S0, R0
51715C:  UXTH            R0, R6
51715E:  VMOV            S2, R0
517162:  VCVT.F32.S32    S0, S0
517166:  VCVT.F32.S32    S2, S2
51716A:  VMUL.F32        S0, S0, S16
51716E:  VMUL.F32        S2, S2, S16
517172:  VMUL.F32        S0, S0, S4
517176:  VLDR            S4, =2000.0
51717A:  VMUL.F32        S2, S2, S4
51717E:  VCVT.S32.F32    S0, S0
517182:  VCVT.F32.S32    S0, S0
517186:  VCVT.S32.F32    S2, S2
51718A:  VMOV            R0, S2
51718E:  ADDW            R0, R0, #0xBB8
517192:  VMOV            S2, R0
517196:  VCVT.F32.S32    S16, S2
51719A:  LDR.W           R0, [R11,#0xC]
51719E:  VCVT.S32.F32    S0, S0
5171A2:  ADDS            R0, #8; this
5171A4:  VMOV            R1, S0; int
5171A8:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
5171AC:  MOV             R3, R0
5171AE:  CMP             R3, R5
5171B0:  IT EQ
5171B2:  LDREQ.W         R3, [R11,#0x10]; int
5171B6:  CBZ             R3, loc_5171F8
5171B8:  LDR.W           R12, =(g_ikChainMan_ptr - 0x5171CA)
5171BC:  VCVT.S32.F32    S0, S16
5171C0:  MOVW            R0, #0x999A
5171C4:  MOVS            R1, #0
5171C6:  ADD             R12, PC; g_ikChainMan_ptr
5171C8:  MOVS            R6, #5
5171CA:  MOVT            R0, #0x3E19
5171CE:  MOVS            R2, #1
5171D0:  STRD.W          R6, R1, [SP,#0xA0+var_9C]; unsigned __int8
5171D4:  MOV.W           LR, #3
5171D8:  STRD.W          R2, R0, [SP,#0xA0+var_94]; int
5171DC:  MOV.W           R4, #0x1F4
5171E0:  LDR.W           R0, [R12]; g_ikChainMan ; int
5171E4:  MOV             R2, R5; CPed *
5171E6:  STRD.W          R4, LR, [SP,#0xA0+var_8C]; int
5171EA:  STR             R1, [SP,#0xA0+var_84]; int
5171EC:  ADR.W           R1, aTaskgangfollow; "TaskGangFollower"
5171F0:  VSTR            S0, [SP,#0xA0+var_A0]
5171F4:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
5171F8:  LDRB.W          R0, [R10]
5171FC:  LSLS            R0, R0, #0x1F
5171FE:  BEQ.W           def_517492; jumptable 00517492 default case
517202:  LDR.W           R0, [R5,#0x450]
517206:  CMP             R0, #5
517208:  BGT.W           def_517492; jumptable 00517492 default case
51720C:  MOV             R0, R5; this
51720E:  BLX             j__ZN4CPed29GetEntityThatThisPedIsHoldingEv; CPed::GetEntityThatThisPedIsHolding(void)
517212:  CMP             R0, #0
517214:  BEQ.W           loc_5173C2
517218:  STR             R0, [SP,#0xA0+var_74]
51721A:  MOVW            R1, #0x12B
51721E:  LDR             R0, [R5,#0x18]
517220:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
517224:  MOV             R6, R0
517226:  LDR             R0, [R5,#0x18]
517228:  MOV.W           R1, #0x12C
51722C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
517230:  MOV             R4, R0
517232:  LDR             R0, [R5,#0x18]
517234:  MOVW            R1, #0x12D
517238:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
51723C:  LDR             R1, [R5,#0x18]
51723E:  ORR.W           R2, R6, R4
517242:  ORR.W           R6, R2, R0
517246:  MOV             R0, R1
517248:  MOV.W           R1, #0x12E
51724C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
517250:  MOV             R10, R0
517252:  ORRS.W          R9, R6, R10
517256:  IT NE
517258:  MOVNE.W         R9, #1
51725C:  BEQ             loc_51728C
51725E:  LDR.W           R0, =(g_ikChainMan_ptr - 0x517268)
517262:  LDR             R5, [SP,#0xA0+var_70]
517264:  ADD             R0, PC; g_ikChainMan_ptr
517266:  LDR             R0, [R0]; g_ikChainMan ; this
517268:  MOV             R1, R5; CPed *
51726A:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
51726E:  CBZ             R0, loc_517280
517270:  LDR.W           R0, =(g_ikChainMan_ptr - 0x51727C)
517274:  MOV             R1, R5; CPed *
517276:  MOVS            R2, #0xFA; int
517278:  ADD             R0, PC; g_ikChainMan_ptr
51727A:  LDR             R0, [R0]; g_ikChainMan ; this
51727C:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
517280:  LDR.W           R0, [R8,#8]
517284:  ORR.W           R0, R0, #0x400000
517288:  STR.W           R0, [R8,#8]
51728C:  ORRS.W          R0, R4, R10
517290:  BEQ             loc_5172DC
517292:  CBZ             R4, loc_5172A6
517294:  VMOV.F32        S0, #0.5
517298:  VLDR            S2, [R4,#0x20]
51729C:  VCMPE.F32       S2, S0
5172A0:  VMRS            APSR_nzcv, FPSCR
5172A4:  BLT             loc_5172BE
5172A6:  CMP.W           R10, #0
5172AA:  BEQ             loc_5172DC
5172AC:  VMOV.F32        S0, #0.5
5172B0:  VLDR            S2, [R10,#0x20]
5172B4:  VCMPE.F32       S2, S0
5172B8:  VMRS            APSR_nzcv, FPSCR
5172BC:  BGE             loc_5172DC
5172BE:  LDRB.W          R0, [R11,#0x48]
5172C2:  CBNZ            R0, loc_5172DC
5172C4:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5172D0)
5172C8:  MOVW            R1, #0xA8C
5172CC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5172CE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5172D0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5172D2:  STRD.W          R0, R1, [R11,#0x40]
5172D6:  MOVS            R0, #1
5172D8:  STRB.W          R0, [R11,#0x48]
5172DC:  LDR             R0, [SP,#0xA0+var_70]
5172DE:  MOVW            R1, #0x4BB; int
5172E2:  LDR.W           R0, [R0,#0x440]
5172E6:  ADDS            R0, #4; this
5172E8:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
5172EC:  CMP             R0, #0
5172EE:  BNE.W           def_517492; jumptable 00517492 default case
5172F2:  BLX             rand
5172F6:  UXTH            R0, R0
5172F8:  VLDR            S16, =0.000015259
5172FC:  VMOV            S0, R0
517300:  VLDR            S18, =500.0
517304:  VCVT.F32.S32    S0, S0
517308:  VMUL.F32        S0, S0, S16
51730C:  VMUL.F32        S0, S0, S18
517310:  VCVT.S32.F32    S0, S0
517314:  VMOV            R0, S0
517318:  CMP             R0, #0xC8
51731A:  BNE.W           loc_5175A6
51731E:  LDR             R1, [SP,#0xA0+var_70]; CPed *
517320:  CMP.W           R9, #0
517324:  BNE.W           def_517492; jumptable 00517492 default case
517328:  ADD.W           R9, SP, #0xA0+var_6C
51732C:  LDR.W           R0, [R11,#0xC]; this
517330:  MOV             R2, R9; float *
517332:  BLX             j__ZN9CPedGroup18GetClosestGroupPedEP4CPedPf; CPedGroup::GetClosestGroupPed(CPed *,float *)
517336:  MOV             R8, R0
517338:  CMP.W           R8, #0
51733C:  BEQ.W           def_517492; jumptable 00517492 default case
517340:  VMOV.F32        S2, #4.0
517344:  VLDR            S0, [SP,#0xA0+var_6C]
517348:  VCMPE.F32       S0, S2
51734C:  VMRS            APSR_nzcv, FPSCR
517350:  BGE.W           def_517492; jumptable 00517492 default case
517354:  LDR             R0, [SP,#0xA0+var_70]; this
517356:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
51735A:  CMP             R0, #1
51735C:  BEQ.W           def_517492; jumptable 00517492 default case
517360:  MOV             R0, R8; this
517362:  BLX             j__ZN4CPed29GetEntityThatThisPedIsHoldingEv; CPed::GetEntityThatThisPedIsHolding(void)
517366:  CMP             R0, #0
517368:  BNE.W           def_517492; jumptable 00517492 default case
51736C:  LDRSB.W         R0, [R8,#0x71C]
517370:  RSB.W           R0, R0, R0,LSL#3
517374:  ADD.W           R0, R8, R0,LSL#2
517378:  LDR.W           R0, [R0,#0x5A4]
51737C:  CMP             R0, #0
51737E:  BNE.W           def_517492; jumptable 00517492 default case
517382:  LDR.W           R0, =(MI_GANG_DRINK_ptr - 0x51738A)
517386:  ADD             R0, PC; MI_GANG_DRINK_ptr
517388:  LDR             R1, [R0]; MI_GANG_DRINK
51738A:  LDR             R0, [SP,#0xA0+var_74]
51738C:  LDRH            R1, [R1]
51738E:  LDRSH.W         R0, [R0,#0x26]
517392:  CMP             R0, R1
517394:  BNE.W           loc_517696
517398:  BLX             rand
51739C:  UXTH            R0, R0
51739E:  VMOV            S0, R0
5173A2:  VCVT.F32.S32    S0, S0
5173A6:  VMUL.F32        S0, S0, S16
5173AA:  VMUL.F32        S0, S0, S18
5173AE:  VCVT.S32.F32    S0, S0
5173B2:  VMOV            R0, S0
5173B6:  CMP             R0, #0xF9
5173B8:  BGT.W           loc_5176D4
5173BC:  MOVS            R0, #0
5173BE:  MOVS            R1, #0x18
5173C0:  B               loc_5176C8
5173C2:  MOV             R0, R5; this
5173C4:  BLX             j__ZN4CPed19IsPlayingHandSignalEv; CPed::IsPlayingHandSignal(void)
5173C8:  CMP             R0, #0
5173CA:  BNE.W           def_517492; jumptable 00517492 default case
5173CE:  LDR.W           R0, [R5,#0x440]
5173D2:  MOVS            R1, #4; int
5173D4:  ADDS            R0, #4; this
5173D6:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5173DA:  CMP             R0, #0
5173DC:  BNE.W           def_517492; jumptable 00517492 default case
5173E0:  MOV             R8, R5
5173E2:  BLX             rand
5173E6:  UXTH            R0, R0
5173E8:  VLDR            S16, =0.000015259
5173EC:  VMOV            S0, R0
5173F0:  VLDR            S2, =500.0
5173F4:  VCVT.F32.S32    S0, S0
5173F8:  VMUL.F32        S0, S0, S16
5173FC:  VMUL.F32        S0, S0, S2
517400:  VCVT.S32.F32    S0, S0
517404:  VMOV            R0, S0
517408:  SUB.W           R1, R0, #0x33 ; '3'; unsigned int
51740C:  CMP             R1, #4
51740E:  BHI.W           loc_5175F6
517412:  MOV             R5, R8
517414:  MOVS            R0, #dword_20; this
517416:  LDR.W           R4, [R5,#0x440]
51741A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51741E:  MOV             R6, R0
517420:  BLX             rand
517424:  UXTH            R0, R0
517426:  VMOV.F32        S2, #8.0
51742A:  VMOV            S0, R0
51742E:  MOVS            R0, #0
517430:  MOVS            R1, #0x34 ; '4'
517432:  MOV.W           R3, #0x40800000
517436:  VCVT.F32.S32    S0, S0
51743A:  VMUL.F32        S0, S0, S16
51743E:  VMUL.F32        S0, S0, S2
517442:  VCVT.S32.F32    S0, S0
517446:  STR             R0, [SP,#0xA0+var_A0]
517448:  VMOV            R0, S0
51744C:  ADDW            R2, R0, #0x117
517450:  MOV             R0, R6
517452:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
517456:  ADDS            R0, R4, #4; this
517458:  MOV             R1, R6; CTask *
51745A:  MOVS            R2, #4; int
51745C:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
517460:  LDR.W           R0, [R5,#0x450]
517464:  CMP             R0, #1
517466:  BNE.W           def_517492; jumptable 00517492 default case
51746A:  BLX             rand
51746E:  UXTH            R0, R0
517470:  VMOV.F32        S2, #10.0
517474:  VMOV            S0, R0
517478:  VCVT.F32.S32    S0, S0
51747C:  VMUL.F32        S0, S0, S16
517480:  VMUL.F32        S0, S0, S2
517484:  VCVT.S32.F32    S0, S0
517488:  VMOV            R0, S0
51748C:  CMP             R0, #9; switch 10 cases
51748E:  BHI.W           def_517492; jumptable 00517492 default case
517492:  TBH.W           [PC,R0,LSL#1]; switch jump
517496:  DCW 0xE5; jump table for switch statement
517498:  DCW 0xE5
51749A:  DCW 0xE5
51749C:  DCW 0xE2
51749E:  DCW 0xE2
5174A0:  DCW 0xE2
5174A2:  DCW 0xE2
5174A4:  DCW 0xE2
5174A6:  DCW 0xE8
5174A8:  DCW 0xEB
5174AA:  VADD.F32        S4, S4, S4
5174AE:  LDR             R5, [SP,#0xA0+var_7C]
5174B0:  VADD.F32        S2, S2, S2
5174B4:  VADD.F32        S0, S0, S0
5174B8:  CMP             R5, #0
5174BA:  VADD.F32        S26, S26, S4
5174BE:  VADD.F32        S22, S22, S2
5174C2:  VADD.F32        S24, S24, S0
5174C6:  BEQ             loc_5174E6
5174C8:  VLDR            S0, =-0.0125
5174CC:  VLDR            S2, [R5,#0x24]
5174D0:  VLDR            S4, =0.85
5174D4:  VADD.F32        S0, S2, S0
5174D8:  VMAX.F32        D0, D0, D2
5174DC:  VSTR            S0, [R5,#0x24]
5174E0:  MOV.W           R9, #1
5174E4:  B               loc_5174EA
5174E6:  MOV.W           R9, #0
5174EA:  LDR             R0, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x5174F4)
5174EC:  VLDR            S2, [R6,#0xC]
5174F0:  ADD             R0, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
5174F2:  VCMP.F32        S2, S24
5174F6:  LDR             R0, [R0]; CTaskSimpleGoTo::ms_fTargetRadius ...
5174F8:  VMRS            APSR_nzcv, FPSCR
5174FC:  VLDR            S0, [R0]
517500:  BNE             loc_51752C
517502:  VLDR            S2, [R6,#0x10]
517506:  VCMP.F32        S2, S22
51750A:  VMRS            APSR_nzcv, FPSCR
51750E:  ITTT EQ
517510:  VLDREQ          S2, [R6,#0x14]
517514:  VCMPEQ.F32      S2, S26
517518:  VMRSEQ          APSR_nzcv, FPSCR
51751C:  BNE             loc_51752C
51751E:  VLDR            S2, [R6,#0x18]
517522:  VCMP.F32        S2, S0
517526:  VMRS            APSR_nzcv, FPSCR
51752A:  BEQ             loc_517548
51752C:  LDRB            R0, [R6,#0x1C]
51752E:  VSTR            S24, [R6,#0xC]
517532:  AND.W           R0, R0, #0xD0
517536:  VSTR            S22, [R6,#0x10]
51753A:  VSTR            S26, [R6,#0x14]
51753E:  ORR.W           R0, R0, #0x20 ; ' '
517542:  VSTR            S0, [R6,#0x18]
517546:  STRB            R0, [R6,#0x1C]
517548:  VLDR            S0, =64.0
51754C:  VCMPE.F32       S20, S0
517550:  VMRS            APSR_nzcv, FPSCR
517554:  BGE.W           loc_516D32
517558:  LDR             R0, [SP,#0xA0+var_78]
51755A:  LDR.W           R10, [SP,#0xA0+var_74]
51755E:  CMP             R0, #9
517560:  BLT.W           loc_516D36
517564:  LDR.W           R0, [R11,#8]
517568:  MOVS            R2, #1
51756A:  MOVS            R3, #0
51756C:  MOVS            R4, #0
51756E:  LDR             R1, [R0]
517570:  LDR             R6, [R1,#0x1C]
517572:  LDR             R1, [SP,#0xA0+var_70]
517574:  BLX             R6
517576:  CMP             R0, #0
517578:  BEQ.W           loc_516D36
51757C:  MOVS            R0, #dword_20; this
51757E:  VSTR            S18, [R11,#0x20]
517582:  VSTR            S16, [R11,#0x24]
517586:  STR.W           R4, [R11,#0x28]
51758A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51758E:  MOV             R4, R0
517590:  MOV.W           R0, #0x41000000
517594:  STR             R0, [SP,#0xA0+var_A0]; float
517596:  MOV             R0, R4; this
517598:  MOV.W           R1, #0x1F4; int
51759C:  MOVS            R2, #0; bool
51759E:  MOVS            R3, #0; bool
5175A0:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5175A4:  B               loc_517686
5175A6:  BLX             rand
5175AA:  UXTH            R0, R0
5175AC:  VLDR            S2, =100.0
5175B0:  VMOV            S0, R0
5175B4:  VCVT.F32.S32    S0, S0
5175B8:  VMUL.F32        S0, S0, S16
5175BC:  VMUL.F32        S0, S0, S2
5175C0:  VCVT.S32.F32    S0, S0
5175C4:  LDR             R4, [SP,#0xA0+var_70]
5175C6:  VMOV            R0, S0
5175CA:  CMP             R0, #0x32 ; '2'
5175CC:  BNE             def_517492; jumptable 00517492 default case
5175CE:  LDR.W           R0, [R4,#0x440]
5175D2:  MOVW            R1, #0x133; int
5175D6:  ADDS            R0, #4; this
5175D8:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
5175DC:  MOV             R6, R0
5175DE:  CMP             R6, #0
5175E0:  BEQ             def_517492; jumptable 00517492 default case
5175E2:  LDR             R1, [SP,#0xA0+var_74]; CPed *
5175E4:  MOV             R0, R4; this
5175E6:  BLX             j__ZN22CTaskComplexGangLeader24GetRandomGangAmbientAnimEP4CPedP7CEntity; CTaskComplexGangLeader::GetRandomGangAmbientAnim(CPed *,CEntity *)
5175EA:  MOV             R1, R0
5175EC:  MOV             R0, R6
5175EE:  MOVS            R2, #0x34 ; '4'
5175F0:  BLX             j__ZN21CTaskSimpleHoldEntity8PlayAnimE11AnimationId12AssocGroupId; CTaskSimpleHoldEntity::PlayAnim(AnimationId,AssocGroupId)
5175F4:  B               def_517492; jumptable 00517492 default case
5175F6:  CMP             R0, #0x64 ; 'd'
5175F8:  MOV             R1, R8; unsigned int
5175FA:  ITT EQ
5175FC:  LDREQ.W         R0, [R1,#0x450]
517600:  CMPEQ           R0, #1
517602:  BNE             def_517492; jumptable 00517492 default case
517604:  MOVS            R0, #off_18; this
517606:  LDR.W           R4, [R1,#0x440]
51760A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51760E:  MOV.W           R1, #0xFFFFFFFF
517612:  MOV.W           R2, #0x40800000
517616:  MOV             R6, R0
517618:  BLX             j__ZN30CTaskComplexPlayHandSignalAnimC2E11AnimationIdf; CTaskComplexPlayHandSignalAnim::CTaskComplexPlayHandSignalAnim(AnimationId,float)
51761C:  ADDS            R0, R4, #4; this
51761E:  MOV             R1, R6; CTask *
517620:  MOVS            R2, #4; int
517622:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
517626:  BLX             rand
51762A:  UXTH            R0, R0
51762C:  VMOV.F32        S2, #10.0
517630:  VMOV            S0, R0
517634:  VCVT.F32.S32    S0, S0
517638:  VMUL.F32        S0, S0, S16
51763C:  VMUL.F32        S0, S0, S2
517640:  VCVT.S32.F32    S0, S0
517644:  VMOV            R0, S0
517648:  CMP             R0, #9; switch 10 cases
51764A:  BHI             def_517492; jumptable 00517492 default case
51764C:  TBB.W           [PC,R0]; switch jump
517650:  DCB 8; jump table for switch statement
517651:  DCB 8
517652:  DCB 8
517653:  DCB 5
517654:  DCB 5
517655:  DCB 5
517656:  DCB 5
517657:  DCB 5
517658:  DCB 0xB
517659:  DCB 0xE
51765A:  MOVS            R0, #0; jumptable 00517492 cases 3-7
51765C:  MOVS            R1, #0xA6
51765E:  B               loc_517670
517660:  MOVS            R0, #0; jumptable 00517492 cases 0-2
517662:  MOVS            R1, #0x2D ; '-'
517664:  B               loc_517670
517666:  MOVS            R0, #0; jumptable 00517492 case 8
517668:  MOVS            R1, #0x18
51766A:  B               loc_517670
51766C:  MOVS            R0, #0; jumptable 00517492 case 9
51766E:  MOVS            R1, #0xC9; unsigned __int16
517670:  STRD.W          R0, R0, [SP,#0xA0+var_A0]; unsigned __int8
517674:  STR             R0, [SP,#0xA0+var_98]; unsigned __int8
517676:  MOV             R0, R8; this
517678:  MOVS            R2, #0; unsigned int
51767A:  MOV.W           R3, #0x3F800000; float
51767E:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
517682:  LDR.W           R4, [R11,#8]; jumptable 00517492 default case
517686:  MOV             R0, R4
517688:  ADD             SP, SP, #0x48 ; 'H'
51768A:  VPOP            {D8-D14}
51768E:  ADD             SP, SP, #4
517690:  POP.W           {R8-R11}
517694:  POP             {R4-R7,PC}
517696:  LDR             R1, =(MI_GANG_SMOKE_ptr - 0x51769C)
517698:  ADD             R1, PC; MI_GANG_SMOKE_ptr
51769A:  LDR             R1, [R1]; MI_GANG_SMOKE
51769C:  LDRH            R1, [R1]
51769E:  CMP             R0, R1
5176A0:  BNE             loc_5176F2
5176A2:  BLX             rand
5176A6:  UXTH            R0, R0
5176A8:  VMOV            S0, R0
5176AC:  VCVT.F32.S32    S0, S0
5176B0:  VMUL.F32        S0, S0, S16
5176B4:  VMUL.F32        S0, S0, S18
5176B8:  VCVT.S32.F32    S0, S0
5176BC:  VMOV            R0, S0
5176C0:  CMP             R0, #0xF9
5176C2:  BGT             loc_5176DA
5176C4:  MOVS            R0, #0
5176C6:  MOVS            R1, #0xC9
5176C8:  STRD.W          R0, R0, [SP,#0xA0+var_A0]
5176CC:  MOVS            R2, #0
5176CE:  STR             R0, [SP,#0xA0+var_98]
5176D0:  MOV             R0, R8
5176D2:  B               loc_5176EA
5176D4:  MOVS            R0, #0
5176D6:  MOVS            R1, #0x17
5176D8:  B               loc_5176DE
5176DA:  MOVS            R0, #0
5176DC:  MOVS            R1, #0xC8; unsigned __int16
5176DE:  STRD.W          R0, R0, [SP,#0xA0+var_A0]; unsigned __int8
5176E2:  STR             R0, [SP,#0xA0+var_98]; unsigned __int8
5176E4:  LDR             R0, [SP,#0xA0+var_70]; this
5176E6:  MOVW            R2, #0x5DC; unsigned int
5176EA:  MOV.W           R3, #0x3F800000; float
5176EE:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
5176F2:  MOV             R0, R9; this
5176F4:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
5176F8:  LDR             R0, =(_ZTV16CEventPassObject_ptr - 0x517702)
5176FA:  ADD.W           R10, R9, #0xC
5176FE:  ADD             R0, PC; _ZTV16CEventPassObject_ptr
517700:  LDR             R1, [R0]; `vtable for'CEventPassObject ...
517702:  LDR             R0, [SP,#0xA0+var_70]; this
517704:  ADD.W           R6, R1, #8
517708:  MOV             R1, R10; CEntity **
51770A:  STR             R0, [SP,#0xA0+var_60]
51770C:  STR             R6, [SP,#0xA0+var_6C]
51770E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
517712:  MOVS            R5, #0
517714:  MOV             R1, R9; CEvent *
517716:  STRB.W          R5, [SP,#0xA0+var_5C]
51771A:  MOVS            R2, #0; bool
51771C:  LDR.W           R0, [R8,#0x440]
517720:  ADDS            R0, #0x68 ; 'h'; this
517722:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
517726:  MOVS            R0, #word_30; this
517728:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51772C:  MOV             R4, R0
51772E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
517732:  LDR             R0, =(_ZTV22CTaskComplexPassObject_ptr - 0x51773C)
517734:  MOVS            R1, #1
517736:  STRH            R5, [R4,#0x28]
517738:  ADD             R0, PC; _ZTV22CTaskComplexPassObject_ptr
51773A:  STRB            R1, [R4,#0x10]
51773C:  MOV             R1, R4
51773E:  STRD.W          R5, R5, [R4,#0x20]
517742:  LDR             R0, [R0]; `vtable for'CTaskComplexPassObject ...
517744:  ADDS            R0, #8
517746:  STR             R0, [R4]
517748:  STR.W           R8, [R1,#0xC]!; CEntity **
51774C:  MOV             R0, R8; this
51774E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
517752:  LDR             R0, [SP,#0xA0+var_60]; this
517754:  STR             R6, [SP,#0xA0+var_6C]
517756:  CMP             R0, #0
517758:  ITT NE
51775A:  MOVNE           R1, R10; CEntity **
51775C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
517760:  ADD             R0, SP, #0xA0+var_6C; this
517762:  BLX             j__ZN6CEventD2Ev_3; CEvent::~CEvent()
517766:  B               loc_517686
