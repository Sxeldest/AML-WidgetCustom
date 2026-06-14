; =========================================================
; Game Engine Function: sub_FD334
; Address            : 0xFD334 - 0xFD35E
; =========================================================

FD334:  PUSH            {R7,LR}
FD336:  MOV             R7, SP
FD338:  CMP.W           R1, #0x20000000
FD33C:  BCS             loc_FD35A
FD33E:  LDR             R2, [R0]
FD340:  LDR             R0, [R0,#8]
FD342:  SUBS            R0, R0, R2
FD344:  LDR             R2, =0x7FFFFFF8
FD346:  CMP.W           R1, R0,ASR#2
FD34A:  IT LS
FD34C:  ASRLS           R1, R0, #2
FD34E:  CMP             R0, R2
FD350:  IT CS
FD352:  MOVCS           R1, #0x1FFFFFFF
FD356:  MOV             R0, R1
FD358:  POP             {R7,PC}
FD35A:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
