; =========================================================
; Game Engine Function: sub_20E1AC
; Address            : 0x20E1AC - 0x20E1D4
; =========================================================

20E1AC:  PUSH            {R4,R5,R7,LR}
20E1AE:  ADD             R7, SP, #8
20E1B0:  MOV             R4, R0
20E1B2:  CMP.W           R1, #0x40000000
20E1B6:  BCS             loc_20E1CE
20E1B8:  ADD.W           R0, R4, #0x10
20E1BC:  MOV             R5, R1
20E1BE:  BL              sub_20E20C
20E1C2:  ADD.W           R1, R0, R5,LSL#2
20E1C6:  STRD.W          R0, R0, [R4]
20E1CA:  STR             R1, [R4,#8]
20E1CC:  POP             {R4,R5,R7,PC}
20E1CE:  MOV             R0, R4
20E1D0:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
