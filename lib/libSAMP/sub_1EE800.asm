; =========================================================
; Game Engine Function: sub_1EE800
; Address            : 0x1EE800 - 0x1EE87E
; =========================================================

1EE800:  PUSH            {R4-R7,LR}
1EE802:  ADD             R7, SP, #0xC
1EE804:  PUSH.W          {R8}
1EE808:  SUB             SP, SP, #0x20
1EE80A:  MOV             R4, R0
1EE80C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EE816)
1EE80E:  MOV             R5, R1
1EE810:  MOV             R1, R2
1EE812:  ADD             R0, PC; __stack_chk_guard_ptr
1EE814:  MOV             R2, R3
1EE816:  MOV             R3, R5
1EE818:  LDR             R0, [R0]; __stack_chk_guard
1EE81A:  LDR             R0, [R0]
1EE81C:  STR             R0, [SP,#0x30+var_14]
1EE81E:  MOV             R0, R4
1EE820:  BLX             j__ZNSt6__ndk112system_errorC2ENS_10error_codeERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_0; std::system_error::system_error(std::error_code,std::string const&)
1EE824:  LDR             R0, =(_ZTVNSt6__ndk14__fs10filesystem16filesystem_errorE_ptr - 0x1EE830)
1EE826:  ADD.W           R8, SP, #0x30+var_20
1EE82A:  MOV             R5, R4
1EE82C:  ADD             R0, PC; _ZTVNSt6__ndk14__fs10filesystem16filesystem_errorE_ptr
1EE82E:  LDR             R0, [R0]; `vtable for'std::__fs::filesystem::filesystem_error ...
1EE830:  ADDS            R0, #8
1EE832:  STR.W           R0, [R5],#0x10
1EE836:  MOV             R0, R8
1EE838:  BL              sub_1EE5C6
1EE83C:  ADD             R6, SP, #0x30+var_2C
1EE83E:  MOV             R0, R6
1EE840:  BL              sub_1EE5C6
1EE844:  MOV             R0, R5
1EE846:  MOV             R1, R8
1EE848:  MOV             R2, R6
1EE84A:  BL              sub_1EE8A8
1EE84E:  ADD             R0, SP, #0x30+var_2C
1EE850:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1EE854:  ADD             R0, SP, #0x30+var_20
1EE856:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1EE85A:  MOV             R0, R4; this
1EE85C:  MOVS            R1, #0; int
1EE85E:  BLX             j__ZNSt6__ndk14__fs10filesystem16filesystem_error13__create_whatEi; std::__fs::filesystem::filesystem_error::__create_what(int)
1EE862:  LDR             R0, [SP,#0x30+var_14]
1EE864:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EE86A)
1EE866:  ADD             R1, PC; __stack_chk_guard_ptr
1EE868:  LDR             R1, [R1]; __stack_chk_guard
1EE86A:  LDR             R1, [R1]
1EE86C:  CMP             R1, R0
1EE86E:  ITTTT EQ
1EE870:  MOVEQ           R0, R4
1EE872:  ADDEQ           SP, SP, #0x20 ; ' '
1EE874:  POPEQ.W         {R8}
1EE878:  POPEQ           {R4-R7,PC}
1EE87A:  BLX             __stack_chk_fail
