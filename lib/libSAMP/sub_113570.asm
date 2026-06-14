; =========================================================
; Game Engine Function: sub_113570
; Address            : 0x113570 - 0x1135B2
; =========================================================

113570:  PUSH            {R4-R7,LR}
113572:  ADD             R7, SP, #0xC
113574:  PUSH.W          {R11}
113578:  MOV             R4, R0
11357A:  MOVS            R0, #0
11357C:  MOV             R6, R2
11357E:  MOV             R5, R1
113580:  STRD.W          R0, R3, [R4,#0xC]
113584:  CBZ             R1, loc_113592
113586:  CMP.W           R5, #0x20000000
11358A:  BCS             loc_1135AA
11358C:  LSLS            R0, R5, #3; unsigned int
11358E:  BLX             j__Znwj; operator new(uint)
113592:  ADD.W           R1, R0, R6,LSL#3
113596:  ADD.W           R2, R0, R5,LSL#3
11359A:  STRD.W          R0, R1, [R4]
11359E:  MOV             R0, R4
1135A0:  STRD.W          R1, R2, [R4,#8]
1135A4:  POP.W           {R11}
1135A8:  POP             {R4-R7,PC}
1135AA:  LDR             R0, =(aAllocatorTAllo - 0x1135B0); "allocator<T>::allocate(size_t n) 'n' ex"... ...
1135AC:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
1135AE:  BL              sub_DC8D4
