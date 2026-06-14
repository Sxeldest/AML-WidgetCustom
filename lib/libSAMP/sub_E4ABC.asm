; =========================================================
; Game Engine Function: sub_E4ABC
; Address            : 0xE4ABC - 0xE4B94
; =========================================================

E4ABC:  PUSH            {R4-R7,LR}
E4ABE:  ADD             R7, SP, #0xC
E4AC0:  PUSH.W          {R8}
E4AC4:  SUB             SP, SP, #0x20
E4AC6:  MOV             R5, R0
E4AC8:  LDRB            R0, [R0]
E4ACA:  CMP             R0, #1
E4ACC:  BNE             loc_E4B3E
E4ACE:  LDR             R0, [R5,#8]
E4AD0:  MOV.W           R6, #0x80000000
E4AD4:  MOVS            R4, #0
E4AD6:  MOV             R8, R2
E4AD8:  STR             R6, [SP,#0x30+var_14]
E4ADA:  STR             R4, [SP,#0x30+var_18]
E4ADC:  STR             R5, [SP,#0x30+var_20]
E4ADE:  BL              sub_EC2C0
E4AE2:  STR             R0, [SP,#0x30+var_20+4]
E4AE4:  LDRB            R0, [R5]
E4AE6:  STRD.W          R4, R6, [SP,#0x30+var_28]
E4AEA:  CMP             R0, #2
E4AEC:  STRD.W          R5, R4, [SP,#0x30+var_30]
E4AF0:  BEQ             loc_E4AFE
E4AF2:  CMP             R0, #1
E4AF4:  BNE             loc_E4B06
E4AF6:  LDR             R0, [R5,#8]
E4AF8:  ADDS            R0, #4
E4AFA:  STR             R0, [SP,#0x30+var_2C]
E4AFC:  B               loc_E4B0A
E4AFE:  LDR             R0, [R5,#8]
E4B00:  LDR             R0, [R0,#4]
E4B02:  STR             R0, [SP,#0x30+var_28]
E4B04:  B               loc_E4B0A
E4B06:  MOVS            R0, #1
E4B08:  STR             R0, [SP,#0x30+var_24]
E4B0A:  ADD             R0, SP, #0x30+var_20
E4B0C:  MOV             R1, SP
E4B0E:  BL              sub_EC314
E4B12:  CBZ             R0, loc_E4B1A
E4B14:  LDRB.W          R0, [R8]
E4B18:  B               loc_E4B30
E4B1A:  ADD             R0, SP, #0x30+var_20
E4B1C:  BL              sub_EC238
E4B20:  MOVS            R1, #0
E4B22:  STRB.W          R1, [SP,#0x30+var_30]
E4B26:  MOV             R1, SP
E4B28:  BL              sub_EC574
E4B2C:  LDRB.W          R0, [SP,#0x30+var_30]
E4B30:  CMP             R0, #0
E4B32:  IT NE
E4B34:  MOVNE           R0, #1
E4B36:  ADD             SP, SP, #0x20 ; ' '
E4B38:  POP.W           {R8}
E4B3C:  POP             {R4-R7,PC}
E4B3E:  MOVS            R0, #0x10; thrown_size
E4B40:  BLX             j___cxa_allocate_exception
E4B44:  MOV             R4, R0
E4B46:  MOV             R0, R5
E4B48:  BL              sub_E9DFC
E4B4C:  MOV             R1, R0; s
E4B4E:  MOV             R0, SP; int
E4B50:  BL              sub_DC6DC
E4B54:  LDR             R2, =(aCannotUseValue - 0xE4B5A); "cannot use value() with " ...
E4B56:  ADD             R2, PC; "cannot use value() with "
E4B58:  MOV             R0, SP; int
E4B5A:  MOVS            R1, #0; int
E4B5C:  MOVS            R6, #0
E4B5E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
E4B62:  VLDR            D16, [R0]
E4B66:  LDR             R1, [R0,#8]
E4B68:  STR             R1, [SP,#0x30+var_18]
E4B6A:  VSTR            D16, [SP,#0x30+var_20]
E4B6E:  STRD.W          R6, R6, [R0]
E4B72:  STR             R6, [R0,#8]
E4B74:  MOVS            R6, #1
E4B76:  ADD             R2, SP, #0x30+var_20
E4B78:  MOV             R0, R4
E4B7A:  MOV.W           R1, #0x132
E4B7E:  MOV             R3, R5
E4B80:  BL              sub_E9CB0
E4B84:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0xE4B8E); `typeinfo for'nlohmann::detail::type_error ...
E4B86:  MOVS            R6, #0
E4B88:  LDR             R2, =(sub_E9438+1 - 0xE4B90)
E4B8A:  ADD             R1, PC; lptinfo
E4B8C:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E4B8E:  MOV             R0, R4; void *
E4B90:  BLX             j___cxa_throw
