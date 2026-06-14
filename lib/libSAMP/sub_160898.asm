; =========================================================
; Game Engine Function: sub_160898
; Address            : 0x160898 - 0x1608DA
; =========================================================

160898:  PUSH            {R4-R7,LR}
16089A:  ADD             R7, SP, #0xC
16089C:  PUSH.W          {R11}
1608A0:  MOV             R4, R0
1608A2:  MOVS            R0, #0
1608A4:  MOV             R6, R2
1608A6:  MOV             R5, R1
1608A8:  STRD.W          R0, R3, [R4,#0xC]
1608AC:  CBZ             R1, loc_1608BA
1608AE:  CMP.W           R5, #0x20000000
1608B2:  BCS             loc_1608D2
1608B4:  LSLS            R0, R5, #3; unsigned int
1608B6:  BLX             j__Znwj; operator new(uint)
1608BA:  ADD.W           R1, R0, R6,LSL#3
1608BE:  ADD.W           R2, R0, R5,LSL#3
1608C2:  STRD.W          R0, R1, [R4]
1608C6:  MOV             R0, R4
1608C8:  STRD.W          R1, R2, [R4,#8]
1608CC:  POP.W           {R11}
1608D0:  POP             {R4-R7,PC}
1608D2:  LDR             R0, =(aAllocatorTAllo - 0x1608D8); "allocator<T>::allocate(size_t n) 'n' ex"... ...
1608D4:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
1608D6:  BL              sub_DC8D4
