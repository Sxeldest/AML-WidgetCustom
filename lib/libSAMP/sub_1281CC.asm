; =========================================================
; Game Engine Function: sub_1281CC
; Address            : 0x1281CC - 0x1281EE
; =========================================================

1281CC:  PUSH            {R4,R6,R7,LR}
1281CE:  ADD             R7, SP, #8
1281D0:  MOV             R4, R0
1281D2:  MOVS            R0, #0x10; unsigned int
1281D4:  BLX             j__Znwj; operator new(uint)
1281D8:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiP13_VEHICLE_TYPEicEEC1I11PlaneShamalEEMT_FiS4_icEPS9_EUlS4_icE_NS_9allocatorISD_EES5_EE - 0x1281E2); `vtable for'std::__function::__func<function_helper<int ()(_VEHICLE_TYPE *,int,char)>::function_helper<PlaneShamal>(int (PlaneShamal::*)(_VEHICLE_TYPE *,int,char),PlaneShamal*)::{lambda(_VEHICLE_TYPE *,int,char)#1},std::allocator<function_helper<int ()(_VEHICLE_TYPE *,int,char)>::function_helper<PlaneShamal>(int (PlaneShamal::*)(_VEHICLE_TYPE *,int,char),PlaneShamal*)::{lambda(_VEHICLE_TYPE *,int,char)#1}>,int ()(_VEHICLE_TYPE *,int,char)> ...
1281DA:  VLDR            D16, [R4,#4]
1281DE:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<int ()(_VEHICLE_TYPE *,int,char)>::function_helper<PlaneShamal>(int (PlaneShamal::*)(_VEHICLE_TYPE *,int,char),PlaneShamal*)::{lambda(_VEHICLE_TYPE *,int,char)#1},std::allocator<function_helper<int ()(_VEHICLE_TYPE *,int,char)>::function_helper<PlaneShamal>(int (PlaneShamal::*)(_VEHICLE_TYPE *,int,char),PlaneShamal*)::{lambda(_VEHICLE_TYPE *,int,char)#1}>,int ()(_VEHICLE_TYPE *,int,char)>
1281E0:  LDR             R2, [R4,#0xC]
1281E2:  ADDS            R1, #8
1281E4:  STR             R1, [R0]
1281E6:  STR             R2, [R0,#0xC]
1281E8:  VSTR            D16, [R0,#4]
1281EC:  POP             {R4,R6,R7,PC}
