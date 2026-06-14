; =========================================================
; Game Engine Function: sub_EC7A8
; Address            : 0xEC7A8 - 0xEC838
; =========================================================

EC7A8:  PUSH            {R4-R7,LR}
EC7AA:  ADD             R7, SP, #0xC
EC7AC:  PUSH.W          {R11}
EC7B0:  SUB             SP, SP, #0x20
EC7B2:  MOV             R5, R0
EC7B4:  LDRB            R0, [R0]
EC7B6:  SUBS            R0, #4; switch 4 cases
EC7B8:  CMP             R0, #3
EC7BA:  BHI             def_EC7BC; jumptable 000EC7BC default case
EC7BC:  TBB.W           [PC,R0]; switch jump
EC7C0:  DCB 4; jump table for switch statement
EC7C1:  DCB 2
EC7C2:  DCB 2
EC7C3:  DCB 6
EC7C4:  LDRH            R0, [R5,#8]; jumptable 000EC7BC cases 5,6
EC7C6:  B               loc_EC7D8
EC7C8:  LDRB            R0, [R5,#8]; jumptable 000EC7BC case 4
EC7CA:  B               loc_EC7D8
EC7CC:  VLDR            D16, [R5,#8]; jumptable 000EC7BC case 7
EC7D0:  VCVT.U32.F64    S0, D16
EC7D4:  VMOV            R0, S0
EC7D8:  STRH            R0, [R1]
EC7DA:  ADD             SP, SP, #0x20 ; ' '
EC7DC:  POP.W           {R11}
EC7E0:  POP             {R4-R7,PC}
EC7E2:  MOVS            R0, #0x10; jumptable 000EC7BC default case
EC7E4:  BLX             j___cxa_allocate_exception
EC7E8:  MOV             R4, R0
EC7EA:  MOV             R0, R5
EC7EC:  BL              sub_E9DFC
EC7F0:  MOV             R1, R0; s
EC7F2:  ADD             R0, SP, #0x30+var_2C; int
EC7F4:  BL              sub_DC6DC
EC7F8:  LDR             R2, =(aTypeMustBeNumb - 0xEC7FE); "type must be number, but is " ...
EC7FA:  ADD             R2, PC; "type must be number, but is "
EC7FC:  ADD             R0, SP, #0x30+var_2C; int
EC7FE:  MOVS            R1, #0; int
EC800:  MOVS            R6, #0
EC802:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
EC806:  VLDR            D16, [R0]
EC80A:  LDR             R1, [R0,#8]
EC80C:  STR             R1, [SP,#0x30+var_18]
EC80E:  VSTR            D16, [SP,#0x30+var_20]
EC812:  STRD.W          R6, R6, [R0]
EC816:  STR             R6, [R0,#8]
EC818:  MOVS            R6, #1
EC81A:  ADD             R2, SP, #0x30+var_20
EC81C:  MOV             R0, R4
EC81E:  MOV.W           R1, #0x12E
EC822:  MOV             R3, R5
EC824:  BL              sub_E9CB0
EC828:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0xEC832); `typeinfo for'nlohmann::detail::type_error ...
EC82A:  MOVS            R6, #0
EC82C:  LDR             R2, =(sub_E9438+1 - 0xEC834)
EC82E:  ADD             R1, PC; lptinfo
EC830:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
EC832:  MOV             R0, R4; void *
EC834:  BLX             j___cxa_throw
