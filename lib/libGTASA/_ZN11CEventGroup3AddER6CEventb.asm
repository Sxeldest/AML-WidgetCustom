; =========================================================
; Game Engine Function: _ZN11CEventGroup3AddER6CEventb
; Address            : 0x36F50C - 0x36F658
; =========================================================

36F50C:  PUSH            {R4-R7,LR}
36F50E:  ADD             R7, SP, #0xC
36F510:  PUSH.W          {R8-R11}
36F514:  SUB             SP, SP, #4
36F516:  MOV             R4, R0
36F518:  MOV             R9, R2
36F51A:  LDR             R0, [R4,#4]
36F51C:  MOV             R6, R1
36F51E:  CMP             R0, #0
36F520:  BEQ             loc_36F61C
36F522:  LDR             R0, [R6]
36F524:  LDR             R1, [R0,#0x28]
36F526:  MOV             R0, R6
36F528:  BLX             R1
36F52A:  CMP             R0, #1
36F52C:  BNE             loc_36F57E
36F52E:  LDR             R1, [R4,#4]; CPed *
36F530:  MOV             R0, R6; this
36F532:  MOV.W           R2, #0x4B0; int
36F536:  BLX             j__ZNK22CEventEditableResponse25ComputeResponseTaskOfTypeEP4CPedi; CEventEditableResponse::ComputeResponseTaskOfType(CPed *,int)
36F53A:  LDR             R1, [R4,#4]; CPed *
36F53C:  MOV             R10, R0
36F53E:  MOV             R0, R6; this
36F540:  MOVW            R2, #0x6A4; int
36F544:  BLX             j__ZNK22CEventEditableResponse25ComputeResponseTaskOfTypeEP4CPedi; CEventEditableResponse::ComputeResponseTaskOfType(CPed *,int)
36F548:  LDR             R1, [R4,#4]; CPed *
36F54A:  MOV             R8, R0
36F54C:  MOV             R0, R6; this
36F54E:  MOV.W           R2, #0x12C; int
36F552:  BLX             j__ZNK22CEventEditableResponse25ComputeResponseTaskOfTypeEP4CPedi; CEventEditableResponse::ComputeResponseTaskOfType(CPed *,int)
36F556:  STR             R0, [SP,#0x20+var_20]
36F558:  MOV             R0, R6; this
36F55A:  LDR             R1, [R4,#4]; CPed *
36F55C:  MOVS            R2, #0; bool
36F55E:  BLX             j__ZN22CEventEditableResponse23ComputeResponseTaskTypeEP4CPedb; CEventEditableResponse::ComputeResponseTaskType(CPed *,bool)
36F562:  MOV             R0, R6; this
36F564:  BLX             j__ZNK22CEventEditableResponse11WillRespondEv; CEventEditableResponse::WillRespond(void)
36F568:  CBNZ            R0, loc_36F57A
36F56A:  LDR             R0, [R6]
36F56C:  LDR             R1, [R0,#8]
36F56E:  MOV             R0, R6
36F570:  BLX             R1
36F572:  CMP             R0, #9
36F574:  BNE             loc_36F58E
36F576:  LDRB            R0, [R6,#9]
36F578:  CBZ             R0, loc_36F58E
36F57A:  MOVS            R5, #1
36F57C:  B               loc_36F590
36F57E:  MOVS            R0, #0
36F580:  MOVS            R5, #1
36F582:  MOV.W           R10, #0
36F586:  MOV.W           R8, #0
36F58A:  STR             R0, [SP,#0x20+var_20]
36F58C:  B               loc_36F590
36F58E:  MOVS            R5, #0
36F590:  LDR             R0, [R6]
36F592:  LDR             R1, [R4,#4]
36F594:  LDR             R2, [R0,#0x18]
36F596:  MOV             R0, R6
36F598:  BLX             R2
36F59A:  AND.W           R11, R5, R0
36F59E:  CMP             R0, #1
36F5A0:  BNE             loc_36F616
36F5A2:  LDR             R0, [R6]
36F5A4:  LDR             R1, [R0,#0x28]
36F5A6:  MOV             R0, R6
36F5A8:  BLX             R1
36F5AA:  CMP             R0, #1
36F5AC:  BNE             loc_36F5F4
36F5AE:  CMP.W           R10, #1
36F5B2:  BNE             loc_36F5BC
36F5B4:  LDR             R1, [R4,#4]; CPed *
36F5B6:  MOV             R0, R6; this
36F5B8:  BLX             j__ZNK22CEventEditableResponse11InformGroupEP4CPed; CEventEditableResponse::InformGroup(CPed *)
36F5BC:  CMP.W           R8, #1
36F5C0:  BNE             loc_36F5DE
36F5C2:  LDR             R0, [R6]
36F5C4:  LDR             R1, [R0,#8]
36F5C6:  MOV             R0, R6
36F5C8:  BLX             R1
36F5CA:  CMP             R0, #9
36F5CC:  BNE             loc_36F5D6
36F5CE:  LDRB.W          R0, [R6,#0x21]
36F5D2:  LSLS            R0, R0, #0x1B
36F5D4:  BMI             loc_36F5DE
36F5D6:  LDR             R1, [R4,#4]; CPed *
36F5D8:  MOV             R0, R6; this
36F5DA:  BLX             j__ZNK22CEventEditableResponse22InformRespectedFriendsEP4CPed; CEventEditableResponse::InformRespectedFriends(CPed *)
36F5DE:  LDR             R0, [SP,#0x20+var_20]
36F5E0:  CMP             R0, #1
36F5E2:  BNE             loc_36F5EC
36F5E4:  LDR             R1, [R4,#4]; CPed *
36F5E6:  MOV             R0, R6; this
36F5E8:  BLX             j__ZNK22CEventEditableResponse13TriggerLookAtEP4CPed; CEventEditableResponse::TriggerLookAt(CPed *)
36F5EC:  LDR             R1, [R4,#4]; CPed *
36F5EE:  MOV             R0, R6; this
36F5F0:  BLX             j__ZNK22CEventEditableResponse22InformVehicleOccupantsEP4CPed; CEventEditableResponse::InformVehicleOccupants(CPed *)
36F5F4:  LDR             R1, [R6]
36F5F6:  LDR             R0, [R4,#4]
36F5F8:  LDR             R1, [R1,#8]
36F5FA:  LDR.W           R8, [R0,#0x440]
36F5FE:  MOV             R0, R6
36F600:  BLX             R1
36F602:  MOV             R5, R0
36F604:  LDR             R0, [R6]
36F606:  LDR             R1, [R0,#0xC]
36F608:  MOV             R0, R6
36F60A:  BLX             R1
36F60C:  MOV             R2, R0; int
36F60E:  MOV             R0, R8; this
36F610:  MOV             R1, R5; int
36F612:  BLX             j__ZN16CPedIntelligence20RecordEventForScriptEii; CPedIntelligence::RecordEventForScript(int,int)
36F616:  CMP.W           R11, #1
36F61A:  BNE             loc_36F64C
36F61C:  LDR             R0, [R4,#8]
36F61E:  CMP             R0, #0xF
36F620:  BGT             loc_36F64C
36F622:  LDR             R0, [R6]
36F624:  LDR             R1, [R0,#0x14]
36F626:  MOV             R0, R6
36F628:  BLX             R1
36F62A:  MOV             R5, R0
36F62C:  STRB.W          R9, [R5,#8]
36F630:  LDR             R1, [R4,#4]
36F632:  CBZ             R1, loc_36F63C
36F634:  LDR             R0, [R5]
36F636:  LDR             R2, [R0,#0x24]
36F638:  MOV             R0, R5
36F63A:  BLX             R2
36F63C:  LDR             R0, [R4,#8]
36F63E:  ADD.W           R0, R4, R0,LSL#2
36F642:  STR             R5, [R0,#0xC]
36F644:  LDR             R0, [R4,#8]
36F646:  ADDS            R0, #1
36F648:  STR             R0, [R4,#8]
36F64A:  B               loc_36F64E
36F64C:  MOVS            R5, #0
36F64E:  MOV             R0, R5
36F650:  ADD             SP, SP, #4
36F652:  POP.W           {R8-R11}
36F656:  POP             {R4-R7,PC}
