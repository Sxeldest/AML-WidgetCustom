; =========================================================
; Game Engine Function: _ZN11CTheScripts14CleanUpThisPedEP4CPed
; Address            : 0x34DCBC - 0x34DEF4
; =========================================================

34DCBC:  PUSH            {R4-R7,LR}
34DCBE:  ADD             R7, SP, #0xC
34DCC0:  PUSH.W          {R8}
34DCC4:  SUB             SP, SP, #0x18
34DCC6:  MOV             R4, R0
34DCC8:  CMP             R4, #0
34DCCA:  BEQ.W           loc_34DE4A
34DCCE:  LDRB.W          R0, [R4,#0x448]
34DCD2:  CMP             R0, #2
34DCD4:  BNE.W           loc_34DE4A
34DCD8:  MOV             R0, R4; this
34DCDA:  MOVS            R1, #1; unsigned __int8
34DCDC:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
34DCE0:  LDR.W           R0, [R4,#0x490]
34DCE4:  TST.W           R0, #0x10
34DCE8:  BNE.W           loc_34DE3E
34DCEC:  LDR.W           R0, [R4,#0x484]
34DCF0:  ADDW            R8, R4, #0x484
34DCF4:  LSLS            R0, R0, #0x17
34DCF6:  BPL             loc_34DD08
34DCF8:  LDR.W           R0, [R4,#0x590]; this
34DCFC:  CBZ             R0, loc_34DD08
34DCFE:  LDR.W           R1, [R0,#0x464]; CPed *
34DD02:  CMP             R1, R4
34DD04:  BEQ.W           loc_34DE52
34DD08:  MOVS            R6, #1
34DD0A:  LDR.W           R0, [R8]
34DD0E:  BIC.W           R0, R0, #0x200000
34DD12:  STR.W           R0, [R8]
34DD16:  MOV             R0, R4; this
34DD18:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
34DD1C:  CBZ             R0, loc_34DD36
34DD1E:  ADD.W           R5, R0, #8
34DD22:  MOV             R1, R4; CPed *
34DD24:  MOV             R0, R5; this
34DD26:  BLX             j__ZNK19CPedGroupMembership10IsFollowerEPK4CPed; CPedGroupMembership::IsFollower(CPed const*)
34DD2A:  CMP             R0, #1
34DD2C:  BNE             loc_34DD36
34DD2E:  MOV             R0, R5; this
34DD30:  MOV             R1, R4; CPed *
34DD32:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEP4CPed; CPedGroupMembership::RemoveMember(CPed *)
34DD36:  CMP             R6, #0
34DD38:  BEQ.W           loc_34DE3E
34DD3C:  LDRB.W          R0, [R8,#1]
34DD40:  LSLS            R0, R0, #0x1F
34DD42:  ITT NE
34DD44:  LDRNE.W         R0, [R4,#0x590]
34DD48:  CMPNE           R0, #0
34DD4A:  BNE             loc_34DDA8
34DD4C:  LDR.W           R0, [R4,#0x440]
34DD50:  MOVS            R1, #0x20 ; ' '; int
34DD52:  ADDS            R0, #0x68 ; 'h'; this
34DD54:  BLX             j__ZNK11CEventGroup14GetEventOfTypeEi; CEventGroup::GetEventOfType(int)
34DD58:  CMP             R0, #0
34DD5A:  ITT NE
34DD5C:  LDRNE           R0, [R0,#0x10]
34DD5E:  CMPNE           R0, #0
34DD60:  BEQ             loc_34DD6E
34DD62:  LDR             R1, [R0]
34DD64:  LDR             R1, [R1,#0x14]
34DD66:  BLX             R1
34DD68:  CMP.W           R0, #0x390
34DD6C:  BEQ             loc_34DE3E
34DD6E:  LDR.W           R0, [R4,#0x440]
34DD72:  LDR             R0, [R0,#0x10]
34DD74:  CBZ             R0, loc_34DD82
34DD76:  LDR             R1, [R0]
34DD78:  LDR             R1, [R1,#0x14]
34DD7A:  BLX             R1
34DD7C:  CMP.W           R0, #0x390
34DD80:  BEQ             loc_34DE3E
34DD82:  MOV             R0, R4; this
34DD84:  BLX             j__ZN18CTaskComplexWander22GetWanderTaskByPedTypeERK4CPed; CTaskComplexWander::GetWanderTaskByPedType(CPed const&)
34DD88:  MOV             R5, SP
34DD8A:  MOV             R2, R0; CTask *
34DD8C:  MOV             R0, R5; this
34DD8E:  MOVS            R1, #3; int
34DD90:  MOVS            R3, #0; bool
34DD92:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
34DD96:  LDR.W           R0, [R4,#0x440]
34DD9A:  MOV             R1, R5; CEvent *
34DD9C:  MOVS            R2, #0; bool
34DD9E:  ADDS            R0, #0x68 ; 'h'; this
34DDA0:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
34DDA4:  MOV             R0, R5
34DDA6:  B               loc_34DE3A
34DDA8:  LDR.W           R0, [R4,#0x440]
34DDAC:  MOVS            R1, #0x20 ; ' '; int
34DDAE:  ADDS            R0, #0x68 ; 'h'; this
34DDB0:  BLX             j__ZNK11CEventGroup14GetEventOfTypeEi; CEventGroup::GetEventOfType(int)
34DDB4:  CMP             R0, #0
34DDB6:  ITT NE
34DDB8:  LDRNE           R0, [R0,#0x10]
34DDBA:  CMPNE           R0, #0
34DDBC:  BEQ             loc_34DDC8
34DDBE:  LDR             R1, [R0]
34DDC0:  LDR             R1, [R1,#0x14]
34DDC2:  BLX             R1
34DDC4:  CMP             R0, #0xF4
34DDC6:  BEQ             loc_34DE3E
34DDC8:  LDR.W           R0, [R4,#0x440]
34DDCC:  LDR             R0, [R0,#0x10]
34DDCE:  CBZ             R0, loc_34DDDA
34DDD0:  LDR             R1, [R0]
34DDD2:  LDR             R1, [R1,#0x14]
34DDD4:  BLX             R1
34DDD6:  CMP             R0, #0xF4
34DDD8:  BEQ             loc_34DE3E
34DDDA:  MOVS            R0, #dword_40; this
34DDDC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
34DDE0:  MOV             R5, R0
34DDE2:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
34DDE6:  MOVS            R0, #dword_14; this
34DDE8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
34DDEC:  MOV             R6, R0
34DDEE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
34DDF2:  LDR             R0, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x34DDFC)
34DDF4:  MOVS            R1, #0; CPed *
34DDF6:  STR             R1, [R6,#0xC]
34DDF8:  ADD             R0, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
34DDFA:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveAnyCar ...
34DDFC:  ADDS            R0, #8
34DDFE:  STR             R0, [R6]
34DE00:  MOVS            R0, #1
34DE02:  STRH            R0, [R6,#0x10]
34DE04:  MOV             R0, R4; this
34DE06:  BLX             j__ZN18CTaskComplexWander22GetWanderTaskByPedTypeERK4CPed; CTaskComplexWander::GetWanderTaskByPedType(CPed const&)
34DE0A:  MOV             R8, R0
34DE0C:  MOV             R0, R5; this
34DE0E:  MOV             R1, R6; CTask *
34DE10:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
34DE14:  MOV             R0, R5; this
34DE16:  MOV             R1, R8; CTask *
34DE18:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
34DE1C:  MOV             R6, SP
34DE1E:  MOVS            R1, #3; int
34DE20:  MOV             R0, R6; this
34DE22:  MOV             R2, R5; CTask *
34DE24:  MOVS            R3, #0; bool
34DE26:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
34DE2A:  LDR.W           R0, [R4,#0x440]
34DE2E:  MOV             R1, R6; CEvent *
34DE30:  MOVS            R2, #0; bool
34DE32:  ADDS            R0, #0x68 ; 'h'; this
34DE34:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
34DE38:  MOV             R0, R6; this
34DE3A:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
34DE3E:  LDR             R0, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x34DE44)
34DE40:  ADD             R0, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
34DE42:  LDR             R0, [R0]; CPopulation::ms_nTotalMissionPeds ...
34DE44:  LDR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
34DE46:  SUBS            R1, #1
34DE48:  STR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
34DE4A:  ADD             SP, SP, #0x18
34DE4C:  POP.W           {R8}
34DE50:  POP             {R4-R7,PC}
34DE52:  LDR.W           R1, [R0,#0x5A4]
34DE56:  CMP             R1, #4
34DE58:  BEQ             loc_34DE98
34DE5A:  CMP             R1, #3
34DE5C:  BNE             loc_34DECA
34DE5E:  LDRB.W          R1, [R0,#0x3BE]
34DE62:  MOVW            R2, #0x4000
34DE66:  MOVS            R3, #0
34DE68:  MOVT            R2, #0x461C
34DE6C:  SUBS            R1, #0x39 ; '9'
34DE6E:  MOVT            R3, #0x447A
34DE72:  UXTB            R1, R1
34DE74:  CMP             R1, #2
34DE76:  ITT CS
34DE78:  MOVCS           R1, #0x14
34DE7A:  STRBCS.W        R1, [R0,#0x3BE]
34DE7E:  STR.W           R3, [R0,#0x9BC]
34DE82:  MOVW            R1, #0x4000
34DE86:  STR.W           R3, [R0,#0x9C4]
34DE8A:  MOVT            R1, #0xC61C
34DE8E:  STRD.W          R2, R1, [R0,#0x3F0]
34DE92:  STR.W           R3, [R0,#0x3F8]
34DE96:  B               loc_34DEF0
34DE98:  LDRB.W          R1, [R0,#0x3BE]
34DE9C:  MOVS            R2, #0x447A0000
34DEA2:  SUBS            R1, #0x39 ; '9'
34DEA4:  UXTB            R1, R1
34DEA6:  CMP             R1, #2
34DEA8:  ITT CS
34DEAA:  MOVCS           R1, #0x16
34DEAC:  STRBCS.W        R1, [R0,#0x3BE]
34DEB0:  STR.W           R2, [R0,#0x9BC]
34DEB4:  MOVW            R1, #0x4000
34DEB8:  STR.W           R2, [R0,#0x9C4]
34DEBC:  MOVT            R1, #0x461C
34DEC0:  STRD.W          R1, R1, [R0,#0x3F0]
34DEC4:  STR.W           R2, [R0,#0x3F8]
34DEC8:  B               loc_34DEF0
34DECA:  LDR.W           R1, [R0,#0x5A0]; CVehicle *
34DECE:  CMP             R1, #9
34DED0:  IT NE
34DED2:  CMPNE           R1, #0
34DED4:  BNE             loc_34DEF0
34DED6:  BLX             j__ZN8CCarCtrl21JoinCarWithRoadSystemEP8CVehicle; CCarCtrl::JoinCarWithRoadSystem(CVehicle *)
34DEDA:  LDR.W           R0, [R4,#0x590]
34DEDE:  LDRB.W          R1, [R0,#0x3BE]
34DEE2:  SUBS            R1, #0x39 ; '9'
34DEE4:  UXTB            R1, R1
34DEE6:  CMP             R1, #2
34DEE8:  ITT CS
34DEEA:  MOVCS           R1, #1
34DEEC:  STRBCS.W        R1, [R0,#0x3BE]
34DEF0:  MOVS            R6, #0
34DEF2:  B               loc_34DD0A
