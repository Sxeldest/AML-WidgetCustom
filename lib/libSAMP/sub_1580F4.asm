; =========================================================
; Game Engine Function: sub_1580F4
; Address            : 0x1580F4 - 0x158178
; =========================================================

1580F4:  PUSH            {R4-R7,LR}
1580F6:  ADD             R7, SP, #0xC
1580F8:  PUSH.W          {R11}
1580FC:  SUB             SP, SP, #0x18
1580FE:  MOV             R4, R0
158100:  LDR             R0, [R0]
158102:  CBZ             R0, loc_15816E
158104:  LDRB            R1, [R0,#0x14]
158106:  LSLS            R1, R1, #0x1F
158108:  BNE             loc_15814C
15810A:  LDR             R5, [R0,#8]
15810C:  MOVS            R0, #0
15810E:  STR             R0, [SP,#0x28+var_14]
158110:  ADD             R0, SP, #0x28+var_14; this
158112:  BLX             j__ZNSt13exception_ptrD2Ev; std::exception_ptr::~exception_ptr()
158116:  CBNZ            R5, loc_15814C
158118:  LDR             R5, [R4]
15811A:  LDR             R0, [R5,#4]; this
15811C:  CMP             R0, #1
15811E:  BLT             loc_15814C
158120:  BLX             j__ZNSt6__ndk115future_categoryEv; std::future_category(void)
158124:  MOV             R2, R0
158126:  MOV             R0, SP
158128:  MOVS            R1, #4
15812A:  BLX             j__ZNSt6__ndk112future_errorC2ENS_10error_codeE; std::future_error::future_error(std::error_code)
15812E:  ADD             R6, SP, #0x28+var_18
158130:  MOV             R1, SP
158132:  MOV             R0, R6
158134:  BL              sub_158400
158138:  MOV             R0, R5
15813A:  MOV             R1, R6
15813C:  BLX             j__ZNSt6__ndk117__assoc_sub_state13set_exceptionESt13exception_ptr; std::__assoc_sub_state::set_exception(std::exception_ptr)
158140:  ADD             R0, SP, #0x28+var_18; this
158142:  BLX             j__ZNSt13exception_ptrD2Ev; std::exception_ptr::~exception_ptr()
158146:  MOV             R0, SP; this
158148:  BLX             j__ZNSt6__ndk112future_errorD2Ev; std::future_error::~future_error()
15814C:  LDR             R0, [R4]
15814E:  DMB.W           ISH
158152:  ADDS            R1, R0, #4
158154:  LDREX.W         R2, [R1]
158158:  SUBS            R3, R2, #1
15815A:  STREX.W         R6, R3, [R1]
15815E:  CMP             R6, #0
158160:  BNE             loc_158154
158162:  DMB.W           ISH
158166:  CBNZ            R2, loc_15816E
158168:  LDR             R1, [R0]
15816A:  LDR             R1, [R1,#8]
15816C:  BLX             R1
15816E:  MOV             R0, R4
158170:  ADD             SP, SP, #0x18
158172:  POP.W           {R11}
158176:  POP             {R4-R7,PC}
