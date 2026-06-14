; =========================================================
; Game Engine Function: sub_EC3D4
; Address            : 0xEC3D4 - 0xEC452
; =========================================================

EC3D4:  PUSH            {R4-R7,LR}
EC3D6:  ADD             R7, SP, #0xC
EC3D8:  PUSH.W          {R11}
EC3DC:  SUB             SP, SP, #0x20
EC3DE:  MOV             R5, R0
EC3E0:  LDRB            R0, [R0]
EC3E2:  CMP             R0, #3
EC3E4:  ITTTT EQ
EC3E6:  LDREQ           R2, [R5,#8]
EC3E8:  MOVEQ           R0, R1
EC3EA:  MOVEQ           R1, R2
EC3EC:  ADDEQ           SP, SP, #0x20 ; ' '
EC3EE:  ITTT EQ
EC3F0:  POPEQ.W         {R11}
EC3F4:  POPEQ.W         {R4-R7,LR}
EC3F8:  BEQ.W           sub_2242A4
EC3FC:  MOVS            R0, #0x10; thrown_size
EC3FE:  BLX             j___cxa_allocate_exception
EC402:  MOV             R4, R0
EC404:  MOV             R0, R5
EC406:  BL              sub_E9DFC
EC40A:  MOV             R1, R0; s
EC40C:  ADD             R0, SP, #0x30+var_2C; int
EC40E:  BL              sub_DC6DC
EC412:  LDR             R2, =(aTypeMustBeStri - 0xEC418); "type must be string, but is " ...
EC414:  ADD             R2, PC; "type must be string, but is "
EC416:  ADD             R0, SP, #0x30+var_2C; int
EC418:  MOVS            R1, #0; int
EC41A:  MOVS            R6, #0
EC41C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
EC420:  VLDR            D16, [R0]
EC424:  LDR             R1, [R0,#8]
EC426:  STR             R1, [SP,#0x30+var_18]
EC428:  VSTR            D16, [SP,#0x30+var_20]
EC42C:  STRD.W          R6, R6, [R0]
EC430:  STR             R6, [R0,#8]
EC432:  MOVS            R6, #1
EC434:  ADD             R2, SP, #0x30+var_20
EC436:  MOV             R0, R4
EC438:  MOV.W           R1, #0x12E
EC43C:  MOV             R3, R5
EC43E:  BL              sub_E9CB0
EC442:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0xEC44C); `typeinfo for'nlohmann::detail::type_error ...
EC444:  MOVS            R6, #0
EC446:  LDR             R2, =(sub_E9438+1 - 0xEC44E)
EC448:  ADD             R1, PC; lptinfo
EC44A:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
EC44C:  MOV             R0, R4; void *
EC44E:  BLX             j___cxa_throw
