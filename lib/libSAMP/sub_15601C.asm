; =========================================================
; Game Engine Function: sub_15601C
; Address            : 0x15601C - 0x1560D0
; =========================================================

15601C:  PUSH            {R4-R7,LR}
15601E:  ADD             R7, SP, #0xC
156020:  PUSH.W          {R11}
156024:  SUB             SP, SP, #0x20
156026:  MOV             R5, R0
156028:  LDRB            R0, [R0]
15602A:  SUBS            R0, #4; switch 4 cases
15602C:  CMP             R0, #3
15602E:  BHI             def_156032; jumptable 00156032 default case
156030:  MOV             R4, R1
156032:  TBB.W           [PC,R0]; switch jump
156036:  DCB 2; jump table for switch statement
156037:  DCB 0x16
156038:  DCB 0xC
156039:  DCB 0x11
15603A:  LDRB            R0, [R5,#8]; jumptable 00156032 case 4
15603C:  VMOV.F32        S2, #1.0
156040:  VLDR            S0, =0.0
156044:  CMP             R0, #0
156046:  IT NE
156048:  VMOVNE.F32      S0, S2
15604C:  B               loc_15606E
15604E:  LDRD.W          R0, R1, [R5,#8]; jumptable 00156032 case 6
156052:  BLX             sub_220DFC
156056:  B               loc_15606A
156058:  VLDR            D16, [R5,#8]; jumptable 00156032 case 7
15605C:  VCVT.F32.F64    S0, D16
156060:  B               loc_15606E
156062:  LDRD.W          R0, R1, [R5,#8]; jumptable 00156032 case 5
156066:  BLX             sub_220CD8
15606A:  VMOV            S0, R0
15606E:  VSTR            S0, [R4]
156072:  ADD             SP, SP, #0x20 ; ' '
156074:  POP.W           {R11}
156078:  POP             {R4-R7,PC}
15607A:  MOVS            R0, #0x10; jumptable 00156032 default case
15607C:  BLX             j___cxa_allocate_exception
156080:  MOV             R4, R0
156082:  MOV             R0, R5
156084:  BL              sub_E9DFC
156088:  MOV             R1, R0; s
15608A:  ADD             R0, SP, #0x30+var_2C; int
15608C:  BL              sub_DC6DC
156090:  LDR             R2, =(aTypeMustBeNumb - 0x156096); "type must be number, but is " ...
156092:  ADD             R2, PC; "type must be number, but is "
156094:  ADD             R0, SP, #0x30+var_2C; int
156096:  MOVS            R1, #0; int
156098:  MOVS            R6, #0
15609A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
15609E:  VLDR            D16, [R0]
1560A2:  LDR             R1, [R0,#8]
1560A4:  STR             R1, [SP,#0x30+var_18]
1560A6:  VSTR            D16, [SP,#0x30+var_20]
1560AA:  STRD.W          R6, R6, [R0]
1560AE:  STR             R6, [R0,#8]
1560B0:  MOVS            R6, #1
1560B2:  ADD             R2, SP, #0x30+var_20
1560B4:  MOV             R0, R4
1560B6:  MOV.W           R1, #0x12E
1560BA:  MOV             R3, R5
1560BC:  BL              sub_E9CB0
1560C0:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0x1560CA); `typeinfo for'nlohmann::detail::type_error ...
1560C2:  MOVS            R6, #0
1560C4:  LDR             R2, =(sub_E9438+1 - 0x1560CC)
1560C6:  ADD             R1, PC; lptinfo
1560C8:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
1560CA:  MOV             R0, R4; void *
1560CC:  BLX             j___cxa_throw
