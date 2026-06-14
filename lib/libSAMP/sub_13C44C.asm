; =========================================================
; Game Engine Function: sub_13C44C
; Address            : 0x13C44C - 0x13C48E
; =========================================================

13C44C:  PUSH            {R4-R7,LR}
13C44E:  ADD             R7, SP, #0xC
13C450:  PUSH.W          {R11}
13C454:  MOV             R4, R0
13C456:  MOVS            R0, #0
13C458:  MOV             R6, R2
13C45A:  MOV             R5, R1
13C45C:  STRD.W          R0, R3, [R4,#0xC]
13C460:  CBZ             R1, loc_13C46E
13C462:  CMP.W           R5, #0x20000000
13C466:  BCS             loc_13C486
13C468:  LSLS            R0, R5, #3; unsigned int
13C46A:  BLX             j__Znwj; operator new(uint)
13C46E:  ADD.W           R1, R0, R6,LSL#3
13C472:  ADD.W           R2, R0, R5,LSL#3
13C476:  STRD.W          R0, R1, [R4]
13C47A:  MOV             R0, R4
13C47C:  STRD.W          R1, R2, [R4,#8]
13C480:  POP.W           {R11}
13C484:  POP             {R4-R7,PC}
13C486:  LDR             R0, =(aAllocatorTAllo - 0x13C48C); "allocator<T>::allocate(size_t n) 'n' ex"... ...
13C488:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
13C48A:  BL              sub_DC8D4
