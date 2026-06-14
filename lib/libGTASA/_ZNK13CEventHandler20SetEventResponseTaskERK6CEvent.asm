; =========================================================
; Game Engine Function: _ZNK13CEventHandler20SetEventResponseTaskERK6CEvent
; Address            : 0x37B610 - 0x37B7C8
; =========================================================

37B610:  PUSH            {R4-R7,LR}
37B612:  ADD             R7, SP, #0xC
37B614:  PUSH.W          {R8}
37B618:  SUB             SP, SP, #8
37B61A:  MOV             R4, R0
37B61C:  MOV             R8, R1
37B61E:  LDR             R0, [R4]
37B620:  LDR             R1, [R4,#0x20]; CTask *
37B622:  LDR.W           R6, [R0,#0x440]
37B626:  CMP             R1, #0
37B628:  ITTT NE
37B62A:  MOVNE           R0, R6; this
37B62C:  MOVNE           R2, #1; bool
37B62E:  BLXNE           j__ZN16CPedIntelligence19AddTaskPhysResponseEP5CTaskb; CPedIntelligence::AddTaskPhysResponse(CTask *,bool)
37B632:  LDR             R0, [R4,#0x24]
37B634:  CMP             R0, #0
37B636:  BEQ.W           loc_37B714
37B63A:  LDR.W           R0, [R8]
37B63E:  LDR             R1, [R0,#8]
37B640:  MOV             R0, R8
37B642:  BLX             R1
37B644:  SUBS            R0, #1; switch 93 cases
37B646:  CMP             R0, #0x5C ; '\'
37B648:  BHI.W           def_37B64C; jumptable 0037B64C default case, cases 7-11,14-32,34-43,45,47-55,57,58,61-66,68-73,75-92
37B64C:  TBH.W           [PC,R0,LSL#1]; switch jump
37B650:  DCW 0x5D; jump table for switch statement
37B652:  DCW 0x5D
37B654:  DCW 0x5D
37B656:  DCW 0x5D
37B658:  DCW 0x5D
37B65A:  DCW 0x5D
37B65C:  DCW 0xB1
37B65E:  DCW 0xB1
37B660:  DCW 0xB1
37B662:  DCW 0xB1
37B664:  DCW 0xB1
37B666:  DCW 0x5D
37B668:  DCW 0x5D
37B66A:  DCW 0xB1
37B66C:  DCW 0xB1
37B66E:  DCW 0xB1
37B670:  DCW 0xB1
37B672:  DCW 0xB1
37B674:  DCW 0xB1
37B676:  DCW 0xB1
37B678:  DCW 0xB1
37B67A:  DCW 0xB1
37B67C:  DCW 0xB1
37B67E:  DCW 0xB1
37B680:  DCW 0xB1
37B682:  DCW 0xB1
37B684:  DCW 0xB1
37B686:  DCW 0xB1
37B688:  DCW 0xB1
37B68A:  DCW 0xB1
37B68C:  DCW 0xB1
37B68E:  DCW 0xB1
37B690:  DCW 0x5D
37B692:  DCW 0xB1
37B694:  DCW 0xB1
37B696:  DCW 0xB1
37B698:  DCW 0xB1
37B69A:  DCW 0xB1
37B69C:  DCW 0xB1
37B69E:  DCW 0xB1
37B6A0:  DCW 0xB1
37B6A2:  DCW 0xB1
37B6A4:  DCW 0xB1
37B6A6:  DCW 0x5D
37B6A8:  DCW 0xB1
37B6AA:  DCW 0x5D
37B6AC:  DCW 0xB1
37B6AE:  DCW 0xB1
37B6B0:  DCW 0xB1
37B6B2:  DCW 0xB1
37B6B4:  DCW 0xB1
37B6B6:  DCW 0xB1
37B6B8:  DCW 0xB1
37B6BA:  DCW 0xB1
37B6BC:  DCW 0xB1
37B6BE:  DCW 0x5D
37B6C0:  DCW 0xB1
37B6C2:  DCW 0xB1
37B6C4:  DCW 0x5D
37B6C6:  DCW 0x5D
37B6C8:  DCW 0xB1
37B6CA:  DCW 0xB1
37B6CC:  DCW 0xB1
37B6CE:  DCW 0xB1
37B6D0:  DCW 0xB1
37B6D2:  DCW 0xB1
37B6D4:  DCW 0x5D
37B6D6:  DCW 0xB1
37B6D8:  DCW 0xB1
37B6DA:  DCW 0xB1
37B6DC:  DCW 0xB1
37B6DE:  DCW 0xB1
37B6E0:  DCW 0xB1
37B6E2:  DCW 0x5D
37B6E4:  DCW 0xB1
37B6E6:  DCW 0xB1
37B6E8:  DCW 0xB1
37B6EA:  DCW 0xB1
37B6EC:  DCW 0xB1
37B6EE:  DCW 0xB1
37B6F0:  DCW 0xB1
37B6F2:  DCW 0xB1
37B6F4:  DCW 0xB1
37B6F6:  DCW 0xB1
37B6F8:  DCW 0xB1
37B6FA:  DCW 0xB1
37B6FC:  DCW 0xB1
37B6FE:  DCW 0xB1
37B700:  DCW 0xB1
37B702:  DCW 0xB1
37B704:  DCW 0xB1
37B706:  DCW 0xB1
37B708:  DCW 0x5D
37B70A:  LDR             R1, [R4,#0x24]; jumptable 0037B64C cases 1-6,12,13,33,44,46,56,59,60,67,74,93
37B70C:  MOV             R0, R6; this
37B70E:  MOVS            R2, #0; bool
37B710:  BLX             j__ZN16CPedIntelligence24AddTaskEventResponseTempEP5CTaskb; CPedIntelligence::AddTaskEventResponseTemp(CTask *,bool)
37B714:  LDR             R0, [R4,#0x28]
37B716:  CBZ             R0, loc_37B744
37B718:  ADDS            R5, R6, #4
37B71A:  MOVS            R1, #0; int
37B71C:  MOV             R0, R5; this
37B71E:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
37B722:  CBZ             R0, loc_37B73A
37B724:  MOV             R0, R5; this
37B726:  MOVS            R1, #0; int
37B728:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
37B72C:  LDR             R2, [R0]
37B72E:  MOVS            R3, #0
37B730:  LDR             R1, [R4]
37B732:  LDR.W           R12, [R2,#0x1C]
37B736:  MOVS            R2, #1
37B738:  BLX             R12
37B73A:  LDR             R1, [R4,#0x28]; CTask *
37B73C:  MOV             R0, R5; this
37B73E:  MOVS            R2, #0; int
37B740:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
37B744:  LDR             R1, [R4,#0x2C]; CTask *
37B746:  CMP             R1, #0
37B748:  ITTT NE
37B74A:  ADDNE           R0, R6, #4; this
37B74C:  MOVNE           R2, #2; int
37B74E:  BLXNE           j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
37B752:  LDR             R1, [R4,#0x30]; CTask *
37B754:  CMP             R1, #0
37B756:  ITTT NE
37B758:  ADDNE           R0, R6, #4; this
37B75A:  MOVNE           R2, #4; int
37B75C:  BLXNE           j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
37B760:  LDR.W           R0, [R8]
37B764:  LDR             R1, [R0,#0x28]
37B766:  MOV             R0, R8
37B768:  BLX             R1
37B76A:  CMP             R0, #1
37B76C:  BNE             loc_37B7AA
37B76E:  LDR             R0, [R4]
37B770:  MOVS            R1, #3; int
37B772:  LDR.W           R0, [R0,#0x440]
37B776:  ADDS            R0, #4; this
37B778:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
37B77C:  CMP             R0, #0
37B77E:  ITT NE
37B780:  LDRSHNE.W       R5, [R8,#0xC]
37B784:  ADDSNE.W        R0, R5, #1
37B788:  BEQ             loc_37B7AA
37B78A:  LDR             R0, [R4]
37B78C:  MOVS            R1, #3; int
37B78E:  LDR.W           R0, [R0,#0x440]
37B792:  ADDS            R0, #4; this
37B794:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
37B798:  MOVS            R1, #0
37B79A:  MOVW            R2, #0x2710; int
37B79E:  STR             R1, [SP,#0x18+var_18]; int
37B7A0:  MOV             R1, R5; int
37B7A2:  MOV.W           R3, #0xFFFFFFFF; int
37B7A6:  BLX             j__ZN18CTaskComplexFacial10SetRequestEiiii; CTaskComplexFacial::SetRequest(int,int,int,int)
37B7AA:  ADD             SP, SP, #8
37B7AC:  POP.W           {R8}
37B7B0:  POP             {R4-R7,PC}
37B7B2:  MOV             R0, R6; jumptable 0037B64C default case, cases 7-11,14-32,34-43,45,47-55,57,58,61-66,68-73,75-92
37B7B4:  MOVS            R1, #0; CTask *
37B7B6:  MOVS            R2, #0; bool
37B7B8:  BLX             j__ZN16CPedIntelligence24AddTaskEventResponseTempEP5CTaskb; CPedIntelligence::AddTaskEventResponseTemp(CTask *,bool)
37B7BC:  LDR             R1, [R4,#0x24]; CTask *
37B7BE:  MOV             R0, R6; this
37B7C0:  MOVS            R2, #0; bool
37B7C2:  BLX             j__ZN16CPedIntelligence27AddTaskEventResponseNonTempEP5CTaskb; CPedIntelligence::AddTaskEventResponseNonTemp(CTask *,bool)
37B7C6:  B               loc_37B714
