; =========================================================
; Game Engine Function: sub_1242A4
; Address            : 0x1242A4 - 0x1242C6
; =========================================================

1242A4:  PUSH            {R4,R6,R7,LR}
1242A6:  ADD             R7, SP, #8
1242A8:  MOV             R4, R0
1242AA:  MOVS            R0, #0x10; unsigned int
1242AC:  BLX             j__Znwj; operator new(uint)
1242B0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvvEEC1I16CCollisionLimitsEEMT_FvvEPS7_EUlvE_NS_9allocatorISB_EES3_EE - 0x1242BA); `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<CCollisionLimits>(void (CCollisionLimits::*)(void),CCollisionLimits*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<CCollisionLimits>(void (CCollisionLimits::*)(void),CCollisionLimits*)::{lambda(void)#1}>,void ()(void)> ...
1242B2:  VLDR            D16, [R4,#4]
1242B6:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<CCollisionLimits>(void (CCollisionLimits::*)(void),CCollisionLimits*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<CCollisionLimits>(void (CCollisionLimits::*)(void),CCollisionLimits*)::{lambda(void)#1}>,void ()(void)>
1242B8:  LDR             R2, [R4,#0xC]
1242BA:  ADDS            R1, #8
1242BC:  STR             R1, [R0]
1242BE:  STR             R2, [R0,#0xC]
1242C0:  VSTR            D16, [R0,#4]
1242C4:  POP             {R4,R6,R7,PC}
