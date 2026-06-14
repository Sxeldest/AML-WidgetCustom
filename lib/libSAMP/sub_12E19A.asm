; =========================================================
; Game Engine Function: sub_12E19A
; Address            : 0x12E19A - 0x12E1C0
; =========================================================

12E19A:  PUSH            {R4,R5,R7,LR}
12E19C:  ADD             R7, SP, #8
12E19E:  MOV             R4, R0
12E1A0:  CMP.W           R1, #0x20000000
12E1A4:  BCS             loc_12E1BA
12E1A6:  LSLS            R0, R1, #3; unsigned int
12E1A8:  MOV             R5, R1
12E1AA:  BLX             j__Znwj; operator new(uint)
12E1AE:  ADD.W           R1, R0, R5,LSL#3
12E1B2:  STRD.W          R0, R0, [R4]
12E1B6:  STR             R1, [R4,#8]
12E1B8:  POP             {R4,R5,R7,PC}
12E1BA:  MOV             R0, R4
12E1BC:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
