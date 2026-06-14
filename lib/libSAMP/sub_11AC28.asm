; =========================================================
; Game Engine Function: sub_11AC28
; Address            : 0x11AC28 - 0x11AC6C
; =========================================================

11AC28:  PUSH            {R4,R5,R7,LR}
11AC2A:  ADD             R7, SP, #8
11AC2C:  SUB             SP, SP, #0x18
11AC2E:  MOV             R4, R0
11AC30:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvvEEC1IN9modloader6modelsEEEMT_FvvEPS8_EUlvE_NS_9allocatorISC_EES3_EE - 0x11AC3C); `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<modloader::models>(void (modloader::models::*)(void),modloader::models*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<modloader::models>(void (modloader::models::*)(void),modloader::models*)::{lambda(void)#1}>,void ()(void)> ...
11AC32:  LDRD.W          R2, R3, [R1]
11AC36:  MOV             R5, SP
11AC38:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<modloader::models>(void (modloader::models::*)(void),modloader::models*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<modloader::models>(void (modloader::models::*)(void),modloader::models*)::{lambda(void)#1}>,void ()(void)>
11AC3A:  LDR             R1, [R1,#8]
11AC3C:  ADDS            R0, #8
11AC3E:  STRD.W          R1, R5, [SP,#0x20+var_14]
11AC42:  STR             R0, [SP,#0x20+var_20]
11AC44:  MOV             R0, R5
11AC46:  MOV             R1, R4
11AC48:  STRD.W          R2, R3, [SP,#0x20+var_1C]
11AC4C:  BL              sub_112250
11AC50:  LDR             R0, [SP,#0x20+var_10]
11AC52:  CMP             R5, R0
11AC54:  BEQ             loc_11AC5C
11AC56:  CBZ             R0, loc_11AC66
11AC58:  MOVS            R1, #5
11AC5A:  B               loc_11AC5E
11AC5C:  MOVS            R1, #4
11AC5E:  LDR             R2, [R0]
11AC60:  LDR.W           R1, [R2,R1,LSL#2]
11AC64:  BLX             R1
11AC66:  MOV             R0, R4
11AC68:  ADD             SP, SP, #0x18
11AC6A:  POP             {R4,R5,R7,PC}
