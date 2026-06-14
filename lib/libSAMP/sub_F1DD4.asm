; =========================================================
; Game Engine Function: sub_F1DD4
; Address            : 0xF1DD4 - 0xF1DE8
; =========================================================

F1DD4:  PUSH            {R4,R5,R7,LR}
F1DD6:  ADD             R7, SP, #8
F1DD8:  MOV             R5, R2
F1DDA:  MOV             R4, R0
F1DDC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
F1DE0:  MOV             R1, R5
F1DE2:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathdVERKS2_; std::__fs::filesystem::path::operator/=(std::__fs::filesystem::path const&)
F1DE6:  POP             {R4,R5,R7,PC}
