; =========================================================
; Game Engine Function: sub_1EF94C
; Address            : 0x1EF94C - 0x1EF9C8
; =========================================================

1EF94C:  PUSH            {R4-R7,LR}
1EF94E:  ADD             R7, SP, #0xC
1EF950:  PUSH.W          {R4-R9,R11}
1EF954:  MOV             R9, R0
1EF956:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EF960)
1EF958:  MOV             R6, R3
1EF95A:  MOV             R8, R2
1EF95C:  ADD             R0, PC; __stack_chk_guard_ptr
1EF95E:  MOV             R4, R1
1EF960:  LDR             R0, [R0]; __stack_chk_guard
1EF962:  LDR             R0, [R0]
1EF964:  STR             R0, [SP,#0x28+var_1C]
1EF966:  CBZ             R3, loc_1EF96E
1EF968:  MOV             R0, R6
1EF96A:  BL              sub_1EE05A
1EF96E:  MOV             R0, R4
1EF970:  BL              sub_1EE560
1EF974:  CBZ             R0, loc_1EF980
1EF976:  MOV             R0, R9
1EF978:  MOV             R1, R4
1EF97A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
1EF97E:  B               loc_1EF9B0
1EF980:  MOV             R5, SP
1EF982:  MOV             R1, R6; std::error_code *
1EF984:  MOV             R0, R5; this
1EF986:  BLX             j__ZNSt6__ndk14__fs10filesystem14__current_pathEPNS_10error_codeE; std::__fs::filesystem::__current_path(std::error_code *)
1EF98A:  MOV             R0, R8
1EF98C:  MOV             R1, R5
1EF98E:  BL              sub_1EE4FE
1EF992:  MOV             R0, R5
1EF994:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1EF998:  CBZ             R6, loc_1EF9A6
1EF99A:  LDR             R0, [R6]
1EF99C:  CBZ             R0, loc_1EF9A6
1EF99E:  MOV             R0, R9
1EF9A0:  BL              sub_1EE5C6
1EF9A4:  B               loc_1EF9B0
1EF9A6:  MOV             R0, R9
1EF9A8:  MOV             R1, R8
1EF9AA:  MOV             R2, R4
1EF9AC:  BL              sub_F1DD4
1EF9B0:  LDR             R0, [SP,#0x28+var_1C]
1EF9B2:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EF9B8)
1EF9B4:  ADD             R1, PC; __stack_chk_guard_ptr
1EF9B6:  LDR             R1, [R1]; __stack_chk_guard
1EF9B8:  LDR             R1, [R1]
1EF9BA:  CMP             R1, R0
1EF9BC:  ITT EQ
1EF9BE:  POPEQ.W         {R0-R3,R8,R9,R11}
1EF9C2:  POPEQ           {R4-R7,PC}
1EF9C4:  BLX             __stack_chk_fail
