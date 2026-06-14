; =========================================================
; Game Engine Function: sub_1514D0
; Address            : 0x1514D0 - 0x151512
; =========================================================

1514D0:  PUSH            {R4-R7,LR}
1514D2:  ADD             R7, SP, #0xC
1514D4:  PUSH.W          {R11}
1514D8:  MOV             R4, R0
1514DA:  MOVS            R0, #0
1514DC:  MOV             R6, R2
1514DE:  MOV             R5, R1
1514E0:  STRD.W          R0, R3, [R4,#0xC]
1514E4:  CBZ             R1, loc_1514F2
1514E6:  CMP.W           R5, #0x40000000
1514EA:  BCS             loc_15150A
1514EC:  LSLS            R0, R5, #2; unsigned int
1514EE:  BLX             j__Znwj; operator new(uint)
1514F2:  ADD.W           R1, R0, R6,LSL#2
1514F6:  ADD.W           R2, R0, R5,LSL#2
1514FA:  STRD.W          R0, R1, [R4]
1514FE:  MOV             R0, R4
151500:  STRD.W          R1, R2, [R4,#8]
151504:  POP.W           {R11}
151508:  POP             {R4-R7,PC}
15150A:  LDR             R0, =(aAllocatorTAllo - 0x151510); "allocator<T>::allocate(size_t n) 'n' ex"... ...
15150C:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
15150E:  BL              sub_DC8D4
