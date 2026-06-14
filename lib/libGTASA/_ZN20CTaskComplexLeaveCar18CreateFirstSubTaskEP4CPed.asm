; =========================================================
; Game Engine Function: _ZN20CTaskComplexLeaveCar18CreateFirstSubTaskEP4CPed
; Address            : 0x4F93A8 - 0x4F9476
; =========================================================

4F93A8:  PUSH            {R4-R7,LR}
4F93AA:  ADD             R7, SP, #0xC
4F93AC:  PUSH.W          {R8,R9,R11}
4F93B0:  SUB             SP, SP, #0x18
4F93B2:  MOV             R4, R1
4F93B4:  MOV             R5, R0
4F93B6:  LDR.W           R0, [R4,#0x44C]
4F93BA:  CMP             R0, #0x3F ; '?'
4F93BC:  BEQ             loc_4F93C8
4F93BE:  LDR.W           R0, [R4,#0x48C]
4F93C2:  TST.W           R0, #0x40
4F93C6:  BEQ             loc_4F93D0
4F93C8:  MOV             R0, R4; this
4F93CA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F93CE:  CBNZ            R0, loc_4F93D8
4F93D0:  LDR.W           R0, [R4,#0x484]
4F93D4:  LSLS            R0, R0, #0x17
4F93D6:  BMI             loc_4F93DC
4F93D8:  MOVS            R1, #0xCA
4F93DA:  B               loc_4F9466
4F93DC:  LDR             R0, [R5,#0xC]
4F93DE:  LDR.W           R0, [R0,#0x464]
4F93E2:  CMP             R0, R4
4F93E4:  BNE             loc_4F9454
4F93E6:  MOV             R0, R4; this
4F93E8:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4F93EC:  MOV             R6, R0
4F93EE:  CBZ             R6, loc_4F9434
4F93F0:  ADD.W           R0, R6, #8; this
4F93F4:  MOV             R1, R4; CPed *
4F93F6:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
4F93FA:  CMP             R0, #1
4F93FC:  BNE             loc_4F9434
4F93FE:  MOVS            R0, #word_10; this
4F9400:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4F9404:  MOV             R8, R0
4F9406:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4F940A:  LDR             R0, =(_ZTV29CEventLeaderExitedCarAsDriver_ptr - 0x4F9418)
4F940C:  ADD.W           R9, SP, #0x30+var_2C
4F9410:  MOV             R1, R4; CPed *
4F9412:  MOV             R2, R8; CEvent *
4F9414:  ADD             R0, PC; _ZTV29CEventLeaderExitedCarAsDriver_ptr
4F9416:  LDR             R0, [R0]; `vtable for'CEventLeaderExitedCarAsDriver ...
4F9418:  ADDS            R0, #8
4F941A:  STR.W           R0, [R8]
4F941E:  MOV             R0, R9; this
4F9420:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
4F9424:  ADD.W           R0, R6, #0x30 ; '0'; this
4F9428:  MOV             R1, R9; CEvent *
4F942A:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
4F942E:  MOV             R0, R9; this
4F9430:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
4F9434:  MOV             R0, R4; this
4F9436:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F943A:  CBZ             R0, loc_4F944E
4F943C:  LDR.W           R0, [R4,#0x590]
4F9440:  CMP             R0, #0
4F9442:  ITT NE
4F9444:  ADDNE.W         R0, R0, #0x13C; this
4F9448:  BLXNE           j__ZN21CAEVehicleAudioEntity32PlayerAboutToExitVehicleAsDriverEv; CAEVehicleAudioEntity::PlayerAboutToExitVehicleAsDriver(void)
4F944C:  B               loc_4F9454
4F944E:  MOV             R0, R4; this
4F9450:  BLX             j__ZN4CPed15SetRadioStationEv; CPed::SetRadioStation(void)
4F9454:  LDR             R0, [R5,#0xC]
4F9456:  MOVW            R1, #0x2CF
4F945A:  LDR.W           R0, [R0,#0x5A0]
4F945E:  CMP             R0, #5
4F9460:  IT EQ
4F9462:  MOVEQ.W         R1, #0x2CC; int
4F9466:  MOV             R0, R5; this
4F9468:  MOV             R2, R4; CPed *
4F946A:  BLX             j__ZN20CTaskComplexLeaveCar13CreateSubTaskEiP4CPed; CTaskComplexLeaveCar::CreateSubTask(int,CPed *)
4F946E:  ADD             SP, SP, #0x18
4F9470:  POP.W           {R8,R9,R11}
4F9474:  POP             {R4-R7,PC}
