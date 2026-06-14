; =========================================================
; Game Engine Function: sub_E45B4
; Address            : 0xE45B4 - 0xE4636
; =========================================================

E45B4:  PUSH            {R4-R7,LR}
E45B6:  ADD             R7, SP, #0xC
E45B8:  PUSH.W          {R8-R10}
E45BC:  MOV             R5, R0
E45BE:  LDR             R0, =(_ZTCNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0xE45C8)
E45C0:  MOV             R9, R5
E45C2:  MOV             R4, R1
E45C4:  ADD             R0, PC; _ZTCNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE_ptr
E45C6:  ADD.W           R6, R5, #8
E45CA:  MOV             R8, R2
E45CC:  MOV.W           R10, #0
E45D0:  LDR             R0, [R0]; `construction vtable for'std::istream-in-std::ifstream ...
E45D2:  ADD.W           R1, R0, #0xC
E45D6:  ADDS            R0, #0x20 ; ' '
E45D8:  STR.W           R0, [R9,#0x64]!
E45DC:  STRD.W          R1, R10, [R5]
E45E0:  MOV             R0, R9; this
E45E2:  MOV             R1, R6; void *
E45E4:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
E45E8:  LDR             R0, =(_ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xE45F6)
E45EA:  MOV.W           R1, #0xFFFFFFFF
E45EE:  STRD.W          R10, R1, [R5,#0xAC]
E45F2:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
E45F4:  LDR             R0, [R0]; `vtable for'std::ifstream ...
E45F6:  ADD.W           R1, R0, #0x20 ; ' '
E45FA:  ADDS            R0, #0xC
E45FC:  STR             R1, [R5,#0x64]
E45FE:  STR             R0, [R5]
E4600:  MOV             R0, R6
E4602:  BL              sub_E6108
E4606:  LDRB            R0, [R4]
E4608:  LDR             R1, [R4,#8]
E460A:  LSLS            R0, R0, #0x1F
E460C:  IT EQ
E460E:  ADDEQ           R1, R4, #1; filename
E4610:  ORR.W           R2, R8, #8
E4614:  MOV             R0, R6; int
E4616:  BL              sub_E61BC
E461A:  CBNZ            R0, loc_E462E
E461C:  LDR             R0, [R5]
E461E:  LDR.W           R0, [R0,#-0xC]
E4622:  ADD             R0, R5; this
E4624:  LDR             R1, [R0,#0x10]
E4626:  ORR.W           R1, R1, #4; unsigned int
E462A:  BLX             j__ZNSt6__ndk18ios_base5clearEj; std::ios_base::clear(uint)
E462E:  MOV             R0, R5
E4630:  POP.W           {R8-R10}
E4634:  POP             {R4-R7,PC}
