; =========================================================
; Game Engine Function: _ZN30CTaskSimpleCarSetPedInAsDriver10ProcessPedEP4CPed
; Address            : 0x502D5C - 0x503110
; =========================================================

502D5C:  PUSH            {R4-R7,LR}
502D5E:  ADD             R7, SP, #0xC
502D60:  PUSH.W          {R8-R11}
502D64:  SUB             SP, SP, #0x1C
502D66:  MOV             R4, R1
502D68:  MOV             R10, R0
502D6A:  LDR.W           R0, [R4,#0x590]; this
502D6E:  ADD.W           R6, R4, #0x590
502D72:  CMP             R0, #0
502D74:  ITT NE
502D76:  MOVNE           R1, R6; CEntity **
502D78:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
502D7C:  LDR.W           R0, [R10,#0x10]; this
502D80:  MOV             R1, R6; CEntity **
502D82:  STR.W           R0, [R4,#0x590]
502D86:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
502D8A:  LDR.W           R0, [R10,#0x10]
502D8E:  LDR.W           R0, [R0,#0x464]
502D92:  CMP             R0, R4
502D94:  IT NE
502D96:  CMPNE           R0, #0
502D98:  BEQ             loc_502E68
502D9A:  LDR.W           R0, [R0,#0x440]
502D9E:  MOV.W           R1, #0x2C0; int
502DA2:  ADDS            R0, #4; this
502DA4:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
502DA8:  CMP             R0, #0
502DAA:  BNE             loc_502E68
502DAC:  LDR.W           R0, [R10,#0x10]
502DB0:  MOV.W           R1, #0x338; int
502DB4:  LDR.W           R0, [R0,#0x464]
502DB8:  LDR.W           R0, [R0,#0x440]
502DBC:  ADDS            R0, #4; this
502DBE:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
502DC2:  CMP             R0, #0
502DC4:  BNE             loc_502E68
502DC6:  LDR.W           R0, [R10,#0x10]
502DCA:  MOVW            R1, #0x2C1; int
502DCE:  LDR.W           R0, [R0,#0x464]
502DD2:  LDR.W           R0, [R0,#0x440]
502DD6:  ADDS            R0, #4; this
502DD8:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
502DDC:  CMP             R0, #0
502DDE:  BNE             loc_502E68
502DE0:  LDR.W           R0, [R10,#0x10]
502DE4:  MOVW            R1, #0x33A; int
502DE8:  LDR.W           R0, [R0,#0x464]
502DEC:  LDR.W           R0, [R0,#0x440]
502DF0:  ADDS            R0, #4; this
502DF2:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
502DF6:  CBNZ            R0, loc_502E68
502DF8:  LDR.W           R6, [R10,#0x10]
502DFC:  LDR.W           R1, [R6,#0x464]; CVehicle *
502E00:  MOV             R0, R6; this
502E02:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
502E06:  ADD.W           R9, SP, #0x38+var_34
502E0A:  MOV             R8, R0
502E0C:  MOV             R0, R9; this
502E0E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
502E12:  LDR             R0, =(_ZTV23CTaskSimpleCarSetPedOut_ptr - 0x502E1E)
502E14:  MOV.W           R11, #1
502E18:  STR             R6, [SP,#0x38+var_2C]
502E1A:  ADD             R0, PC; _ZTV23CTaskSimpleCarSetPedOut_ptr
502E1C:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedOut ...
502E1E:  ADD.W           R5, R0, #8
502E22:  STR             R5, [SP,#0x38+var_34]
502E24:  STR.W           R8, [SP,#0x38+var_28]
502E28:  ADD.W           R8, R9, #8
502E2C:  MOVS            R0, #0
502E2E:  STRB.W          R11, [SP,#0x38+var_24]
502E32:  STRB.W          R0, [SP,#0x38+var_1F]
502E36:  MOV             R1, R8; CEntity **
502E38:  STR.W           R0, [SP,#0x38+var_23]
502E3C:  MOV             R0, R6; this
502E3E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
502E42:  STRB.W          R11, [SP,#0x38+var_23]
502E46:  LDR.W           R0, [R10,#0x10]
502E4A:  LDR.W           R1, [R0,#0x464]; CPed *
502E4E:  MOV             R0, R9; this
502E50:  BLX             j__ZN23CTaskSimpleCarSetPedOut10ProcessPedEP4CPed; CTaskSimpleCarSetPedOut::ProcessPed(CPed *)
502E54:  LDR             R0, [SP,#0x38+var_2C]; this
502E56:  STR             R5, [SP,#0x38+var_34]
502E58:  CMP             R0, #0
502E5A:  ITT NE
502E5C:  MOVNE           R1, R8; CEntity **
502E5E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
502E62:  ADD             R0, SP, #0x38+var_34; this
502E64:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
502E68:  LDR.W           R0, [R4,#0x55C]
502E6C:  STR.W           R0, [R4,#0x560]
502E70:  LDRB.W          R0, [R10,#0x18]
502E74:  CBZ             R0, loc_502EA8
502E76:  LDR.W           R0, [R10,#0x10]
502E7A:  LDR             R1, [R4,#0x14]
502E7C:  LDR             R2, [R0,#0x14]
502E7E:  ADD.W           R6, R2, #0x30 ; '0'
502E82:  CMP             R2, #0
502E84:  IT EQ
502E86:  ADDEQ           R6, R0, #4
502E88:  CMP             R1, #0
502E8A:  LDRD.W          R3, R2, [R6]
502E8E:  LDR             R0, [R6,#8]
502E90:  BEQ             loc_502E9E
502E92:  STR             R3, [R1,#0x30]
502E94:  LDR             R1, [R4,#0x14]
502E96:  STR             R2, [R1,#0x34]
502E98:  LDR             R1, [R4,#0x14]
502E9A:  ADDS            R1, #0x38 ; '8'
502E9C:  B               loc_502EA6
502E9E:  ADD.W           R1, R4, #0xC; CPed *
502EA2:  STRD.W          R3, R2, [R4,#4]
502EA6:  STR             R0, [R1]
502EA8:  MOV             R0, R4; this
502EAA:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
502EAE:  MOV             R6, R0
502EB0:  CBZ             R6, loc_502F10
502EB2:  ADD.W           R0, R6, #8; this
502EB6:  MOV             R1, R4; CPed *
502EB8:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
502EBC:  CMP             R0, #1
502EBE:  ITT EQ
502EC0:  LDREQ           R0, [R6,#0x34]
502EC2:  CMPEQ           R0, #0
502EC4:  BNE             loc_502F10
502EC6:  MOVS            R0, #dword_14; this
502EC8:  ADD.W           R8, R6, #0x30 ; '0'
502ECC:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
502ED0:  MOV             R9, R0
502ED2:  LDR.W           R6, [R10,#0x10]
502ED6:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
502EDA:  LDR             R0, =(_ZTV30CEventLeaderEnteredCarAsDriver_ptr - 0x502EE4)
502EDC:  MOV             R1, R9
502EDE:  CMP             R6, #0
502EE0:  ADD             R0, PC; _ZTV30CEventLeaderEnteredCarAsDriver_ptr
502EE2:  LDR             R0, [R0]; `vtable for'CEventLeaderEnteredCarAsDriver ...
502EE4:  ADD.W           R0, R0, #8
502EE8:  STR.W           R0, [R1],#0x10; CEntity **
502EEC:  STR             R6, [R1]
502EEE:  ITT NE
502EF0:  MOVNE           R0, R6; this
502EF2:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
502EF6:  ADD             R6, SP, #0x38+var_34
502EF8:  MOV             R1, R4; CPed *
502EFA:  MOV             R2, R9; CEvent *
502EFC:  MOV             R0, R6; this
502EFE:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
502F02:  MOV             R0, R8; this
502F04:  MOV             R1, R6; CEvent *
502F06:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
502F0A:  MOV             R0, R6; this
502F0C:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
502F10:  LDR.W           R0, [R10,#0x10]; this
502F14:  MOV             R1, R4; CPed *
502F16:  BLX             j__ZN8CVehicle9SetDriverEP4CPed; CVehicle::SetDriver(CPed *)
502F1A:  LDR.W           R0, [R4,#0x484]
502F1E:  ORR.W           R0, R0, #0x100
502F22:  STR.W           R0, [R4,#0x484]
502F26:  MOV             R0, R4; this
502F28:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
502F2C:  CMP             R0, #1
502F2E:  BNE             loc_502F40
502F30:  LDR.W           R0, [R4,#0x444]
502F34:  MOVS            R1, #1
502F36:  STRB.W          R1, [R0,#0x8D]
502F3A:  MOV             R0, R4; this
502F3C:  BLX             j__ZN10CPlayerPed15ClearAdrenalineEv; CPlayerPed::ClearAdrenaline(void)
502F40:  MOV             R0, R4; this
502F42:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
502F46:  CMP             R0, #1
502F48:  BNE             loc_502F7E
502F4A:  LDR.W           R1, [R10,#0x10]
502F4E:  LDR.W           R0, [R1,#0x42C]
502F52:  TST.W           R0, #0x20000
502F56:  BNE             loc_502F7E
502F58:  LDR.W           R2, [R1,#0x430]
502F5C:  ADDW            R1, R1, #0x42C
502F60:  ORR.W           R0, R0, #0x20000
502F64:  STRD.W          R0, R2, [R1]
502F68:  MOV.W           R0, #0xFFFFFFFF; int
502F6C:  LDR.W           R6, [R10,#0x10]
502F70:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
502F74:  MOV             R2, R0
502F76:  MOVS            R0, #6
502F78:  MOV             R1, R6
502F7A:  BLX             j__ZN6CCrime11ReportCrimeE10eCrimeTypeP7CEntityP4CPed; CCrime::ReportCrime(eCrimeType,CEntity *,CPed *)
502F7E:  MOV             R0, R4; this
502F80:  BLX             j__ZN4CPed25UpdateStatEnteringVehicleEv; CPed::UpdateStatEnteringVehicle(void)
502F84:  MOV             R0, R4
502F86:  MOVS            R1, #0
502F88:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
502F8C:  LDR             R0, [R4]
502F8E:  LDR             R1, [R0,#0x60]
502F90:  MOV             R0, R4
502F92:  BLX             R1
502F94:  LDR             R0, [R4,#0x1C]
502F96:  MOVW            R2, #0xFFFF
502F9A:  BIC.W           R0, R0, #1
502F9E:  STR             R0, [R4,#0x1C]
502FA0:  LDR.W           R0, [R10,#0x10]
502FA4:  LDRH.W          R1, [R0,#0x460]
502FA8:  CMP             R1, R2
502FAA:  ITTT EQ
502FAC:  MOVWEQ          R1, #0x3A98
502FB0:  STRHEQ.W        R1, [R0,#0x460]
502FB4:  LDREQ.W         R0, [R10,#0x10]
502FB8:  LDR.W           R1, [R0,#0x42C]
502FBC:  LDR.W           R2, [R0,#0x430]
502FC0:  BIC.W           R3, R1, #0x10
502FC4:  TST.W           R2, #0x200
502FC8:  IT EQ
502FCA:  ORREQ.W         R3, R1, #0x10
502FCE:  MOVS            R1, #0x32 ; '2'
502FD0:  STR.W           R3, [R0,#0x42C]
502FD4:  MOV             R0, R4; CPed *
502FD6:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
502FDA:  MOV             R0, R4; this
502FDC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
502FE0:  LDR.W           R1, [R10,#0x10]
502FE4:  CMP             R0, #1
502FE6:  LDRB.W          R2, [R1,#0x3A]
502FEA:  BNE             loc_502FF2
502FEC:  AND.W           R0, R2, #7
502FF0:  B               loc_50301A
502FF2:  AND.W           R0, R2, #0xF8
502FF6:  CMP             R0, #0x10
502FF8:  BNE             loc_503002
502FFA:  LDRB.W          R0, [R4,#0x448]
502FFE:  CMP             R0, #2
503000:  BNE             loc_50301E
503002:  LDRB.W          R0, [R1,#0x3A]
503006:  LDR.W           R2, [R1,#0x5A4]
50300A:  AND.W           R0, R0, #7
50300E:  CMP             R2, #6
503010:  ITE NE
503012:  ORRNE.W         R0, R0, #0x18
503016:  ORREQ.W         R0, R0, #0x38 ; '8'
50301A:  STRB.W          R0, [R1,#0x3A]
50301E:  LDRB.W          R1, [R10,#0x19]; unsigned __int8
503022:  CMP             R1, #0
503024:  ITT NE
503026:  LDRNE.W         R0, [R10,#0x10]; this
50302A:  BLXNE           j__ZN8CVehicle19ClearGettingInFlagsEh; CVehicle::ClearGettingInFlags(uchar)
50302E:  LDRB.W          R0, [R10,#0x1A]
503032:  ADDW            R6, R4, #0x484
503036:  CMP             R0, #0
503038:  ITTTT NE
50303A:  LDRNE.W         R1, [R10,#0x10]; CPed *
50303E:  LDRBNE.W        R2, [R1,#0x489]
503042:  SUBNE           R0, R2, R0
503044:  STRBNE.W        R0, [R1,#0x489]
503048:  MOV             R0, R4; this
50304A:  BLX             j__ZN13CCarEnterExit16RemoveGetInAnimsERK4CPed; CCarEnterExit::RemoveGetInAnims(CPed const&)
50304E:  LDR.W           R0, [R10,#0x10]; this
503052:  MOV             R1, R4; CVehicle *
503054:  MOVS            R2, #(stderr+1); CPed *
503056:  BLX             j__ZN13CCarEnterExit12AddInCarAnimERK8CVehicleP4CPedb; CCarEnterExit::AddInCarAnim(CVehicle const&,CPed *,bool)
50305A:  MOV             R0, R4; this
50305C:  MOVS            R1, #0; int
50305E:  BLX             j__ZN4CPed31RemoveWeaponWhenEnteringVehicleEi; CPed::RemoveWeaponWhenEnteringVehicle(int)
503062:  LDR.W           R0, [R10,#0x10]
503066:  LDRB.W          R1, [R0,#0x42D]
50306A:  LSLS            R1, R1, #0x1E
50306C:  BPL             loc_503078
50306E:  LDRH            R0, [R0,#0x26]
503070:  MOVW            R1, #0x1AF
503074:  CMP             R0, R1
503076:  BNE             loc_503086
503078:  LDRD.W          R3, R0, [R6]
50307C:  LDRD.W          R1, R2, [R6,#8]
503080:  ORR.W           R3, R3, #0x2000
503084:  B               loc_503092
503086:  LDRD.W          R3, R0, [R6]
50308A:  LDRD.W          R1, R2, [R6,#8]; unsigned int
50308E:  BIC.W           R3, R3, #0x2000
503092:  STRD.W          R3, R0, [R6]
503096:  MOVS            R0, #dword_60; this
503098:  STRD.W          R1, R2, [R6,#8]
50309C:  LDR.W           R8, [R4,#0x440]
5030A0:  LDRB.W          R5, [R10,#0x18]
5030A4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5030A8:  LDR.W           R1, [R10,#0x10]; CVehicle *
5030AC:  MOV             R6, R0
5030AE:  CBZ             R5, loc_5030B6
5030B0:  MOV             R0, R6
5030B2:  MOVS            R2, #0
5030B4:  B               loc_5030BC
5030B6:  LDR.W           R2, [R10,#0x14]; CTaskUtilityLineUpPedWithCar *
5030BA:  MOV             R0, R6; this
5030BC:  MOVS            R3, #0; bool
5030BE:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
5030C2:  ADD.W           R0, R8, #4; this
5030C6:  MOV             R1, R6; CTask *
5030C8:  MOVS            R2, #4; int
5030CA:  MOVS            R3, #0; bool
5030CC:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
5030D0:  MOV             R0, R4; this
5030D2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5030D6:  CMP             R0, #1
5030D8:  BNE             loc_503106
5030DA:  LDR.W           R0, [R10,#0x10]; this
5030DE:  CBZ             R0, loc_503106
5030E0:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
5030E4:  CBZ             R0, loc_503106
5030E6:  ADD             R5, SP, #0x38+var_34
5030E8:  LDR.W           R2, [R10,#0x10]; CVehicle *
5030EC:  MOV             R1, R4; CPed *
5030EE:  MOV             R0, R5; this
5030F0:  BLX             j__ZN23CEventCopCarBeingStolenC2EP4CPedP8CVehicle; CEventCopCarBeingStolen::CEventCopCarBeingStolen(CPed *,CVehicle *)
5030F4:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
5030F8:  MOV             R1, R5; CEvent *
5030FA:  MOVS            R2, #0; bool
5030FC:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
503100:  MOV             R0, R5; this
503102:  BLX             j__ZN23CEventCopCarBeingStolenD2Ev; CEventCopCarBeingStolen::~CEventCopCarBeingStolen()
503106:  MOVS            R0, #1
503108:  ADD             SP, SP, #0x1C
50310A:  POP.W           {R8-R11}
50310E:  POP             {R4-R7,PC}
