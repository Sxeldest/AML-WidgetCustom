; =========================================================
; Game Engine Function: sub_EC16E
; Address            : 0xEC16E - 0xEC194
; =========================================================

EC16E:  PUSH            {R4,R5,R7,LR}
EC170:  ADD             R7, SP, #8
EC172:  MOV             R4, R0
EC174:  CMP.W           R1, #0x10000000
EC178:  BCS             loc_EC18E
EC17A:  LSLS            R0, R1, #4; unsigned int
EC17C:  MOV             R5, R1
EC17E:  BLX             j__Znwj; operator new(uint)
EC182:  ADD.W           R1, R0, R5,LSL#4
EC186:  STRD.W          R0, R0, [R4]
EC18A:  STR             R1, [R4,#8]
EC18C:  POP             {R4,R5,R7,PC}
EC18E:  MOV             R0, R4
EC190:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
