; =========================================================
; Game Engine Function: sub_B07C0
; Address            : 0xB07C0 - 0xB0996
; =========================================================

B07C0:  PUSH            {R4-R7,LR}
B07C2:  ADD             R7, SP, #0xC
B07C4:  PUSH.W          {R8-R11}
B07C8:  SUB             SP, SP, #0x1C
B07CA:  MOV             R9, R0
B07CC:  LDR             R0, =(__stack_chk_guard_ptr - 0xB07D8)
B07CE:  MOV             R5, R1
B07D0:  MOVW            R2, #0x8E39
B07D4:  ADD             R0, PC; __stack_chk_guard_ptr
B07D6:  MOVT            R2, #0x38E3
B07DA:  MOVW            R12, #0x38E3
B07DE:  LDR             R0, [R0]; __stack_chk_guard
B07E0:  MOVT            R12, #0x38E
B07E4:  LDR             R0, [R0]
B07E6:  STR             R0, [SP,#0x38+var_20]
B07E8:  LDRD.W          R1, R0, [R9]
B07EC:  SUBS            R0, R0, R1
B07EE:  ASRS            R0, R0, #3
B07F0:  MUL.W           R6, R0, R2
B07F4:  ADDS            R4, R6, #1
B07F6:  CMP             R4, R12
B07F8:  BHI.W           loc_B0988
B07FC:  MOV             R3, R9
B07FE:  LDR.W           R0, [R3,#8]!
B0802:  STR             R3, [SP,#0x38+var_24]
B0804:  SUBS            R0, R0, R1
B0806:  MOV             R1, #0x1C71C71
B080E:  ASRS            R0, R0, #3
B0810:  MULS            R0, R2
B0812:  CMP.W           R4, R0,LSL#1
B0816:  IT LS
B0818:  LSLLS           R4, R0, #1
B081A:  CMP             R0, R1
B081C:  IT CS
B081E:  MOVCS           R4, R12
B0820:  CBZ             R4, loc_B0834
B0822:  CMP             R4, R12
B0824:  BHI.W           loc_B098E
B0828:  ADD.W           R0, R4, R4,LSL#3
B082C:  LSLS            R0, R0, #3; unsigned int
B082E:  BLX             j__Znwj; operator new(uint)
B0832:  B               loc_B0836
B0834:  MOVS            R0, #0
B0836:  MOV             R1, R5
B0838:  ADD.W           R2, R6, R6,LSL#3
B083C:  VLD1.64         {D16-D17}, [R1]!
B0840:  ADD.W           R11, R0, R2,LSL#3
B0844:  VLD1.64         {D18-D19}, [R1]!
B0848:  ADD.W           R8, R11, #0x28 ; '('
B084C:  VLDR            D20, [R1]
B0850:  MOV             R1, R11
B0852:  VST1.64         {D16-D17}, [R1]!
B0856:  VST1.64         {D18-D19}, [R1]!
B085A:  VSTR            D20, [R1]
B085E:  ADD.W           R1, R4, R4,LSL#3
B0862:  STR             R0, [SP,#0x38+var_34]
B0864:  ADD.W           R10, R0, R1,LSL#3
B0868:  STR.W           R11, [SP,#0x38+var_2C]
B086C:  STR.W           R10, [SP,#0x38+var_28]
B0870:  STR.W           R11, [SP,#0x38+var_30]
B0874:  ADD.W           R1, R5, #0x28 ; '('
B0878:  MOV             R0, R8
B087A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
B087E:  LDR             R0, [R5,#0x34]
B0880:  STR.W           R0, [R11,#0x34]
B0884:  ADD.W           R0, R11, #0x38 ; '8'
B0888:  ADD.W           R1, R5, #0x38 ; '8'
B088C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
B0890:  LDRD.W          R5, R0, [R9]
B0894:  ADD.W           R2, R11, #0x48 ; 'H'
B0898:  STR             R2, [SP,#0x38+var_2C]
B089A:  CMP             R0, R5
B089C:  BEQ             loc_B0916
B089E:  MOVS            R2, #0
B08A0:  MOVS            R1, #0
B08A2:  ADDS            R3, R0, R1
B08A4:  ADD.W           R6, R11, R1
B08A8:  SUB.W           R4, R3, #0x48 ; 'H'
B08AC:  SUBS            R1, #0x48 ; 'H'
B08AE:  VLD1.64         {D16-D17}, [R4]!
B08B2:  VLD1.64         {D18-D19}, [R4]!
B08B6:  VLDR            D20, [R4]
B08BA:  SUB.W           R4, R6, #0x48 ; 'H'
B08BE:  VST1.64         {D16-D17}, [R4]!
B08C2:  VST1.64         {D18-D19}, [R4]!
B08C6:  VSTR            D20, [R4]
B08CA:  VLDR            D16, [R3,#-0x20]
B08CE:  LDR.W           R4, [R3,#-0x18]
B08D2:  STR.W           R4, [R6,#-0x18]
B08D6:  VSTR            D16, [R6,#-0x20]
B08DA:  LDR.W           R4, [R3,#-0x14]
B08DE:  STRD.W          R2, R2, [R3,#-0x20]
B08E2:  STR.W           R2, [R3,#-0x18]
B08E6:  STR.W           R4, [R6,#-0x14]
B08EA:  VLDR            D16, [R3,#-0x10]
B08EE:  LDR.W           R4, [R3,#-8]
B08F2:  VSTR            D16, [R6,#-0x10]
B08F6:  STR.W           R4, [R6,#-8]
B08FA:  STRD.W          R2, R2, [R3,#-0x10]
B08FE:  STR.W           R2, [R3,#-8]
B0902:  ADDS            R3, R0, R1
B0904:  CMP             R3, R5
B0906:  BNE             loc_B08A2
B0908:  LDR             R2, [SP,#0x38+var_2C]
B090A:  ADD             R11, R1
B090C:  LDRD.W          R4, R5, [R9]
B0910:  STR.W           R11, [SP,#0x38+var_30]
B0914:  B               loc_B0918
B0916:  MOV             R4, R5
B0918:  STRD.W          R11, R2, [R9]
B091C:  STR.W           R10, [R9,#8]
B0920:  CMP             R5, R4
B0922:  BEQ             loc_B094A
B0924:  LDRB.W          R0, [R5,#-0x10]
B0928:  LSLS            R0, R0, #0x1F
B092A:  ITT NE
B092C:  LDRNE.W         R0, [R5,#-8]; void *
B0930:  BLXNE           j__ZdlPv; operator delete(void *)
B0934:  LDRB.W          R0, [R5,#-0x20]
B0938:  LSLS            R0, R0, #0x1F
B093A:  ITT NE
B093C:  LDRNE.W         R0, [R5,#-0x18]; void *
B0940:  BLXNE           j__ZdlPv; operator delete(void *)
B0944:  SUBS            R5, #0x48 ; 'H'
B0946:  CMP             R5, R4
B0948:  BNE             loc_B0924
B094A:  CBZ             R4, loc_B096E
B094C:  LDR             R0, [SP,#0x38+var_20]
B094E:  LDR             R1, =(__stack_chk_guard_ptr - 0xB0954)
B0950:  ADD             R1, PC; __stack_chk_guard_ptr
B0952:  LDR             R1, [R1]; __stack_chk_guard
B0954:  LDR             R1, [R1]; std::nothrow_t *
B0956:  CMP             R1, R0
B0958:  ITTTT EQ
B095A:  MOVEQ           R0, R4; void *
B095C:  ADDEQ           SP, SP, #0x1C
B095E:  POPEQ.W         {R8-R11}
B0962:  POPEQ.W         {R4-R7,LR}
B0966:  IT EQ
B0968:  BEQ.W           _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
B096C:  B               loc_B0984
B096E:  LDR             R0, [SP,#0x38+var_20]
B0970:  LDR             R1, =(__stack_chk_guard_ptr - 0xB0976)
B0972:  ADD             R1, PC; __stack_chk_guard_ptr
B0974:  LDR             R1, [R1]; __stack_chk_guard
B0976:  LDR             R1, [R1]
B0978:  CMP             R1, R0
B097A:  ITTT EQ
B097C:  ADDEQ           SP, SP, #0x1C
B097E:  POPEQ.W         {R8-R11}
B0982:  POPEQ           {R4-R7,PC}
B0984:  BLX             __stack_chk_fail
B0988:  MOV             R0, R9
B098A:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
B098E:  LDR             R0, =(aAllocatorTAllo - 0xB0994); "allocator<T>::allocate(size_t n) 'n' ex"... ...
B0990:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
B0992:  BL              sub_7B270
