; =========================================================
; Game Engine Function: sub_7DD96
; Address            : 0x7DD96 - 0x7DE04
; =========================================================

7DD96:  PUSH            {R4-R7,LR}
7DD98:  ADD             R7, SP, #0xC
7DD9A:  PUSH.W          {R8-R10}
7DD9E:  LDR.W           R9, [R7,#arg_0]
7DDA2:  MOV.W           R10, #0
7DDA6:  MOV             R5, R0
7DDA8:  MOV             R8, R3
7DDAA:  STR.W           R10, [R5,#8]!
7DDAE:  MOV             R4, R0
7DDB0:  CMP.W           R9, #0
7DDB4:  STRD.W          R10, R10, [R0,#0xC]
7DDB8:  STRD.W          R1, R2, [R0]
7DDBC:  BEQ             loc_7DDDE
7DDBE:  CMP.W           R9, #0xFFFFFFFF
7DDC2:  BLE             loc_7DDFE
7DDC4:  MOV             R0, R9; unsigned int
7DDC6:  BLX             j__Znwj; operator new(uint)
7DDCA:  MOV             R1, R9; n
7DDCC:  ADD.W           R5, R0, R9
7DDD0:  MOV             R6, R0
7DDD2:  STR             R5, [R4,#0x10]
7DDD4:  STR             R0, [R4,#8]
7DDD6:  BLX             sub_10967C
7DDDA:  STR             R5, [R4,#0xC]
7DDDC:  B               loc_7DDE0
7DDDE:  MOVS            R6, #0
7DDE0:  MOV             R0, R4
7DDE2:  MOV             R1, R8; src
7DDE4:  STR.W           R10, [R0,#0x18]!
7DDE8:  MOV             R2, R9; n
7DDEA:  STR             R0, [R4,#0x14]
7DDEC:  MOV             R0, R6; dest
7DDEE:  STR.W           R10, [R4,#0x1C]
7DDF2:  BLX             j_memcpy
7DDF6:  MOV             R0, R4
7DDF8:  POP.W           {R8-R10}
7DDFC:  POP             {R4-R7,PC}
7DDFE:  MOV             R0, R5
7DE00:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
