; =========================================================
; Game Engine Function: _ZN9OALBufferC2EPvjS0_jjj
; Address            : 0x27F750 - 0x27F834
; =========================================================

27F750:  PUSH            {R4-R7,LR}; Alternative name is 'OALBuffer::OALBuffer(void *, unsigned int, void *, unsigned int, unsigned int, unsigned int)'
27F752:  ADD             R7, SP, #0xC
27F754:  PUSH.W          {R8-R11}
27F758:  SUB             SP, SP, #0xC
27F75A:  MOV             R4, R0
27F75C:  LDR             R0, =(_ZN7OALBase11livingCountE_ptr - 0x27F766)
27F75E:  MOV             R8, R1
27F760:  LDR             R1, =(_ZTV7OALBase_ptr - 0x27F76A)
27F762:  ADD             R0, PC; _ZN7OALBase11livingCountE_ptr
27F764:  MOV             R5, R2
27F766:  ADD             R1, PC; _ZTV7OALBase_ptr
27F768:  LDR             R2, =(_ZTV9OALBuffer_ptr - 0x27F774)
27F76A:  LDR             R0, [R0]; OALBase::livingCount ...
27F76C:  MOV             R9, R3
27F76E:  LDR             R1, [R1]; `vtable for'OALBase ...
27F770:  ADD             R2, PC; _ZTV9OALBuffer_ptr
27F772:  MOVS            R3, #1
27F774:  ADD.W           R10, R4, #8
27F778:  ADDS            R1, #8
27F77A:  STRD.W          R1, R3, [R4]
27F77E:  LDR             R1, [R0]; OALBase::livingCount
27F780:  LDR             R2, [R2]; `vtable for'OALBuffer ...
27F782:  ADDS            R1, #1
27F784:  STR             R1, [R0]; OALBase::livingCount
27F786:  ADD.W           R0, R2, #8
27F78A:  STR             R0, [R4]
27F78C:  MOVS            R0, #2
27F78E:  MOV             R1, R10
27F790:  BLX             j_alGenBuffers
27F794:  LDR             R1, [R7,#arg_8]
27F796:  MOVW            R6, #0x1103
27F79A:  LDR             R0, [R4,#0xC]
27F79C:  MOV             R3, R5
27F79E:  LDR             R2, [R7,#arg_4]
27F7A0:  CMP             R1, #1
27F7A2:  STR             R2, [SP,#0x28+var_28]
27F7A4:  IT EQ
27F7A6:  MOVWEQ          R6, #0x1101
27F7AA:  MOV             R1, R6
27F7AC:  MOV             R2, R8
27F7AE:  BLX             j_alBufferData
27F7B2:  LDR.W           R11, [R7,#arg_0]
27F7B6:  MOV.W           R0, R11,LSR#4
27F7BA:  CMP             R0, #0x18
27F7BC:  BHI             loc_27F812
27F7BE:  MOV.W           R0, R11,LSL#2; byte_count
27F7C2:  STR             R0, [SP,#0x28+var_20]
27F7C4:  BLX             malloc
27F7C8:  MOV             R1, R9; void *
27F7CA:  MOV             R2, R11; size_t
27F7CC:  MOV             R8, R0
27F7CE:  BLX             memcpy_1
27F7D2:  ADD.W           R0, R8, R11; void *
27F7D6:  MOV             R1, R9; void *
27F7D8:  MOV             R2, R11; size_t
27F7DA:  BLX             memcpy_1
27F7DE:  ADD.W           R0, R8, R11,LSL#1; void *
27F7E2:  MOV             R1, R9; void *
27F7E4:  MOV             R2, R11; size_t
27F7E6:  BLX             memcpy_1
27F7EA:  ADD.W           R0, R11, R11,LSL#1
27F7EE:  MOV             R1, R9; void *
27F7F0:  ADD             R0, R8; void *
27F7F2:  MOV             R2, R11; size_t
27F7F4:  BLX             memcpy_1
27F7F8:  LDR.W           R0, [R10]
27F7FC:  MOV             R2, R8
27F7FE:  LDR             R3, [SP,#0x28+var_20]
27F800:  LDR             R1, [R7,#arg_4]
27F802:  STR             R1, [SP,#0x28+var_28]
27F804:  MOV             R1, R6
27F806:  BLX             j_alBufferData
27F80A:  MOV             R0, R8; p
27F80C:  BLX             free
27F810:  B               loc_27F824
27F812:  LDR.W           R0, [R10]
27F816:  MOV             R2, R9
27F818:  LDR             R1, [R7,#arg_4]
27F81A:  MOV             R3, R11
27F81C:  STR             R1, [SP,#0x28+var_28]
27F81E:  MOV             R1, R6
27F820:  BLX             j_alBufferData
27F824:  ADD.W           R0, R11, R5
27F828:  STR             R0, [R4,#0x10]
27F82A:  MOV             R0, R4
27F82C:  ADD             SP, SP, #0xC
27F82E:  POP.W           {R8-R11}
27F832:  POP             {R4-R7,PC}
