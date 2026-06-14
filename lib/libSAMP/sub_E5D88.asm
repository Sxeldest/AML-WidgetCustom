; =========================================================
; Game Engine Function: sub_E5D88
; Address            : 0xE5D88 - 0xE5DCA
; =========================================================

E5D88:  PUSH            {R4-R7,LR}
E5D8A:  ADD             R7, SP, #0xC
E5D8C:  PUSH.W          {R11}
E5D90:  MOV             R4, R0
E5D92:  MOVS            R0, #0
E5D94:  MOV             R6, R2
E5D96:  MOV             R5, R1
E5D98:  STRD.W          R0, R3, [R4,#0xC]
E5D9C:  CBZ             R1, loc_E5DAA
E5D9E:  CMP.W           R5, #0x10000000
E5DA2:  BCS             loc_E5DC2
E5DA4:  LSLS            R0, R5, #4; unsigned int
E5DA6:  BLX             j__Znwj; operator new(uint)
E5DAA:  ADD.W           R1, R0, R6,LSL#4
E5DAE:  ADD.W           R2, R0, R5,LSL#4
E5DB2:  STRD.W          R0, R1, [R4]
E5DB6:  MOV             R0, R4
E5DB8:  STRD.W          R1, R2, [R4,#8]
E5DBC:  POP.W           {R11}
E5DC0:  POP             {R4-R7,PC}
E5DC2:  LDR             R0, =(aAllocatorTAllo - 0xE5DC8); "allocator<T>::allocate(size_t n) 'n' ex"... ...
E5DC4:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
E5DC6:  BL              sub_DC8D4
