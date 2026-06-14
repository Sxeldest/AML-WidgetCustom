; =========================================================
; Game Engine Function: sub_F7AC2
; Address            : 0xF7AC2 - 0xF7AE4
; =========================================================

F7AC2:  PUSH            {R4,R5,R7,LR}
F7AC4:  ADD             R7, SP, #8
F7AC6:  MOV             R4, R1
F7AC8:  MOV             R0, R1
F7ACA:  MOV             R1, R2
F7ACC:  MOV             R5, R2
F7ACE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
F7AD2:  ADD.W           R0, R4, #0xC
F7AD6:  ADD.W           R1, R5, #0xC
F7ADA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
F7ADE:  LDR             R0, [R5,#0x18]
F7AE0:  STR             R0, [R4,#0x18]
F7AE2:  POP             {R4,R5,R7,PC}
