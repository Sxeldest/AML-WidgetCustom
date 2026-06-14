; =========================================================
; Game Engine Function: sub_EA114
; Address            : 0xEA114 - 0xEA12C
; =========================================================

EA114:  PUSH            {R4,R5,R7,LR}
EA116:  ADD             R7, SP, #8
EA118:  MOV             R5, R0
EA11A:  MOVS            R0, #0xC; unsigned int
EA11C:  BLX             j__Znwj; operator new(uint)
EA120:  MOV             R4, R0
EA122:  MOV             R1, R5
EA124:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
EA128:  MOV             R0, R4
EA12A:  POP             {R4,R5,R7,PC}
