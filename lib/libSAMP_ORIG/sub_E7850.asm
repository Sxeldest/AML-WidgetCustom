; =========================================================
; Game Engine Function: sub_E7850
; Address            : 0xE7850 - 0xE790A
; =========================================================

E7850:  PUSH            {R4-R7,LR}
E7852:  ADD             R7, SP, #0xC
E7854:  PUSH.W          {R3-R11}
E7858:  MOV             R4, R0
E785A:  LDR             R0, =(__stack_chk_guard_ptr - 0xE7862)
E785C:  MOVS            R5, #0
E785E:  ADD             R0, PC; __stack_chk_guard_ptr
E7860:  CMP             R4, #0
E7862:  LDR             R0, [R0]; __stack_chk_guard
E7864:  LDR             R0, [R0]
E7866:  STR             R0, [SP,#0x30+var_20]
E7868:  BEQ             loc_E78EC
E786A:  LDR.W           R11, [R7,#arg_0]
E786E:  MOV             R8, R2
E7870:  SUBS            R0, R3, R1
E7872:  MOV             R10, R3
E7874:  LDR.W           R2, [R11,#0xC]
E7878:  CMP.W           R2, R0,ASR#2
E787C:  IT GT
E787E:  SUBGT.W         R5, R2, R0,ASR#2
E7882:  SUB.W           R0, R8, R1
E7886:  CMP             R0, #1
E7888:  BLT             loc_E789A
E788A:  ASRS            R6, R0, #2
E788C:  LDR             R0, [R4]
E788E:  MOV             R2, R6
E7890:  LDR             R3, [R0,#0x30]
E7892:  MOV             R0, R4
E7894:  BLX             R3
E7896:  CMP             R0, R6
E7898:  BNE             loc_E78EC
E789A:  CBZ             R5, loc_E78CA
E789C:  ADD             R6, SP, #0x30+var_2C
E789E:  LDR             R2, [R7,#c]; c
E78A0:  MOV             R1, R5; n
E78A2:  MOV             R0, R6; int
E78A4:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE6__initEjw; std::wstring::__init(uint,wchar_t)
E78A8:  LDRB.W          R0, [SP,#0x30+var_2C]
E78AC:  LDR             R1, [SP,#0x30+var_24]
E78AE:  LSLS            R0, R0, #0x1F
E78B0:  IT EQ
E78B2:  ADDEQ           R1, R6, #4
E78B4:  LDR             R0, [R4]
E78B6:  LDR             R3, [R0,#0x30]
E78B8:  MOV             R0, R4
E78BA:  MOV             R2, R5
E78BC:  BLX             R3
E78BE:  MOV             R9, R0
E78C0:  ADD             R0, SP, #0x30+var_2C
E78C2:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEED2Ev; std::wstring::~wstring()
E78C6:  CMP             R9, R5
E78C8:  BNE             loc_E78EC
E78CA:  SUB.W           R0, R10, R8
E78CE:  CMP             R0, #1
E78D0:  BLT             loc_E78E4
E78D2:  ASRS            R5, R0, #2
E78D4:  LDR             R0, [R4]
E78D6:  MOV             R1, R8
E78D8:  MOV             R2, R5
E78DA:  LDR             R3, [R0,#0x30]
E78DC:  MOV             R0, R4
E78DE:  BLX             R3
E78E0:  CMP             R0, R5
E78E2:  BNE             loc_E78EC
E78E4:  MOVS            R0, #0
E78E6:  STR.W           R0, [R11,#0xC]
E78EA:  B               loc_E78EE
E78EC:  MOVS            R4, #0
E78EE:  LDR             R0, [SP,#0x30+var_20]
E78F0:  LDR             R1, =(__stack_chk_guard_ptr - 0xE78F6)
E78F2:  ADD             R1, PC; __stack_chk_guard_ptr
E78F4:  LDR             R1, [R1]; __stack_chk_guard
E78F6:  LDR             R1, [R1]
E78F8:  CMP             R1, R0
E78FA:  ITTTT EQ
E78FC:  MOVEQ           R0, R4
E78FE:  ADDEQ           SP, SP, #0x14
E7900:  POPEQ.W         {R8-R11}
E7904:  POPEQ           {R4-R7,PC}
E7906:  BLX             __stack_chk_fail
