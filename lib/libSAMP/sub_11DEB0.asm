; =========================================================
; Game Engine Function: sub_11DEB0
; Address            : 0x11DEB0 - 0x11DEC6
; =========================================================

11DEB0:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiP28CTaskUtilityLineUpPedWithCarP9_PED_TYPEP13_VEHICLE_TYPEP21CAnimBlendAssociationEEC1I31CTaskUtilityLineUpPedWithCarFixEEMT_FiS4_S6_S8_SA_EPSF_EUlS4_S6_S8_SA_E_NS_9allocatorISJ_EESB_EE - 0x11DEB6); `vtable for'std::__function::__func<function_helper<int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>::function_helper<CTaskUtilityLineUpPedWithCarFix>(int (CTaskUtilityLineUpPedWithCarFix::*)(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *),CTaskUtilityLineUpPedWithCarFix*)::{lambda(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)#1},std::allocator<function_helper<int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>::function_helper<CTaskUtilityLineUpPedWithCarFix>(int (CTaskUtilityLineUpPedWithCarFix::*)(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *),CTaskUtilityLineUpPedWithCarFix*)::{lambda(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)#1}>,int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)> ...
11DEB2:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>::function_helper<CTaskUtilityLineUpPedWithCarFix>(int (CTaskUtilityLineUpPedWithCarFix::*)(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *),CTaskUtilityLineUpPedWithCarFix*)::{lambda(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)#1},std::allocator<function_helper<int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>::function_helper<CTaskUtilityLineUpPedWithCarFix>(int (CTaskUtilityLineUpPedWithCarFix::*)(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *),CTaskUtilityLineUpPedWithCarFix*)::{lambda(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)#1}>,int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>
11DEB4:  ADDS            R2, #8
11DEB6:  STR             R2, [R1]
11DEB8:  VLDR            D16, [R0,#4]
11DEBC:  LDR             R0, [R0,#0xC]
11DEBE:  STR             R0, [R1,#0xC]
11DEC0:  VSTR            D16, [R1,#4]
11DEC4:  BX              LR
