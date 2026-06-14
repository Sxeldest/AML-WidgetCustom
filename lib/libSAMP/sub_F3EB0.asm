; =========================================================
; Game Engine Function: sub_F3EB0
; Address            : 0xF3EB0 - 0xF3EF4
; =========================================================

F3EB0:  PUSH            {R4,R5,R7,LR}
F3EB2:  ADD             R7, SP, #8
F3EB4:  SUB             SP, SP, #0x18
F3EB6:  MOV             R4, R0
F3EB8:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFP21CAnimBlendAssociationP13_VEHICLE_TYPEP9_PED_TYPEbEEC1I15CustomEnterAnimEEMT_FS4_S6_S8_bEPSD_EUlS6_S8_bE_NS_9allocatorISH_EES9_EE - 0xF3EC4); `vtable for'std::__function::__func<function_helper<CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>::function_helper<CustomEnterAnim>(CAnimBlendAssociation * (CustomEnterAnim::*)(_VEHICLE_TYPE *,_PED_TYPE *,bool),CustomEnterAnim*)::{lambda(_VEHICLE_TYPE *,_PED_TYPE *,bool)#1},std::allocator<function_helper<CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>::function_helper<CustomEnterAnim>(CAnimBlendAssociation * (CustomEnterAnim::*)(_VEHICLE_TYPE *,_PED_TYPE *,bool),CustomEnterAnim*)::{lambda(_VEHICLE_TYPE *,_PED_TYPE *,bool)#1}>,CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)> ...
F3EBA:  LDRD.W          R2, R3, [R1]
F3EBE:  MOV             R5, SP
F3EC0:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>::function_helper<CustomEnterAnim>(CAnimBlendAssociation * (CustomEnterAnim::*)(_VEHICLE_TYPE *,_PED_TYPE *,bool),CustomEnterAnim*)::{lambda(_VEHICLE_TYPE *,_PED_TYPE *,bool)#1},std::allocator<function_helper<CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>::function_helper<CustomEnterAnim>(CAnimBlendAssociation * (CustomEnterAnim::*)(_VEHICLE_TYPE *,_PED_TYPE *,bool),CustomEnterAnim*)::{lambda(_VEHICLE_TYPE *,_PED_TYPE *,bool)#1}>,CAnimBlendAssociation * ()(_VEHICLE_TYPE *,_PED_TYPE *,bool)>
F3EC2:  LDR             R1, [R1,#8]
F3EC4:  ADDS            R0, #8
F3EC6:  STRD.W          R1, R5, [SP,#0x20+var_14]
F3ECA:  STR             R0, [SP,#0x20+var_20]
F3ECC:  MOV             R0, R5
F3ECE:  MOV             R1, R4
F3ED0:  STRD.W          R2, R3, [SP,#0x20+var_1C]
F3ED4:  BL              sub_F3F98
F3ED8:  LDR             R0, [SP,#0x20+var_10]
F3EDA:  CMP             R5, R0
F3EDC:  BEQ             loc_F3EE4
F3EDE:  CBZ             R0, loc_F3EEE
F3EE0:  MOVS            R1, #5
F3EE2:  B               loc_F3EE6
F3EE4:  MOVS            R1, #4
F3EE6:  LDR             R2, [R0]
F3EE8:  LDR.W           R1, [R2,R1,LSL#2]
F3EEC:  BLX             R1
F3EEE:  MOV             R0, R4
F3EF0:  ADD             SP, SP, #0x18
F3EF2:  POP             {R4,R5,R7,PC}
