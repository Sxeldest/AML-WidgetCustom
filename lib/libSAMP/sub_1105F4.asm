; =========================================================
; Game Engine Function: sub_1105F4
; Address            : 0x1105F4 - 0x110616
; =========================================================

1105F4:  PUSH            {R4,R6,R7,LR}
1105F6:  ADD             R7, SP, #8
1105F8:  MOV             R4, R0
1105FA:  MOVS            R0, #0x10; unsigned int
1105FC:  BLX             j__Znwj; operator new(uint)
110600:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP21CWidgetButtonEnterCariibP7CVectoriEEC1I12VehicleSkateEEMT_FvS4_iibS6_iEPSB_EUlS4_iibS6_iE_NS_9allocatorISF_EES7_EE - 0x11060A); `vtable for'std::__function::__func<function_helper<void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>::function_helper<VehicleSkate>(void (VehicleSkate::*)(CWidgetButtonEnterCar *,int,int,bool,CVector *,int),VehicleSkate*)::{lambda(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)#1},std::allocator<function_helper<void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>::function_helper<VehicleSkate>(void (VehicleSkate::*)(CWidgetButtonEnterCar *,int,int,bool,CVector *,int),VehicleSkate*)::{lambda(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)#1}>,void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)> ...
110602:  VLDR            D16, [R4,#4]
110606:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>::function_helper<VehicleSkate>(void (VehicleSkate::*)(CWidgetButtonEnterCar *,int,int,bool,CVector *,int),VehicleSkate*)::{lambda(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)#1},std::allocator<function_helper<void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>::function_helper<VehicleSkate>(void (VehicleSkate::*)(CWidgetButtonEnterCar *,int,int,bool,CVector *,int),VehicleSkate*)::{lambda(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)#1}>,void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>
110608:  LDR             R2, [R4,#0xC]
11060A:  ADDS            R1, #8
11060C:  STR             R1, [R0]
11060E:  STR             R2, [R0,#0xC]
110610:  VSTR            D16, [R0,#4]
110614:  POP             {R4,R6,R7,PC}
