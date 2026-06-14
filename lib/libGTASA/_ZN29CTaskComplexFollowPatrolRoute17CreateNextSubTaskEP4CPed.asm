; =========================================================
; Game Engine Function: _ZN29CTaskComplexFollowPatrolRoute17CreateNextSubTaskEP4CPed
; Address            : 0x52560C - 0x52571E
; =========================================================

52560C:  PUSH            {R4-R7,LR}
52560E:  ADD             R7, SP, #0xC
525610:  PUSH.W          {R11}
525614:  MOV             R4, R0
525616:  LDR             R0, [R4,#8]
525618:  LDR             R1, [R0]
52561A:  LDR             R1, [R1,#0x14]
52561C:  BLX             R1
52561E:  MOVW            R1, #0x38A
525622:  CMP             R0, R1
525624:  BNE             loc_52566E
525626:  LDR             R0, [R4,#0x1C]; this
525628:  LDR             R1, [R0]
52562A:  CMP             R1, #0
52562C:  BEQ             loc_5256FE; jumptable 00525650 case 0
52562E:  LDRH            R2, [R4,#0x12]
525630:  SXTH            R2, R2
525632:  ADDS            R3, R2, #1
525634:  CMP             R3, R1
525636:  BLT.W           loc_525712
52563A:  BEQ.W           loc_525718
52563E:  CMP             R1, R2
525640:  BNE             def_525650; jumptable 00525650 default case
525642:  LDRH            R1, [R4,#0xE]
525644:  LDRSH.W         R2, [R4,#0xC]
525648:  ADDS            R3, R1, #1
52564A:  STRH            R3, [R4,#0xE]
52564C:  CMP             R2, #3; switch 4 cases
52564E:  BHI             def_525650; jumptable 00525650 default case
525650:  TBB.W           [PC,R2]; switch jump
525654:  DCB 0x55; jump table for switch statement
525655:  DCB 2
525656:  DCB 4
525657:  DCB 6
525658:  CMP             R1, #0; jumptable 00525650 case 1
52565A:  BNE             loc_5256FE; jumptable 00525650 case 0
52565C:  BLX             j__ZN12CPatrolRoute7ReverseEv; jumptable 00525650 case 2
525660:  LDR             R0, [R4,#0x1C]; jumptable 00525650 case 3
525662:  MOVS            R2, #0
525664:  STRH            R2, [R4,#0x12]
525666:  LDR             R1, [R0]
525668:  CMP             R1, #0
52566A:  BNE             loc_525630
52566C:  B               loc_5256FE; jumptable 00525650 case 0
52566E:  LDR             R0, [R4,#8]
525670:  LDR             R1, [R0]
525672:  LDR             R1, [R1,#0x14]
525674:  BLX             R1
525676:  CMP             R0, #0xC8
525678:  BEQ             loc_5256FE; jumptable 00525650 case 0
52567A:  LDR             R0, [R4,#8]
52567C:  LDR             R1, [R0]
52567E:  LDR             R1, [R1,#0x14]
525680:  BLX             R1
525682:  MOVW            R1, #0x191
525686:  CMP             R0, R1
525688:  BNE             loc_525698
52568A:  MOV             R6, R4
52568C:  LDRH.W          R1, [R6,#0x12]!
525690:  MOV             R5, R6
525692:  LDR.W           R0, [R5,#0xA]!
525696:  B               loc_5256B8
525698:  MOV             R5, R4
52569A:  LDR.W           R0, [R5,#0x1C]!; this
52569E:  MOV             R6, R5
5256A0:  LDRSH.W         R1, [R6,#-0xA]!
5256A4:  ADD.W           R2, R1, R1,LSL#2
5256A8:  ADD.W           R2, R0, R2,LSL#3
5256AC:  LDRB            R2, [R2,#4]
5256AE:  CBZ             R2, loc_5256B6
5256B0:  MOVW            R1, #0x191
5256B4:  B               loc_525702
5256B6:  UXTH            R1, R1
5256B8:  ADDS            R3, R1, #1
5256BA:  STRH            R3, [R6]
5256BC:  LDR             R2, [R0]
5256BE:  CMP             R2, #0
5256C0:  BEQ             loc_5256FE; jumptable 00525650 case 0
5256C2:  SXTH            R1, R3
5256C4:  ADDS            R3, R1, #1
5256C6:  CMP             R3, R2
5256C8:  BLT             loc_525712
5256CA:  BEQ             loc_525718
5256CC:  CMP             R2, R1
5256CE:  BNE             def_525650; jumptable 00525650 default case
5256D0:  LDRH            R1, [R4,#0xE]
5256D2:  LDRSH.W         R2, [R4,#0xC]
5256D6:  ADDS            R3, R1, #1
5256D8:  STRH            R3, [R4,#0xE]
5256DA:  CMP             R2, #3; switch 4 cases
5256DC:  BHI             def_525650; jumptable 00525650 default case
5256DE:  TBB.W           [PC,R2]; switch jump
5256E2:  DCB 0xE; jump table for switch statement
5256E3:  DCB 2
5256E4:  DCB 3
5256E5:  DCB 5
5256E6:  CBNZ            R1, loc_5256FE; jumptable 005256DE case 1
5256E8:  BLX             j__ZN12CPatrolRoute7ReverseEv; jumptable 005256DE case 2
5256EC:  MOVS            R3, #0; jumptable 005256DE case 3
5256EE:  MOVW            R1, #0x516
5256F2:  STRH            R3, [R6]
5256F4:  LDR             R0, [R5]
5256F6:  LDR             R2, [R0]
5256F8:  CMP             R2, #0
5256FA:  BNE             loc_5256C2
5256FC:  B               loc_525702
5256FE:  MOVW            R1, #0x516; jumptable 00525650 case 0
525702:  MOV             R0, R4; this
525704:  POP.W           {R11}
525708:  POP.W           {R4-R7,LR}
52570C:  B               _ZN29CTaskComplexFollowPatrolRoute13CreateSubTaskEi; CTaskComplexFollowPatrolRoute::CreateSubTask(int)
52570E:  MOVS            R1, #0xC8; jumptable 00525650 default case
525710:  B               loc_525702
525712:  MOV.W           R1, #0x384
525716:  B               loc_525702
525718:  MOVW            R1, #0x387
52571C:  B               loc_525702
