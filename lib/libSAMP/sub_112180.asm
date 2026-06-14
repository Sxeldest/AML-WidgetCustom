; =========================================================
; Game Engine Function: sub_112180
; Address            : 0x112180 - 0x1121C4
; =========================================================

112180:  PUSH            {R4,R5,R7,LR}
112182:  ADD             R7, SP, #8
112184:  SUB             SP, SP, #0x18
112186:  MOV             R4, R0
112188:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvvEEC1I12custom_radarEEMT_FvvEPS7_EUlvE_NS_9allocatorISB_EES3_EE - 0x112194); `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<custom_radar>(void (custom_radar::*)(void),custom_radar*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<custom_radar>(void (custom_radar::*)(void),custom_radar*)::{lambda(void)#1}>,void ()(void)> ...
11218A:  LDRD.W          R2, R3, [R1]
11218E:  MOV             R5, SP
112190:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<custom_radar>(void (custom_radar::*)(void),custom_radar*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<custom_radar>(void (custom_radar::*)(void),custom_radar*)::{lambda(void)#1}>,void ()(void)>
112192:  LDR             R1, [R1,#8]
112194:  ADDS            R0, #8
112196:  STRD.W          R1, R5, [SP,#0x20+var_14]
11219A:  STR             R0, [SP,#0x20+var_20]
11219C:  MOV             R0, R5
11219E:  MOV             R1, R4
1121A0:  STRD.W          R2, R3, [SP,#0x20+var_1C]
1121A4:  BL              sub_112250
1121A8:  LDR             R0, [SP,#0x20+var_10]
1121AA:  CMP             R5, R0
1121AC:  BEQ             loc_1121B4
1121AE:  CBZ             R0, loc_1121BE
1121B0:  MOVS            R1, #5
1121B2:  B               loc_1121B6
1121B4:  MOVS            R1, #4
1121B6:  LDR             R2, [R0]
1121B8:  LDR.W           R1, [R2,R1,LSL#2]
1121BC:  BLX             R1
1121BE:  MOV             R0, R4
1121C0:  ADD             SP, SP, #0x18
1121C2:  POP             {R4,R5,R7,PC}
