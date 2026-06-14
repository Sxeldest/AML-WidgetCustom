; =========================================================
; Game Engine Function: sub_F76C4
; Address            : 0xF76C4 - 0xF7724
; =========================================================

F76C4:  PUSH            {R4,R5,R7,LR}
F76C6:  ADD             R7, SP, #8
F76C8:  LDR             R1, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0xF76D4)
F76CA:  MOV             R4, R0
F76CC:  ADD.W           R0, R0, #0x208
F76D0:  ADD             R1, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
F76D2:  LDR             R5, [R1]; std::string::~string()
F76D4:  BLX             R5; std::string::~string()
F76D6:  ADD.W           R0, R4, #0x1FC
F76DA:  BLX             R5; std::string::~string()
F76DC:  ADD.W           R0, R4, #0x1F0
F76E0:  BLX             R5; std::string::~string()
F76E2:  ADD.W           R0, R4, #0x1E4
F76E6:  BLX             R5; std::string::~string()
F76E8:  MOV.W           R5, #0x1D8
F76EC:  ADDS            R0, R4, R5
F76EE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
F76F2:  SUBS            R5, #0xC
F76F4:  CMP.W           R5, #0x1C0
F76F8:  BNE             loc_F76EC
F76FA:  MOV.W           R5, #0x1C0
F76FE:  ADDS            R0, R4, R5
F7700:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
F7704:  SUBS            R5, #0xC
F7706:  CMP             R5, #0xA0
F7708:  BNE             loc_F76FE
F770A:  MOVS            R5, #0xA0
F770C:  ADDS            R0, R4, R5
F770E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
F7712:  SUBS            R5, #0xC
F7714:  ADDS.W          R0, R5, #8
F7718:  BNE             loc_F770C
F771A:  MOV             R0, R4
F771C:  POP.W           {R4,R5,R7,LR}
F7720:  B.W             sub_10C4AC
