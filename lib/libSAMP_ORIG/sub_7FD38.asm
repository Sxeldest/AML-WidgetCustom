; =========================================================
; Game Engine Function: sub_7FD38
; Address            : 0x7FD38 - 0x7FD90
; =========================================================

7FD38:  PUSH            {R4-R7,LR}
7FD3A:  ADD             R7, SP, #0xC
7FD3C:  PUSH.W          {R8}
7FD40:  MOV             R4, R0
7FD42:  MOVS            R0, #0
7FD44:  MOV             R5, R1
7FD46:  STR             R0, [R4]
7FD48:  STR             R0, [R4,#4]
7FD4A:  LDR             R1, [R1]
7FD4C:  LDR             R2, [R5,#4]
7FD4E:  STR             R0, [R4,#8]
7FD50:  SUBS.W          R8, R2, R1
7FD54:  BEQ             loc_7FD82
7FD56:  CMP.W           R8, #0xFFFFFFFF
7FD5A:  BLE             loc_7FD8A
7FD5C:  MOV             R0, R8; unsigned int
7FD5E:  BLX             j__Znwj; operator new(uint)
7FD62:  MOV             R6, R0
7FD64:  ADD             R0, R8
7FD66:  STR             R0, [R4,#8]
7FD68:  STR             R6, [R4]
7FD6A:  STR             R6, [R4,#4]
7FD6C:  LDR             R1, [R5]; src
7FD6E:  LDR             R0, [R5,#4]
7FD70:  SUBS            R5, R0, R1
7FD72:  CMP             R5, #1
7FD74:  BLT             loc_7FD80
7FD76:  MOV             R0, R6; dest
7FD78:  MOV             R2, R5; n
7FD7A:  BLX             j_memcpy
7FD7E:  ADD             R6, R5
7FD80:  STR             R6, [R4,#4]
7FD82:  MOV             R0, R4
7FD84:  POP.W           {R8}
7FD88:  POP             {R4-R7,PC}
7FD8A:  MOV             R0, R4
7FD8C:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
