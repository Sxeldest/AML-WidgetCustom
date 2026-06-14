; =========================================================
; Game Engine Function: sub_13D450
; Address            : 0x13D450 - 0x13D468
; =========================================================

13D450:  PUSH            {R4,R6,R7,LR}
13D452:  ADD             R7, SP, #8
13D454:  MOV             R4, R0
13D456:  ADDS            R0, #0x54 ; 'T'
13D458:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
13D45C:  LDR             R0, [R4]
13D45E:  LDR             R1, [R0,#8]
13D460:  MOV             R0, R4
13D462:  POP.W           {R4,R6,R7,LR}
13D466:  BX              R1
