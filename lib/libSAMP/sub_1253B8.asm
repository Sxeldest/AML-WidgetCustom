; =========================================================
; Game Engine Function: sub_1253B8
; Address            : 0x1253B8 - 0x12550A
; =========================================================

1253B8:  PUSH            {R4-R7,LR}
1253BA:  ADD             R7, SP, #0xC
1253BC:  PUSH.W          {R8,R9,R11}
1253C0:  SUB             SP, SP, #8
1253C2:  MOV             R8, R1
1253C4:  BL              sub_125A8C
1253C8:  LDR             R6, =(dword_238E90 - 0x1253CE)
1253CA:  ADD             R6, PC; dword_238E90
1253CC:  LDR             R1, [R6]
1253CE:  CMP             R0, R1
1253D0:  BNE.W           loc_1254F0
1253D4:  LDR             R5, =(dword_238EA0 - 0x1253DA)
1253D6:  ADD             R5, PC; dword_238EA0
1253D8:  LDR             R1, [R5]
1253DA:  ADDS            R1, #1
1253DC:  CMP             R1, R0
1253DE:  LDR             R0, =(dword_238EA4 - 0x1253E6)
1253E0:  LDR             R4, =(dword_238E94 - 0x1253E8)
1253E2:  ADD             R0, PC; dword_238EA4
1253E4:  ADD             R4, PC; dword_238E94
1253E6:  MOV             R9, R0
1253E8:  BGE             loc_1253F8
1253EA:  LDR             R2, [R4]
1253EC:  MOV             R0, R9
1253EE:  LDR.W           R0, [R9]
1253F2:  ADDS            R2, #0xA1
1253F4:  CMP             R0, R2
1253F6:  BLT             loc_12542C
1253F8:  LDR             R1, =(aAxl - 0x125404); "AXL" ...
1253FA:  MOVS            R0, #4; prio
1253FC:  LDR             R2, =(aChandlinghookN_4 - 0x125406); "CHandlingHook: No free entries for bike"... ...
1253FE:  MOV             R3, R8
125400:  ADD             R1, PC; "AXL"
125402:  ADD             R2, PC; "CHandlingHook: No free entries for bike"...
125404:  BLX             __android_log_print
125408:  LDR             R0, =(dword_238E98 - 0x125410)
12540A:  LDR             R1, =(dword_238E9C - 0x125414)
12540C:  ADD             R0, PC; dword_238E98
12540E:  LDR             R2, [R4]
125410:  ADD             R1, PC; dword_238E9C
125412:  LDR             R3, [R0]
125414:  ADDS            R2, #1
125416:  LDR             R0, [R6]
125418:  LDR             R1, [R1]
12541A:  STR             R1, [SP,#0x20+var_20]
12541C:  ADDS            R1, R0, #1
12541E:  BL              sub_1246CC
125422:  LDR             R1, [R5]
125424:  MOV             R0, R9
125426:  LDR.W           R0, [R9]
12542A:  ADDS            R1, #1
12542C:  ADDS            R0, #1
12542E:  MOV             R4, R9
125430:  STR.W           R0, [R9]
125434:  STR             R1, [R5]
125436:  BL              sub_125B8C
12543A:  LDR.W           R4, [R9]
12543E:  LDR             R0, [R6]
125440:  SUBS            R0, R0, R4
125442:  RSB.W           R0, R0, R0,LSL#3
125446:  LSLS            R5, R0, #1
125448:  MOV             R0, R5; unsigned int
12544A:  BLX             j__Znaj; operator new[](uint)
12544E:  MOV             R6, R0
125450:  LDR             R0, =(dword_263C48 - 0x12545C)
125452:  RSB.W           R1, R4, R4,LSL#3
125456:  MOV             R2, R5; n
125458:  ADD             R0, PC; dword_263C48
12545A:  LDR             R0, [R0]
12545C:  ADD.W           R4, R0, R1,LSL#1
125460:  MOV             R0, R6; dest
125462:  MOV             R1, R4; src
125464:  BLX             j_memcpy
125468:  ADD.W           R0, R4, #0xE; dest
12546C:  MOV             R1, R6; src
12546E:  MOV             R2, R5; n
125470:  BLX             j_memcpy
125474:  MOV             R0, R6; void *
125476:  BLX             j__ZdaPv; operator delete[](void *)
12547A:  LDR.W           R0, [R9]; int
12547E:  MOV             R1, R8; s
125480:  BL              sub_125AF0
125484:  BL              sub_124658
125488:  LDR             R0, =(dword_263C74 - 0x125492)
12548A:  MOVS            R2, #0x15
12548C:  LDR             R1, =(aEvehicleTBike - 0x125494); "{ eVehicle_t::BIKE, \"" ...
12548E:  ADD             R0, PC; dword_263C74
125490:  ADD             R1, PC; "{ eVehicle_t::BIKE, \""
125492:  BL              sub_FB2B4
125496:  MOV             R4, R0
125498:  MOV             R0, R8; s
12549A:  BLX             strlen
12549E:  MOV             R2, R0
1254A0:  MOV             R0, R4
1254A2:  MOV             R1, R8
1254A4:  BL              sub_FB2B4
1254A8:  LDR             R1, =(asc_8E558 - 0x1254B0); "\" }," ...
1254AA:  MOVS            R2, #4
1254AC:  ADD             R1, PC; "\" },"
1254AE:  BL              sub_FB2B4
1254B2:  MOV             R4, R0
1254B4:  LDR             R0, [R0]
1254B6:  ADD             R5, SP, #0x20+var_1C
1254B8:  LDR.W           R0, [R0,#-0xC]
1254BC:  ADDS            R1, R4, R0
1254BE:  MOV             R0, R5; this
1254C0:  BLX             j__ZNKSt6__ndk18ios_base6getlocEv; std::ios_base::getloc(void)
1254C4:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0x1254CA)
1254C6:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
1254C8:  LDR             R1, [R0]; std::locale::id *
1254CA:  MOV             R0, R5; this
1254CC:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
1254D0:  LDR             R1, [R0]
1254D2:  LDR             R2, [R1,#0x1C]
1254D4:  MOVS            R1, #0xA
1254D6:  BLX             R2
1254D8:  MOV             R5, R0
1254DA:  ADD             R0, SP, #0x20+var_1C; this
1254DC:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
1254E0:  MOV             R0, R4
1254E2:  MOV             R1, R5
1254E4:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE3putEc; std::ostream::put(char)
1254E8:  MOV             R0, R4
1254EA:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE5flushEv; std::ostream::flush(void)
1254EE:  B               loc_125502
1254F0:  LDR             R1, =(aAxl - 0x1254FA); "AXL" ...
1254F2:  MOV             R3, R8
1254F4:  LDR             R2, =(aChandlinghookC_0 - 0x1254FE); "CHandlingHook: Can't add handling for b"... ...
1254F6:  ADD             R1, PC; "AXL"
1254F8:  STR             R0, [SP,#0x20+var_20]
1254FA:  ADD             R2, PC; "CHandlingHook: Can't add handling for b"...
1254FC:  MOVS            R0, #5; prio
1254FE:  BLX             __android_log_print
125502:  ADD             SP, SP, #8
125504:  POP.W           {R8,R9,R11}
125508:  POP             {R4-R7,PC}
