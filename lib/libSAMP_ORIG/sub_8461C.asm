; =========================================================
; Game Engine Function: sub_8461C
; Address            : 0x8461C - 0x84754
; =========================================================

8461C:  PUSH            {R4-R7,LR}
8461E:  ADD             R7, SP, #0xC
84620:  PUSH.W          {R8-R11}
84624:  SUB             SP, SP, #4
84626:  MOV             R4, R0
84628:  CMP             R1, #0
8462A:  BEQ             loc_846AC
8462C:  MOV             R10, R1
8462E:  CMP.W           R1, #0x40000000
84632:  BCS.W           loc_8474C
84636:  MOV.W           R0, R10,LSL#2; unsigned int
8463A:  BLX             j__Znwj; operator new(uint)
8463E:  MOV             R1, R0
84640:  LDR             R0, [R4]; void *
84642:  STR             R1, [R4]
84644:  CMP             R0, #0
84646:  IT NE
84648:  BLXNE           j__ZdlPv; operator delete(void *)
8464C:  MOVS            R0, #0
8464E:  MOVS            R1, #0
84650:  STR.W           R10, [R4,#4]
84654:  LDR             R2, [R4]
84656:  STR.W           R0, [R2,R1,LSL#2]
8465A:  ADDS            R1, #1
8465C:  CMP             R10, R1
8465E:  BNE             loc_84654
84660:  MOV             R6, R4
84662:  LDR.W           R11, [R6,#8]!
84666:  CMP.W           R11, #0
8466A:  BEQ             loc_84744
8466C:  MOV.W           R0, #0x55555555
84670:  MOV.W           R1, #0x33333333
84674:  AND.W           R0, R0, R10,LSR#1
84678:  LDR.W           R8, [R11,#4]
8467C:  SUB.W           R0, R10, R0
84680:  AND.W           R1, R1, R0,LSR#2
84684:  BIC.W           R0, R0, #0xCCCCCCCC
84688:  ADD             R0, R1
8468A:  MOV.W           R1, #0x1010101
8468E:  ADD.W           R0, R0, R0,LSR#4
84692:  BIC.W           R0, R0, #0xF0F0F0F0
84696:  MULS            R0, R1
84698:  MOV.W           R9, R0,LSR#24
8469C:  CMP.W           R9, #1
846A0:  BHI             loc_846BE
846A2:  SUB.W           R0, R10, #1
846A6:  AND.W           R8, R8, R0
846AA:  B               loc_846CC
846AC:  LDR             R0, [R4]; void *
846AE:  MOVS            R5, #0
846B0:  STR             R5, [R4]
846B2:  CMP             R0, #0
846B4:  IT NE
846B6:  BLXNE           j__ZdlPv; operator delete(void *)
846BA:  STR             R5, [R4,#4]
846BC:  B               loc_84744
846BE:  CMP             R8, R10
846C0:  BCC             loc_846CC
846C2:  MOV             R0, R8
846C4:  MOV             R1, R10
846C6:  BLX             sub_109688
846CA:  MOV             R8, R1
846CC:  LDR             R0, [R4]
846CE:  STR.W           R6, [R0,R8,LSL#2]
846D2:  LDR.W           R6, [R11]
846D6:  CBZ             R6, loc_84744
846D8:  SUB.W           R12, R10, #1
846DC:  B               loc_846E6
846DE:  MOV             R11, R6
846E0:  LDR.W           R6, [R11]
846E4:  CBZ             R6, loc_84744
846E6:  LDR             R0, [R6,#4]
846E8:  CMP.W           R9, #1
846EC:  BHI             loc_846F4
846EE:  AND.W           R0, R0, R12
846F2:  B               loc_84704
846F4:  CMP             R0, R10
846F6:  BCC             loc_84704
846F8:  MOV             R1, R10
846FA:  MOV             R5, R12
846FC:  BLX             sub_109688
84700:  MOV             R12, R5
84702:  MOV             R0, R1
84704:  CMP             R0, R8
84706:  BEQ             loc_846DE
84708:  LDR             R1, [R4]
8470A:  LDR.W           R2, [R1,R0,LSL#2]
8470E:  CMP             R2, #0
84710:  MOV             R2, R6
84712:  BEQ             loc_8473A
84714:  MOV             R1, R2
84716:  LDR             R2, [R2]
84718:  CBZ             R2, loc_84722
8471A:  LDR             R3, [R2,#8]
8471C:  LDR             R5, [R6,#8]
8471E:  CMP             R5, R3
84720:  BEQ             loc_84714
84722:  STR.W           R2, [R11]
84726:  LDR             R2, [R4]
84728:  LDR.W           R2, [R2,R0,LSL#2]
8472C:  LDR             R2, [R2]
8472E:  STR             R2, [R1]
84730:  LDR             R1, [R4]
84732:  LDR.W           R0, [R1,R0,LSL#2]
84736:  STR             R6, [R0]
84738:  B               loc_846E0
8473A:  STR.W           R11, [R1,R0,LSL#2]
8473E:  MOV             R11, R6
84740:  MOV             R8, R0
84742:  B               loc_846E0
84744:  ADD             SP, SP, #4
84746:  POP.W           {R8-R11}
8474A:  POP             {R4-R7,PC}
8474C:  LDR             R0, =(aAllocatorTAllo - 0x84752); "allocator<T>::allocate(size_t n) 'n' ex"... ...
8474E:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
84750:  BL              sub_7B270
