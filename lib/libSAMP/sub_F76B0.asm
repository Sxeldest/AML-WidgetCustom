; =========================================================
; Game Engine Function: sub_F76B0
; Address            : 0xF76B0 - 0xF775C
; =========================================================

F76B0:  PUSH            {R4-R7,LR}
F76B2:  ADD             R7, SP, #0xC
F76B4:  PUSH.W          {R8}
F76B8:  SUB             SP, SP, #0x18
F76BA:  MOV             R4, R0
F76BC:  MOV             R8, R1
F76BE:  LDR             R0, [R0]
F76C0:  LDR             R1, [R4,#4]
F76C2:  SUBS            R6, R1, R0
F76C4:  MOVS            R1, #1
F76C6:  ADD.W           R5, R1, R6,ASR#2
F76CA:  CMP.W           R5, #0x40000000
F76CE:  BCS             loc_F774E
F76D0:  MOV             R1, R4
F76D2:  LDR.W           R2, [R1,#8]!
F76D6:  STR             R1, [SP,#0x28+var_14]
F76D8:  MOVW            R1, #0xFFFC
F76DC:  SUBS            R0, R2, R0
F76DE:  MOVT            R1, #0x7FFF
F76E2:  CMP.W           R5, R0,ASR#1
F76E6:  IT LS
F76E8:  ASRLS           R5, R0, #1
F76EA:  CMP             R0, R1
F76EC:  IT CS
F76EE:  MOVCS           R5, #0x3FFFFFFF
F76F2:  CBZ             R5, loc_F7702
F76F4:  CMP.W           R5, #0x40000000
F76F8:  BCS             loc_F7754
F76FA:  LSLS            R0, R5, #2; unsigned int
F76FC:  BLX             j__Znwj; operator new(uint)
F7700:  B               loc_F7704
F7702:  MOVS            R0, #0
F7704:  ASRS            R1, R6, #2
F7706:  ADD.W           R2, R0, R5,LSL#2
F770A:  ADD.W           R1, R0, R1,LSL#2
F770E:  STR             R2, [SP,#0x28+var_18]
F7710:  LDR.W           R2, [R8]
F7714:  STRD.W          R0, R1, [SP,#0x28+var_24]
F7718:  STR.W           R2, [R1],#4
F771C:  STR             R1, [SP,#0x28+var_1C]
F771E:  ADD             R1, SP, #0x28+var_24
F7720:  MOV             R0, R4
F7722:  BL              sub_F7784
F7726:  LDRD.W          R1, R0, [SP,#0x28+var_20]
F772A:  CMP             R0, R1
F772C:  ITTTT NE
F772E:  SUBNE           R1, R0, R1
F7730:  SUBNE           R1, #4
F7732:  MVNNE.W         R1, R1,LSR#2
F7736:  ADDNE.W         R0, R0, R1,LSL#2
F773A:  IT NE
F773C:  STRNE           R0, [SP,#0x28+var_1C]
F773E:  LDR             R0, [SP,#0x28+var_24]; void *
F7740:  CBZ             R0, loc_F7746
F7742:  BLX             j__ZdlPv; operator delete(void *)
F7746:  ADD             SP, SP, #0x18
F7748:  POP.W           {R8}
F774C:  POP             {R4-R7,PC}
F774E:  MOV             R0, R4
F7750:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
F7754:  LDR             R0, =(aAllocatorTAllo - 0xF775A); "allocator<T>::allocate(size_t n) 'n' ex"... ...
F7756:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
F7758:  BL              sub_DC8D4
