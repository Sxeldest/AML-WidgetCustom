; =========================================================
; Game Engine Function: sub_1C25E4
; Address            : 0x1C25E4 - 0x1C26B6
; =========================================================

1C25E4:  PUSH            {R4-R7,LR}
1C25E6:  ADD             R7, SP, #0xC
1C25E8:  PUSH.W          {R8}
1C25EC:  SUB             SP, SP, #8
1C25EE:  MOV             R4, R0
1C25F0:  MOV.W           R0, #0x100
1C25F4:  ADD             R1, SP, #0x18+var_14
1C25F6:  MOV             R5, R2
1C25F8:  STR             R0, [SP,#0x18+var_14]
1C25FA:  MOV             R0, R4
1C25FC:  MOVS            R2, #4
1C25FE:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C2602:  CMP             R0, #0
1C2604:  BEQ             loc_1C2694
1C2606:  LDR             R0, =(RpHAnimAtomicGlobals_ptr - 0x1C260E)
1C2608:  MOVS            R2, #4
1C260A:  ADD             R0, PC; RpHAnimAtomicGlobals_ptr
1C260C:  LDR             R0, [R0]; RpHAnimAtomicGlobals
1C260E:  LDR             R0, [R0]
1C2610:  ADD             R5, R0
1C2612:  MOV             R0, R4
1C2614:  MOV             R1, R5
1C2616:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C261A:  CBZ             R0, loc_1C2694
1C261C:  LDR             R6, [R5,#4]
1C261E:  CBZ             R6, loc_1C2698
1C2620:  LDRB            R0, [R6]
1C2622:  LSLS            R0, R0, #0x1F
1C2624:  BNE             loc_1C2698
1C2626:  ADD.W           R8, R6, #4
1C262A:  MOV             R0, R4
1C262C:  MOVS            R2, #4
1C262E:  MOV             R1, R8
1C2630:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C2634:  CBZ             R0, loc_1C2694
1C2636:  MOV             R0, R4
1C2638:  MOV             R1, R6
1C263A:  MOVS            R2, #4
1C263C:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C2640:  CBZ             R0, loc_1C2694
1C2642:  LDR             R0, [R6,#0x20]
1C2644:  MOVS            R2, #4
1C2646:  ADD.W           R1, R0, #0x20 ; ' '
1C264A:  MOV             R0, R4
1C264C:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C2650:  CBZ             R0, loc_1C2694
1C2652:  LDR.W           R0, [R8]
1C2656:  CMP             R0, #1
1C2658:  BLT             loc_1C26AC
1C265A:  LDR             R6, [R6,#0x10]
1C265C:  MOVS            R5, #0
1C265E:  MOV             R0, R4
1C2660:  MOV             R1, R6
1C2662:  MOVS            R2, #4
1C2664:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C2668:  CBZ             R0, loc_1C2694
1C266A:  ADDS            R6, #4
1C266C:  MOV             R0, R4
1C266E:  MOVS            R2, #4
1C2670:  MOV             R1, R6
1C2672:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C2676:  CBZ             R0, loc_1C2694
1C2678:  ADDS            R6, #4
1C267A:  MOV             R0, R4
1C267C:  MOVS            R2, #4
1C267E:  MOV             R1, R6
1C2680:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C2684:  CBZ             R0, loc_1C2694
1C2686:  LDR.W           R0, [R8]
1C268A:  ADDS            R5, #1
1C268C:  ADDS            R6, #8
1C268E:  CMP             R5, R0
1C2690:  BLT             loc_1C265E
1C2692:  B               loc_1C26AC
1C2694:  MOVS            R4, #0
1C2696:  B               loc_1C26AC
1C2698:  MOVS            R0, #0
1C269A:  MOV             R1, SP
1C269C:  STR             R0, [SP,#0x18+var_18]
1C269E:  MOV             R0, R4
1C26A0:  MOVS            R2, #4
1C26A2:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C26A6:  CMP             R0, #0
1C26A8:  IT EQ
1C26AA:  MOVEQ           R4, #0
1C26AC:  MOV             R0, R4
1C26AE:  ADD             SP, SP, #8
1C26B0:  POP.W           {R8}
1C26B4:  POP             {R4-R7,PC}
