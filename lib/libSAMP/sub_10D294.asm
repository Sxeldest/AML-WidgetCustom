; =========================================================
; Game Engine Function: sub_10D294
; Address            : 0x10D294 - 0x10D2AA
; =========================================================

10D294:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP13_VEHICLE_TYPEffEEC1I19DustFreeHelicoptersEEMT_FvS4_ffEPS9_EUlS4_ffE_NS_9allocatorISD_EES5_EE - 0x10D29A); `vtable for'std::__function::__func<function_helper<void ()(_VEHICLE_TYPE *,float,float)>::function_helper<DustFreeHelicopters>(void (DustFreeHelicopters::*)(_VEHICLE_TYPE *,float,float),DustFreeHelicopters*)::{lambda(_VEHICLE_TYPE *,float,float)#1},std::allocator<function_helper<void ()(_VEHICLE_TYPE *,float,float)>::function_helper<DustFreeHelicopters>(void (DustFreeHelicopters::*)(_VEHICLE_TYPE *,float,float),DustFreeHelicopters*)::{lambda(_VEHICLE_TYPE *,float,float)#1}>,void ()(_VEHICLE_TYPE *,float,float)> ...
10D296:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<void ()(_VEHICLE_TYPE *,float,float)>::function_helper<DustFreeHelicopters>(void (DustFreeHelicopters::*)(_VEHICLE_TYPE *,float,float),DustFreeHelicopters*)::{lambda(_VEHICLE_TYPE *,float,float)#1},std::allocator<function_helper<void ()(_VEHICLE_TYPE *,float,float)>::function_helper<DustFreeHelicopters>(void (DustFreeHelicopters::*)(_VEHICLE_TYPE *,float,float),DustFreeHelicopters*)::{lambda(_VEHICLE_TYPE *,float,float)#1}>,void ()(_VEHICLE_TYPE *,float,float)>
10D298:  ADDS            R2, #8
10D29A:  STR             R2, [R1]
10D29C:  VLDR            D16, [R0,#4]
10D2A0:  LDR             R0, [R0,#0xC]
10D2A2:  STR             R0, [R1,#0xC]
10D2A4:  VSTR            D16, [R1,#4]
10D2A8:  BX              LR
