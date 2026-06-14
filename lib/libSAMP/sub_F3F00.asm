; =========================================================
; Game Engine Function: sub_F3F00
; Address            : 0xF3F00 - 0xF3F22
; =========================================================

F3F00:  PUSH            {R4,R6,R7,LR}
F3F02:  ADD             R7, SP, #8
F3F04:  MOV             R4, R0
F3F06:  MOVS            R0, #0x10; unsigned int
F3F08:  BLX             j__Znwj; operator new(uint)
F3F0C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFP21CAnimBlendAssociationP13_VEHICLE_TYPEP9_PED_TYPEbEEC1I15CustomEnterAnimEEMT_FS4_S6_S8_bEPSD_EUlS6_S8_bE_NS_9allocatorISH_EES9_EE - 0xF3F16); `vtable for'std::__function::__func<function_helper<CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>::function_helper<CustomEnterAnim>(CAnimBlendAssociation * (CustomEnterAnim::*)(_VEHICLE_TYPE *,_PED_TYPE *,bool),CustomEnterAnim*)::{lambda(_VEHICLE_TYPE *,_PED_TYPE *,bool)#1},std::allocator<function_helper<CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>::function_helper<CustomEnterAnim>(CAnimBlendAssociation * (CustomEnterAnim::*)(_VEHICLE_TYPE *,_PED_TYPE *,bool),CustomEnterAnim*)::{lambda(_VEHICLE_TYPE *,_PED_TYPE *,bool)#1}>,CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)> ...
F3F0E:  VLDR            D16, [R4,#4]
F3F12:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>::function_helper<CustomEnterAnim>(CAnimBlendAssociation * (CustomEnterAnim::*)(_VEHICLE_TYPE *,_PED_TYPE *,bool),CustomEnterAnim*)::{lambda(_VEHICLE_TYPE *,_PED_TYPE *,bool)#1},std::allocator<function_helper<CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>::function_helper<CustomEnterAnim>(CAnimBlendAssociation * (CustomEnterAnim::*)(_VEHICLE_TYPE *,_PED_TYPE *,bool),CustomEnterAnim*)::{lambda(_VEHICLE_TYPE *,_PED_TYPE *,bool)#1}>,CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>
F3F14:  LDR             R2, [R4,#0xC]
F3F16:  ADDS            R1, #8
F3F18:  STR             R1, [R0]
F3F1A:  STR             R2, [R0,#0xC]
F3F1C:  VSTR            D16, [R0,#4]
F3F20:  POP             {R4,R6,R7,PC}
