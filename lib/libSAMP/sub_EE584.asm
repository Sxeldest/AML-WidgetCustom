; =========================================================
; Game Engine Function: sub_EE584
; Address            : 0xEE584 - 0xEE5FA
; =========================================================

EE584:  PUSH            {R4-R7,LR}
EE586:  ADD             R7, SP, #0xC
EE588:  PUSH.W          {R8-R10}
EE58C:  SUB.W           SP, SP, #0x220; int
EE590:  ADD.W           LR, R7, #8
EE594:  MOV             R9, R0
EE596:  MOV.W           R0, #0x1F4
EE59A:  LDR             R3, =(_ZTVN3fmt2v819basic_memory_bufferIcLj500ENSt6__ndk19allocatorIcEEEE - 0xEE5AC); `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>> ...
EE59C:  STR             R0, [SP,#0x238+var_214]
EE59E:  ADD             R0, SP, #0x238+var_220; int
EE5A0:  ADD.W           R8, R0, #0x10
EE5A4:  LDM.W           LR, {R5,R12,LR}
EE5A8:  ADD             R3, PC; `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>>
EE5AA:  MOVS            R4, #0
EE5AC:  ADDS            R3, #8; int
EE5AE:  LDR             R6, [R7,#arg_C]
EE5B0:  STR.W           R8, [SP,#0x238+var_21C]
EE5B4:  STR             R4, [SP,#0x238+var_218]
EE5B6:  STR             R3, [SP,#0x238+var_220]
EE5B8:  STMEA.W         SP, {R5,R12,LR}
EE5BC:  STRD.W          R6, R4, [SP,#0x238+var_22C]; int
EE5C0:  BL              sub_DCAC4
EE5C4:  LDRD.W          R5, R4, [SP,#0x238+var_21C]
EE5C8:  MOV             R10, #0x7FFFFFFF
EE5CC:  MOV             R6, #0x7FFFFFFF
EE5D0:  CMP             R4, R10
EE5D2:  IT CC
EE5D4:  MOVCC           R6, R4
EE5D6:  MOV             R0, R9
EE5D8:  MOV             R1, R5
EE5DA:  MOV             R2, R6
EE5DC:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKci; std::ostream::write(char const*,int)
EE5E0:  SUBS            R4, R4, R6
EE5E2:  ADD             R5, R6
EE5E4:  BNE             loc_EE5CC
EE5E6:  LDR             R0, [SP,#0x238+var_21C]; void *
EE5E8:  CMP             R0, R8
EE5EA:  IT NE
EE5EC:  BLXNE           j__ZdlPv; operator delete(void *)
EE5F0:  ADD.W           SP, SP, #0x220
EE5F4:  POP.W           {R8-R10}
EE5F8:  POP             {R4-R7,PC}
