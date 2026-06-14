; =========================================================
; Game Engine Function: _ZN33CVehiclePotentialCollisionScanner38ScanForVehiclePotentialCollisionEventsERK4CPedPP7CEntityi
; Address            : 0x4BBE28 - 0x4BC06C
; =========================================================

4BBE28:  PUSH            {R4-R7,LR}
4BBE2A:  ADD             R7, SP, #0xC
4BBE2C:  PUSH.W          {R8-R10}
4BBE30:  VPUSH           {D8-D12}
4BBE34:  SUB             SP, SP, #0x38; float *
4BBE36:  MOV             R9, R1
4BBE38:  LDRB            R1, [R0,#8]
4BBE3A:  CBNZ            R1, loc_4BBE50
4BBE3C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BBE46)
4BBE3E:  MOV.W           R2, #0x1F4
4BBE42:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BBE44:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4BBE46:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4BBE48:  STRD.W          R1, R2, [R0]
4BBE4C:  MOVS            R1, #1
4BBE4E:  STRB            R1, [R0,#8]
4BBE50:  LDRB            R1, [R0,#9]
4BBE52:  CBZ             R1, loc_4BBE64
4BBE54:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BBE5C)
4BBE56:  MOVS            R2, #0
4BBE58:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BBE5A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4BBE5C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4BBE5E:  STRB            R2, [R0,#9]
4BBE60:  STR             R1, [R0]
4BBE62:  B               loc_4BBE66
4BBE64:  LDR             R1, [R0]
4BBE66:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BBE6E)
4BBE68:  LDR             R3, [R0,#4]
4BBE6A:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BBE6C:  ADD             R1, R3
4BBE6E:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
4BBE70:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
4BBE72:  CMP             R1, R2
4BBE74:  BHI.W           loc_4BC060
4BBE78:  MOV.W           R1, #0x1F4
4BBE7C:  STRD.W          R2, R1, [R0]
4BBE80:  MOVS            R1, #1
4BBE82:  STRB            R1, [R0,#8]
4BBE84:  LDR.W           R0, [R9,#0x440]
4BBE88:  ADDS            R0, #4; this
4BBE8A:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BBE8E:  MOV             R10, R0
4BBE90:  CMP.W           R10, #0
4BBE94:  BEQ.W           loc_4BC060
4BBE98:  MOV             R0, R10; this
4BBE9A:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4BBE9E:  CMP             R0, #0
4BBEA0:  ITTT NE
4BBEA2:  LDRNE.W         R0, [R9,#0x440]
4BBEA6:  LDRNE.W         R8, [R0,#0x120]
4BBEAA:  CMPNE.W         R8, #0
4BBEAE:  BEQ.W           loc_4BC060
4BBEB2:  LDR.W           R0, [R8,#0x14]
4BBEB6:  ADD.W           R6, R9, #4
4BBEBA:  LDR.W           R1, [R9,#0x14]
4BBEBE:  ADD.W           R2, R0, #0x30 ; '0'
4BBEC2:  CMP             R0, #0
4BBEC4:  IT EQ
4BBEC6:  ADDEQ.W         R2, R8, #4
4BBECA:  CMP             R1, #0
4BBECC:  MOV             R0, R6
4BBECE:  VLDR            D8, [R2,#4]
4BBED2:  IT NE
4BBED4:  ADDNE.W         R0, R1, #0x30 ; '0'
4BBED8:  VLDR            S20, [R2]
4BBEDC:  VLDR            D9, [R0,#4]
4BBEE0:  VLDR            S22, [R0]
4BBEE4:  MOV             R0, R8; this
4BBEE6:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
4BBEEA:  LDR.W           R4, [R8,#0x14]
4BBEEE:  MOV             R5, R0
4BBEF0:  ADD             R0, SP, #0x78+var_4C; this
4BBEF2:  MOV             R2, R5; CVector *
4BBEF4:  MOV             R1, R4; CMatrix *
4BBEF6:  BLX             j__ZN7CVector12FromMultiplyERK7CMatrixRKS_; CVector::FromMultiply(CMatrix const&,CVector const&)
4BBEFA:  ADD.W           R2, R5, #0xC; CVector *
4BBEFE:  ADD             R0, SP, #0x78+var_58; this
4BBF00:  MOV             R1, R4; CMatrix *
4BBF02:  BLX             j__ZN7CVector12FromMultiplyERK7CMatrixRKS_; CVector::FromMultiply(CMatrix const&,CVector const&)
4BBF06:  LDR.W           R0, [R9,#0x14]
4BBF0A:  VMOV.F32        S24, #0.5
4BBF0E:  VLDR            S0, [R4,#0x20]
4BBF12:  CMP             R0, #0
4BBF14:  VLDR            S12, [SP,#0x78+var_58]
4BBF18:  VLDR            S2, [R4,#0x24]
4BBF1C:  VLDR            S14, [SP,#0x78+var_54]
4BBF20:  VMUL.F32        S12, S0, S12
4BBF24:  VLDR            S8, [R4,#0x28]
4BBF28:  VLDR            S1, [SP,#0x78+var_50]
4BBF2C:  IT NE
4BBF2E:  ADDNE.W         R6, R0, #0x30 ; '0'
4BBF32:  VLDR            S6, [R6]
4BBF36:  VMUL.F32        S14, S2, S14
4BBF3A:  VLDR            S10, [R6,#4]
4BBF3E:  VMUL.F32        S1, S8, S1
4BBF42:  VMUL.F32        S5, S0, S6
4BBF46:  VLDR            S4, [R6,#8]
4BBF4A:  VMUL.F32        S3, S2, S10
4BBF4E:  VADD.F32        S12, S12, S14
4BBF52:  VMUL.F32        S14, S8, S4
4BBF56:  VADD.F32        S3, S5, S3
4BBF5A:  VADD.F32        S12, S12, S1
4BBF5E:  VADD.F32        S14, S3, S14
4BBF62:  VSUB.F32        S12, S14, S12
4BBF66:  VCMPE.F32       S12, S24
4BBF6A:  VMRS            APSR_nzcv, FPSCR
4BBF6E:  BGE             loc_4BC060
4BBF70:  VNEG.F32        S2, S2
4BBF74:  VLDR            S12, [SP,#0x78+var_4C]
4BBF78:  VNEG.F32        S0, S0
4BBF7C:  VLDR            S14, [SP,#0x78+var_48]
4BBF80:  VNEG.F32        S8, S8
4BBF84:  VLDR            S1, [SP,#0x78+var_44]
4BBF88:  LDR.W           R0, [R8,#0x5A4]
4BBF8C:  CMP             R0, #6
4BBF8E:  VMUL.F32        S10, S10, S2
4BBF92:  VMUL.F32        S6, S6, S0
4BBF96:  VMUL.F32        S2, S14, S2
4BBF9A:  VMUL.F32        S0, S12, S0
4BBF9E:  VMUL.F32        S4, S4, S8
4BBFA2:  VMUL.F32        S8, S1, S8
4BBFA6:  VADD.F32        S6, S6, S10
4BBFAA:  VADD.F32        S0, S0, S2
4BBFAE:  VADD.F32        S2, S6, S4
4BBFB2:  VADD.F32        S4, S0, S8
4BBFB6:  VMOV.F32        S0, #5.0
4BBFBA:  VSUB.F32        S2, S2, S4
4BBFBE:  VMOV.F32        S4, #10.0
4BBFC2:  VCMPE.F32       S2, S24
4BBFC6:  IT EQ
4BBFC8:  VMOVEQ.F32      S0, S4
4BBFCC:  VMRS            APSR_nzcv, FPSCR
4BBFD0:  BGE             loc_4BC060
4BBFD2:  LDRB.W          R0, [R9,#0x48C]
4BBFD6:  LSLS            R0, R0, #0x1C
4BBFD8:  BMI             loc_4BC000
4BBFDA:  VSUB.F32        S2, S22, S20
4BBFDE:  VSUB.F32        D16, D9, D8
4BBFE2:  VMUL.F32        S0, S0, S0
4BBFE6:  VMUL.F32        D2, D16, D16
4BBFEA:  VMUL.F32        S2, S2, S2
4BBFEE:  VADD.F32        S2, S2, S4
4BBFF2:  VADD.F32        S2, S2, S5
4BBFF6:  VCMPE.F32       S2, S0
4BBFFA:  VMRS            APSR_nzcv, FPSCR
4BBFFE:  BGE             loc_4BC060
4BC000:  MOVS            R0, #0
4BC002:  ADD.W           R1, R10, #0xC; CPed *
4BC006:  ADD             R3, SP, #0x78+var_5C; CEntity *
4BC008:  STR             R0, [SP,#0x78+var_5C]
4BC00A:  MOV             R0, R9; this
4BC00C:  MOV             R2, R8; CVector *
4BC00E:  BLX             j__ZN20CPedGeometryAnalyser21GetIsLineOfSightClearERK4CPedRK7CVectorR7CEntityRf; CPedGeometryAnalyser::GetIsLineOfSightClear(CPed const&,CVector const&,CEntity &,float &)
4BC012:  VLDR            S0, [SP,#0x78+var_5C]
4BC016:  VCMPE.F32       S0, S24
4BC01A:  VMRS            APSR_nzcv, FPSCR
4BC01E:  BLE             loc_4BC060
4BC020:  CBNZ            R0, loc_4BC060
4BC022:  LDR.W           R0, [R9,#0x440]
4BC026:  ADDS            R0, #4; this
4BC028:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BC02C:  MOV             R6, R0
4BC02E:  CBZ             R6, loc_4BC040
4BC030:  MOV             R0, R6; this
4BC032:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4BC036:  CMP             R0, #0
4BC038:  ITE NE
4BC03A:  LDRNE           R2, [R6,#8]
4BC03C:  MOVEQ           R2, #1
4BC03E:  B               loc_4BC042
4BC040:  MOVS            R2, #1; int
4BC042:  ADD             R4, SP, #0x78+var_74
4BC044:  MOV             R1, R8; CVehicle *
4BC046:  MOV             R0, R4; this
4BC048:  BLX             j__ZN30CEventPotentialWalkIntoVehicleC2EP8CVehiclei; CEventPotentialWalkIntoVehicle::CEventPotentialWalkIntoVehicle(CVehicle *,int)
4BC04C:  LDR.W           R0, [R9,#0x440]
4BC050:  MOV             R1, R4; CEvent *
4BC052:  MOVS            R2, #0; bool
4BC054:  ADDS            R0, #0x68 ; 'h'; this
4BC056:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BC05A:  MOV             R0, R4; this
4BC05C:  BLX             j__ZN30CEventPotentialWalkIntoVehicleD2Ev; CEventPotentialWalkIntoVehicle::~CEventPotentialWalkIntoVehicle()
4BC060:  ADD             SP, SP, #0x38 ; '8'
4BC062:  VPOP            {D8-D12}
4BC066:  POP.W           {R8-R10}
4BC06A:  POP             {R4-R7,PC}
