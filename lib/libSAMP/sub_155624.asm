; =========================================================
; Game Engine Function: sub_155624
; Address            : 0x155624 - 0x1556F8
; =========================================================

155624:  PUSH            {R4-R7,LR}
155626:  ADD             R7, SP, #0xC
155628:  PUSH.W          {R8}
15562C:  SUB             SP, SP, #0x20
15562E:  MOV             R5, R0
155630:  LDRB            R0, [R0]
155632:  CMP             R0, #1
155634:  BNE             loc_1556A2
155636:  LDR             R0, [R5,#8]
155638:  MOV.W           R6, #0x80000000
15563C:  MOVS            R4, #0
15563E:  MOV             R8, R2
155640:  STR             R6, [SP,#0x30+var_14]
155642:  STR             R4, [SP,#0x30+var_18]
155644:  STR             R5, [SP,#0x30+var_20]
155646:  BL              sub_EC2C0
15564A:  STR             R0, [SP,#0x30+var_20+4]
15564C:  LDRB            R0, [R5]
15564E:  STRD.W          R4, R6, [SP,#0x30+var_28]
155652:  CMP             R0, #2
155654:  STRD.W          R5, R4, [SP,#0x30+var_30]
155658:  BEQ             loc_155666
15565A:  CMP             R0, #1
15565C:  BNE             loc_15566E
15565E:  LDR             R0, [R5,#8]
155660:  ADDS            R0, #4
155662:  STR             R0, [SP,#0x30+var_2C]
155664:  B               loc_155672
155666:  LDR             R0, [R5,#8]
155668:  LDR             R0, [R0,#4]
15566A:  STR             R0, [SP,#0x30+var_28]
15566C:  B               loc_155672
15566E:  MOVS            R0, #1
155670:  STR             R0, [SP,#0x30+var_24]
155672:  ADD             R0, SP, #0x30+var_20
155674:  MOV             R1, SP
155676:  BL              sub_EC314
15567A:  CBZ             R0, loc_155682
15567C:  VLDR            S0, [R8]
155680:  B               loc_155696
155682:  ADD             R0, SP, #0x30+var_20
155684:  BL              sub_EC238
155688:  MOVS            R1, #0
15568A:  STR             R1, [SP,#0x30+var_30]
15568C:  MOV             R1, SP
15568E:  BL              sub_15601C
155692:  VLDR            S0, [SP,#0x30+var_30]
155696:  VMOV            R0, S0
15569A:  ADD             SP, SP, #0x20 ; ' '
15569C:  POP.W           {R8}
1556A0:  POP             {R4-R7,PC}
1556A2:  MOVS            R0, #0x10; thrown_size
1556A4:  BLX             j___cxa_allocate_exception
1556A8:  MOV             R4, R0
1556AA:  MOV             R0, R5
1556AC:  BL              sub_E9DFC
1556B0:  MOV             R1, R0; s
1556B2:  MOV             R0, SP; int
1556B4:  BL              sub_DC6DC
1556B8:  LDR             R2, =(aCannotUseValue - 0x1556BE); "cannot use value() with " ...
1556BA:  ADD             R2, PC; "cannot use value() with "
1556BC:  MOV             R0, SP; int
1556BE:  MOVS            R1, #0; int
1556C0:  MOVS            R6, #0
1556C2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
1556C6:  VLDR            D16, [R0]
1556CA:  LDR             R1, [R0,#8]
1556CC:  STR             R1, [SP,#0x30+var_18]
1556CE:  VSTR            D16, [SP,#0x30+var_20]
1556D2:  STRD.W          R6, R6, [R0]
1556D6:  STR             R6, [R0,#8]
1556D8:  MOVS            R6, #1
1556DA:  ADD             R2, SP, #0x30+var_20
1556DC:  MOV             R0, R4
1556DE:  MOV.W           R1, #0x132
1556E2:  MOV             R3, R5
1556E4:  BL              sub_E9CB0
1556E8:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0x1556F2); `typeinfo for'nlohmann::detail::type_error ...
1556EA:  MOVS            R6, #0
1556EC:  LDR             R2, =(sub_E9438+1 - 0x1556F4)
1556EE:  ADD             R1, PC; lptinfo
1556F0:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
1556F2:  MOV             R0, R4; void *
1556F4:  BLX             j___cxa_throw
