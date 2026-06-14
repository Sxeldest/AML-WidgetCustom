; =========================================================
; Game Engine Function: sub_E4BDC
; Address            : 0xE4BDC - 0xE4CAA
; =========================================================

E4BDC:  PUSH            {R4-R7,LR}
E4BDE:  ADD             R7, SP, #0xC
E4BE0:  PUSH.W          {R8}
E4BE4:  SUB             SP, SP, #0x20
E4BE6:  MOV             R5, R0
E4BE8:  LDRB            R0, [R0]
E4BEA:  CMP             R0, #1
E4BEC:  BNE             loc_E4C54
E4BEE:  LDR             R0, [R5,#8]
E4BF0:  MOV.W           R6, #0x80000000
E4BF4:  MOVS            R4, #0
E4BF6:  MOV             R8, R2
E4BF8:  STR             R6, [SP,#0x30+var_14]
E4BFA:  STR             R4, [SP,#0x30+var_18]
E4BFC:  STR             R5, [SP,#0x30+var_20]
E4BFE:  BL              sub_EC2C0
E4C02:  STR             R0, [SP,#0x30+var_20+4]
E4C04:  LDRB            R0, [R5]
E4C06:  STRD.W          R4, R6, [SP,#0x30+var_28]
E4C0A:  CMP             R0, #2
E4C0C:  STRD.W          R5, R4, [SP,#0x30+var_30]
E4C10:  BEQ             loc_E4C1E
E4C12:  CMP             R0, #1
E4C14:  BNE             loc_E4C26
E4C16:  LDR             R0, [R5,#8]
E4C18:  ADDS            R0, #4
E4C1A:  STR             R0, [SP,#0x30+var_2C]
E4C1C:  B               loc_E4C2A
E4C1E:  LDR             R0, [R5,#8]
E4C20:  LDR             R0, [R0,#4]
E4C22:  STR             R0, [SP,#0x30+var_28]
E4C24:  B               loc_E4C2A
E4C26:  MOVS            R0, #1
E4C28:  STR             R0, [SP,#0x30+var_24]
E4C2A:  ADD             R0, SP, #0x30+var_20
E4C2C:  MOV             R1, SP
E4C2E:  BL              sub_EC314
E4C32:  CBZ             R0, loc_E4C3A
E4C34:  LDR.W           R0, [R8]
E4C38:  B               loc_E4C4C
E4C3A:  ADD             R0, SP, #0x30+var_20
E4C3C:  BL              sub_EC238
E4C40:  MOVS            R1, #0
E4C42:  STR             R1, [SP,#0x30+var_30]
E4C44:  MOV             R1, SP
E4C46:  BL              sub_EC634
E4C4A:  LDR             R0, [SP,#0x30+var_30]
E4C4C:  ADD             SP, SP, #0x20 ; ' '
E4C4E:  POP.W           {R8}
E4C52:  POP             {R4-R7,PC}
E4C54:  MOVS            R0, #0x10; thrown_size
E4C56:  BLX             j___cxa_allocate_exception
E4C5A:  MOV             R4, R0
E4C5C:  MOV             R0, R5
E4C5E:  BL              sub_E9DFC
E4C62:  MOV             R1, R0; s
E4C64:  MOV             R0, SP; int
E4C66:  BL              sub_DC6DC
E4C6A:  LDR             R2, =(aCannotUseValue - 0xE4C70); "cannot use value() with " ...
E4C6C:  ADD             R2, PC; "cannot use value() with "
E4C6E:  MOV             R0, SP; int
E4C70:  MOVS            R1, #0; int
E4C72:  MOVS            R6, #0
E4C74:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
E4C78:  VLDR            D16, [R0]
E4C7C:  LDR             R1, [R0,#8]
E4C7E:  STR             R1, [SP,#0x30+var_18]
E4C80:  VSTR            D16, [SP,#0x30+var_20]
E4C84:  STRD.W          R6, R6, [R0]
E4C88:  STR             R6, [R0,#8]
E4C8A:  MOVS            R6, #1
E4C8C:  ADD             R2, SP, #0x30+var_20
E4C8E:  MOV             R0, R4
E4C90:  MOV.W           R1, #0x132
E4C94:  MOV             R3, R5
E4C96:  BL              sub_E9CB0
E4C9A:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0xE4CA4); `typeinfo for'nlohmann::detail::type_error ...
E4C9C:  MOVS            R6, #0
E4C9E:  LDR             R2, =(sub_E9438+1 - 0xE4CA6)
E4CA0:  ADD             R1, PC; lptinfo
E4CA2:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E4CA4:  MOV             R0, R4; void *
E4CA6:  BLX             j___cxa_throw
