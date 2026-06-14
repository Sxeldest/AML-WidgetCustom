; =========================================================
; Game Engine Function: sub_1EDE6C
; Address            : 0x1EDE6C - 0x1EDEF4
; =========================================================

1EDE6C:  PUSH            {R4-R7,LR}
1EDE6E:  ADD             R7, SP, #0xC
1EDE70:  PUSH.W          {R4-R10}
1EDE74:  MOV             R4, R0
1EDE76:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EDE82)
1EDE78:  ADD.W           R9, R4, #4
1EDE7C:  MOV             R10, R3
1EDE7E:  ADD             R0, PC; __stack_chk_guard_ptr
1EDE80:  MOV             R8, R2
1EDE82:  MOV             R5, R1
1EDE84:  LDR             R0, [R0]; __stack_chk_guard
1EDE86:  LDR             R0, [R0]
1EDE88:  STR             R0, [SP,#0x28+var_1C]
1EDE8A:  MOVS            R0, #0
1EDE8C:  STR             R0, [R4]
1EDE8E:  MOV             R0, R9
1EDE90:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
1EDE94:  ADD.W           R6, R4, #0x10
1EDE98:  MOV             R0, R6; this
1EDE9A:  BLX             j__ZNSt6__ndk14__fs10filesystem15directory_entryC2Ev; std::__fs::filesystem::directory_entry::directory_entry(void)
1EDE9E:  LDRB            R1, [R5]
1EDEA0:  LDR             R0, [R5,#8]
1EDEA2:  LSLS            R1, R1, #0x1F
1EDEA4:  IT EQ
1EDEA6:  ADDEQ           R0, R5, #1; name
1EDEA8:  BLX             opendir
1EDEAC:  STR             R0, [R4]
1EDEAE:  CBZ             R0, loc_1EDEBA
1EDEB0:  MOV             R0, R4
1EDEB2:  MOV             R1, R10
1EDEB4:  BL              sub_1EDB2C
1EDEB8:  B               loc_1EDED8
1EDEBA:  MOV             R0, SP
1EDEBC:  BL              sub_1EE4D8
1EDEC0:  LDRD.W          R0, R1, [SP,#0x28+var_28]
1EDEC4:  STRD.W          R0, R1, [R10]
1EDEC8:  MOVS.W          R1, R8,LSL#30
1EDECC:  BPL             loc_1EDED8
1EDECE:  CMP             R0, #0xD
1EDED0:  BNE             loc_1EDED8
1EDED2:  MOV             R0, R10
1EDED4:  BL              sub_1EE05A
1EDED8:  LDR             R0, [SP,#0x28+var_1C]
1EDEDA:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EDEE0)
1EDEDC:  ADD             R1, PC; __stack_chk_guard_ptr
1EDEDE:  LDR             R1, [R1]; __stack_chk_guard
1EDEE0:  LDR             R1, [R1]
1EDEE2:  CMP             R1, R0
1EDEE4:  ITTTT EQ
1EDEE6:  MOVEQ           R0, R4
1EDEE8:  ADDEQ           SP, SP, #0x10
1EDEEA:  POPEQ.W         {R8-R10}
1EDEEE:  POPEQ           {R4-R7,PC}
1EDEF0:  BLX             __stack_chk_fail
