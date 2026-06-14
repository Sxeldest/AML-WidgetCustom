; =========================================================
; Game Engine Function: sub_E4CF0
; Address            : 0xE4CF0 - 0xE4DC2
; =========================================================

E4CF0:  PUSH            {R4-R7,LR}
E4CF2:  ADD             R7, SP, #0xC
E4CF4:  PUSH.W          {R8}
E4CF8:  SUB             SP, SP, #0x20
E4CFA:  MOV             R5, R0
E4CFC:  LDRB            R0, [R0]
E4CFE:  CMP             R0, #1
E4D00:  BNE             loc_E4D6C
E4D02:  LDR             R0, [R5,#8]
E4D04:  MOV.W           R6, #0x80000000
E4D08:  MOVS            R4, #0
E4D0A:  MOV             R8, R2
E4D0C:  STR             R6, [SP,#0x30+var_14]
E4D0E:  STR             R4, [SP,#0x30+var_18]
E4D10:  STR             R5, [SP,#0x30+var_20]
E4D12:  BL              sub_EC2C0
E4D16:  STR             R0, [SP,#0x30+var_20+4]
E4D18:  LDRB            R0, [R5]
E4D1A:  STRD.W          R4, R6, [SP,#0x30+var_28]
E4D1E:  CMP             R0, #2
E4D20:  STRD.W          R5, R4, [SP,#0x30+var_30]
E4D24:  BEQ             loc_E4D32
E4D26:  CMP             R0, #1
E4D28:  BNE             loc_E4D3A
E4D2A:  LDR             R0, [R5,#8]
E4D2C:  ADDS            R0, #4
E4D2E:  STR             R0, [SP,#0x30+var_2C]
E4D30:  B               loc_E4D3E
E4D32:  LDR             R0, [R5,#8]
E4D34:  LDR             R0, [R0,#4]
E4D36:  STR             R0, [SP,#0x30+var_28]
E4D38:  B               loc_E4D3E
E4D3A:  MOVS            R0, #1
E4D3C:  STR             R0, [SP,#0x30+var_24]
E4D3E:  ADD             R0, SP, #0x30+var_20
E4D40:  MOV             R1, SP
E4D42:  BL              sub_EC314
E4D46:  CBZ             R0, loc_E4D4E
E4D48:  LDRH.W          R0, [R8]
E4D4C:  B               loc_E4D64
E4D4E:  ADD             R0, SP, #0x30+var_20
E4D50:  BL              sub_EC238
E4D54:  MOVS            R1, #0
E4D56:  STRH.W          R1, [SP,#0x30+var_30]
E4D5A:  MOV             R1, SP
E4D5C:  BL              sub_EC7A8
E4D60:  LDRH.W          R0, [SP,#0x30+var_30]
E4D64:  ADD             SP, SP, #0x20 ; ' '
E4D66:  POP.W           {R8}
E4D6A:  POP             {R4-R7,PC}
E4D6C:  MOVS            R0, #0x10; thrown_size
E4D6E:  BLX             j___cxa_allocate_exception
E4D72:  MOV             R4, R0
E4D74:  MOV             R0, R5
E4D76:  BL              sub_E9DFC
E4D7A:  MOV             R1, R0; s
E4D7C:  MOV             R0, SP; int
E4D7E:  BL              sub_DC6DC
E4D82:  LDR             R2, =(aCannotUseValue - 0xE4D88); "cannot use value() with " ...
E4D84:  ADD             R2, PC; "cannot use value() with "
E4D86:  MOV             R0, SP; int
E4D88:  MOVS            R1, #0; int
E4D8A:  MOVS            R6, #0
E4D8C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
E4D90:  VLDR            D16, [R0]
E4D94:  LDR             R1, [R0,#8]
E4D96:  STR             R1, [SP,#0x30+var_18]
E4D98:  VSTR            D16, [SP,#0x30+var_20]
E4D9C:  STRD.W          R6, R6, [R0]
E4DA0:  STR             R6, [R0,#8]
E4DA2:  MOVS            R6, #1
E4DA4:  ADD             R2, SP, #0x30+var_20
E4DA6:  MOV             R0, R4
E4DA8:  MOV.W           R1, #0x132
E4DAC:  MOV             R3, R5
E4DAE:  BL              sub_E9CB0
E4DB2:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0xE4DBC); `typeinfo for'nlohmann::detail::type_error ...
E4DB4:  MOVS            R6, #0
E4DB6:  LDR             R2, =(sub_E9438+1 - 0xE4DBE)
E4DB8:  ADD             R1, PC; lptinfo
E4DBA:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E4DBC:  MOV             R0, R4; void *
E4DBE:  BLX             j___cxa_throw
