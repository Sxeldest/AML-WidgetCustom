; =========================================================
; Game Engine Function: sub_125590
; Address            : 0x125590 - 0x125702
; =========================================================

125590:  PUSH            {R4-R7,LR}
125592:  ADD             R7, SP, #0xC
125594:  PUSH.W          {R8-R11}
125598:  SUB             SP, SP, #0xC
12559A:  MOV             R8, R1
12559C:  BL              sub_125A8C
1255A0:  LDR             R6, =(dword_238E90 - 0x1255A6)
1255A2:  ADD             R6, PC; dword_238E90
1255A4:  LDR             R1, [R6]
1255A6:  CMP             R0, R1
1255A8:  BNE.W           loc_1256E8
1255AC:  LDR             R1, =(dword_238EA0 - 0x1255B2)
1255AE:  ADD             R1, PC; dword_238EA0
1255B0:  MOV             R10, R1
1255B2:  LDR             R1, [R1]
1255B4:  ADDS            R1, #1
1255B6:  CMP             R1, R0
1255B8:  LDR             R0, =(dword_238EA8 - 0x1255BE)
1255BA:  ADD             R0, PC; dword_238EA8
1255BC:  MOV             R9, R0
1255BE:  LDR             R0, =(dword_238E9C - 0x1255C8)
1255C0:  LDR             R5, =(dword_238E94 - 0x1255CA)
1255C2:  LDR             R4, =(dword_238E98 - 0x1255CC)
1255C4:  ADD             R0, PC; dword_238E9C
1255C6:  ADD             R5, PC; dword_238E94
1255C8:  ADD             R4, PC; dword_238E98
1255CA:  MOV             R11, R0
1255CC:  BGE             loc_1255F0
1255CE:  MOV             R0, R11
1255D0:  LDR.W           LR, [R11]
1255D4:  LDR             R2, [R5]
1255D6:  MOV             R0, R9
1255D8:  LDR             R3, [R4]
1255DA:  ADD.W           R0, R2, LR
1255DE:  LDR.W           R12, [R9]
1255E2:  ADD             R0, R3
1255E4:  ADD.W           R2, R0, #0xA1
1255E8:  ADD.W           R0, R12, #1
1255EC:  CMP             R0, R2
1255EE:  BLT             loc_125620
1255F0:  LDR             R1, =(aAxl - 0x1255FC); "AXL" ...
1255F2:  MOVS            R0, #4; prio
1255F4:  LDR             R2, =(aChandlinghookN_5 - 0x1255FE); "CHandlingHook: No free entries for flyi"... ...
1255F6:  MOV             R3, R8
1255F8:  ADD             R1, PC; "AXL"
1255FA:  ADD             R2, PC; "CHandlingHook: No free entries for flyi"...
1255FC:  BLX             __android_log_print
125600:  LDR             R3, [R4]
125602:  LDR             R0, [R6]
125604:  LDR             R2, [R5]
125606:  ADDS            R3, #1
125608:  LDR.W           R1, [R11]
12560C:  STR             R1, [SP,#0x28+var_28]
12560E:  ADDS            R1, R0, #1
125610:  BL              sub_1246CC
125614:  LDR.W           R0, [R9]
125618:  LDR.W           R1, [R10]
12561C:  ADDS            R0, #1
12561E:  ADDS            R1, #1
125620:  STR.W           R0, [R9]
125624:  STR.W           R1, [R10]
125628:  BL              sub_125B8C
12562C:  LDR.W           R4, [R9]
125630:  LDR             R0, [R6]
125632:  SUBS            R0, R0, R4
125634:  RSB.W           R0, R0, R0,LSL#3
125638:  LSLS            R5, R0, #1
12563A:  MOV             R0, R5; unsigned int
12563C:  BLX             j__Znaj; operator new[](uint)
125640:  MOV             R6, R0
125642:  LDR             R0, =(dword_263C48 - 0x12564E)
125644:  RSB.W           R1, R4, R4,LSL#3
125648:  MOV             R2, R5; n
12564A:  ADD             R0, PC; dword_263C48
12564C:  LDR             R0, [R0]
12564E:  ADD.W           R4, R0, R1,LSL#1
125652:  MOV             R0, R6; dest
125654:  MOV             R1, R4; src
125656:  BLX             j_memcpy
12565A:  ADD.W           R0, R4, #0xE; dest
12565E:  MOV             R1, R6; src
125660:  MOV             R2, R5; n
125662:  BLX             j_memcpy
125666:  MOV             R0, R6; void *
125668:  BLX             j__ZdaPv; operator delete[](void *)
12566C:  LDR.W           R0, [R9]; int
125670:  MOV             R1, R8; s
125672:  BL              sub_125AF0
125676:  BL              sub_124658
12567A:  LDR             R0, =(dword_263C74 - 0x125684)
12567C:  MOVS            R2, #0x17
12567E:  LDR             R1, =(aEvehicleTFlyin - 0x125686); "{ eVehicle_t::FLYING, \"" ...
125680:  ADD             R0, PC; dword_263C74
125682:  ADD             R1, PC; "{ eVehicle_t::FLYING, \""
125684:  BL              sub_FB2B4
125688:  MOV             R4, R0
12568A:  MOV             R0, R8; s
12568C:  BLX             strlen
125690:  MOV             R2, R0
125692:  MOV             R0, R4
125694:  MOV             R1, R8
125696:  BL              sub_FB2B4
12569A:  LDR             R1, =(asc_8E558 - 0x1256A2); "\" }," ...
12569C:  MOVS            R2, #4
12569E:  ADD             R1, PC; "\" },"
1256A0:  BL              sub_FB2B4
1256A4:  MOV             R4, R0
1256A6:  LDR             R0, [R0]
1256A8:  ADD             R5, SP, #0x28+var_20
1256AA:  LDR.W           R0, [R0,#-0xC]
1256AE:  ADDS            R1, R4, R0
1256B0:  MOV             R0, R5; this
1256B2:  BLX             j__ZNKSt6__ndk18ios_base6getlocEv; std::ios_base::getloc(void)
1256B6:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0x1256BC)
1256B8:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
1256BA:  LDR             R1, [R0]; std::locale::id *
1256BC:  MOV             R0, R5; this
1256BE:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
1256C2:  LDR             R1, [R0]
1256C4:  LDR             R2, [R1,#0x1C]
1256C6:  MOVS            R1, #0xA
1256C8:  BLX             R2
1256CA:  MOV             R5, R0
1256CC:  ADD             R0, SP, #0x28+var_20; this
1256CE:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
1256D2:  MOV             R0, R4
1256D4:  MOV             R1, R5
1256D6:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE3putEc; std::ostream::put(char)
1256DA:  MOV             R0, R4
1256DC:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE5flushEv; std::ostream::flush(void)
1256E0:  ADD             SP, SP, #0xC
1256E2:  POP.W           {R8-R11}
1256E6:  POP             {R4-R7,PC}
1256E8:  LDR             R1, =(aAxl - 0x1256F4); "AXL" ...
1256EA:  MOVS            R0, #5
1256EC:  LDR             R2, =(aChandlinghookC_1 - 0x1256F6); "CHandlingHook: Can't add handling for f"... ...
1256EE:  MOV             R3, R8
1256F0:  ADD             R1, PC; "AXL"
1256F2:  ADD             R2, PC; "CHandlingHook: Can't add handling for f"...
1256F4:  ADD             SP, SP, #0xC
1256F6:  POP.W           {R8-R11}
1256FA:  POP.W           {R4-R7,LR}
1256FE:  B.W             sub_2242C8
