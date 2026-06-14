; =========================================================
; Game Engine Function: sub_A251C
; Address            : 0xA251C - 0xA26C8
; =========================================================

A251C:  PUSH            {R4-R7,LR}
A251E:  ADD             R7, SP, #0xC
A2520:  PUSH.W          {R8,R9,R11}
A2524:  LDR             R2, [R0,#4]
A2526:  LDR.W           LR, [R0,#0x2C]
A252A:  ADD.W           R12, R2, LR
A252E:  LDRH.W          R0, [R2,LR]
A2532:  LSLS            R0, R0, #0x10
A2534:  REV             R3, R0
A2536:  CMP             R3, #6; switch 7 cases
A2538:  BHI             def_A253C; jumptable 000A253C default case, cases 1,3,5
A253A:  MOVS            R0, #0
A253C:  TBB.W           [PC,R3]; switch jump
A2540:  DCB 4; jump table for switch statement
A2541:  DCB 0x12
A2542:  DCB 0x96
A2543:  DCB 0x12
A2544:  DCB 0x35
A2545:  DCB 0x12
A2546:  DCB 0x7F
A2547:  ALIGN 2
A2548:  LDRH.W          R0, [R12,#2]; jumptable 000A253C case 0
A254C:  LSLS            R0, R0, #0x10
A254E:  REV             R0, R0
A2550:  SUBS            R0, #6
A2552:  CMP             R0, R1
A2554:  BLE.W           loc_A266A
A2558:  ADD.W           R0, R12, R1
A255C:  LDRB            R0, [R0,#6]
A255E:  POP.W           {R8,R9,R11}
A2562:  POP             {R4-R7,PC}
A2564:  BIC.W           R0, R3, #1; jumptable 000A253C default case, cases 1,3,5
A2568:  CMP             R0, #0xC
A256A:  BNE             loc_A266A
A256C:  LDR.W           R0, [R12,#0xC]
A2570:  REV             R6, R0
A2572:  CMP             R6, #1
A2574:  BLT             loc_A266A
A2576:  ADD.W           R12, R12, #0x10
A257A:  MOVS            R5, #0
A257C:  B               loc_A2584
A257E:  CMP             R2, R5
A2580:  MOV             R6, R2
A2582:  BLE             loc_A266A
A2584:  SUBS            R0, R6, R5
A2586:  ADD.W           R2, R5, R0,ASR#1
A258A:  ADD.W           R0, R2, R2,LSL#1
A258E:  LDR.W           R4, [R12,R0,LSL#2]
A2592:  REV             R4, R4
A2594:  CMP             R4, R1
A2596:  BHI             loc_A257E
A2598:  ADD.W           R0, R12, R0,LSL#2
A259C:  LDR             R5, [R0,#4]
A259E:  REV             R5, R5
A25A0:  CMP             R5, R1
A25A2:  BCS             loc_A26A0
A25A4:  ADDS            R5, R2, #1
A25A6:  MOV             R2, R6
A25A8:  B               loc_A257E
A25AA:  CMP.W           R1, #0x10000; jumptable 000A253C case 4
A25AE:  BGE             loc_A266A
A25B0:  LDRB.W          R4, [R12,#0xD]
A25B4:  LDRB.W          R3, [R12,#0xC]
A25B8:  AND.W           R4, R4, #0xFE
A25BC:  LDRH.W          R0, [R12,#6]
A25C0:  LDRH.W          R5, [R12,#0xA]
A25C4:  ORR.W           R3, R4, R3,LSL#8
A25C8:  ADD.W           R4, R12, R3
A25CC:  LSLS            R0, R0, #0x10
A25CE:  REV.W           R8, R0
A25D2:  LDRH            R4, [R4,#0xE]
A25D4:  LSLS            R4, R4, #0x10
A25D6:  REV             R4, R4
A25D8:  CMP             R4, R1
A25DA:  MOV             R4, LR
A25DC:  IT LE
A25DE:  ADDLE           R4, R3
A25E0:  ADD.W           R3, R4, #0xC
A25E4:  REV             R4, R5
A25E6:  LSRS            R4, R4, #0x10
A25E8:  BEQ             loc_A2612
A25EA:  LDRH.W          R5, [R12,#8]
A25EE:  MOVW            R9, #0x7FFE
A25F2:  REV             R5, R5
A25F4:  LSRS            R5, R5, #0x10
A25F6:  AND.W           R0, R9, R5,LSR#1
A25FA:  ADDS            R6, R2, R3
A25FC:  SUBS            R4, #1
A25FE:  UBFX.W          R5, R5, #1, #0xF
A2602:  LDRH            R6, [R6,R0]
A2604:  LSLS            R6, R6, #0x10
A2606:  REV             R6, R6
A2608:  CMP             R6, R1
A260A:  IT LT
A260C:  ADDLT           R3, R0
A260E:  LSLS            R0, R4, #0x10
A2610:  BNE             loc_A25F6
A2612:  MOVW            R5, #:lower16:(aZnkst6Ndk18tim_34+0x16); "IwNS_19istreambuf_iteratorIwNS_11char_t"...
A2616:  BIC.W           R0, R8, #1
A261A:  MOVT            R5, #:upper16:(aZnkst6Ndk18tim_34+0x16); "IwNS_19istreambuf_iteratorIwNS_11char_t"...
A261E:  SUB.W           R4, R5, LR
A2622:  ADD.W           R6, R12, #0xE
A2626:  ADD             R3, R4
A2628:  ADDS            R5, #0xA
A262A:  ADD             R0, R6
A262C:  ANDS            R3, R5
A262E:  ADD             R0, R3
A2630:  LDRH            R0, [R0,#2]
A2632:  LSLS            R0, R0, #0x10
A2634:  REV             R5, R0
A2636:  CMP             R5, R1
A2638:  BLE             loc_A2672
A263A:  MOVS            R0, #0
A263C:  B               loc_A26C0
A263E:  LDRH.W          R0, [R12,#6]; jumptable 000A253C case 6
A2642:  LSLS            R0, R0, #0x10
A2644:  REV             R0, R0
A2646:  CMP             R0, R1
A2648:  BHI             loc_A266A
A264A:  LDRH.W          R2, [R12,#8]
A264E:  LSLS            R2, R2, #0x10
A2650:  REV             R2, R2
A2652:  ADD             R2, R0
A2654:  CMP             R2, R1
A2656:  BLS             loc_A266A
A2658:  SUBS            R0, R1, R0
A265A:  ADD.W           R0, R12, R0,LSL#1
A265E:  LDRH            R0, [R0,#0xA]
A2660:  LSLS            R0, R0, #0x10
A2662:  REV             R0, R0
A2664:  POP.W           {R8,R9,R11}
A2668:  POP             {R4-R7,PC}
A266A:  MOVS            R0, #0
A266C:  POP.W           {R8,R9,R11}; jumptable 000A253C case 2
A2670:  POP             {R4-R7,PC}
A2672:  MOV.W           R12, R8,LSR#1
A2676:  ADD.W           R4, R12, R12,LSL#1
A267A:  ADD.W           R0, R6, R4,LSL#1
A267E:  ADD             R0, R3
A2680:  LDRH            R0, [R0,#2]
A2682:  LSLS            R0, R0, #0x10
A2684:  REV             R0, R0
A2686:  CBZ             R0, loc_A26B2
A2688:  SUBS            R1, R1, R5
A268A:  ADD             R0, R2
A268C:  LSLS            R6, R4, #1
A268E:  ADD.W           R0, R0, R1,LSL#1
A2692:  ADD             R0, LR
A2694:  ADD             R0, R6
A2696:  ADD             R0, R3
A2698:  LDRH            R0, [R0,#0x10]
A269A:  LSLS            R0, R0, #0x10
A269C:  REV             R0, R0
A269E:  B               loc_A26C0
A26A0:  LDR             R0, [R0,#8]
A26A2:  SUBS            R1, R1, R4
A26A4:  CMP             R3, #0xC
A26A6:  REV             R0, R0
A26A8:  IT EQ
A26AA:  ADDEQ           R0, R1
A26AC:  POP.W           {R8,R9,R11}
A26B0:  POP             {R4-R7,PC}
A26B2:  ADD.W           R0, R6, R12,LSL#2
A26B6:  ADD             R0, R3
A26B8:  LDRH            R0, [R0,#2]
A26BA:  LSLS            R0, R0, #0x10
A26BC:  REV             R0, R0
A26BE:  ADD             R0, R1
A26C0:  UXTH            R0, R0
A26C2:  POP.W           {R8,R9,R11}
A26C6:  POP             {R4-R7,PC}
