; =========================================================
; Game Engine Function: sub_14F668
; Address            : 0x14F668 - 0x14F712
; =========================================================

14F668:  PUSH            {R4-R7,LR}
14F66A:  ADD             R7, SP, #0xC
14F66C:  PUSH.W          {R8}
14F670:  SUB             SP, SP, #0x18
14F672:  MOV             R4, R0
14F674:  MOV             R8, R1
14F676:  LDR             R0, [R0]
14F678:  LDR             R1, [R4,#4]
14F67A:  SUBS            R6, R1, R0
14F67C:  CMN.W           R6, #3
14F680:  BLE             loc_14F704
14F682:  MOVS            R1, #1
14F684:  ADD.W           R5, R1, R6,ASR#1
14F688:  MOV             R1, R4
14F68A:  LDR.W           R2, [R1,#8]!
14F68E:  STR             R1, [SP,#0x28+var_14]
14F690:  MOVW            R1, #0xFFFE
14F694:  SUBS            R0, R2, R0
14F696:  MOVT            R1, #0x7FFF
14F69A:  CMP             R0, R5
14F69C:  IT CS
14F69E:  MOVCS           R5, R0
14F6A0:  CMP             R0, R1
14F6A2:  IT CS
14F6A4:  MOVCS           R5, #0x7FFFFFFF
14F6A8:  CBZ             R5, loc_14F6B8
14F6AA:  CMP.W           R5, #0xFFFFFFFF
14F6AE:  BLE             loc_14F70A
14F6B0:  LSLS            R0, R5, #1; unsigned int
14F6B2:  BLX             j__Znwj; operator new(uint)
14F6B6:  B               loc_14F6BA
14F6B8:  MOVS            R0, #0
14F6BA:  ASRS            R1, R6, #1
14F6BC:  ADD.W           R2, R0, R5,LSL#1
14F6C0:  ADD.W           R1, R0, R1,LSL#1
14F6C4:  STR             R2, [SP,#0x28+var_18]
14F6C6:  LDRH.W          R2, [R8]
14F6CA:  STRD.W          R0, R1, [SP,#0x28+var_24]
14F6CE:  STRH.W          R2, [R1],#2
14F6D2:  STR             R1, [SP,#0x28+var_1C]
14F6D4:  ADD             R1, SP, #0x28+var_24
14F6D6:  MOV             R0, R4
14F6D8:  BL              sub_14F62C
14F6DC:  LDRD.W          R1, R0, [SP,#0x28+var_20]
14F6E0:  CMP             R0, R1
14F6E2:  ITTTT NE
14F6E4:  SUBNE           R1, R0, R1
14F6E6:  SUBNE           R1, #2
14F6E8:  MVNNE.W         R1, R1,LSR#1
14F6EC:  ADDNE.W         R0, R0, R1,LSL#1
14F6F0:  IT NE
14F6F2:  STRNE           R0, [SP,#0x28+var_1C]
14F6F4:  LDR             R0, [SP,#0x28+var_24]; void *
14F6F6:  CBZ             R0, loc_14F6FC
14F6F8:  BLX             j__ZdlPv; operator delete(void *)
14F6FC:  ADD             SP, SP, #0x18
14F6FE:  POP.W           {R8}
14F702:  POP             {R4-R7,PC}
14F704:  MOV             R0, R4
14F706:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
14F70A:  LDR             R0, =(aAllocatorTAllo - 0x14F710); "allocator<T>::allocate(size_t n) 'n' ex"... ...
14F70C:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
14F70E:  BL              sub_DC8D4
