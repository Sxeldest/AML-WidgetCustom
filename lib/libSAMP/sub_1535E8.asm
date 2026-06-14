; =========================================================
; Game Engine Function: sub_1535E8
; Address            : 0x1535E8 - 0x15371C
; =========================================================

1535E8:  PUSH            {R4-R7,LR}
1535EA:  ADD             R7, SP, #0xC
1535EC:  PUSH.W          {R8-R11}
1535F0:  SUB             SP, SP, #4
1535F2:  MOV             R4, R0
1535F4:  CMP             R1, #0
1535F6:  BEQ             loc_153676
1535F8:  MOV             R10, R1
1535FA:  CMP.W           R1, #0x40000000
1535FE:  BCS.W           loc_153714
153602:  MOV.W           R0, R10,LSL#2; unsigned int
153606:  BLX             j__Znwj; operator new(uint)
15360A:  MOV             R1, R0
15360C:  LDR             R0, [R4]; void *
15360E:  STR             R1, [R4]
153610:  CBZ             R0, loc_153616
153612:  BLX             j__ZdlPv; operator delete(void *)
153616:  MOVS            R0, #0
153618:  MOVS            R1, #0
15361A:  STR.W           R10, [R4,#4]
15361E:  LDR             R2, [R4]
153620:  STR.W           R0, [R2,R1,LSL#2]
153624:  ADDS            R1, #1
153626:  CMP             R10, R1
153628:  BNE             loc_15361E
15362A:  MOV             R6, R4
15362C:  LDR.W           R11, [R6,#8]!
153630:  CMP.W           R11, #0
153634:  BEQ             loc_15370C
153636:  MOV.W           R0, #0x55555555
15363A:  MOV.W           R1, #0x33333333
15363E:  AND.W           R0, R0, R10,LSR#1
153642:  LDR.W           R8, [R11,#4]
153646:  SUB.W           R0, R10, R0
15364A:  AND.W           R1, R1, R0,LSR#2
15364E:  BIC.W           R0, R0, #0xCCCCCCCC
153652:  ADD             R0, R1
153654:  MOV.W           R1, #0x1010101
153658:  ADD.W           R0, R0, R0,LSR#4
15365C:  BIC.W           R0, R0, #0xF0F0F0F0
153660:  MULS            R0, R1
153662:  MOV.W           R9, R0,LSR#24
153666:  CMP.W           R9, #1
15366A:  BHI             loc_153686
15366C:  SUB.W           R0, R10, #1
153670:  AND.W           R8, R8, R0
153674:  B               loc_153694
153676:  LDR             R0, [R4]; void *
153678:  MOVS            R5, #0
15367A:  STR             R5, [R4]
15367C:  CBZ             R0, loc_153682
15367E:  BLX             j__ZdlPv; operator delete(void *)
153682:  STR             R5, [R4,#4]
153684:  B               loc_15370C
153686:  CMP             R8, R10
153688:  BCC             loc_153694
15368A:  MOV             R0, R8
15368C:  MOV             R1, R10
15368E:  BLX             sub_221798
153692:  MOV             R8, R1
153694:  LDR             R0, [R4]
153696:  STR.W           R6, [R0,R8,LSL#2]
15369A:  LDR.W           R6, [R11]
15369E:  CBZ             R6, loc_15370C
1536A0:  SUB.W           R12, R10, #1
1536A4:  LDR             R0, [R6,#4]
1536A6:  CMP.W           R9, #1
1536AA:  BHI             loc_1536B2
1536AC:  AND.W           R0, R0, R12
1536B0:  B               loc_1536C2
1536B2:  CMP             R0, R10
1536B4:  BCC             loc_1536C2
1536B6:  MOV             R1, R10
1536B8:  MOV             R5, R12
1536BA:  BLX             sub_221798
1536BE:  MOV             R12, R5
1536C0:  MOV             R0, R1
1536C2:  CMP             R0, R8
1536C4:  BNE             loc_1536CA
1536C6:  MOV             R11, R6
1536C8:  B               loc_153704
1536CA:  LDR             R1, [R4]
1536CC:  LDR.W           R2, [R1,R0,LSL#2]
1536D0:  CMP             R2, #0
1536D2:  MOV             R2, R6
1536D4:  BEQ             loc_1536FC
1536D6:  MOV             R1, R2
1536D8:  LDR             R2, [R2]
1536DA:  CBZ             R2, loc_1536E4
1536DC:  LDRH            R3, [R2,#8]
1536DE:  LDRH            R5, [R6,#8]
1536E0:  CMP             R5, R3
1536E2:  BEQ             loc_1536D6
1536E4:  STR.W           R2, [R11]
1536E8:  LDR             R2, [R4]
1536EA:  LDR.W           R2, [R2,R0,LSL#2]
1536EE:  LDR             R2, [R2]
1536F0:  STR             R2, [R1]
1536F2:  LDR             R1, [R4]
1536F4:  LDR.W           R0, [R1,R0,LSL#2]
1536F8:  STR             R6, [R0]
1536FA:  B               loc_153704
1536FC:  STR.W           R11, [R1,R0,LSL#2]
153700:  MOV             R11, R6
153702:  MOV             R8, R0
153704:  LDR.W           R6, [R11]
153708:  CMP             R6, #0
15370A:  BNE             loc_1536A4
15370C:  ADD             SP, SP, #4
15370E:  POP.W           {R8-R11}
153712:  POP             {R4-R7,PC}
153714:  LDR             R0, =(aAllocatorTAllo - 0x15371A); "allocator<T>::allocate(size_t n) 'n' ex"... ...
153716:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
153718:  BL              sub_DC8D4
