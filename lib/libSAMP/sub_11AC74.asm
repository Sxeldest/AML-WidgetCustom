; =========================================================
; Game Engine Function: sub_11AC74
; Address            : 0x11AC74 - 0x11AC96
; =========================================================

11AC74:  PUSH            {R4,R6,R7,LR}
11AC76:  ADD             R7, SP, #8
11AC78:  MOV             R4, R0
11AC7A:  MOVS            R0, #0x10; unsigned int
11AC7C:  BLX             j__Znwj; operator new(uint)
11AC80:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvvEEC1IN9modloader6modelsEEEMT_FvvEPS8_EUlvE_NS_9allocatorISC_EES3_EE - 0x11AC8A); `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<modloader::models>(void (modloader::models::*)(void),modloader::models*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<modloader::models>(void (modloader::models::*)(void),modloader::models*)::{lambda(void)#1}>,void ()(void)> ...
11AC82:  VLDR            D16, [R4,#4]
11AC86:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<modloader::models>(void (modloader::models::*)(void),modloader::models*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<modloader::models>(void (modloader::models::*)(void),modloader::models*)::{lambda(void)#1}>,void ()(void)>
11AC88:  LDR             R2, [R4,#0xC]
11AC8A:  ADDS            R1, #8
11AC8C:  STR             R1, [R0]
11AC8E:  STR             R2, [R0,#0xC]
11AC90:  VSTR            D16, [R0,#4]
11AC94:  POP             {R4,R6,R7,PC}
