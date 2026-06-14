; =========================================================
; Game Engine Function: _ZN11CMemoryHeap7ReallocEPvj
; Address            : 0x5D260C - 0x5D26C6
; =========================================================

5D260C:  PUSH            {R4-R7,LR}
5D260E:  ADD             R7, SP, #0xC
5D2610:  PUSH.W          {R11}
5D2614:  MOV             R4, R1
5D2616:  MOV             R3, R2
5D2618:  MOV             R5, R0
5D261A:  CBZ             R4, loc_5D266A
5D261C:  MOV             R1, R4
5D261E:  ADD.W           R2, R3, #0x10
5D2622:  LDR.W           R0, [R1,#-0x10]!
5D2626:  TST.W           R3, #0xF
5D262A:  IT NE
5D262C:  BICNE.W         R3, R2, #0xF
5D2630:  CMP             R3, R0
5D2632:  BLS             loc_5D2678
5D2634:  ADDS            R2, R1, R0
5D2636:  LDRB            R6, [R2,#0x14]
5D2638:  CBNZ            R6, loc_5D2646
5D263A:  ADDS            R2, #0x10
5D263C:  LDR             R6, [R2]
5D263E:  ADD             R0, R6
5D2640:  ADDS            R0, #0x10
5D2642:  CMP             R0, R3
5D2644:  BCS             loc_5D269E
5D2646:  MOV             R0, R5; this
5D2648:  MOV             R1, R3; unsigned int
5D264A:  BLX.W           j__ZN11CMemoryHeap6MallocEj; CMemoryHeap::Malloc(uint)
5D264E:  MOV             R6, R0
5D2650:  CBZ             R6, loc_5D269A
5D2652:  LDR.W           R2, [R4,#-0x10]; size_t
5D2656:  MOV             R0, R6; void *
5D2658:  MOV             R1, R4; void *
5D265A:  BLX.W           memcpy_1
5D265E:  MOV             R0, R5; this
5D2660:  MOV             R1, R4; void *
5D2662:  BLX.W           j__ZN11CMemoryHeap4FreeEPv; CMemoryHeap::Free(void *)
5D2666:  MOV             R4, R6
5D2668:  B               loc_5D2692
5D266A:  MOV             R0, R5; this
5D266C:  MOV             R1, R3; unsigned int
5D266E:  POP.W           {R11}
5D2672:  POP.W           {R4-R7,LR}
5D2676:  B               _ZN11CMemoryHeap6MallocEj; CMemoryHeap::Malloc(uint)
5D2678:  LDR             R2, [R5,#0x40]
5D267A:  MOV             R6, #0xFFFFFFF0
5D267E:  SUBS            R0, R6, R0
5D2680:  ADD             R0, R2
5D2682:  STR             R0, [R5,#0x40]
5D2684:  LDR             R0, [R1]
5D2686:  ADD             R0, R1
5D2688:  ADD.W           R2, R0, #0x10
5D268C:  MOV             R0, R5
5D268E:  BLX.W           j__ZN11CMemoryHeap15FillInBlockDataEP13HeapBlockDescS1_j; CMemoryHeap::FillInBlockData(HeapBlockDesc *,HeapBlockDesc *,uint)
5D2692:  MOV             R0, R4
5D2694:  POP.W           {R11}
5D2698:  POP             {R4-R7,PC}
5D269A:  MOVS            R4, #0
5D269C:  B               loc_5D2692
5D269E:  LDRD.W          R12, R0, [R2,#0x10]
5D26A2:  STR.W           R0, [R12,#0x14]
5D26A6:  LDRD.W          R12, R0, [R2,#0x10]
5D26AA:  STR.W           R12, [R0,#0x10]
5D26AE:  MOV             R0, #0xFFFFFFF0
5D26B2:  LDR.W           LR, [R1]
5D26B6:  LDR.W           R12, [R5,#0x40]
5D26BA:  SUB.W           R0, R0, LR
5D26BE:  ADD             R0, R12
5D26C0:  STR             R0, [R5,#0x40]
5D26C2:  ADDS            R0, R2, R6
5D26C4:  B               loc_5D2688
