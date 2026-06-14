; =========================================================
; Game Engine Function: sub_13C248
; Address            : 0x13C248 - 0x13C26E
; =========================================================

13C248:  PUSH            {R4,R5,R7,LR}
13C24A:  ADD             R7, SP, #8
13C24C:  MOV             R4, R0
13C24E:  CMP.W           R1, #0x40000000
13C252:  BCS             loc_13C268
13C254:  LSLS            R0, R1, #2; unsigned int
13C256:  MOV             R5, R1
13C258:  BLX             j__Znwj; operator new(uint)
13C25C:  ADD.W           R1, R0, R5,LSL#2
13C260:  STRD.W          R0, R0, [R4]
13C264:  STR             R1, [R4,#8]
13C266:  POP             {R4,R5,R7,PC}
13C268:  MOV             R0, R4
13C26A:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
