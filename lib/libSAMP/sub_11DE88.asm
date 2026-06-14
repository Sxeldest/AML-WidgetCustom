; =========================================================
; Game Engine Function: sub_11DE88
; Address            : 0x11DE88 - 0x11DEAA
; =========================================================

11DE88:  PUSH            {R4,R6,R7,LR}
11DE8A:  ADD             R7, SP, #8
11DE8C:  MOV             R4, R0
11DE8E:  MOVS            R0, #0x10; unsigned int
11DE90:  BLX             j__Znwj; operator new(uint)
11DE94:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiP28CTaskUtilityLineUpPedWithCarP9_PED_TYPEP13_VEHICLE_TYPEP21CAnimBlendAssociationEEC1I31CTaskUtilityLineUpPedWithCarFixEEMT_FiS4_S6_S8_SA_EPSF_EUlS4_S6_S8_SA_E_NS_9allocatorISJ_EESB_EE - 0x11DE9E); `vtable for'std::__function::__func<function_helper<int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>::function_helper<CTaskUtilityLineUpPedWithCarFix>(int (CTaskUtilityLineUpPedWithCarFix::*)(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *),CTaskUtilityLineUpPedWithCarFix*)::{lambda(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)#1},std::allocator<function_helper<int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>::function_helper<CTaskUtilityLineUpPedWithCarFix>(int (CTaskUtilityLineUpPedWithCarFix::*)(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *),CTaskUtilityLineUpPedWithCarFix*)::{lambda(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)#1}>,int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)> ...
11DE96:  VLDR            D16, [R4,#4]
11DE9A:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>::function_helper<CTaskUtilityLineUpPedWithCarFix>(int (CTaskUtilityLineUpPedWithCarFix::*)(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *),CTaskUtilityLineUpPedWithCarFix*)::{lambda(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)#1},std::allocator<function_helper<int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>::function_helper<CTaskUtilityLineUpPedWithCarFix>(int (CTaskUtilityLineUpPedWithCarFix::*)(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *),CTaskUtilityLineUpPedWithCarFix*)::{lambda(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)#1}>,int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>
11DE9C:  LDR             R2, [R4,#0xC]
11DE9E:  ADDS            R1, #8
11DEA0:  STR             R1, [R0]
11DEA2:  STR             R2, [R0,#0xC]
11DEA4:  VSTR            D16, [R0,#4]
11DEA8:  POP             {R4,R6,R7,PC}
