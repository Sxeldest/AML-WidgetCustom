; =========================================================
; Game Engine Function: _ZN19CPedGroupMembership16AppointNewLeaderEv
; Address            : 0x4B2502 - 0x4B257E
; =========================================================

4B2502:  PUSH            {R4-R7,LR}
4B2504:  ADD             R7, SP, #0xC
4B2506:  PUSH.W          {R11}
4B250A:  MOV             R5, R0
4B250C:  MOV             R4, R5
4B250E:  LDR.W           R0, [R4,#0x20]!
4B2512:  CBNZ            R0, loc_4B2564
4B2514:  LDR             R6, [R5,#4]
4B2516:  CBZ             R6, loc_4B251C
4B2518:  MOVS            R1, #0
4B251A:  B               loc_4B254A
4B251C:  LDR             R6, [R5,#8]
4B251E:  CBZ             R6, loc_4B2524
4B2520:  MOVS            R1, #1
4B2522:  B               loc_4B254A
4B2524:  LDR             R6, [R5,#0xC]
4B2526:  CBZ             R6, loc_4B252C
4B2528:  MOVS            R1, #2
4B252A:  B               loc_4B254A
4B252C:  LDR             R6, [R5,#0x10]
4B252E:  CBZ             R6, loc_4B2534
4B2530:  MOVS            R1, #3
4B2532:  B               loc_4B254A
4B2534:  LDR             R6, [R5,#0x14]
4B2536:  CBZ             R6, loc_4B253C
4B2538:  MOVS            R1, #4
4B253A:  B               loc_4B254A
4B253C:  LDR             R6, [R5,#0x18]
4B253E:  CBZ             R6, loc_4B2544
4B2540:  MOVS            R1, #5
4B2542:  B               loc_4B254A
4B2544:  LDR             R6, [R5,#0x1C]
4B2546:  CBZ             R6, loc_4B2564
4B2548:  MOVS            R1, #6; int
4B254A:  MOV             R0, R5; this
4B254C:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B2550:  MOV             R0, R6; this
4B2552:  MOV             R1, R4; CEntity **
4B2554:  STR             R6, [R5,#0x20]
4B2556:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4B255A:  LDR             R0, [R5,#0x20]; this
4B255C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4B2560:  CMP             R0, #0
4B2562:  BEQ             loc_4B256A
4B2564:  POP.W           {R11}
4B2568:  POP             {R4-R7,PC}
4B256A:  LDR             R0, [R4]
4B256C:  MOVS            R1, #0; int
4B256E:  LDR.W           R0, [R0,#0x440]; this
4B2572:  POP.W           {R11}
4B2576:  POP.W           {R4-R7,LR}
4B257A:  B.W             sub_19F018
