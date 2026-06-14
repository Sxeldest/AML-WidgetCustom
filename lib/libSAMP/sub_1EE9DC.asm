; =========================================================
; Game Engine Function: sub_1EE9DC
; Address            : 0x1EE9DC - 0x1EE9FC
; =========================================================

1EE9DC:  PUSH            {R4,R5,R7,LR}
1EE9DE:  ADD             R7, SP, #8
1EE9E0:  LDR             R1, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0x1EE9EA)
1EE9E2:  MOV             R4, R0
1EE9E4:  ADDS            R0, #0x18
1EE9E6:  ADD             R1, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
1EE9E8:  LDR             R5, [R1]; std::string::~string()
1EE9EA:  BLX             R5; std::string::~string()
1EE9EC:  ADD.W           R0, R4, #0xC
1EE9F0:  BLX             R5; std::string::~string()
1EE9F2:  MOV             R0, R4
1EE9F4:  MOV             R1, R5
1EE9F6:  POP.W           {R4,R5,R7,LR}
1EE9FA:  BX              R1; std::string::~string()
