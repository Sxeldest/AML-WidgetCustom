; =========================================================
; Game Engine Function: sub_1582D0
; Address            : 0x1582D0 - 0x158354
; =========================================================

1582D0:  PUSH            {R4-R7,LR}
1582D2:  ADD             R7, SP, #0xC
1582D4:  PUSH.W          {R11}
1582D8:  SUB             SP, SP, #0x18
1582DA:  MOV             R4, R0
1582DC:  LDR             R0, [R0]
1582DE:  CBZ             R0, loc_15834A
1582E0:  LDRB            R1, [R0,#0x14]
1582E2:  LSLS            R1, R1, #0x1F
1582E4:  BNE             loc_158328
1582E6:  LDR             R5, [R0,#8]
1582E8:  MOVS            R0, #0
1582EA:  STR             R0, [SP,#0x28+var_14]
1582EC:  ADD             R0, SP, #0x28+var_14; this
1582EE:  BLX             j__ZNSt13exception_ptrD2Ev; std::exception_ptr::~exception_ptr()
1582F2:  CBNZ            R5, loc_158328
1582F4:  LDR             R5, [R4]
1582F6:  LDR             R0, [R5,#4]; this
1582F8:  CMP             R0, #1
1582FA:  BLT             loc_158328
1582FC:  BLX             j__ZNSt6__ndk115future_categoryEv; std::future_category(void)
158300:  MOV             R2, R0
158302:  MOV             R0, SP
158304:  MOVS            R1, #4
158306:  BLX             j__ZNSt6__ndk112future_errorC2ENS_10error_codeE; std::future_error::future_error(std::error_code)
15830A:  ADD             R6, SP, #0x28+var_18
15830C:  MOV             R1, SP
15830E:  MOV             R0, R6
158310:  BL              sub_158400
158314:  MOV             R0, R5
158316:  MOV             R1, R6
158318:  BLX             j__ZNSt6__ndk117__assoc_sub_state13set_exceptionESt13exception_ptr; std::__assoc_sub_state::set_exception(std::exception_ptr)
15831C:  ADD             R0, SP, #0x28+var_18; this
15831E:  BLX             j__ZNSt13exception_ptrD2Ev; std::exception_ptr::~exception_ptr()
158322:  MOV             R0, SP; this
158324:  BLX             j__ZNSt6__ndk112future_errorD2Ev; std::future_error::~future_error()
158328:  LDR             R0, [R4]
15832A:  DMB.W           ISH
15832E:  ADDS            R1, R0, #4
158330:  LDREX.W         R2, [R1]
158334:  SUBS            R3, R2, #1
158336:  STREX.W         R6, R3, [R1]
15833A:  CMP             R6, #0
15833C:  BNE             loc_158330
15833E:  DMB.W           ISH
158342:  CBNZ            R2, loc_15834A
158344:  LDR             R1, [R0]
158346:  LDR             R1, [R1,#8]
158348:  BLX             R1
15834A:  MOV             R0, R4
15834C:  ADD             SP, SP, #0x18
15834E:  POP.W           {R11}
158352:  POP             {R4-R7,PC}
