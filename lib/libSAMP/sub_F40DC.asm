; =========================================================
; Game Engine Function: sub_F40DC
; Address            : 0xF40DC - 0xF411E
; =========================================================

F40DC:  PUSH            {R4-R7,LR}
F40DE:  ADD             R7, SP, #0xC
F40E0:  PUSH.W          {R11}
F40E4:  MOV             R4, R0
F40E6:  MOVS            R0, #0
F40E8:  MOV             R6, R2
F40EA:  MOV             R5, R1
F40EC:  STRD.W          R0, R3, [R4,#0xC]
F40F0:  CBZ             R1, loc_F40FE
F40F2:  CMP.W           R5, #0x10000000
F40F6:  BCS             loc_F4116
F40F8:  LSLS            R0, R5, #4; unsigned int
F40FA:  BLX             j__Znwj; operator new(uint)
F40FE:  ADD.W           R1, R0, R6,LSL#4
F4102:  ADD.W           R2, R0, R5,LSL#4
F4106:  STRD.W          R0, R1, [R4]
F410A:  MOV             R0, R4
F410C:  STRD.W          R1, R2, [R4,#8]
F4110:  POP.W           {R11}
F4114:  POP             {R4-R7,PC}
F4116:  LDR             R0, =(aAllocatorTAllo - 0xF411C); "allocator<T>::allocate(size_t n) 'n' ex"... ...
F4118:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
F411A:  BL              sub_DC8D4
