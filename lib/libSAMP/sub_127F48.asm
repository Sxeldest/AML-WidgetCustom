; =========================================================
; Game Engine Function: sub_127F48
; Address            : 0x127F48 - 0x127F5E
; =========================================================

127F48:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvPvjEEC1I11PlaneShamalEEMT_FvS3_jEPS8_EUlS3_jE_NS_9allocatorISC_EES4_EE - 0x127F4E); `vtable for'std::__function::__func<function_helper<void ()(void *,uint)>::function_helper<PlaneShamal>(void (PlaneShamal::*)(void *,uint),PlaneShamal*)::{lambda(void *,uint)#1},std::allocator<function_helper<void ()(void *,uint)>::function_helper<PlaneShamal>(void (PlaneShamal::*)(void *,uint),PlaneShamal*)::{lambda(void *,uint)#1}>,void ()(void *,uint)> ...
127F4A:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<void ()(void *,uint)>::function_helper<PlaneShamal>(void (PlaneShamal::*)(void *,uint),PlaneShamal*)::{lambda(void *,uint)#1},std::allocator<function_helper<void ()(void *,uint)>::function_helper<PlaneShamal>(void (PlaneShamal::*)(void *,uint),PlaneShamal*)::{lambda(void *,uint)#1}>,void ()(void *,uint)>
127F4C:  ADDS            R2, #8
127F4E:  STR             R2, [R1]
127F50:  VLDR            D16, [R0,#4]
127F54:  LDR             R0, [R0,#0xC]
127F56:  STR             R0, [R1,#0xC]
127F58:  VSTR            D16, [R1,#4]
127F5C:  BX              LR
