; =========================================================
; Game Engine Function: _Z16_rwResHeapCallocPvjj
; Address            : 0x1E6DDC - 0x1E6DFC
; =========================================================

1E6DDC:  PUSH            {R4,R5,R7,LR}
1E6DDE:  ADD             R7, SP, #8
1E6DE0:  MUL.W           R4, R2, R1
1E6DE4:  MOV             R1, R4; unsigned int
1E6DE6:  BLX             j__Z15_rwResHeapAllocPvj; _rwResHeapAlloc(void *,uint)
1E6DEA:  MOV             R5, R0
1E6DEC:  CMP             R5, #0
1E6DEE:  ITTT NE
1E6DF0:  MOVNE           R0, R5
1E6DF2:  MOVNE           R1, R4
1E6DF4:  BLXNE           j___aeabi_memclr8_1
1E6DF8:  MOV             R0, R5
1E6DFA:  POP             {R4,R5,R7,PC}
