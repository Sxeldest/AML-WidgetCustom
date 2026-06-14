; =========================================================
; Game Engine Function: sub_125788
; Address            : 0x125788 - 0x1258EE
; =========================================================

125788:  PUSH            {R4-R7,LR}
12578A:  ADD             R7, SP, #0xC
12578C:  PUSH.W          {R8-R10}
125790:  SUB             SP, SP, #8
125792:  MOV             R8, R1
125794:  BL              sub_125A8C
125798:  LDR             R5, =(dword_238E90 - 0x12579E)
12579A:  ADD             R5, PC; dword_238E90
12579C:  LDR             R1, [R5]
12579E:  CMP             R0, R1
1257A0:  BNE             loc_1257D8
1257A2:  LDR             R1, =(dword_238EA0 - 0x1257A8)
1257A4:  ADD             R1, PC; dword_238EA0
1257A6:  MOV             R10, R1
1257A8:  LDR             R1, [R1]
1257AA:  LDR             R3, =(dword_238EAC - 0x1257B6)
1257AC:  LDR             R4, =(dword_238E9C - 0x1257B8)
1257AE:  ADDS            R1, #1
1257B0:  LDR             R6, =(dword_238E94 - 0x1257BC)
1257B2:  ADD             R3, PC; dword_238EAC
1257B4:  ADD             R4, PC; dword_238E9C
1257B6:  CMP             R1, R0
1257B8:  ADD             R6, PC; dword_238E94
1257BA:  BGE             loc_1257F2
1257BC:  MOV             R0, R4
1257BE:  LDR             R2, [R6]
1257C0:  LDR             R0, [R4]
1257C2:  LDR.W           R12, [R3]
1257C6:  ADD             R0, R2
1257C8:  ADD.W           R2, R0, #0xA1
1257CC:  ADD.W           R0, R12, #1
1257D0:  CMP             R0, R2
1257D2:  BGE             loc_1257F2
1257D4:  MOV             R9, R3
1257D6:  B               loc_125826
1257D8:  LDR             R1, =(aAxl - 0x1257E4); "AXL" ...
1257DA:  MOVS            R0, #5
1257DC:  LDR             R2, =(aChandlinghookC_2 - 0x1257E6); "CHandlingHook: Can't add handling for b"... ...
1257DE:  MOV             R3, R8
1257E0:  ADD             R1, PC; "AXL"
1257E2:  ADD             R2, PC; "CHandlingHook: Can't add handling for b"...
1257E4:  ADD             SP, SP, #8
1257E6:  POP.W           {R8-R10}
1257EA:  POP.W           {R4-R7,LR}
1257EE:  B.W             sub_2242C8
1257F2:  LDR             R1, =(aAxl - 0x1257FE); "AXL" ...
1257F4:  MOV             R9, R3
1257F6:  LDR             R2, =(aChandlinghookN_6 - 0x125802); "CHandlingHook: No free entries for boat"... ...
1257F8:  MOVS            R0, #4; prio
1257FA:  ADD             R1, PC; "AXL"
1257FC:  MOV             R3, R8
1257FE:  ADD             R2, PC; "CHandlingHook: No free entries for boat"...
125800:  BLX             __android_log_print
125804:  LDR             R0, =(dword_238E98 - 0x12580C)
125806:  LDR             R1, [R4]
125808:  ADD             R0, PC; dword_238E98
12580A:  LDR             R2, [R6]
12580C:  ADDS            R1, #1
12580E:  LDR             R3, [R0]
125810:  LDR             R0, [R5]
125812:  STR             R1, [SP,#0x20+var_20]
125814:  ADDS            R1, R0, #1
125816:  BL              sub_1246CC
12581A:  LDR.W           R0, [R9]
12581E:  LDR.W           R1, [R10]
125822:  ADDS            R0, #1
125824:  ADDS            R1, #1
125826:  STR.W           R0, [R9]
12582A:  STR.W           R1, [R10]
12582E:  BL              sub_125B8C
125832:  LDR.W           R4, [R9]
125836:  LDR             R0, [R5]
125838:  SUBS            R0, R0, R4
12583A:  RSB.W           R0, R0, R0,LSL#3
12583E:  LSLS            R5, R0, #1
125840:  MOV             R0, R5; unsigned int
125842:  BLX             j__Znaj; operator new[](uint)
125846:  MOV             R6, R0
125848:  LDR             R0, =(dword_263C48 - 0x125854)
12584A:  RSB.W           R1, R4, R4,LSL#3
12584E:  MOV             R2, R5; n
125850:  ADD             R0, PC; dword_263C48
125852:  LDR             R0, [R0]
125854:  ADD.W           R4, R0, R1,LSL#1
125858:  MOV             R0, R6; dest
12585A:  MOV             R1, R4; src
12585C:  BLX             j_memcpy
125860:  ADD.W           R0, R4, #0xE; dest
125864:  MOV             R1, R6; src
125866:  MOV             R2, R5; n
125868:  BLX             j_memcpy
12586C:  MOV             R0, R6; void *
12586E:  BLX             j__ZdaPv; operator delete[](void *)
125872:  LDR.W           R0, [R9]; int
125876:  MOV             R1, R8; s
125878:  BL              sub_125AF0
12587C:  BL              sub_124658
125880:  LDR             R0, =(dword_263C74 - 0x12588A)
125882:  MOVS            R2, #0x15
125884:  LDR             R1, =(aEvehicleTBoat - 0x12588C); "{ eVehicle_t::BOAT, \"" ...
125886:  ADD             R0, PC; dword_263C74
125888:  ADD             R1, PC; "{ eVehicle_t::BOAT, \""
12588A:  BL              sub_FB2B4
12588E:  MOV             R4, R0
125890:  MOV             R0, R8; s
125892:  BLX             strlen
125896:  MOV             R2, R0
125898:  MOV             R0, R4
12589A:  MOV             R1, R8
12589C:  BL              sub_FB2B4
1258A0:  LDR             R1, =(asc_8E558 - 0x1258A8); "\" }," ...
1258A2:  MOVS            R2, #4
1258A4:  ADD             R1, PC; "\" },"
1258A6:  BL              sub_FB2B4
1258AA:  MOV             R4, R0
1258AC:  LDR             R0, [R0]
1258AE:  ADD             R5, SP, #0x20+var_1C
1258B0:  LDR.W           R0, [R0,#-0xC]
1258B4:  ADDS            R1, R4, R0
1258B6:  MOV             R0, R5; this
1258B8:  BLX             j__ZNKSt6__ndk18ios_base6getlocEv; std::ios_base::getloc(void)
1258BC:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0x1258C2)
1258BE:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
1258C0:  LDR             R1, [R0]; std::locale::id *
1258C2:  MOV             R0, R5; this
1258C4:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
1258C8:  LDR             R1, [R0]
1258CA:  LDR             R2, [R1,#0x1C]
1258CC:  MOVS            R1, #0xA
1258CE:  BLX             R2
1258D0:  MOV             R5, R0
1258D2:  ADD             R0, SP, #0x20+var_1C; this
1258D4:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
1258D8:  MOV             R0, R4
1258DA:  MOV             R1, R5
1258DC:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE3putEc; std::ostream::put(char)
1258E0:  MOV             R0, R4
1258E2:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE5flushEv; std::ostream::flush(void)
1258E6:  ADD             SP, SP, #8
1258E8:  POP.W           {R8-R10}
1258EC:  POP             {R4-R7,PC}
