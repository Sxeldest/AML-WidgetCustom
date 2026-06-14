; =========================================================
; Game Engine Function: sub_111F24
; Address            : 0x111F24 - 0x111F4A
; =========================================================

111F24:  PUSH            {R4,R5,R7,LR}
111F26:  ADD             R7, SP, #8
111F28:  MOV             R4, R0
111F2A:  CMP.W           R1, #0x20000000
111F2E:  BCS             loc_111F44
111F30:  LSLS            R0, R1, #3; unsigned int
111F32:  MOV             R5, R1
111F34:  BLX             j__Znwj; operator new(uint)
111F38:  ADD.W           R1, R0, R5,LSL#3
111F3C:  STRD.W          R0, R0, [R4]
111F40:  STR             R1, [R4,#8]
111F42:  POP             {R4,R5,R7,PC}
111F44:  MOV             R0, R4
111F46:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
