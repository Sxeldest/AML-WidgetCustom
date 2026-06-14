; =========================================================
; Game Engine Function: sub_7F678
; Address            : 0x7F678 - 0x7F81A
; =========================================================

7F678:  PUSH            {R4-R7,LR}
7F67A:  ADD             R7, SP, #0xC
7F67C:  PUSH.W          {R8-R11}
7F680:  SUB             SP, SP, #0x14
7F682:  LDRD.W          R5, R9, [R0]
7F686:  MOV             R10, R1
7F688:  MOVW            R1, #0xAAAB
7F68C:  MOV             R8, R0
7F68E:  SUB.W           R0, R9, R5
7F692:  MOVT            R1, #0x2AAA
7F696:  SMMUL.W         R0, R0, R1
7F69A:  ASRS            R1, R0, #2
7F69C:  ADD.W           R6, R1, R0,LSR#31
7F6A0:  MOVW            R0, #0xAAAA
7F6A4:  ADDS            R4, R6, #1
7F6A6:  MOVT            R0, #0xAAA
7F6AA:  CMP             R4, R0
7F6AC:  BHI.W           loc_7F80C
7F6B0:  LDR.W           R1, [R8,#8]
7F6B4:  MOV             R2, #0xAAAAAAAB
7F6BC:  SUBS            R1, R1, R5
7F6BE:  ASRS            R1, R1, #3
7F6C0:  MULS            R1, R2
7F6C2:  MOV             R2, #0x5555555
7F6CA:  CMP.W           R4, R1,LSL#1
7F6CE:  IT LS
7F6D0:  LSLLS           R4, R1, #1
7F6D2:  CMP             R1, R2
7F6D4:  IT CS
7F6D6:  MOVCS           R4, R0
7F6D8:  CBZ             R4, loc_7F6EE
7F6DA:  CMP             R4, R0
7F6DC:  BHI.W           loc_7F812
7F6E0:  ADD.W           R0, R4, R4,LSL#1
7F6E4:  LSLS            R0, R0, #3; unsigned int
7F6E6:  BLX             j__Znwj; operator new(uint)
7F6EA:  MOV             R11, R0
7F6EC:  B               loc_7F6F2
7F6EE:  MOV.W           R11, #0
7F6F2:  MOV             R1, R10
7F6F4:  ADD.W           R2, R6, R6,LSL#1
7F6F8:  LDR.W           R0, [R1,#0x10]!
7F6FC:  ADD.W           R6, R11, R2,LSL#3
7F700:  CBZ             R0, loc_7F70A
7F702:  CMP             R10, R0
7F704:  BEQ             loc_7F79C
7F706:  STR             R0, [R6,#0x10]
7F708:  B               loc_7F70E
7F70A:  ADD.W           R1, R6, #0x10
7F70E:  MOVS            R0, #0
7F710:  STR             R0, [R1]
7F712:  CMP             R9, R5
7F714:  BEQ             loc_7F7AE
7F716:  SUB.W           R10, R9, #0x18
7F71A:  STRD.W          R11, R4, [SP,#0x30+var_30]
7F71E:  STR.W           R8, [SP,#0x30+var_28]
7F722:  SUB.W           R0, R6, #8
7F726:  MOV.W           R8, #0
7F72A:  MOV.W           R11, #0
7F72E:  MOV             R4, R9
7F730:  STR             R0, [SP,#0x30+var_20]
7F732:  SUB.W           R0, R6, #0x18
7F736:  STR             R0, [SP,#0x30+var_24]
7F738:  B               loc_7F750
7F73A:  LDR             R0, [SP,#0x30+var_20]
7F73C:  ADD             R0, R11
7F73E:  STR.W           R8, [R0]
7F742:  SUB.W           R11, R11, #0x18
7F746:  SUBS            R4, #0x18
7F748:  ADD.W           R0, R9, R11
7F74C:  CMP             R0, R5
7F74E:  BEQ             loc_7F78A
7F750:  ADD.W           R0, R9, R11
7F754:  LDR.W           R1, [R0,#-8]
7F758:  CMP             R1, #0
7F75A:  BEQ             loc_7F73A
7F75C:  ADD.W           R2, R10, R11
7F760:  CMP             R2, R1
7F762:  BEQ             loc_7F772
7F764:  SUB.W           R0, R4, #8
7F768:  ADD.W           R2, R6, R11
7F76C:  STR.W           R1, [R2,#-8]
7F770:  B               loc_7F73E
7F772:  LDR             R1, [SP,#0x30+var_24]
7F774:  ADD.W           R2, R6, R11
7F778:  ADD             R1, R11
7F77A:  STR.W           R1, [R2,#-8]
7F77E:  LDR.W           R0, [R0,#-8]
7F782:  LDR             R2, [R0]
7F784:  LDR             R2, [R2,#0xC]
7F786:  BLX             R2
7F788:  B               loc_7F742
7F78A:  LDR.W           R8, [SP,#0x30+var_28]
7F78E:  ADD.W           R0, R6, R11
7F792:  LDRD.W          R11, R4, [SP,#0x30+var_30]
7F796:  LDR.W           R9, [R8]
7F79A:  B               loc_7F7B0
7F79C:  LDR             R1, [R0]
7F79E:  STR             R6, [R6,#0x10]
7F7A0:  LDR             R2, [R1,#0xC]
7F7A2:  MOV             R1, R6
7F7A4:  BLX             R2
7F7A6:  LDRD.W          R5, R9, [R8]
7F7AA:  CMP             R9, R5
7F7AC:  BNE             loc_7F716
7F7AE:  MOV             R0, R6
7F7B0:  ADD.W           R1, R4, R4,LSL#1
7F7B4:  LDR.W           R4, [R8,#4]
7F7B8:  ADD.W           R2, R6, #0x18
7F7BC:  STR.W           R0, [R8]
7F7C0:  ADD.W           R1, R11, R1,LSL#3
7F7C4:  STR.W           R1, [R8,#8]
7F7C8:  STR.W           R2, [R8,#4]
7F7CC:  B               loc_7F7D8
7F7CE:  MOVS            R1, #4
7F7D0:  LDR             R2, [R0]
7F7D2:  LDR.W           R1, [R2,R1,LSL#2]
7F7D6:  BLX             R1
7F7D8:  CMP             R4, R9
7F7DA:  BEQ             loc_7F7EE
7F7DC:  LDR.W           R0, [R4,#-8]
7F7E0:  SUBS            R4, #0x18
7F7E2:  CMP             R4, R0
7F7E4:  BEQ             loc_7F7CE
7F7E6:  CMP             R0, #0
7F7E8:  BEQ             loc_7F7D8
7F7EA:  MOVS            R1, #5
7F7EC:  B               loc_7F7D0
7F7EE:  CMP.W           R9, #0
7F7F2:  BEQ             loc_7F804
7F7F4:  MOV             R0, R9; void *
7F7F6:  ADD             SP, SP, #0x14
7F7F8:  POP.W           {R8-R11}
7F7FC:  POP.W           {R4-R7,LR}
7F800:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
7F804:  ADD             SP, SP, #0x14
7F806:  POP.W           {R8-R11}
7F80A:  POP             {R4-R7,PC}
7F80C:  MOV             R0, R8
7F80E:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
7F812:  LDR             R0, =(aAllocatorTAllo - 0x7F818); "allocator<T>::allocate(size_t n) 'n' ex"... ...
7F814:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
7F816:  BL              sub_7B270
