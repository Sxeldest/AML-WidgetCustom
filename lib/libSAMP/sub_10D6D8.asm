; =========================================================
; Game Engine Function: sub_10D6D8
; Address            : 0x10D6D8 - 0x10D784
; =========================================================

10D6D8:  PUSH            {R4-R7,LR}
10D6DA:  ADD             R7, SP, #0xC
10D6DC:  PUSH.W          {R8}
10D6E0:  SUB             SP, SP, #0x18
10D6E2:  MOV             R4, R0
10D6E4:  MOV             R8, R1
10D6E6:  LDR             R0, [R0]
10D6E8:  LDR             R1, [R4,#4]
10D6EA:  SUBS            R6, R1, R0
10D6EC:  MOVS            R1, #1
10D6EE:  ADD.W           R5, R1, R6,ASR#2
10D6F2:  CMP.W           R5, #0x40000000
10D6F6:  BCS             loc_10D776
10D6F8:  MOV             R1, R4
10D6FA:  LDR.W           R2, [R1,#8]!
10D6FE:  STR             R1, [SP,#0x28+var_14]
10D700:  MOVW            R1, #0xFFFC
10D704:  SUBS            R0, R2, R0
10D706:  MOVT            R1, #0x7FFF
10D70A:  CMP.W           R5, R0,ASR#1
10D70E:  IT LS
10D710:  ASRLS           R5, R0, #1
10D712:  CMP             R0, R1
10D714:  IT CS
10D716:  MOVCS           R5, #0x3FFFFFFF
10D71A:  CBZ             R5, loc_10D72A
10D71C:  CMP.W           R5, #0x40000000
10D720:  BCS             loc_10D77C
10D722:  LSLS            R0, R5, #2; unsigned int
10D724:  BLX             j__Znwj; operator new(uint)
10D728:  B               loc_10D72C
10D72A:  MOVS            R0, #0
10D72C:  ASRS            R1, R6, #2
10D72E:  ADD.W           R2, R0, R5,LSL#2
10D732:  ADD.W           R1, R0, R1,LSL#2
10D736:  STR             R2, [SP,#0x28+var_18]
10D738:  LDR.W           R2, [R8]
10D73C:  STRD.W          R0, R1, [SP,#0x28+var_24]
10D740:  STR.W           R2, [R1],#4
10D744:  STR             R1, [SP,#0x28+var_1C]
10D746:  ADD             R1, SP, #0x28+var_24
10D748:  MOV             R0, R4
10D74A:  BL              sub_10D7AC
10D74E:  LDRD.W          R1, R0, [SP,#0x28+var_20]
10D752:  CMP             R0, R1
10D754:  ITTTT NE
10D756:  SUBNE           R1, R0, R1
10D758:  SUBNE           R1, #4
10D75A:  MVNNE.W         R1, R1,LSR#2
10D75E:  ADDNE.W         R0, R0, R1,LSL#2
10D762:  IT NE
10D764:  STRNE           R0, [SP,#0x28+var_1C]
10D766:  LDR             R0, [SP,#0x28+var_24]; void *
10D768:  CBZ             R0, loc_10D76E
10D76A:  BLX             j__ZdlPv; operator delete(void *)
10D76E:  ADD             SP, SP, #0x18
10D770:  POP.W           {R8}
10D774:  POP             {R4-R7,PC}
10D776:  MOV             R0, R4
10D778:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
10D77C:  LDR             R0, =(aAllocatorTAllo - 0x10D782); "allocator<T>::allocate(size_t n) 'n' ex"... ...
10D77E:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
10D780:  BL              sub_DC8D4
