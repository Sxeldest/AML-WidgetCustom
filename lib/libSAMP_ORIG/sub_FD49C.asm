; =========================================================
; Game Engine Function: sub_FD49C
; Address            : 0xFD49C - 0xFD4C6
; =========================================================

FD49C:  PUSH            {R7,LR}
FD49E:  MOV             R7, SP
FD4A0:  CMP.W           R1, #0x40000000
FD4A4:  BCS             loc_FD4C2
FD4A6:  LDR             R2, [R0]
FD4A8:  LDR             R0, [R0,#8]
FD4AA:  SUBS            R0, R0, R2
FD4AC:  LDR             R2, =0x7FFFFFFC
FD4AE:  CMP.W           R1, R0,ASR#1
FD4B2:  IT LS
FD4B4:  ASRLS           R1, R0, #1
FD4B6:  CMP             R0, R2
FD4B8:  IT CS
FD4BA:  MOVCS           R1, #0x3FFFFFFF
FD4BE:  MOV             R0, R1
FD4C0:  POP             {R7,PC}
FD4C2:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
