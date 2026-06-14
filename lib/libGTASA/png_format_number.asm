; =========================================================
; Game Engine Function: png_format_number
; Address            : 0x1F2468 - 0x1F2590
; =========================================================

1F2468:  PUSH            {R4-R7,LR}
1F246A:  ADD             R7, SP, #0xC
1F246C:  PUSH.W          {R8-R11}
1F2470:  SUB             SP, SP, #4
1F2472:  MOVS            R6, #0
1F2474:  STRB.W          R6, [R1,#-1]!
1F2478:  CMP             R1, R0
1F247A:  BLS.W           loc_1F2586
1F247E:  LDR.W           R10, =(a0123456789abcd_1 - 0x1F2494); "0123456789ABCDEF"
1F2482:  MOVW            R8, #0xCCCD
1F2486:  LDR.W           R11, =(a0123456789abcd_1 - 0x1F2496); "0123456789ABCDEF"
1F248A:  MOVS            R6, #0
1F248C:  LDR.W           LR, =(a0123456789abcd_1 - 0x1F249A); "0123456789ABCDEF"
1F2490:  ADD             R10, PC; "0123456789ABCDEF"
1F2492:  ADD             R11, PC; "0123456789ABCDEF"
1F2494:  STR             R6, [SP,#0x20+var_20]
1F2496:  ADD             LR, PC; "0123456789ABCDEF"
1F2498:  MOV.W           R9, #1
1F249C:  MOVT            R8, #0xCCCC
1F24A0:  MOVS            R6, #0
1F24A2:  CBNZ            R3, loc_1F24A8
1F24A4:  CMP             R6, R9
1F24A6:  BGE             loc_1F2586
1F24A8:  SUBS            R4, R2, #1; switch 5 cases
1F24AA:  CMP             R4, #4
1F24AC:  BHI             def_1F24AE; jumptable 001F24AE default case
1F24AE:  TBB.W           [PC,R4]; switch jump
1F24B2:  DCB 5; jump table for switch statement
1F24B3:  DCB 3
1F24B4:  DCB 0x17
1F24B5:  DCB 0x15
1F24B6:  DCB 0x26
1F24B7:  ALIGN 2
1F24B8:  MOV.W           R9, #2; jumptable 001F24AE case 2
1F24BC:  UMULL.W         R5, R4, R3, R8; jumptable 001F24AE case 1
1F24C0:  ADDS            R6, #1
1F24C2:  LSRS            R5, R4, #3
1F24C4:  ADD.W           R4, R5, R5,LSL#2
1F24C8:  SUB.W           R3, R3, R4,LSL#1
1F24CC:  LDRB.W          R3, [R10,R3]
1F24D0:  STRB.W          R3, [R1,#-1]!
1F24D4:  MOV             R3, R5
1F24D6:  CMP             R1, R0
1F24D8:  BHI             loc_1F24A2
1F24DA:  B               loc_1F2586
1F24DC:  MOV.W           R9, #2; jumptable 001F24AE case 4
1F24E0:  AND.W           R5, R3, #0xF; jumptable 001F24AE case 3
1F24E4:  LSRS            R3, R3, #4
1F24E6:  ADDS            R6, #1
1F24E8:  LDRB.W          R5, [R11,R5]
1F24EC:  STRB.W          R5, [R1,#-1]!
1F24F0:  CMP             R1, R0
1F24F2:  BHI             loc_1F24A2
1F24F4:  B               loc_1F2586
1F24F6:  MOV             R4, LR; jumptable 001F24AE default case
1F24F8:  MOV.W           R12, #0
1F24FC:  B               loc_1F252E
1F24FE:  UMULL.W         R5, R4, R3, R8; jumptable 001F24AE case 5
1F2502:  MOV.W           R12, R4,LSR#3
1F2506:  LDR             R4, [SP,#0x20+var_20]
1F2508:  ADD.W           R5, R12, R12,LSL#2
1F250C:  SUB.W           R3, R3, R5,LSL#1
1F2510:  ORRS.W          R5, R4, R3
1F2514:  BEQ             loc_1F2524
1F2516:  LDRB.W          R3, [LR,R3]
1F251A:  MOV             R4, LR
1F251C:  STRB.W          R3, [R1,#-1]!
1F2520:  MOVS            R3, #1
1F2522:  B               loc_1F2528
1F2524:  MOV             R4, LR
1F2526:  MOVS            R3, #0
1F2528:  STR             R3, [SP,#0x20+var_20]
1F252A:  MOV.W           R9, #5
1F252E:  CMP             R2, #5
1F2530:  ADD.W           LR, R6, #1
1F2534:  IT EQ
1F2536:  CMPEQ           R6, #4
1F2538:  BNE             loc_1F254E
1F253A:  CMP             R1, R0
1F253C:  BLS             loc_1F254E
1F253E:  LDR             R3, [SP,#0x20+var_20]
1F2540:  CBZ             R3, loc_1F255A
1F2542:  MOVS            R3, #0x2E ; '.'
1F2544:  MOVS            R6, #5
1F2546:  STRB.W          R3, [R1,#-1]!
1F254A:  MOV             R3, R12
1F254C:  B               loc_1F2552
1F254E:  MOV             R3, R12
1F2550:  MOV             R6, LR
1F2552:  MOV             LR, R4
1F2554:  CMP             R1, R0
1F2556:  BHI             loc_1F24A2
1F2558:  B               loc_1F2586
1F255A:  CMP.W           R12, #0
1F255E:  MOV             LR, R4
1F2560:  BEQ             loc_1F2572
1F2562:  MOVS            R3, #0
1F2564:  MOVS            R6, #5
1F2566:  STR             R3, [SP,#0x20+var_20]
1F2568:  MOV             R3, R12
1F256A:  CMP             R1, R0
1F256C:  BHI.W           loc_1F24A2
1F2570:  B               loc_1F2586
1F2572:  MOVS            R3, #0x30 ; '0'
1F2574:  MOVS            R5, #0
1F2576:  STRB.W          R3, [R1,#-1]!
1F257A:  MOVS            R6, #5
1F257C:  MOVS            R3, #0
1F257E:  STR             R5, [SP,#0x20+var_20]
1F2580:  CMP             R1, R0
1F2582:  BHI.W           loc_1F24A2
1F2586:  MOV             R0, R1
1F2588:  ADD             SP, SP, #4
1F258A:  POP.W           {R8-R11}
1F258E:  POP             {R4-R7,PC}
