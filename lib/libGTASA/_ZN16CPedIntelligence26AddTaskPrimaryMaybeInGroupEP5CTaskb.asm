; =========================================================
; Game Engine Function: _ZN16CPedIntelligence26AddTaskPrimaryMaybeInGroupEP5CTaskb
; Address            : 0x4C04C8 - 0x4C0530
; =========================================================

4C04C8:  PUSH            {R4-R7,LR}
4C04CA:  ADD             R7, SP, #0xC
4C04CC:  PUSH.W          {R8}
4C04D0:  SUB             SP, SP, #0x18
4C04D2:  MOV             R5, R0
4C04D4:  MOV             R8, R2
4C04D6:  LDR             R0, [R5]; this
4C04D8:  MOV             R4, R1
4C04DA:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4C04DE:  MOV             R6, R0
4C04E0:  LDR             R0, [R5]; this
4C04E2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4C04E6:  CBZ             R6, loc_4C0508
4C04E8:  CBNZ            R0, loc_4C0508
4C04EA:  LDR             R1, [R5]; CPed *
4C04EC:  ADD.W           R0, R6, #0x30 ; '0'; this
4C04F0:  MOV             R2, R4; CTask *
4C04F2:  BLX             j__ZN21CPedGroupIntelligence20SetScriptCommandTaskEP4CPedRK5CTask; CPedGroupIntelligence::SetScriptCommandTask(CPed *,CTask const&)
4C04F6:  LDR             R0, [R4]
4C04F8:  LDR             R1, [R0,#4]
4C04FA:  MOV             R0, R4
4C04FC:  ADD             SP, SP, #0x18
4C04FE:  POP.W           {R8}
4C0502:  POP.W           {R4-R7,LR}
4C0506:  BX              R1
4C0508:  MOV             R6, SP
4C050A:  MOVS            R1, #3; int
4C050C:  MOV             R0, R6; this
4C050E:  MOV             R2, R4; CTask *
4C0510:  MOV             R3, R8; bool
4C0512:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
4C0516:  ADD.W           R0, R5, #0x68 ; 'h'; this
4C051A:  MOV             R1, R6; CEvent *
4C051C:  MOVS            R2, #0; bool
4C051E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4C0522:  MOV             R0, R6; this
4C0524:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
4C0528:  ADD             SP, SP, #0x18
4C052A:  POP.W           {R8}
4C052E:  POP             {R4-R7,PC}
