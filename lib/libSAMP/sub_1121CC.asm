; =========================================================
; Game Engine Function: sub_1121CC
; Address            : 0x1121CC - 0x1121EE
; =========================================================

1121CC:  PUSH            {R4,R6,R7,LR}
1121CE:  ADD             R7, SP, #8
1121D0:  MOV             R4, R0
1121D2:  MOVS            R0, #0x10; unsigned int
1121D4:  BLX             j__Znwj; operator new(uint)
1121D8:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvvEEC1I12custom_radarEEMT_FvvEPS7_EUlvE_NS_9allocatorISB_EES3_EE - 0x1121E2); `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<custom_radar>(void (custom_radar::*)(void),custom_radar*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<custom_radar>(void (custom_radar::*)(void),custom_radar*)::{lambda(void)#1}>,void ()(void)> ...
1121DA:  VLDR            D16, [R4,#4]
1121DE:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<custom_radar>(void (custom_radar::*)(void),custom_radar*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<custom_radar>(void (custom_radar::*)(void),custom_radar*)::{lambda(void)#1}>,void ()(void)>
1121E0:  LDR             R2, [R4,#0xC]
1121E2:  ADDS            R1, #8
1121E4:  STR             R1, [R0]
1121E6:  STR             R2, [R0,#0xC]
1121E8:  VSTR            D16, [R0,#4]
1121EC:  POP             {R4,R6,R7,PC}
