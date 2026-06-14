; =========================================================
; Game Engine Function: _ZN9OALBufferC2EPvjjj
; Address            : 0x27F6D8 - 0x27F744
; =========================================================

27F6D8:  PUSH            {R4-R7,LR}; Alternative name is 'OALBuffer::OALBuffer(void *, unsigned int, unsigned int, unsigned int)'
27F6DA:  ADD             R7, SP, #0xC
27F6DC:  PUSH.W          {R8}
27F6E0:  SUB             SP, SP, #8
27F6E2:  MOV             R8, R1
27F6E4:  LDR             R1, =(_ZTV7OALBase_ptr - 0x27F6EE)
27F6E6:  MOV             R5, R0
27F6E8:  LDR             R0, =(_ZN7OALBase11livingCountE_ptr - 0x27F6F2)
27F6EA:  ADD             R1, PC; _ZTV7OALBase_ptr
27F6EC:  MOV             R4, R2
27F6EE:  ADD             R0, PC; _ZN7OALBase11livingCountE_ptr
27F6F0:  LDR             R2, =(_ZTV9OALBuffer_ptr - 0x27F6FE)
27F6F2:  LDR             R1, [R1]; `vtable for'OALBase ...
27F6F4:  MOV             R6, R3
27F6F6:  LDR             R0, [R0]; OALBase::livingCount ...
27F6F8:  MOVS            R3, #1
27F6FA:  ADD             R2, PC; _ZTV9OALBuffer_ptr
27F6FC:  ADDS            R1, #8
27F6FE:  STRD.W          R1, R3, [R5]
27F702:  LDR             R1, [R0]; OALBase::livingCount
27F704:  LDR             R2, [R2]; `vtable for'OALBuffer ...
27F706:  ADDS            R1, #1
27F708:  STR             R1, [R0]; OALBase::livingCount
27F70A:  MOVS            R0, #0
27F70C:  ADD.W           R1, R5, #8
27F710:  STR             R0, [R5,#0xC]
27F712:  ADD.W           R0, R2, #8
27F716:  STR             R0, [R5]
27F718:  MOVS            R0, #1
27F71A:  BLX             j_alGenBuffers
27F71E:  LDR             R2, [R7,#arg_0]
27F720:  MOVW            R1, #0x1103
27F724:  LDR             R0, [R5,#8]
27F726:  MOV             R3, R4
27F728:  CMP             R2, #1
27F72A:  STR             R6, [SP,#0x18+var_18]
27F72C:  IT EQ
27F72E:  MOVWEQ          R1, #0x1101
27F732:  MOV             R2, R8
27F734:  BLX             j_alBufferData
27F738:  STR             R4, [R5,#0x10]
27F73A:  MOV             R0, R5
27F73C:  ADD             SP, SP, #8
27F73E:  POP.W           {R8}
27F742:  POP             {R4-R7,PC}
