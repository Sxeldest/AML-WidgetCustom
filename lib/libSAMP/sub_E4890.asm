; =========================================================
; Game Engine Function: sub_E4890
; Address            : 0xE4890 - 0xE4962
; =========================================================

E4890:  PUSH            {R4-R7,LR}
E4892:  ADD             R7, SP, #0xC
E4894:  PUSH.W          {R8,R9,R11}
E4898:  SUB             SP, SP, #0x20
E489A:  MOV             R9, R0
E489C:  LDRB            R0, [R1]
E489E:  MOV             R5, R1
E48A0:  CMP             R0, #1
E48A2:  BNE             loc_E490C
E48A4:  LDR             R0, [R5,#8]
E48A6:  MOV.W           R6, #0x80000000
E48AA:  MOVS            R4, #0
E48AC:  MOV             R1, R2
E48AE:  MOV             R8, R3
E48B0:  STR             R6, [SP,#0x38+var_1C]
E48B2:  STR             R4, [SP,#0x38+var_20]
E48B4:  STR             R5, [SP,#0x38+var_28]
E48B6:  BL              sub_EC2C0
E48BA:  STR             R0, [SP,#0x38+var_28+4]
E48BC:  LDRB            R0, [R5]
E48BE:  STRD.W          R4, R6, [SP,#0x38+var_30]
E48C2:  CMP             R0, #2
E48C4:  STRD.W          R5, R4, [SP,#0x38+var_38]
E48C8:  BEQ             loc_E48D6
E48CA:  CMP             R0, #1
E48CC:  BNE             loc_E48DE
E48CE:  LDR             R0, [R5,#8]
E48D0:  ADDS            R0, #4
E48D2:  STR             R0, [SP,#0x38+var_34]
E48D4:  B               loc_E48E2
E48D6:  LDR             R0, [R5,#8]
E48D8:  LDR             R0, [R0,#4]
E48DA:  STR             R0, [SP,#0x38+var_30]
E48DC:  B               loc_E48E2
E48DE:  MOVS            R0, #1
E48E0:  STR             R0, [SP,#0x38+var_2C]
E48E2:  ADD             R0, SP, #0x38+var_28
E48E4:  MOV             R1, SP
E48E6:  BL              sub_EC314
E48EA:  CBZ             R0, loc_E48F6
E48EC:  MOV             R0, R9
E48EE:  MOV             R1, R8
E48F0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
E48F4:  B               loc_E4904
E48F6:  ADD             R0, SP, #0x38+var_28
E48F8:  BL              sub_EC238
E48FC:  MOV             R1, R0
E48FE:  MOV             R0, R9
E4900:  BL              sub_EC3AC
E4904:  ADD             SP, SP, #0x20 ; ' '
E4906:  POP.W           {R8,R9,R11}
E490A:  POP             {R4-R7,PC}
E490C:  MOVS            R0, #0x10; thrown_size
E490E:  BLX             j___cxa_allocate_exception
E4912:  MOV             R4, R0
E4914:  MOV             R0, R5
E4916:  BL              sub_E9DFC
E491A:  MOV             R1, R0; s
E491C:  MOV             R0, SP; int
E491E:  BL              sub_DC6DC
E4922:  LDR             R2, =(aCannotUseValue - 0xE4928); "cannot use value() with " ...
E4924:  ADD             R2, PC; "cannot use value() with "
E4926:  MOV             R0, SP; int
E4928:  MOVS            R1, #0; int
E492A:  MOVS            R6, #0
E492C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
E4930:  VLDR            D16, [R0]
E4934:  LDR             R1, [R0,#8]
E4936:  STR             R1, [SP,#0x38+var_20]
E4938:  VSTR            D16, [SP,#0x38+var_28]
E493C:  STRD.W          R6, R6, [R0]
E4940:  STR             R6, [R0,#8]
E4942:  MOVS            R6, #1
E4944:  ADD             R2, SP, #0x38+var_28
E4946:  MOV             R0, R4
E4948:  MOV.W           R1, #0x132
E494C:  MOV             R3, R5
E494E:  BL              sub_E9CB0
E4952:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0xE495C); `typeinfo for'nlohmann::detail::type_error ...
E4954:  MOVS            R6, #0
E4956:  LDR             R2, =(sub_E9438+1 - 0xE495E)
E4958:  ADD             R1, PC; lptinfo
E495A:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E495C:  MOV             R0, R4; void *
E495E:  BLX             j___cxa_throw
