; =========================================================
; Game Engine Function: sub_7D3F4
; Address            : 0x7D3F4 - 0x7D40C
; =========================================================

7D3F4:  PUSH            {R4,R6,R7,LR}
7D3F6:  ADD             R7, SP, #8
7D3F8:  MOV             R4, R0
7D3FA:  ADDS            R0, #0x54 ; 'T'
7D3FC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
7D400:  LDR             R0, [R4]
7D402:  LDR             R1, [R0,#8]
7D404:  MOV             R0, R4
7D406:  POP.W           {R4,R6,R7,LR}
7D40A:  BX              R1
