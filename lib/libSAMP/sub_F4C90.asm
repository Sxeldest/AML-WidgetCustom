; =========================================================
; Game Engine Function: sub_F4C90
; Address            : 0xF4C90 - 0xF4CE4
; =========================================================

F4C90:  PUSH            {R4-R7,LR}
F4C92:  ADD             R7, SP, #0xC
F4C94:  PUSH.W          {R11}
F4C98:  MOV             R4, R0
F4C9A:  MOVS            R0, #0
F4C9C:  MOV             R6, R2
F4C9E:  MOV             R5, R1
F4CA0:  STRD.W          R0, R3, [R4,#0xC]
F4CA4:  CBZ             R1, loc_F4CBC
F4CA6:  MOV             R0, #0x15555556
F4CAE:  CMP             R5, R0
F4CB0:  BCS             loc_F4CDC
F4CB2:  ADD.W           R0, R5, R5,LSL#1
F4CB6:  LSLS            R0, R0, #2; unsigned int
F4CB8:  BLX             j__Znwj; operator new(uint)
F4CBC:  ADD.W           R1, R6, R6,LSL#1
F4CC0:  ADD.W           R2, R5, R5,LSL#1
F4CC4:  ADD.W           R1, R0, R1,LSL#2
F4CC8:  ADD.W           R2, R0, R2,LSL#2
F4CCC:  STRD.W          R0, R1, [R4]
F4CD0:  MOV             R0, R4
F4CD2:  STRD.W          R1, R2, [R4,#8]
F4CD6:  POP.W           {R11}
F4CDA:  POP             {R4-R7,PC}
F4CDC:  LDR             R0, =(aAllocatorTAllo - 0xF4CE2); "allocator<T>::allocate(size_t n) 'n' ex"... ...
F4CDE:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
F4CE0:  BL              sub_DC8D4
