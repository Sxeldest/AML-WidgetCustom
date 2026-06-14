; =========================================================
; Game Engine Function: sub_7F828
; Address            : 0x7F828 - 0x7F9CA
; =========================================================

7F828:  PUSH            {R4-R7,LR}
7F82A:  ADD             R7, SP, #0xC
7F82C:  PUSH.W          {R8-R11}
7F830:  SUB             SP, SP, #0x14
7F832:  LDRD.W          R5, R9, [R0]
7F836:  MOV             R10, R1
7F838:  MOVW            R1, #0xAAAB
7F83C:  MOV             R8, R0
7F83E:  SUB.W           R0, R9, R5
7F842:  MOVT            R1, #0x2AAA
7F846:  SMMUL.W         R0, R0, R1
7F84A:  ASRS            R1, R0, #2
7F84C:  ADD.W           R6, R1, R0,LSR#31
7F850:  MOVW            R0, #0xAAAA
7F854:  ADDS            R4, R6, #1
7F856:  MOVT            R0, #0xAAA
7F85A:  CMP             R4, R0
7F85C:  BHI.W           loc_7F9BC
7F860:  LDR.W           R1, [R8,#8]
7F864:  MOV             R2, #0xAAAAAAAB
7F86C:  SUBS            R1, R1, R5
7F86E:  ASRS            R1, R1, #3
7F870:  MULS            R1, R2
7F872:  MOV             R2, #0x5555555
7F87A:  CMP.W           R4, R1,LSL#1
7F87E:  IT LS
7F880:  LSLLS           R4, R1, #1
7F882:  CMP             R1, R2
7F884:  IT CS
7F886:  MOVCS           R4, R0
7F888:  CBZ             R4, loc_7F89E
7F88A:  CMP             R4, R0
7F88C:  BHI.W           loc_7F9C2
7F890:  ADD.W           R0, R4, R4,LSL#1
7F894:  LSLS            R0, R0, #3; unsigned int
7F896:  BLX             j__Znwj; operator new(uint)
7F89A:  MOV             R11, R0
7F89C:  B               loc_7F8A2
7F89E:  MOV.W           R11, #0
7F8A2:  MOV             R1, R10
7F8A4:  ADD.W           R2, R6, R6,LSL#1
7F8A8:  LDR.W           R0, [R1,#0x10]!
7F8AC:  ADD.W           R6, R11, R2,LSL#3
7F8B0:  CBZ             R0, loc_7F8BA
7F8B2:  CMP             R10, R0
7F8B4:  BEQ             loc_7F94C
7F8B6:  STR             R0, [R6,#0x10]
7F8B8:  B               loc_7F8BE
7F8BA:  ADD.W           R1, R6, #0x10
7F8BE:  MOVS            R0, #0
7F8C0:  STR             R0, [R1]
7F8C2:  CMP             R9, R5
7F8C4:  BEQ             loc_7F95E
7F8C6:  SUB.W           R10, R9, #0x18
7F8CA:  STRD.W          R11, R4, [SP,#0x30+var_30]
7F8CE:  STR.W           R8, [SP,#0x30+var_28]
7F8D2:  SUB.W           R0, R6, #8
7F8D6:  MOV.W           R8, #0
7F8DA:  MOV.W           R11, #0
7F8DE:  MOV             R4, R9
7F8E0:  STR             R0, [SP,#0x30+var_20]
7F8E2:  SUB.W           R0, R6, #0x18
7F8E6:  STR             R0, [SP,#0x30+var_24]
7F8E8:  B               loc_7F900
7F8EA:  LDR             R0, [SP,#0x30+var_20]
7F8EC:  ADD             R0, R11
7F8EE:  STR.W           R8, [R0]
7F8F2:  SUB.W           R11, R11, #0x18
7F8F6:  SUBS            R4, #0x18
7F8F8:  ADD.W           R0, R9, R11
7F8FC:  CMP             R0, R5
7F8FE:  BEQ             loc_7F93A
7F900:  ADD.W           R0, R9, R11
7F904:  LDR.W           R1, [R0,#-8]
7F908:  CMP             R1, #0
7F90A:  BEQ             loc_7F8EA
7F90C:  ADD.W           R2, R10, R11
7F910:  CMP             R2, R1
7F912:  BEQ             loc_7F922
7F914:  SUB.W           R0, R4, #8
7F918:  ADD.W           R2, R6, R11
7F91C:  STR.W           R1, [R2,#-8]
7F920:  B               loc_7F8EE
7F922:  LDR             R1, [SP,#0x30+var_24]
7F924:  ADD.W           R2, R6, R11
7F928:  ADD             R1, R11
7F92A:  STR.W           R1, [R2,#-8]
7F92E:  LDR.W           R0, [R0,#-8]
7F932:  LDR             R2, [R0]
7F934:  LDR             R2, [R2,#0xC]
7F936:  BLX             R2
7F938:  B               loc_7F8F2
7F93A:  LDR.W           R8, [SP,#0x30+var_28]
7F93E:  ADD.W           R0, R6, R11
7F942:  LDRD.W          R11, R4, [SP,#0x30+var_30]
7F946:  LDR.W           R9, [R8]
7F94A:  B               loc_7F960
7F94C:  LDR             R1, [R0]
7F94E:  STR             R6, [R6,#0x10]
7F950:  LDR             R2, [R1,#0xC]
7F952:  MOV             R1, R6
7F954:  BLX             R2
7F956:  LDRD.W          R5, R9, [R8]
7F95A:  CMP             R9, R5
7F95C:  BNE             loc_7F8C6
7F95E:  MOV             R0, R6
7F960:  ADD.W           R1, R4, R4,LSL#1
7F964:  LDR.W           R4, [R8,#4]
7F968:  ADD.W           R2, R6, #0x18
7F96C:  STR.W           R0, [R8]
7F970:  ADD.W           R1, R11, R1,LSL#3
7F974:  STR.W           R1, [R8,#8]
7F978:  STR.W           R2, [R8,#4]
7F97C:  B               loc_7F988
7F97E:  MOVS            R1, #4
7F980:  LDR             R2, [R0]
7F982:  LDR.W           R1, [R2,R1,LSL#2]
7F986:  BLX             R1
7F988:  CMP             R4, R9
7F98A:  BEQ             loc_7F99E
7F98C:  LDR.W           R0, [R4,#-8]
7F990:  SUBS            R4, #0x18
7F992:  CMP             R4, R0
7F994:  BEQ             loc_7F97E
7F996:  CMP             R0, #0
7F998:  BEQ             loc_7F988
7F99A:  MOVS            R1, #5
7F99C:  B               loc_7F980
7F99E:  CMP.W           R9, #0
7F9A2:  BEQ             loc_7F9B4
7F9A4:  MOV             R0, R9; void *
7F9A6:  ADD             SP, SP, #0x14
7F9A8:  POP.W           {R8-R11}
7F9AC:  POP.W           {R4-R7,LR}
7F9B0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
7F9B4:  ADD             SP, SP, #0x14
7F9B6:  POP.W           {R8-R11}
7F9BA:  POP             {R4-R7,PC}
7F9BC:  MOV             R0, R8
7F9BE:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
7F9C2:  LDR             R0, =(aAllocatorTAllo - 0x7F9C8); "allocator<T>::allocate(size_t n) 'n' ex"... ...
7F9C4:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
7F9C6:  BL              sub_7B270
