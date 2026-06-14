; =========================================================
; Game Engine Function: sub_1FF730
; Address            : 0x1FF730 - 0x1FF7EA
; =========================================================

1FF730:  PUSH            {R4-R7,LR}
1FF732:  ADD             R7, SP, #0xC
1FF734:  PUSH.W          {R3-R11}
1FF738:  MOV             R4, R0
1FF73A:  LDR             R0, =(__stack_chk_guard_ptr - 0x1FF742)
1FF73C:  MOVS            R5, #0
1FF73E:  ADD             R0, PC; __stack_chk_guard_ptr
1FF740:  CMP             R4, #0
1FF742:  LDR             R0, [R0]; __stack_chk_guard
1FF744:  LDR             R0, [R0]
1FF746:  STR             R0, [SP,#0x30+var_20]
1FF748:  BEQ             loc_1FF7CC
1FF74A:  LDR.W           R11, [R7,#arg_0]
1FF74E:  MOV             R8, R2
1FF750:  SUBS            R0, R3, R1
1FF752:  MOV             R10, R3
1FF754:  LDR.W           R2, [R11,#0xC]
1FF758:  CMP.W           R2, R0,ASR#2
1FF75C:  IT GT
1FF75E:  SUBGT.W         R5, R2, R0,ASR#2
1FF762:  SUB.W           R0, R8, R1
1FF766:  CMP             R0, #1
1FF768:  BLT             loc_1FF77A
1FF76A:  ASRS            R6, R0, #2
1FF76C:  LDR             R0, [R4]
1FF76E:  MOV             R2, R6
1FF770:  LDR             R3, [R0,#0x30]
1FF772:  MOV             R0, R4
1FF774:  BLX             R3
1FF776:  CMP             R0, R6
1FF778:  BNE             loc_1FF7CC
1FF77A:  CBZ             R5, loc_1FF7AA
1FF77C:  ADD             R6, SP, #0x30+var_2C
1FF77E:  LDR             R2, [R7,#c]; c
1FF780:  MOV             R1, R5; n
1FF782:  MOV             R0, R6; int
1FF784:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE6__initEjw; std::wstring::__init(uint,wchar_t)
1FF788:  LDRB.W          R0, [SP,#0x30+var_2C]
1FF78C:  LDR             R1, [SP,#0x30+var_24]
1FF78E:  LSLS            R0, R0, #0x1F
1FF790:  IT EQ
1FF792:  ADDEQ           R1, R6, #4
1FF794:  LDR             R0, [R4]
1FF796:  LDR             R3, [R0,#0x30]
1FF798:  MOV             R0, R4
1FF79A:  MOV             R2, R5
1FF79C:  BLX             R3
1FF79E:  MOV             R9, R0
1FF7A0:  ADD             R0, SP, #0x30+var_2C
1FF7A2:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
1FF7A6:  CMP             R9, R5
1FF7A8:  BNE             loc_1FF7CC
1FF7AA:  SUB.W           R0, R10, R8
1FF7AE:  CMP             R0, #1
1FF7B0:  BLT             loc_1FF7C4
1FF7B2:  ASRS            R5, R0, #2
1FF7B4:  LDR             R0, [R4]
1FF7B6:  MOV             R1, R8
1FF7B8:  MOV             R2, R5
1FF7BA:  LDR             R3, [R0,#0x30]
1FF7BC:  MOV             R0, R4
1FF7BE:  BLX             R3
1FF7C0:  CMP             R0, R5
1FF7C2:  BNE             loc_1FF7CC
1FF7C4:  MOVS            R0, #0
1FF7C6:  STR.W           R0, [R11,#0xC]
1FF7CA:  B               loc_1FF7CE
1FF7CC:  MOVS            R4, #0
1FF7CE:  LDR             R0, [SP,#0x30+var_20]
1FF7D0:  LDR             R1, =(__stack_chk_guard_ptr - 0x1FF7D6)
1FF7D2:  ADD             R1, PC; __stack_chk_guard_ptr
1FF7D4:  LDR             R1, [R1]; __stack_chk_guard
1FF7D6:  LDR             R1, [R1]
1FF7D8:  CMP             R1, R0
1FF7DA:  ITTTT EQ
1FF7DC:  MOVEQ           R0, R4
1FF7DE:  ADDEQ           SP, SP, #0x14
1FF7E0:  POPEQ.W         {R8-R11}
1FF7E4:  POPEQ           {R4-R7,PC}
1FF7E6:  BLX             __stack_chk_fail
