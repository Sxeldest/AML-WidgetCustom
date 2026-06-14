; =========================================================
; Game Engine Function: sub_F3F28
; Address            : 0xF3F28 - 0xF3F3E
; =========================================================

F3F28:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFP21CAnimBlendAssociationP13_VEHICLE_TYPEP9_PED_TYPEbEEC1I15CustomEnterAnimEEMT_FS4_S6_S8_bEPSD_EUlS6_S8_bE_NS_9allocatorISH_EES9_EE - 0xF3F2E); `vtable for'std::__function::__func<function_helper<CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>::function_helper<CustomEnterAnim>(CAnimBlendAssociation * (CustomEnterAnim::*)(_VEHICLE_TYPE *,_PED_TYPE *,bool),CustomEnterAnim*)::{lambda(_VEHICLE_TYPE *,_PED_TYPE *,bool)#1},std::allocator<function_helper<CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>::function_helper<CustomEnterAnim>(CAnimBlendAssociation * (CustomEnterAnim::*)(_VEHICLE_TYPE *,_PED_TYPE *,bool),CustomEnterAnim*)::{lambda(_VEHICLE_TYPE *,_PED_TYPE *,bool)#1}>,CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)> ...
F3F2A:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>::function_helper<CustomEnterAnim>(CAnimBlendAssociation * (CustomEnterAnim::*)(_VEHICLE_TYPE *,_PED_TYPE *,bool),CustomEnterAnim*)::{lambda(_VEHICLE_TYPE *,_PED_TYPE *,bool)#1},std::allocator<function_helper<CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>::function_helper<CustomEnterAnim>(CAnimBlendAssociation * (CustomEnterAnim::*)(_VEHICLE_TYPE *,_PED_TYPE *,bool),CustomEnterAnim*)::{lambda(_VEHICLE_TYPE *,_PED_TYPE *,bool)#1}>,CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>
F3F2C:  ADDS            R2, #8
F3F2E:  STR             R2, [R1]
F3F30:  VLDR            D16, [R0,#4]
F3F34:  LDR             R0, [R0,#0xC]
F3F36:  STR             R0, [R1,#0xC]
F3F38:  VSTR            D16, [R1,#4]
F3F3C:  BX              LR
