; =========================================================
; Game Engine Function: sub_15D688
; Address            : 0x15D688 - 0x15D7BC
; =========================================================

15D688:  PUSH            {R4-R7,LR}
15D68A:  ADD             R7, SP, #0xC
15D68C:  PUSH.W          {R8-R11}
15D690:  SUB             SP, SP, #4
15D692:  MOV             R4, R0
15D694:  CMP             R1, #0
15D696:  BEQ             loc_15D716
15D698:  MOV             R10, R1
15D69A:  CMP.W           R1, #0x40000000
15D69E:  BCS.W           loc_15D7B4
15D6A2:  MOV.W           R0, R10,LSL#2; unsigned int
15D6A6:  BLX             j__Znwj; operator new(uint)
15D6AA:  MOV             R1, R0
15D6AC:  LDR             R0, [R4]; void *
15D6AE:  STR             R1, [R4]
15D6B0:  CBZ             R0, loc_15D6B6
15D6B2:  BLX             j__ZdlPv; operator delete(void *)
15D6B6:  MOVS            R0, #0
15D6B8:  MOVS            R1, #0
15D6BA:  STR.W           R10, [R4,#4]
15D6BE:  LDR             R2, [R4]
15D6C0:  STR.W           R0, [R2,R1,LSL#2]
15D6C4:  ADDS            R1, #1
15D6C6:  CMP             R10, R1
15D6C8:  BNE             loc_15D6BE
15D6CA:  MOV             R6, R4
15D6CC:  LDR.W           R11, [R6,#8]!
15D6D0:  CMP.W           R11, #0
15D6D4:  BEQ             loc_15D7AC
15D6D6:  MOV.W           R0, #0x55555555
15D6DA:  MOV.W           R1, #0x33333333
15D6DE:  AND.W           R0, R0, R10,LSR#1
15D6E2:  LDR.W           R8, [R11,#4]
15D6E6:  SUB.W           R0, R10, R0
15D6EA:  AND.W           R1, R1, R0,LSR#2
15D6EE:  BIC.W           R0, R0, #0xCCCCCCCC
15D6F2:  ADD             R0, R1
15D6F4:  MOV.W           R1, #0x1010101
15D6F8:  ADD.W           R0, R0, R0,LSR#4
15D6FC:  BIC.W           R0, R0, #0xF0F0F0F0
15D700:  MULS            R0, R1
15D702:  MOV.W           R9, R0,LSR#24
15D706:  CMP.W           R9, #1
15D70A:  BHI             loc_15D726
15D70C:  SUB.W           R0, R10, #1
15D710:  AND.W           R8, R8, R0
15D714:  B               loc_15D734
15D716:  LDR             R0, [R4]; void *
15D718:  MOVS            R5, #0
15D71A:  STR             R5, [R4]
15D71C:  CBZ             R0, loc_15D722
15D71E:  BLX             j__ZdlPv; operator delete(void *)
15D722:  STR             R5, [R4,#4]
15D724:  B               loc_15D7AC
15D726:  CMP             R8, R10
15D728:  BCC             loc_15D734
15D72A:  MOV             R0, R8
15D72C:  MOV             R1, R10
15D72E:  BLX             sub_221798
15D732:  MOV             R8, R1
15D734:  LDR             R0, [R4]
15D736:  STR.W           R6, [R0,R8,LSL#2]
15D73A:  LDR.W           R6, [R11]
15D73E:  CBZ             R6, loc_15D7AC
15D740:  SUB.W           R12, R10, #1
15D744:  LDR             R0, [R6,#4]
15D746:  CMP.W           R9, #1
15D74A:  BHI             loc_15D752
15D74C:  AND.W           R0, R0, R12
15D750:  B               loc_15D762
15D752:  CMP             R0, R10
15D754:  BCC             loc_15D762
15D756:  MOV             R1, R10
15D758:  MOV             R5, R12
15D75A:  BLX             sub_221798
15D75E:  MOV             R12, R5
15D760:  MOV             R0, R1
15D762:  CMP             R0, R8
15D764:  BNE             loc_15D76A
15D766:  MOV             R11, R6
15D768:  B               loc_15D7A4
15D76A:  LDR             R1, [R4]
15D76C:  LDR.W           R2, [R1,R0,LSL#2]
15D770:  CMP             R2, #0
15D772:  MOV             R2, R6
15D774:  BEQ             loc_15D79C
15D776:  MOV             R1, R2
15D778:  LDR             R2, [R2]
15D77A:  CBZ             R2, loc_15D784
15D77C:  LDRH            R3, [R2,#8]
15D77E:  LDRH            R5, [R6,#8]
15D780:  CMP             R5, R3
15D782:  BEQ             loc_15D776
15D784:  STR.W           R2, [R11]
15D788:  LDR             R2, [R4]
15D78A:  LDR.W           R2, [R2,R0,LSL#2]
15D78E:  LDR             R2, [R2]
15D790:  STR             R2, [R1]
15D792:  LDR             R1, [R4]
15D794:  LDR.W           R0, [R1,R0,LSL#2]
15D798:  STR             R6, [R0]
15D79A:  B               loc_15D7A4
15D79C:  STR.W           R11, [R1,R0,LSL#2]
15D7A0:  MOV             R11, R6
15D7A2:  MOV             R8, R0
15D7A4:  LDR.W           R6, [R11]
15D7A8:  CMP             R6, #0
15D7AA:  BNE             loc_15D744
15D7AC:  ADD             SP, SP, #4
15D7AE:  POP.W           {R8-R11}
15D7B2:  POP             {R4-R7,PC}
15D7B4:  LDR             R0, =(aAllocatorTAllo - 0x15D7BA); "allocator<T>::allocate(size_t n) 'n' ex"... ...
15D7B6:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
15D7B8:  BL              sub_DC8D4
