; =========================================================
; Game Engine Function: sub_11061C
; Address            : 0x11061C - 0x110632
; =========================================================

11061C:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP21CWidgetButtonEnterCariibP7CVectoriEEC1I12VehicleSkateEEMT_FvS4_iibS6_iEPSB_EUlS4_iibS6_iE_NS_9allocatorISF_EES7_EE - 0x110622); `vtable for'std::__function::__func<function_helper<void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>::function_helper<VehicleSkate>(void (VehicleSkate::*)(CWidgetButtonEnterCar *,int,int,bool,CVector *,int),VehicleSkate*)::{lambda(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)#1},std::allocator<function_helper<void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>::function_helper<VehicleSkate>(void (VehicleSkate::*)(CWidgetButtonEnterCar *,int,int,bool,CVector *,int),VehicleSkate*)::{lambda(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)#1}>,void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)> ...
11061E:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>::function_helper<VehicleSkate>(void (VehicleSkate::*)(CWidgetButtonEnterCar *,int,int,bool,CVector *,int),VehicleSkate*)::{lambda(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)#1},std::allocator<function_helper<void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>::function_helper<VehicleSkate>(void (VehicleSkate::*)(CWidgetButtonEnterCar *,int,int,bool,CVector *,int),VehicleSkate*)::{lambda(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)#1}>,void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>
110620:  ADDS            R2, #8
110622:  STR             R2, [R1]
110624:  VLDR            D16, [R0,#4]
110628:  LDR             R0, [R0,#0xC]
11062A:  STR             R0, [R1,#0xC]
11062C:  VSTR            D16, [R1,#4]
110630:  BX              LR
