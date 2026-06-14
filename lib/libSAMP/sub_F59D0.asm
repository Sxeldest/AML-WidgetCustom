; =========================================================
; Game Engine Function: sub_F59D0
; Address            : 0xF59D0 - 0xF5A14
; =========================================================

F59D0:  PUSH            {R4,R5,R7,LR}
F59D2:  ADD             R7, SP, #8
F59D4:  SUB             SP, SP, #0x18
F59D6:  MOV             R4, R0
F59D8:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFivEEC1I10FPSLimiterEEMT_FivEPS7_EUlvE_NS_9allocatorISB_EES3_EE - 0xF59E4); `vtable for'std::__function::__func<function_helper<int ()(void)>::function_helper<FPSLimiter>(int (FPSLimiter::*)(void),FPSLimiter*)::{lambda(void)#1},std::allocator<function_helper<int ()(void)>::function_helper<FPSLimiter>(int (FPSLimiter::*)(void),FPSLimiter*)::{lambda(void)#1}>,int ()(void)> ...
F59DA:  LDRD.W          R2, R3, [R1]
F59DE:  MOV             R5, SP
F59E0:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<int ()(void)>::function_helper<FPSLimiter>(int (FPSLimiter::*)(void),FPSLimiter*)::{lambda(void)#1},std::allocator<function_helper<int ()(void)>::function_helper<FPSLimiter>(int (FPSLimiter::*)(void),FPSLimiter*)::{lambda(void)#1}>,int ()(void)>
F59E2:  LDR             R1, [R1,#8]
F59E4:  ADDS            R0, #8
F59E6:  STRD.W          R1, R5, [SP,#0x20+var_14]
F59EA:  STR             R0, [SP,#0x20+var_20]
F59EC:  MOV             R0, R5
F59EE:  MOV             R1, R4
F59F0:  STRD.W          R2, R3, [SP,#0x20+var_1C]
F59F4:  BL              sub_F52C0
F59F8:  LDR             R0, [SP,#0x20+var_10]
F59FA:  CMP             R5, R0
F59FC:  BEQ             loc_F5A04
F59FE:  CBZ             R0, loc_F5A0E
F5A00:  MOVS            R1, #5
F5A02:  B               loc_F5A06
F5A04:  MOVS            R1, #4
F5A06:  LDR             R2, [R0]
F5A08:  LDR.W           R1, [R2,R1,LSL#2]
F5A0C:  BLX             R1
F5A0E:  MOV             R0, R4
F5A10:  ADD             SP, SP, #0x18
F5A12:  POP             {R4,R5,R7,PC}
