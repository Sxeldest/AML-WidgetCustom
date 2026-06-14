; =========================================================
; Game Engine Function: sub_F64C4
; Address            : 0xF64C4 - 0xF64EE
; =========================================================

F64C4:  PUSH            {R7,LR}
F64C6:  MOV             R7, SP
F64C8:  CMP.W           R1, #0x40000000
F64CC:  BCS             loc_F64EA
F64CE:  LDR             R2, [R0]
F64D0:  LDR             R0, [R0,#8]
F64D2:  SUBS            R0, R0, R2
F64D4:  LDR             R2, =0x7FFFFFFC
F64D6:  CMP.W           R1, R0,ASR#1
F64DA:  IT LS
F64DC:  ASRLS           R1, R0, #1
F64DE:  CMP             R0, R2
F64E0:  IT CS
F64E2:  MOVCS           R1, #0x3FFFFFFF
F64E6:  MOV             R0, R1
F64E8:  POP             {R7,PC}
F64EA:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
