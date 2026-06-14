; =========================================================
; Game Engine Function: sub_EC574
; Address            : 0xEC574 - 0xEC5EA
; =========================================================

EC574:  PUSH            {R4-R7,LR}
EC576:  ADD             R7, SP, #0xC
EC578:  PUSH.W          {R11}
EC57C:  SUB             SP, SP, #0x20
EC57E:  MOV             R5, R0
EC580:  LDRB            R0, [R0]
EC582:  CMP             R0, #4
EC584:  ITTTT EQ
EC586:  LDRBEQ          R0, [R5,#8]
EC588:  STRBEQ          R0, [R1]
EC58A:  ADDEQ           SP, SP, #0x20 ; ' '
EC58C:  POPEQ.W         {R11}
EC590:  IT EQ
EC592:  POPEQ           {R4-R7,PC}
EC594:  MOVS            R0, #0x10; thrown_size
EC596:  BLX             j___cxa_allocate_exception
EC59A:  MOV             R4, R0
EC59C:  MOV             R0, R5
EC59E:  BL              sub_E9DFC
EC5A2:  MOV             R1, R0; s
EC5A4:  ADD             R0, SP, #0x30+var_2C; int
EC5A6:  BL              sub_DC6DC
EC5AA:  LDR             R2, =(aTypeMustBeBool - 0xEC5B0); "type must be boolean, but is " ...
EC5AC:  ADD             R2, PC; "type must be boolean, but is "
EC5AE:  ADD             R0, SP, #0x30+var_2C; int
EC5B0:  MOVS            R1, #0; int
EC5B2:  MOVS            R6, #0
EC5B4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
EC5B8:  VLDR            D16, [R0]
EC5BC:  LDR             R1, [R0,#8]
EC5BE:  STR             R1, [SP,#0x30+var_18]
EC5C0:  VSTR            D16, [SP,#0x30+var_20]
EC5C4:  STRD.W          R6, R6, [R0]
EC5C8:  STR             R6, [R0,#8]
EC5CA:  MOVS            R6, #1
EC5CC:  ADD             R2, SP, #0x30+var_20
EC5CE:  MOV             R0, R4
EC5D0:  MOV.W           R1, #0x12E
EC5D4:  MOV             R3, R5
EC5D6:  BL              sub_E9CB0
EC5DA:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0xEC5E4); `typeinfo for'nlohmann::detail::type_error ...
EC5DC:  MOVS            R6, #0
EC5DE:  LDR             R2, =(sub_E9438+1 - 0xEC5E6)
EC5E0:  ADD             R1, PC; lptinfo
EC5E2:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
EC5E4:  MOV             R0, R4; void *
EC5E6:  BLX             j___cxa_throw
