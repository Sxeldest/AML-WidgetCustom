; =========================================================
; Game Engine Function: sub_1281F4
; Address            : 0x1281F4 - 0x12820A
; =========================================================

1281F4:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiP13_VEHICLE_TYPEicEEC1I11PlaneShamalEEMT_FiS4_icEPS9_EUlS4_icE_NS_9allocatorISD_EES5_EE - 0x1281FA); `vtable for'std::__function::__func<function_helper<int ()(_VEHICLE_TYPE *,int,char)>::function_helper<PlaneShamal>(int (PlaneShamal::*)(_VEHICLE_TYPE *,int,char),PlaneShamal*)::{lambda(_VEHICLE_TYPE *,int,char)#1},std::allocator<function_helper<int ()(_VEHICLE_TYPE *,int,char)>::function_helper<PlaneShamal>(int (PlaneShamal::*)(_VEHICLE_TYPE *,int,char),PlaneShamal*)::{lambda(_VEHICLE_TYPE *,int,char)#1}>,int ()(_VEHICLE_TYPE *,int,char)> ...
1281F6:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<int ()(_VEHICLE_TYPE *,int,char)>::function_helper<PlaneShamal>(int (PlaneShamal::*)(_VEHICLE_TYPE *,int,char),PlaneShamal*)::{lambda(_VEHICLE_TYPE *,int,char)#1},std::allocator<function_helper<int ()(_VEHICLE_TYPE *,int,char)>::function_helper<PlaneShamal>(int (PlaneShamal::*)(_VEHICLE_TYPE *,int,char),PlaneShamal*)::{lambda(_VEHICLE_TYPE *,int,char)#1}>,int ()(_VEHICLE_TYPE *,int,char)>
1281F8:  ADDS            R2, #8
1281FA:  STR             R2, [R1]
1281FC:  VLDR            D16, [R0,#4]
128200:  LDR             R0, [R0,#0xC]
128202:  STR             R0, [R1,#0xC]
128204:  VSTR            D16, [R1,#4]
128208:  BX              LR
