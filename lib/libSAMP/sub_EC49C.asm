; =========================================================
; Game Engine Function: sub_EC49C
; Address            : 0xEC49C - 0xEC52C
; =========================================================

EC49C:  PUSH            {R4-R7,LR}
EC49E:  ADD             R7, SP, #0xC
EC4A0:  PUSH.W          {R11}
EC4A4:  SUB             SP, SP, #0x20
EC4A6:  MOV             R5, R0
EC4A8:  LDRB            R0, [R0]
EC4AA:  SUBS            R0, #4; switch 4 cases
EC4AC:  CMP             R0, #3
EC4AE:  BHI             def_EC4B0; jumptable 000EC4B0 default case
EC4B0:  TBB.W           [PC,R0]; switch jump
EC4B4:  DCB 4; jump table for switch statement
EC4B5:  DCB 2
EC4B6:  DCB 2
EC4B7:  DCB 6
EC4B8:  LDR             R0, [R5,#8]; jumptable 000EC4B0 cases 5,6
EC4BA:  B               loc_EC4CC
EC4BC:  LDRB            R0, [R5,#8]; jumptable 000EC4B0 case 4
EC4BE:  B               loc_EC4CC
EC4C0:  VLDR            D16, [R5,#8]; jumptable 000EC4B0 case 7
EC4C4:  VCVT.U32.F64    S0, D16
EC4C8:  VMOV            R0, S0
EC4CC:  STR             R0, [R1]
EC4CE:  ADD             SP, SP, #0x20 ; ' '
EC4D0:  POP.W           {R11}
EC4D4:  POP             {R4-R7,PC}
EC4D6:  MOVS            R0, #0x10; jumptable 000EC4B0 default case
EC4D8:  BLX             j___cxa_allocate_exception
EC4DC:  MOV             R4, R0
EC4DE:  MOV             R0, R5
EC4E0:  BL              sub_E9DFC
EC4E4:  MOV             R1, R0; s
EC4E6:  ADD             R0, SP, #0x30+var_2C; int
EC4E8:  BL              sub_DC6DC
EC4EC:  LDR             R2, =(aTypeMustBeNumb - 0xEC4F2); "type must be number, but is " ...
EC4EE:  ADD             R2, PC; "type must be number, but is "
EC4F0:  ADD             R0, SP, #0x30+var_2C; int
EC4F2:  MOVS            R1, #0; int
EC4F4:  MOVS            R6, #0
EC4F6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
EC4FA:  VLDR            D16, [R0]
EC4FE:  LDR             R1, [R0,#8]
EC500:  STR             R1, [SP,#0x30+var_18]
EC502:  VSTR            D16, [SP,#0x30+var_20]
EC506:  STRD.W          R6, R6, [R0]
EC50A:  STR             R6, [R0,#8]
EC50C:  MOVS            R6, #1
EC50E:  ADD             R2, SP, #0x30+var_20
EC510:  MOV             R0, R4
EC512:  MOV.W           R1, #0x12E
EC516:  MOV             R3, R5
EC518:  BL              sub_E9CB0
EC51C:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0xEC526); `typeinfo for'nlohmann::detail::type_error ...
EC51E:  MOVS            R6, #0
EC520:  LDR             R2, =(sub_E9438+1 - 0xEC528)
EC522:  ADD             R1, PC; lptinfo
EC524:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
EC526:  MOV             R0, R4; void *
EC528:  BLX             j___cxa_throw
