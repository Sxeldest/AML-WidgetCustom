; =========================================================
; Game Engine Function: _ZN34CTaskSimpleCarSetPedSlowDraggedOut10ProcessPedEP4CPed
; Address            : 0x504AA4 - 0x504D2A
; =========================================================

504AA4:  PUSH            {R4-R7,LR}
504AA6:  ADD             R7, SP, #0xC
504AA8:  PUSH.W          {R8,R9,R11}
504AAC:  VPUSH           {D8-D9}
504AB0:  SUB             SP, SP, #0x28
504AB2:  MOV             R4, R1
504AB4:  MOV             R5, R0
504AB6:  LDR.W           R0, [R4,#0x590]
504ABA:  CMP             R0, #0
504ABC:  ITT NE
504ABE:  LDRNE           R0, [R5,#8]; this
504AC0:  CMPNE           R0, #0
504AC2:  BEQ.W           loc_504D1C
504AC6:  LDR             R1, [R5,#0xC]; CVehicle *
504AC8:  MOVS            R2, #1; int
504ACA:  BLX             j__ZN13CCarEnterExit15ComputeDoorFlagERK8CVehicleib; CCarEnterExit::ComputeDoorFlag(CVehicle const&,int,bool)
504ACE:  LDR             R0, [R5,#8]; this
504AD0:  LDR.W           R1, [R0,#0x464]
504AD4:  CMP             R1, R4
504AD6:  BEQ             loc_504B00
504AD8:  LDRB.W          R1, [R0,#0x48C]
504ADC:  CBZ             R1, loc_504B30
504ADE:  MOVS            R6, #0
504AE0:  ADD.W           R1, R0, R6,LSL#2
504AE4:  LDR.W           R1, [R1,#0x468]
504AE8:  CMP             R1, R4
504AEA:  BNE             loc_504AF4
504AEC:  MOV             R1, R4; CPed *
504AEE:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
504AF2:  LDR             R0, [R5,#8]
504AF4:  LDRB.W          R1, [R0,#0x48C]
504AF8:  ADDS            R6, #1
504AFA:  CMP             R6, R1
504AFC:  BLT             loc_504AE0
504AFE:  B               loc_504B30
504B00:  MOVS            R1, #1; bool
504B02:  MOVS            R6, #1
504B04:  BLX             j__ZN8CVehicle12RemoveDriverEb; CVehicle::RemoveDriver(bool)
504B08:  LDR             R0, [R5,#8]
504B0A:  LDR.W           R1, [R0,#0x508]
504B0E:  CMP             R1, #5
504B10:  IT EQ
504B12:  STREQ.W         R6, [R0,#0x508]
504B16:  LDR.W           R0, [R4,#0x59C]
504B1A:  CMP             R0, #6
504B1C:  BNE             loc_504B30
504B1E:  LDR             R0, [R5,#8]; this
504B20:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
504B24:  CMP             R0, #0
504B26:  ITTT NE
504B28:  LDRNE           R0, [R5,#8]; this
504B2A:  MOVNE           R1, #0; unsigned __int8
504B2C:  BLXNE           j__ZN8CVehicle22ChangeLawEnforcerStateEh; CVehicle::ChangeLawEnforcerState(uchar)
504B30:  LDR.W           R0, [R4,#0x484]
504B34:  BIC.W           R0, R0, #0x100
504B38:  STR.W           R0, [R4,#0x484]
504B3C:  MOV             R0, R4; this
504B3E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
504B42:  CMP             R0, #1
504B44:  BNE             loc_504B58
504B46:  MOVS            R0, #dword_34; this
504B48:  LDR.W           R8, [R4,#0x440]
504B4C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
504B50:  MOV             R6, R0
504B52:  BLX             j__ZN23CTaskSimplePlayerOnFootC2Ev; CTaskSimplePlayerOnFoot::CTaskSimplePlayerOnFoot(void)
504B56:  B               loc_504B84
504B58:  LDRB.W          R0, [R4,#0x448]
504B5C:  LDR.W           R8, [R4,#0x440]
504B60:  CMP             R0, #2
504B62:  BNE             loc_504B8C
504B64:  MOVS            R0, #dword_20; this
504B66:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
504B6A:  MOVW            R1, #:lower16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
504B6E:  MOV             R6, R0
504B70:  MOV.W           R0, #0x41000000
504B74:  MOVT            R1, #:upper16:(aZn6cworld51fin+0x25); int
504B78:  STR             R0, [SP,#0x50+var_50]; float
504B7A:  MOV             R0, R6; this
504B7C:  MOVS            R2, #1; bool
504B7E:  MOVS            R3, #0; bool
504B80:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
504B84:  ADD.W           R0, R8, #4
504B88:  MOV             R1, R6
504B8A:  B               loc_504B98
504B8C:  MOV             R0, R4; this
504B8E:  BLX             j__ZN18CTaskComplexWander22GetWanderTaskByPedTypeERK4CPed; CTaskComplexWander::GetWanderTaskByPedType(CPed const&)
504B92:  MOV             R1, R0; CTask *
504B94:  ADD.W           R0, R8, #4; this
504B98:  MOVS            R2, #4; int
504B9A:  MOVS            R3, #0; bool
504B9C:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
504BA0:  MOV             R0, R4; this
504BA2:  BLX             j__ZN4CPed22RestartNonPartialAnimsEv; CPed::RestartNonPartialAnims(void)
504BA6:  LDR             R0, [R4,#0x1C]
504BA8:  ORR.W           R0, R0, #1
504BAC:  STR             R0, [R4,#0x1C]
504BAE:  MOV             R0, R4; this
504BB0:  BLX             j__ZN4CPed24UpdateStatLeavingVehicleEv; CPed::UpdateStatLeavingVehicle(void)
504BB4:  MOV             R0, R4; this
504BB6:  BLX             j__ZN4CPed31ReplaceWeaponWhenExitingVehicleEv; CPed::ReplaceWeaponWhenExitingVehicle(void)
504BBA:  LDR             R0, =(_ZN13CCarEnterExit24ms_vecPedGetUpAnimOffsetE_ptr - 0x504BC2)
504BBC:  LDR             R1, [R5,#0xC]
504BBE:  ADD             R0, PC; _ZN13CCarEnterExit24ms_vecPedGetUpAnimOffsetE_ptr
504BC0:  LDR.W           R8, [R4,#0x14]
504BC4:  LDR             R0, [R0]; CCarEnterExit::ms_vecPedGetUpAnimOffset ...
504BC6:  VLDR            S16, [R0]
504BCA:  VLDR            S18, [R0,#4]
504BCE:  BIC.W           R0, R1, #1
504BD2:  CMP             R0, #8
504BD4:  BNE             loc_504BF2
504BD6:  LDR             R0, [R5,#8]
504BD8:  MOVS            R2, #0x94
504BDA:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x504BE4)
504BDC:  LDR.W           R0, [R0,#0x388]
504BE0:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
504BE2:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
504BE4:  LDRB.W          R0, [R0,#0xDE]
504BE8:  SMLABB.W        R1, R0, R2, R1
504BEC:  ADD             R0, SP, #0x50+var_48
504BEE:  MOVS            R2, #6
504BF0:  B               loc_504C0C
504BF2:  LDR             R0, [R5,#8]
504BF4:  MOVS            R2, #0x94
504BF6:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x504C00)
504BF8:  LDR.W           R0, [R0,#0x388]
504BFC:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
504BFE:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
504C00:  LDRB.W          R0, [R0,#0xDE]
504C04:  SMLABB.W        R1, R0, R2, R1; int
504C08:  ADD             R0, SP, #0x50+var_48; this
504C0A:  MOVS            R2, #5
504C0C:  BLX             j__ZN17CVehicleAnimGroup22ComputeAnimDoorOffsetsEi; CVehicleAnimGroup::ComputeAnimDoorOffsets(int)
504C10:  VLDR            D16, [SP,#0x50+var_48]
504C14:  ADD.W           R9, SP, #0x50+var_48
504C18:  LDR             R0, [SP,#0x50+var_40]
504C1A:  ADD             R2, SP, #0x50+var_38
504C1C:  STR             R0, [SP,#0x50+var_30]
504C1E:  MOVS            R6, #0
504C20:  VSTR            D16, [SP,#0x50+var_38]
504C24:  MOV             R0, R9; CMatrix *
504C26:  VLDR            S0, [SP,#0x50+var_38]
504C2A:  MOV             R1, R8; CVector *
504C2C:  VLDR            S2, [SP,#0x50+var_38+4]
504C30:  VSUB.F32        S0, S0, S16
504C34:  VSUB.F32        S2, S2, S18
504C38:  VSTR            S0, [SP,#0x50+var_38]
504C3C:  STR             R6, [SP,#0x50+var_30]
504C3E:  VSTR            S2, [SP,#0x50+var_38+4]
504C42:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
504C46:  LDR             R0, [R4,#0x14]
504C48:  VLDR            S0, [SP,#0x50+var_48]
504C4C:  ADD.W           R1, R0, #0x30 ; '0'
504C50:  CMP             R0, #0
504C52:  VLDR            S2, [SP,#0x50+var_48+4]
504C56:  MOV             R0, R9; this
504C58:  VLDR            S4, [SP,#0x50+var_40]
504C5C:  IT EQ
504C5E:  ADDEQ           R1, R4, #4; CVector *
504C60:  VLDR            S6, [R1]
504C64:  VLDR            S8, [R1,#4]
504C68:  VADD.F32        S0, S6, S0
504C6C:  VLDR            S10, [R1,#8]
504C70:  VSTR            S0, [SP,#0x50+var_48]
504C74:  VADD.F32        S0, S8, S2
504C78:  VSTR            S0, [SP,#0x50+var_48+4]
504C7C:  VADD.F32        S0, S10, S4
504C80:  VSTR            S0, [SP,#0x50+var_40]
504C84:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
504C88:  LDR             R1, [R4,#0x14]
504C8A:  STRD.W          R6, R6, [R4,#0x48]
504C8E:  STR             R6, [R4,#0x50]
504C90:  CMP             R1, #0
504C92:  LDRD.W          R3, R2, [SP,#0x50+var_48]
504C96:  LDR             R0, [SP,#0x50+var_40]
504C98:  BEQ             loc_504CA6
504C9A:  STR             R3, [R1,#0x30]
504C9C:  LDR             R1, [R4,#0x14]
504C9E:  STR             R2, [R1,#0x34]
504CA0:  LDR             R1, [R4,#0x14]
504CA2:  ADDS            R1, #0x38 ; '8'
504CA4:  B               loc_504CAE
504CA6:  ADD.W           R1, R4, #0xC
504CAA:  STRD.W          R3, R2, [R4,#4]
504CAE:  STR             R0, [R1]
504CB0:  ADDW            R6, R4, #0x484
504CB4:  LDR             R0, [R5,#8]
504CB6:  LDR             R1, [R0,#0x14]
504CB8:  CBZ             R1, loc_504CCC
504CBA:  LDRD.W          R0, R1, [R1,#0x10]; x
504CBE:  EOR.W           R0, R0, #0x80000000; y
504CC2:  BLX             atan2f
504CC6:  VMOV            S0, R0
504CCA:  B               loc_504CD0
504CCC:  VLDR            S0, [R0,#0x10]
504CD0:  ADDW            R0, R4, #0x55C
504CD4:  VSTR            S0, [R0]
504CD8:  ADD.W           R0, R4, #0x560
504CDC:  VSTR            S0, [R0]
504CE0:  MOV             R0, R4; this
504CE2:  BLX             j__ZN4CPed23CalculateNewOrientationEv; CPed::CalculateNewOrientation(void)
504CE6:  LDRD.W          R0, R1, [R5,#8]; CVehicle *
504CEA:  ADD             R2, SP, #0x50+var_38; int
504CEC:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
504CF0:  CBNZ            R0, loc_504CFE
504CF2:  LDRD.W          R2, R1, [R5,#8]; CVehicle *
504CF6:  MOV             R0, R4; this
504CF8:  MOVS            R3, #1; bool
504CFA:  BLX             j__ZN4CPed25PositionPedOutOfCollisionEiP8CVehicleb; CPed::PositionPedOutOfCollision(int,CVehicle *,bool)
504CFE:  LDR             R0, [R6,#8]
504D00:  MOVS            R1, #1
504D02:  MOVS            R5, #1
504D04:  ORR.W           R0, R0, #8
504D08:  STR             R0, [R6,#8]
504D0A:  MOV             R0, R4; CPed *
504D0C:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
504D10:  LDR             R0, [R4]
504D12:  STR.W           R5, [R4,#0x53C]
504D16:  LDR             R1, [R0,#0x60]
504D18:  MOV             R0, R4
504D1A:  BLX             R1
504D1C:  MOVS            R0, #1
504D1E:  ADD             SP, SP, #0x28 ; '('
504D20:  VPOP            {D8-D9}
504D24:  POP.W           {R8,R9,R11}
504D28:  POP             {R4-R7,PC}
