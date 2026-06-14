; =========================================================
; Game Engine Function: sub_1EEA10
; Address            : 0x1EEA10 - 0x1EEA80
; =========================================================

1EEA10:  PUSH            {R4-R7,LR}
1EEA12:  ADD             R7, SP, #0xC
1EEA14:  PUSH.W          {R8}
1EEA18:  SUB             SP, SP, #0x10
1EEA1A:  MOV             R4, R0
1EEA1C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EEA26)
1EEA1E:  MOV             R8, R2
1EEA20:  LDR             R2, [R7,#arg_0]
1EEA22:  ADD             R0, PC; __stack_chk_guard_ptr
1EEA24:  MOV             R5, R1
1EEA26:  MOV             R1, R3
1EEA28:  MOV             R3, R5
1EEA2A:  LDR             R0, [R0]; __stack_chk_guard
1EEA2C:  LDR             R0, [R0]
1EEA2E:  STR             R0, [SP,#0x20+var_14]
1EEA30:  MOV             R0, R4
1EEA32:  BLX             j__ZNSt6__ndk112system_errorC2ENS_10error_codeERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_0; std::system_error::system_error(std::error_code,std::string const&)
1EEA36:  LDR             R0, =(_ZTVNSt6__ndk14__fs10filesystem16filesystem_errorE_ptr - 0x1EEA40)
1EEA38:  MOV             R5, R4
1EEA3A:  MOV             R6, SP
1EEA3C:  ADD             R0, PC; _ZTVNSt6__ndk14__fs10filesystem16filesystem_errorE_ptr
1EEA3E:  LDR             R0, [R0]; `vtable for'std::__fs::filesystem::filesystem_error ...
1EEA40:  ADDS            R0, #8
1EEA42:  STR.W           R0, [R5],#0x10
1EEA46:  MOV             R0, R6
1EEA48:  BL              sub_1EE5C6
1EEA4C:  MOV             R0, R5
1EEA4E:  MOV             R1, R8
1EEA50:  MOV             R2, R6
1EEA52:  BL              sub_1EEAA4
1EEA56:  MOV             R0, SP
1EEA58:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1EEA5C:  MOV             R0, R4; this
1EEA5E:  MOVS            R1, #1; int
1EEA60:  BLX             j__ZNSt6__ndk14__fs10filesystem16filesystem_error13__create_whatEi; std::__fs::filesystem::filesystem_error::__create_what(int)
1EEA64:  LDR             R0, [SP,#0x20+var_14]
1EEA66:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EEA6C)
1EEA68:  ADD             R1, PC; __stack_chk_guard_ptr
1EEA6A:  LDR             R1, [R1]; __stack_chk_guard
1EEA6C:  LDR             R1, [R1]
1EEA6E:  CMP             R1, R0
1EEA70:  ITTTT EQ
1EEA72:  MOVEQ           R0, R4
1EEA74:  ADDEQ           SP, SP, #0x10
1EEA76:  POPEQ.W         {R8}
1EEA7A:  POPEQ           {R4-R7,PC}
1EEA7C:  BLX             __stack_chk_fail
