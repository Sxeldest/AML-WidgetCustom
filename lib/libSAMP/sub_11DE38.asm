; =========================================================
; Game Engine Function: sub_11DE38
; Address            : 0x11DE38 - 0x11DE7C
; =========================================================

11DE38:  PUSH            {R4,R5,R7,LR}
11DE3A:  ADD             R7, SP, #8
11DE3C:  SUB             SP, SP, #0x18
11DE3E:  MOV             R4, R0
11DE40:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiP28CTaskUtilityLineUpPedWithCarP9_PED_TYPEP13_VEHICLE_TYPEP21CAnimBlendAssociationEEC1I31CTaskUtilityLineUpPedWithCarFixEEMT_FiS4_S6_S8_SA_EPSF_EUlS4_S6_S8_SA_E_NS_9allocatorISJ_EESB_EE - 0x11DE4C); `vtable for'std::__function::__func<function_helper<int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>::function_helper<CTaskUtilityLineUpPedWithCarFix>(int (CTaskUtilityLineUpPedWithCarFix::*)(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *),CTaskUtilityLineUpPedWithCarFix*)::{lambda(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)#1},std::allocator<function_helper<int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>::function_helper<CTaskUtilityLineUpPedWithCarFix>(int (CTaskUtilityLineUpPedWithCarFix::*)(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *),CTaskUtilityLineUpPedWithCarFix*)::{lambda(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)#1}>,int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)> ...
11DE42:  LDRD.W          R2, R3, [R1]
11DE46:  MOV             R5, SP
11DE48:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>::function_helper<CTaskUtilityLineUpPedWithCarFix>(int (CTaskUtilityLineUpPedWithCarFix::*)(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *),CTaskUtilityLineUpPedWithCarFix*)::{lambda(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)#1},std::allocator<function_helper<int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>::function_helper<CTaskUtilityLineUpPedWithCarFix>(int (CTaskUtilityLineUpPedWithCarFix::*)(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *),CTaskUtilityLineUpPedWithCarFix*)::{lambda(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)#1}>,int ()(CTaskUtilityLineUpPedWithCar *,_PED_TYPE *,_VEHICLE_TYPE *,CAnimBlendAssociation *)>
11DE4A:  LDR             R1, [R1,#8]
11DE4C:  ADDS            R0, #8
11DE4E:  STRD.W          R1, R5, [SP,#0x20+var_14]
11DE52:  STR             R0, [SP,#0x20+var_20]
11DE54:  MOV             R0, R5
11DE56:  MOV             R1, R4
11DE58:  STRD.W          R2, R3, [SP,#0x20+var_1C]
11DE5C:  BL              sub_11DF28
11DE60:  LDR             R0, [SP,#0x20+var_10]
11DE62:  CMP             R5, R0
11DE64:  BEQ             loc_11DE6C
11DE66:  CBZ             R0, loc_11DE76
11DE68:  MOVS            R1, #5
11DE6A:  B               loc_11DE6E
11DE6C:  MOVS            R1, #4
11DE6E:  LDR             R2, [R0]
11DE70:  LDR.W           R1, [R2,R1,LSL#2]
11DE74:  BLX             R1
11DE76:  MOV             R0, R4
11DE78:  ADD             SP, SP, #0x18
11DE7A:  POP             {R4,R5,R7,PC}
