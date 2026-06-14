; =========================================================
; Game Engine Function: sub_113670
; Address            : 0x113670 - 0x1136B2
; =========================================================

113670:  PUSH            {R4-R7,LR}
113672:  ADD             R7, SP, #0xC
113674:  PUSH.W          {R11}
113678:  MOV             R4, R0
11367A:  MOVS            R0, #0
11367C:  MOV             R6, R2
11367E:  MOV             R5, R1
113680:  STRD.W          R0, R3, [R4,#0xC]
113684:  CBZ             R1, loc_113692
113686:  CMP.W           R5, #0x20000000
11368A:  BCS             loc_1136AA
11368C:  LSLS            R0, R5, #3; unsigned int
11368E:  BLX             j__Znwj; operator new(uint)
113692:  ADD.W           R1, R0, R6,LSL#3
113696:  ADD.W           R2, R0, R5,LSL#3
11369A:  STRD.W          R0, R1, [R4]
11369E:  MOV             R0, R4
1136A0:  STRD.W          R1, R2, [R4,#8]
1136A4:  POP.W           {R11}
1136A8:  POP             {R4-R7,PC}
1136AA:  LDR             R0, =(aAllocatorTAllo - 0x1136B0); "allocator<T>::allocate(size_t n) 'n' ex"... ...
1136AC:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
1136AE:  BL              sub_DC8D4
