; =========================================================
; Game Engine Function: sub_E9658
; Address            : 0xE9658 - 0xE9704
; =========================================================

E9658:  PUSH            {R4-R7,LR}
E965A:  ADD             R7, SP, #0xC
E965C:  PUSH.W          {R8}
E9660:  SUB             SP, SP, #0x18
E9662:  MOV             R4, R0
E9664:  MOV             R8, R1
E9666:  LDR             R0, [R0]
E9668:  LDR             R1, [R4,#4]
E966A:  SUBS            R6, R1, R0
E966C:  MOVS            R1, #1
E966E:  ADD.W           R5, R1, R6,ASR#2
E9672:  CMP.W           R5, #0x40000000
E9676:  BCS             loc_E96F6
E9678:  MOV             R1, R4
E967A:  LDR.W           R2, [R1,#8]!
E967E:  STR             R1, [SP,#0x28+var_14]
E9680:  MOVW            R1, #0xFFFC
E9684:  SUBS            R0, R2, R0
E9686:  MOVT            R1, #0x7FFF
E968A:  CMP.W           R5, R0,ASR#1
E968E:  IT LS
E9690:  ASRLS           R5, R0, #1
E9692:  CMP             R0, R1
E9694:  IT CS
E9696:  MOVCS           R5, #0x3FFFFFFF
E969A:  CBZ             R5, loc_E96AA
E969C:  CMP.W           R5, #0x40000000
E96A0:  BCS             loc_E96FC
E96A2:  LSLS            R0, R5, #2; unsigned int
E96A4:  BLX             j__Znwj; operator new(uint)
E96A8:  B               loc_E96AC
E96AA:  MOVS            R0, #0
E96AC:  ASRS            R1, R6, #2
E96AE:  ADD.W           R2, R0, R5,LSL#2
E96B2:  ADD.W           R1, R0, R1,LSL#2
E96B6:  STR             R2, [SP,#0x28+var_18]
E96B8:  LDR.W           R2, [R8]
E96BC:  STRD.W          R0, R1, [SP,#0x28+var_24]
E96C0:  STR.W           R2, [R1],#4
E96C4:  STR             R1, [SP,#0x28+var_1C]
E96C6:  ADD             R1, SP, #0x28+var_24
E96C8:  MOV             R0, R4
E96CA:  BL              sub_E972C
E96CE:  LDRD.W          R1, R0, [SP,#0x28+var_20]
E96D2:  CMP             R0, R1
E96D4:  ITTTT NE
E96D6:  SUBNE           R1, R0, R1
E96D8:  SUBNE           R1, #4
E96DA:  MVNNE.W         R1, R1,LSR#2
E96DE:  ADDNE.W         R0, R0, R1,LSL#2
E96E2:  IT NE
E96E4:  STRNE           R0, [SP,#0x28+var_1C]
E96E6:  LDR             R0, [SP,#0x28+var_24]; void *
E96E8:  CBZ             R0, loc_E96EE
E96EA:  BLX             j__ZdlPv; operator delete(void *)
E96EE:  ADD             SP, SP, #0x18
E96F0:  POP.W           {R8}
E96F4:  POP             {R4-R7,PC}
E96F6:  MOV             R0, R4
E96F8:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
E96FC:  LDR             R0, =(aAllocatorTAllo - 0xE9702); "allocator<T>::allocate(size_t n) 'n' ex"... ...
E96FE:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
E9700:  BL              sub_DC8D4
