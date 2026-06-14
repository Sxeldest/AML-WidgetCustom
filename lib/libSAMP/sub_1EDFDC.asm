; =========================================================
; Game Engine Function: sub_1EDFDC
; Address            : 0x1EDFDC - 0x1EE01E
; =========================================================

1EDFDC:  PUSH            {R0-R4,R6,R7,LR}
1EDFDE:  ADD             R7, SP, #0x18
1EDFE0:  MOV             R4, R0
1EDFE2:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EDFE8)
1EDFE4:  ADD             R0, PC; __stack_chk_guard_ptr
1EDFE6:  LDR             R0, [R0]; __stack_chk_guard
1EDFE8:  LDR             R0, [R0]
1EDFEA:  STR             R0, [SP,#0x18+var_C]
1EDFEC:  LDR             R0, [R4]
1EDFEE:  CBZ             R0, loc_1EDFF8
1EDFF0:  ADD             R0, SP, #0x18+var_14
1EDFF2:  MOV             R1, R4
1EDFF4:  BL              sub_1EE450
1EDFF8:  ADD.W           R0, R4, #0x10
1EDFFC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1EE000:  ADDS            R0, R4, #4
1EE002:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1EE006:  LDR             R0, [SP,#0x18+var_C]
1EE008:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EE00E)
1EE00A:  ADD             R1, PC; __stack_chk_guard_ptr
1EE00C:  LDR             R1, [R1]; __stack_chk_guard
1EE00E:  LDR             R1, [R1]
1EE010:  CMP             R1, R0
1EE012:  ITTT EQ
1EE014:  MOVEQ           R0, R4
1EE016:  ADDEQ           SP, SP, #0x10
1EE018:  POPEQ           {R4,R6,R7,PC}
1EE01A:  BLX             __stack_chk_fail
