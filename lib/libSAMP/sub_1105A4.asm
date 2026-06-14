; =========================================================
; Game Engine Function: sub_1105A4
; Address            : 0x1105A4 - 0x1105E8
; =========================================================

1105A4:  PUSH            {R4,R5,R7,LR}
1105A6:  ADD             R7, SP, #8
1105A8:  SUB             SP, SP, #0x18
1105AA:  MOV             R4, R0
1105AC:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP21CWidgetButtonEnterCariibP7CVectoriEEC1I12VehicleSkateEEMT_FvS4_iibS6_iEPSB_EUlS4_iibS6_iE_NS_9allocatorISF_EES7_EE - 0x1105B8); `vtable for'std::__function::__func<function_helper<void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>::function_helper<VehicleSkate>(void (VehicleSkate::*)(CWidgetButtonEnterCar *,int,int,bool,CVector *,int),VehicleSkate*)::{lambda(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)#1},std::allocator<function_helper<void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>::function_helper<VehicleSkate>(void (VehicleSkate::*)(CWidgetButtonEnterCar *,int,int,bool,CVector *,int),VehicleSkate*)::{lambda(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)#1}>,void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)> ...
1105AE:  LDRD.W          R2, R3, [R1]
1105B2:  MOV             R5, SP
1105B4:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>::function_helper<VehicleSkate>(void (VehicleSkate::*)(CWidgetButtonEnterCar *,int,int,bool,CVector *,int),VehicleSkate*)::{lambda(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)#1},std::allocator<function_helper<void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>::function_helper<VehicleSkate>(void (VehicleSkate::*)(CWidgetButtonEnterCar *,int,int,bool,CVector *,int),VehicleSkate*)::{lambda(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)#1}>,void ()(CWidgetButtonEnterCar *,int,int,bool,CVector *,int)>
1105B6:  LDR             R1, [R1,#8]
1105B8:  ADDS            R0, #8
1105BA:  STRD.W          R1, R5, [SP,#0x20+var_14]
1105BE:  STR             R0, [SP,#0x20+var_20]
1105C0:  MOV             R0, R5
1105C2:  MOV             R1, R4
1105C4:  STRD.W          R2, R3, [SP,#0x20+var_1C]
1105C8:  BL              sub_1106C6
1105CC:  LDR             R0, [SP,#0x20+var_10]
1105CE:  CMP             R5, R0
1105D0:  BEQ             loc_1105D8
1105D2:  CBZ             R0, loc_1105E2
1105D4:  MOVS            R1, #5
1105D6:  B               loc_1105DA
1105D8:  MOVS            R1, #4
1105DA:  LDR             R2, [R0]
1105DC:  LDR.W           R1, [R2,R1,LSL#2]
1105E0:  BLX             R1
1105E2:  MOV             R0, R4
1105E4:  ADD             SP, SP, #0x18
1105E6:  POP             {R4,R5,R7,PC}
