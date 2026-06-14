; =========================================================
; Game Engine Function: sub_1F2A6C
; Address            : 0x1F2A6C - 0x1F2AAA
; =========================================================

1F2A6C:  PUSH            {R0-R5,R7,LR}
1F2A6E:  ADD             R7, SP, #0x18
1F2A70:  MOV             R4, R0
1F2A72:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F2A78)
1F2A74:  ADD             R0, PC; __stack_chk_guard_ptr
1F2A76:  LDR             R0, [R0]; __stack_chk_guard
1F2A78:  LDR             R0, [R0]
1F2A7A:  STR             R0, [SP,#0x18+var_C]
1F2A7C:  MOV             R0, SP
1F2A7E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_17basic_string_viewIcS2_EEvEERKT_; std::string::basic_string<std::string_view,void>(std::string_view const&)
1F2A82:  MOV             R5, SP
1F2A84:  MOV             R0, R4
1F2A86:  MOV             R1, R5
1F2A88:  BL              sub_1EE4FE
1F2A8C:  MOV             R0, R5
1F2A8E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1F2A92:  LDR             R0, [SP,#0x18+var_C]
1F2A94:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F2A9A)
1F2A96:  ADD             R1, PC; __stack_chk_guard_ptr
1F2A98:  LDR             R1, [R1]; __stack_chk_guard
1F2A9A:  LDR             R1, [R1]
1F2A9C:  CMP             R1, R0
1F2A9E:  ITTT EQ
1F2AA0:  MOVEQ           R0, R4
1F2AA2:  ADDEQ           SP, SP, #0x10
1F2AA4:  POPEQ           {R4,R5,R7,PC}
1F2AA6:  BLX             __stack_chk_fail
