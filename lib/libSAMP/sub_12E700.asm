; =========================================================
; Game Engine Function: sub_12E700
; Address            : 0x12E700 - 0x12E852
; =========================================================

12E700:  PUSH            {R4-R7,LR}
12E702:  ADD             R7, SP, #0xC
12E704:  PUSH.W          {R8-R10}
12E708:  SUB             SP, SP, #0x20
12E70A:  MOV             R4, R0
12E70C:  BL              sub_12BC78
12E710:  LDR             R1, =(_ZTV12express_menu - 0x12E71C); `vtable for'express_menu ...
12E712:  MOV             R9, R4
12E714:  LDR             R0, =(aHud - 0x12E726); "hud" ...
12E716:  MOV             R8, R4
12E718:  ADD             R1, PC; `vtable for'express_menu
12E71A:  MOV             R10, R4
12E71C:  ADDS            R1, #8
12E71E:  STR             R1, [R4]
12E720:  MOVS            R1, #0
12E722:  ADD             R0, PC; "hud"
12E724:  STR.W           R1, [R9,#0x5C]!
12E728:  STR.W           R1, [R8,#0x58]!
12E72C:  STR.W           R1, [R10,#0x54]!
12E730:  BL              sub_1636F0
12E734:  MOV             R1, R0
12E736:  ADDS            R0, R1, #1
12E738:  BNE             loc_12E744
12E73A:  LDR             R0, =(asc_879DB - 0x12E740); "*" ...
12E73C:  ADD             R0, PC; "*"
12E73E:  BL              sub_1636F0
12E742:  MOV             R1, R0
12E744:  LDR             R2, =(aExpressMenu - 0x12E74A); "express_menu" ...
12E746:  ADD             R2, PC; "express_menu"
12E748:  MOV             R0, R10
12E74A:  BL              sub_163144
12E74E:  LDR.W           R6, [R10]
12E752:  CMP             R6, #0
12E754:  BEQ             loc_12E830
12E756:  MOV.W           R0, #0x3C800000
12E75A:  STR             R0, [SP,#0x38+var_34]
12E75C:  MOV.W           R0, #0x3C000000
12E760:  STR             R0, [SP,#0x38+var_38]
12E762:  MOV.W           R0, #0x3F000000
12E766:  STR             R0, [SP,#0x38+var_1C]
12E768:  MOV.W           R0, #0x3F800000
12E76C:  STR             R0, [SP,#0x38+var_20]
12E76E:  MOVS            R0, #0x88; unsigned int
12E770:  BLX             j__Znwj; operator new(uint)
12E774:  MOV             R5, R0
12E776:  ADD             R3, SP, #0x38+var_20
12E778:  MOV             R2, SP
12E77A:  MOV             R1, R6
12E77C:  BL              sub_12EA0C
12E780:  MOV             R0, R8
12E782:  MOV             R1, R5
12E784:  BL              sub_12EC4A
12E788:  LDR             R1, [R4,#0x58]
12E78A:  MOV             R0, R4
12E78C:  BL              sub_12BDF6
12E790:  MOV.W           R0, #0x3F000000
12E794:  STR             R0, [SP,#0x38+var_34]
12E796:  MOV.W           R0, #0x3C000000
12E79A:  STR             R0, [SP,#0x38+var_38]
12E79C:  MOV.W           R0, #0x3F800000
12E7A0:  STRD.W          R0, R0, [SP,#0x38+var_20]
12E7A4:  MOVS            R0, #0x88; unsigned int
12E7A6:  BLX             j__Znwj; operator new(uint)
12E7AA:  LDR.W           R1, [R10]
12E7AE:  MOV             R5, R0
12E7B0:  MOV             R6, SP
12E7B2:  ADD             R3, SP, #0x38+var_20
12E7B4:  MOV             R2, R6
12E7B6:  BL              sub_12EB2C
12E7BA:  MOV             R0, R9
12E7BC:  MOV             R1, R5
12E7BE:  BL              sub_12EC64
12E7C2:  LDR             R1, [R4,#0x5C]
12E7C4:  MOV             R0, R4
12E7C6:  BL              sub_12BDF6
12E7CA:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN12express_menuC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x12E7D4); `vtable for'std::__function::__func<express_menu::express_menu(void)::$_0,std::allocator<express_menu::express_menu(void)::$_0>,void ()(void)> ...
12E7CC:  LDR.W           R1, [R8]
12E7D0:  ADD             R0, PC; `vtable for'std::__function::__func<express_menu::express_menu(void)::$_0,std::allocator<express_menu::express_menu(void)::$_0>,void ()(void)>
12E7D2:  STR             R6, [SP,#0x38+var_28]
12E7D4:  ADDS            R0, #8
12E7D6:  STR             R0, [SP,#0x38+var_38]
12E7D8:  ADD.W           R0, R1, #0x58 ; 'X'
12E7DC:  MOV             R1, R6
12E7DE:  BL              sub_12C504
12E7E2:  LDR             R0, [SP,#0x38+var_28]
12E7E4:  CMP             R6, R0
12E7E6:  BEQ             loc_12E7EE
12E7E8:  CBZ             R0, loc_12E7F8
12E7EA:  MOVS            R1, #5
12E7EC:  B               loc_12E7F0
12E7EE:  MOVS            R1, #4
12E7F0:  LDR             R2, [R0]
12E7F2:  LDR.W           R1, [R2,R1,LSL#2]
12E7F6:  BLX             R1
12E7F8:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN12express_menuC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x12E802); `vtable for'std::__function::__func<express_menu::express_menu(void)::$_1,std::allocator<express_menu::express_menu(void)::$_1>,void ()(void)> ...
12E7FA:  LDR.W           R1, [R9]
12E7FE:  ADD             R0, PC; `vtable for'std::__function::__func<express_menu::express_menu(void)::$_1,std::allocator<express_menu::express_menu(void)::$_1>,void ()(void)>
12E800:  STR             R6, [SP,#0x38+var_28]
12E802:  ADDS            R0, #8
12E804:  STR             R0, [SP,#0x38+var_38]
12E806:  ADD.W           R0, R1, #0x58 ; 'X'
12E80A:  MOV             R1, R6
12E80C:  BL              sub_12C504
12E810:  LDR             R0, [SP,#0x38+var_28]
12E812:  CMP             R6, R0
12E814:  BEQ             loc_12E81C
12E816:  CBZ             R0, loc_12E826
12E818:  MOVS            R1, #5
12E81A:  B               loc_12E81E
12E81C:  MOVS            R1, #4
12E81E:  LDR             R2, [R0]
12E820:  LDR.W           R1, [R2,R1,LSL#2]
12E824:  BLX             R1
12E826:  MOV             R0, R4
12E828:  ADD             SP, SP, #0x20 ; ' '
12E82A:  POP.W           {R8-R10}
12E82E:  POP             {R4-R7,PC}
12E830:  MOVS            R0, #8; thrown_size
12E832:  BLX             j___cxa_allocate_exception
12E836:  LDR             R1, =(aExpressMenuUiA - 0x12E83E); "express_menu UI: atlas texture not foun"... ...
12E838:  MOV             R5, R0
12E83A:  ADD             R1, PC; "express_menu UI: atlas texture not foun"...
12E83C:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
12E840:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0x12E848)
12E842:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0x12E84A)
12E844:  ADD             R0, PC; _ZTISt13runtime_error_ptr
12E846:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
12E848:  LDR             R1, [R0]; lptinfo
12E84A:  MOV             R0, R5; void *
12E84C:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
12E84E:  BLX             j___cxa_throw
