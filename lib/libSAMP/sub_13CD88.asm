; =========================================================
; Game Engine Function: sub_13CD88
; Address            : 0x13CD88 - 0x13CDCA
; =========================================================

13CD88:  PUSH            {R4-R7,LR}
13CD8A:  ADD             R7, SP, #0xC
13CD8C:  PUSH.W          {R11}
13CD90:  MOV             R4, R0
13CD92:  MOVS            R0, #0
13CD94:  MOV             R6, R2
13CD96:  MOV             R5, R1
13CD98:  STRD.W          R0, R3, [R4,#0xC]
13CD9C:  CBZ             R1, loc_13CDAA
13CD9E:  CMP.W           R5, #0x20000000
13CDA2:  BCS             loc_13CDC2
13CDA4:  LSLS            R0, R5, #3; unsigned int
13CDA6:  BLX             j__Znwj; operator new(uint)
13CDAA:  ADD.W           R1, R0, R6,LSL#3
13CDAE:  ADD.W           R2, R0, R5,LSL#3
13CDB2:  STRD.W          R0, R1, [R4]
13CDB6:  MOV             R0, R4
13CDB8:  STRD.W          R1, R2, [R4,#8]
13CDBC:  POP.W           {R11}
13CDC0:  POP             {R4-R7,PC}
13CDC2:  LDR             R0, =(aAllocatorTAllo - 0x13CDC8); "allocator<T>::allocate(size_t n) 'n' ex"... ...
13CDC4:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
13CDC6:  BL              sub_DC8D4
