; =========================================================
; Game Engine Function: sub_12817C
; Address            : 0x12817C - 0x1281C0
; =========================================================

12817C:  PUSH            {R4,R5,R7,LR}
12817E:  ADD             R7, SP, #8
128180:  SUB             SP, SP, #0x18
128182:  MOV             R4, R0
128184:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiP13_VEHICLE_TYPEicEEC1I11PlaneShamalEEMT_FiS4_icEPS9_EUlS4_icE_NS_9allocatorISD_EES5_EE - 0x128190); `vtable for'std::__function::__func<function_helper<int ()(_VEHICLE_TYPE *,int,char)>::function_helper<PlaneShamal>(int (PlaneShamal::*)(_VEHICLE_TYPE *,int,char),PlaneShamal*)::{lambda(_VEHICLE_TYPE *,int,char)#1},std::allocator<function_helper<int ()(_VEHICLE_TYPE *,int,char)>::function_helper<PlaneShamal>(int (PlaneShamal::*)(_VEHICLE_TYPE *,int,char),PlaneShamal*)::{lambda(_VEHICLE_TYPE *,int,char)#1}>,int ()(_VEHICLE_TYPE *,int,char)> ...
128186:  LDRD.W          R2, R3, [R1]
12818A:  MOV             R5, SP
12818C:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<int ()(_VEHICLE_TYPE *,int,char)>::function_helper<PlaneShamal>(int (PlaneShamal::*)(_VEHICLE_TYPE *,int,char),PlaneShamal*)::{lambda(_VEHICLE_TYPE *,int,char)#1},std::allocator<function_helper<int ()(_VEHICLE_TYPE *,int,char)>::function_helper<PlaneShamal>(int (PlaneShamal::*)(_VEHICLE_TYPE *,int,char),PlaneShamal*)::{lambda(_VEHICLE_TYPE *,int,char)#1}>,int ()(_VEHICLE_TYPE *,int,char)>
12818E:  LDR             R1, [R1,#8]
128190:  ADDS            R0, #8
128192:  STRD.W          R1, R5, [SP,#0x20+var_14]
128196:  STR             R0, [SP,#0x20+var_20]
128198:  MOV             R0, R5
12819A:  MOV             R1, R4
12819C:  STRD.W          R2, R3, [SP,#0x20+var_1C]
1281A0:  BL              sub_128260
1281A4:  LDR             R0, [SP,#0x20+var_10]
1281A6:  CMP             R5, R0
1281A8:  BEQ             loc_1281B0
1281AA:  CBZ             R0, loc_1281BA
1281AC:  MOVS            R1, #5
1281AE:  B               loc_1281B2
1281B0:  MOVS            R1, #4
1281B2:  LDR             R2, [R0]
1281B4:  LDR.W           R1, [R2,R1,LSL#2]
1281B8:  BLX             R1
1281BA:  MOV             R0, R4
1281BC:  ADD             SP, SP, #0x18
1281BE:  POP             {R4,R5,R7,PC}
