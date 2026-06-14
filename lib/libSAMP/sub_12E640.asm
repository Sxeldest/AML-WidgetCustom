; =========================================================
; Game Engine Function: sub_12E640
; Address            : 0x12E640 - 0x12E682
; =========================================================

12E640:  PUSH            {R4-R7,LR}
12E642:  ADD             R7, SP, #0xC
12E644:  PUSH.W          {R11}
12E648:  MOV             R4, R0
12E64A:  MOVS            R0, #0
12E64C:  MOV             R6, R2
12E64E:  MOV             R5, R1
12E650:  STRD.W          R0, R3, [R4,#0xC]
12E654:  CBZ             R1, loc_12E662
12E656:  CMP.W           R5, #0x20000000
12E65A:  BCS             loc_12E67A
12E65C:  LSLS            R0, R5, #3; unsigned int
12E65E:  BLX             j__Znwj; operator new(uint)
12E662:  ADD.W           R1, R0, R6,LSL#3
12E666:  ADD.W           R2, R0, R5,LSL#3
12E66A:  STRD.W          R0, R1, [R4]
12E66E:  MOV             R0, R4
12E670:  STRD.W          R1, R2, [R4,#8]
12E674:  POP.W           {R11}
12E678:  POP             {R4-R7,PC}
12E67A:  LDR             R0, =(aAllocatorTAllo - 0x12E680); "allocator<T>::allocate(size_t n) 'n' ex"... ...
12E67C:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
12E67E:  BL              sub_DC8D4
