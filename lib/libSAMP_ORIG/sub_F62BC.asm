; =========================================================
; Game Engine Function: sub_F62BC
; Address            : 0xF62BC - 0xF62E4
; =========================================================

F62BC:  PUSH            {R4,R5,R7,LR}
F62BE:  ADD             R7, SP, #8
F62C0:  MOV             R4, R0
F62C2:  CMP.W           R1, #0x40000000
F62C6:  BCS             loc_F62DE
F62C8:  ADD.W           R0, R4, #0x10
F62CC:  MOV             R5, R1
F62CE:  BL              sub_F631C
F62D2:  ADD.W           R1, R0, R5,LSL#2
F62D6:  STRD.W          R0, R0, [R4]
F62DA:  STR             R1, [R4,#8]
F62DC:  POP             {R4,R5,R7,PC}
F62DE:  MOV             R0, R4
F62E0:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
