; =========================================================
; Game Engine Function: sub_128650
; Address            : 0x128650 - 0x128806
; =========================================================

128650:  PUSH            {R4-R7,LR}
128652:  ADD             R7, SP, #0xC
128654:  PUSH.W          {R8-R10}
128658:  SUB             SP, SP, #0x18
12865A:  MOV             R8, R0
12865C:  LDR             R0, =(off_23494C - 0x12866A)
12865E:  MOVW            R2, #0x3050
128662:  LDR.W           R1, [R8,#0x18]
128666:  ADD             R0, PC; off_23494C
128668:  MOVT            R2, #0x67 ; 'g'
12866C:  LDR.W           R10, [R0]; dword_23DF24
128670:  LDR.W           R0, [R10]
128674:  ADD             R0, R2
128676:  MOVS            R2, #0
128678:  BL              sub_164196
12867C:  LDR.W           R0, [R10]
128680:  MOV             R4, #0x677DD8
128688:  LDR.W           R5, [R8,#0xC]
12868C:  LDR             R6, [R0,R4]
12868E:  ADD             R0, R4
128690:  BL              sub_1641C4
128694:  LDR.W           R0, [R10]
128698:  MOV             R2, #unk_807F0; n
1286A0:  MOV             R1, R6; src
1286A2:  STR             R5, [R0,R4]
1286A4:  MOV             R0, R5; dest
1286A6:  BLX             j_memcpy
1286AA:  LDR.W           R0, [R10]
1286AE:  MOV             R4, #0x6793B4
1286B6:  LDR.W           R5, [R8,#0x10]
1286BA:  ADD             R0, R4
1286BC:  LDR.W           R6, [R0,#0x320]
1286C0:  ADD.W           R0, R0, #0x320
1286C4:  BL              sub_1641C4
1286C8:  LDR.W           R0, [R10]
1286CC:  MOV             R2, #0x13880; n
1286D4:  MOV             R1, R6; src
1286D6:  ADD             R0, R4
1286D8:  STR.W           R5, [R0,#0x320]
1286DC:  MOV             R0, R5; dest
1286DE:  BLX             j_memcpy
1286E2:  LDR.W           R0, [R10]
1286E6:  LDR.W           R5, [R8,#0x14]
1286EA:  LDR             R6, [R0,R4]
1286EC:  ADD             R0, R4
1286EE:  BL              sub_1641C4
1286F2:  LDR.W           R0, [R10]
1286F6:  MOV             R1, R6; src
1286F8:  MOV.W           R2, #0x1680; n
1286FC:  STR             R5, [R0,R4]
1286FE:  MOV             R0, R5; dest
128700:  BLX             j_memcpy
128704:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15StreamingLimitsD1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x128710); `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_0,std::allocator<StreamingLimits::~StreamingLimits()::$_0>,void ()(void)> ...
128706:  MOV             R5, SP
128708:  LDR.W           R1, [R10]
12870C:  ADD             R0, PC; `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_0,std::allocator<StreamingLimits::~StreamingLimits()::$_0>,void ()(void)>
12870E:  STR             R5, [SP,#0x30+var_20]
128710:  ADDS            R0, #8
128712:  STR             R0, [SP,#0x30+var_30]
128714:  ADD.W           R0, R1, #0x2D0000
128718:  MOV             R1, R5
12871A:  BL              sub_1642EC
12871E:  LDR             R0, [SP,#0x30+var_20]
128720:  CMP             R5, R0
128722:  BEQ             loc_12872A
128724:  CBZ             R0, loc_128734
128726:  MOVS            R1, #5
128728:  B               loc_12872C
12872A:  MOVS            R1, #4
12872C:  LDR             R2, [R0]
12872E:  LDR.W           R1, [R2,R1,LSL#2]
128732:  BLX             R1
128734:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15StreamingLimitsD1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x128746); `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_1,std::allocator<StreamingLimits::~StreamingLimits()::$_1>,void ()(void)> ...
128736:  MOVW            R9, #:lower16:unk_2D3000
12873A:  LDR.W           R1, [R10]
12873E:  MOVT            R9, #:upper16:unk_2D3000
128742:  ADD             R0, PC; `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_1,std::allocator<StreamingLimits::~StreamingLimits()::$_1>,void ()(void)>
128744:  STR             R5, [SP,#0x30+var_20]
128746:  ADDS            R0, #8
128748:  STR             R0, [SP,#0x30+var_30]
12874A:  ADD.W           R0, R1, R9
12874E:  MOV             R1, R5
128750:  BL              sub_1642EC
128754:  MOV             R6, R0
128756:  LDR             R0, [SP,#0x30+var_20]
128758:  CMP             R5, R0
12875A:  BEQ             loc_128762
12875C:  CBZ             R0, loc_12876C
12875E:  MOVS            R1, #5
128760:  B               loc_128764
128762:  MOVS            R1, #4
128764:  LDR             R2, [R0]
128766:  LDR.W           R1, [R2,R1,LSL#2]
12876A:  BLX             R1
12876C:  CBNZ            R6, loc_12879C
12876E:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15StreamingLimitsD1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x128778); `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_2,std::allocator<StreamingLimits::~StreamingLimits()::$_2>,void ()(void)> ...
128770:  LDR.W           R1, [R10]
128774:  ADD             R0, PC; `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_2,std::allocator<StreamingLimits::~StreamingLimits()::$_2>,void ()(void)>
128776:  STR             R5, [SP,#0x30+var_20]
128778:  ADDS            R0, #8
12877A:  STR             R0, [SP,#0x30+var_30]
12877C:  ADD.W           R0, R1, R9
128780:  MOV             R1, R5
128782:  BL              sub_1642EC
128786:  LDR             R0, [SP,#0x30+var_20]
128788:  CMP             R5, R0
12878A:  BEQ             loc_128792
12878C:  CBZ             R0, loc_12879C
12878E:  MOVS            R1, #5
128790:  B               loc_128794
128792:  MOVS            R1, #4
128794:  LDR             R2, [R0]
128796:  LDR.W           R1, [R2,R1,LSL#2]
12879A:  BLX             R1
12879C:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15StreamingLimitsD1EvE3$_3NS_9allocatorIS3_EEFvvEEE - 0x1287A6); `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_3,std::allocator<StreamingLimits::~StreamingLimits()::$_3>,void ()(void)> ...
12879E:  LDR.W           R1, [R10]
1287A2:  ADD             R0, PC; `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_3,std::allocator<StreamingLimits::~StreamingLimits()::$_3>,void ()(void)>
1287A4:  STR             R5, [SP,#0x30+var_20]
1287A6:  ADDS            R0, #8
1287A8:  STR             R0, [SP,#0x30+var_30]
1287AA:  ADD.W           R0, R1, #0x400000
1287AE:  ADD.W           R0, R0, #0x6C000
1287B2:  MOV             R1, R5
1287B4:  BL              sub_1642EC
1287B8:  LDR             R0, [SP,#0x30+var_20]
1287BA:  CMP             R5, R0
1287BC:  BEQ             loc_1287C4
1287BE:  CBZ             R0, loc_1287CE
1287C0:  MOVS            R1, #5
1287C2:  B               loc_1287C6
1287C4:  MOVS            R1, #4
1287C6:  LDR             R2, [R0]
1287C8:  LDR.W           R1, [R2,R1,LSL#2]
1287CC:  BLX             R1
1287CE:  LDR.W           R0, [R8,#8]; void *
1287D2:  MOVS            R4, #0
1287D4:  STR.W           R4, [R8,#8]
1287D8:  CBZ             R0, loc_1287DE
1287DA:  BLX             j__ZdaPv; operator delete[](void *)
1287DE:  LDR.W           R0, [R8,#4]; void *
1287E2:  STR.W           R4, [R8,#4]
1287E6:  CBZ             R0, loc_1287EC
1287E8:  BLX             j__ZdaPv; operator delete[](void *)
1287EC:  LDR.W           R0, [R8]; void *
1287F0:  MOVS            R1, #0
1287F2:  STR.W           R1, [R8]
1287F6:  CBZ             R0, loc_1287FC
1287F8:  BLX             j__ZdaPv; operator delete[](void *)
1287FC:  MOV             R0, R8
1287FE:  ADD             SP, SP, #0x18
128800:  POP.W           {R8-R10}
128804:  POP             {R4-R7,PC}
