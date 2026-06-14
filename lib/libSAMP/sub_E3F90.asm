; =========================================================
; Game Engine Function: sub_E3F90
; Address            : 0xE3F90 - 0xE3FA4
; =========================================================

E3F90:  PUSH            {R7,LR}
E3F92:  MOV             R7, SP
E3F94:  MOV             R1, R0
E3F96:  LDR             R0, =(dword_23DBF8 - 0xE3F9C)
E3F98:  ADD             R0, PC; dword_23DBF8
E3F9A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
E3F9E:  BL              sub_E3FE0
E3FA2:  POP             {R7,PC}
