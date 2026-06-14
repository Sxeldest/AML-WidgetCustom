; =========================================================
; Game Engine Function: sub_E49A8
; Address            : 0xE49A8 - 0xE4A76
; =========================================================

E49A8:  PUSH            {R4-R7,LR}
E49AA:  ADD             R7, SP, #0xC
E49AC:  PUSH.W          {R8}
E49B0:  SUB             SP, SP, #0x20
E49B2:  MOV             R5, R0
E49B4:  LDRB            R0, [R0]
E49B6:  CMP             R0, #1
E49B8:  BNE             loc_E4A20
E49BA:  LDR             R0, [R5,#8]
E49BC:  MOV.W           R6, #0x80000000
E49C0:  MOVS            R4, #0
E49C2:  MOV             R8, R2
E49C4:  STR             R6, [SP,#0x30+var_14]
E49C6:  STR             R4, [SP,#0x30+var_18]
E49C8:  STR             R5, [SP,#0x30+var_20]
E49CA:  BL              sub_EC2C0
E49CE:  STR             R0, [SP,#0x30+var_20+4]
E49D0:  LDRB            R0, [R5]
E49D2:  STRD.W          R4, R6, [SP,#0x30+var_28]
E49D6:  CMP             R0, #2
E49D8:  STRD.W          R5, R4, [SP,#0x30+var_30]
E49DC:  BEQ             loc_E49EA
E49DE:  CMP             R0, #1
E49E0:  BNE             loc_E49F2
E49E2:  LDR             R0, [R5,#8]
E49E4:  ADDS            R0, #4
E49E6:  STR             R0, [SP,#0x30+var_2C]
E49E8:  B               loc_E49F6
E49EA:  LDR             R0, [R5,#8]
E49EC:  LDR             R0, [R0,#4]
E49EE:  STR             R0, [SP,#0x30+var_28]
E49F0:  B               loc_E49F6
E49F2:  MOVS            R0, #1
E49F4:  STR             R0, [SP,#0x30+var_24]
E49F6:  ADD             R0, SP, #0x30+var_20
E49F8:  MOV             R1, SP
E49FA:  BL              sub_EC314
E49FE:  CBZ             R0, loc_E4A06
E4A00:  LDR.W           R0, [R8]
E4A04:  B               loc_E4A18
E4A06:  ADD             R0, SP, #0x30+var_20
E4A08:  BL              sub_EC238
E4A0C:  MOVS            R1, #0
E4A0E:  STR             R1, [SP,#0x30+var_30]
E4A10:  MOV             R1, SP
E4A12:  BL              sub_EC49C
E4A16:  LDR             R0, [SP,#0x30+var_30]
E4A18:  ADD             SP, SP, #0x20 ; ' '
E4A1A:  POP.W           {R8}
E4A1E:  POP             {R4-R7,PC}
E4A20:  MOVS            R0, #0x10; thrown_size
E4A22:  BLX             j___cxa_allocate_exception
E4A26:  MOV             R4, R0
E4A28:  MOV             R0, R5
E4A2A:  BL              sub_E9DFC
E4A2E:  MOV             R1, R0; s
E4A30:  MOV             R0, SP; int
E4A32:  BL              sub_DC6DC
E4A36:  LDR             R2, =(aCannotUseValue - 0xE4A3C); "cannot use value() with " ...
E4A38:  ADD             R2, PC; "cannot use value() with "
E4A3A:  MOV             R0, SP; int
E4A3C:  MOVS            R1, #0; int
E4A3E:  MOVS            R6, #0
E4A40:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
E4A44:  VLDR            D16, [R0]
E4A48:  LDR             R1, [R0,#8]
E4A4A:  STR             R1, [SP,#0x30+var_18]
E4A4C:  VSTR            D16, [SP,#0x30+var_20]
E4A50:  STRD.W          R6, R6, [R0]
E4A54:  STR             R6, [R0,#8]
E4A56:  MOVS            R6, #1
E4A58:  ADD             R2, SP, #0x30+var_20
E4A5A:  MOV             R0, R4
E4A5C:  MOV.W           R1, #0x132
E4A60:  MOV             R3, R5
E4A62:  BL              sub_E9CB0
E4A66:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0xE4A70); `typeinfo for'nlohmann::detail::type_error ...
E4A68:  MOVS            R6, #0
E4A6A:  LDR             R2, =(sub_E9438+1 - 0xE4A72)
E4A6C:  ADD             R1, PC; lptinfo
E4A6E:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E4A70:  MOV             R0, R4; void *
E4A72:  BLX             j___cxa_throw
