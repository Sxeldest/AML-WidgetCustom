; =========================================================
; Game Engine Function: sub_127ED0
; Address            : 0x127ED0 - 0x127F14
; =========================================================

127ED0:  PUSH            {R4,R5,R7,LR}
127ED2:  ADD             R7, SP, #8
127ED4:  SUB             SP, SP, #0x18
127ED6:  MOV             R4, R0
127ED8:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvPvjEEC1I11PlaneShamalEEMT_FvS3_jEPS8_EUlS3_jE_NS_9allocatorISC_EES4_EE - 0x127EE4); `vtable for'std::__function::__func<function_helper<void ()(void *,uint)>::function_helper<PlaneShamal>(void (PlaneShamal::*)(void *,uint),PlaneShamal*)::{lambda(void *,uint)#1},std::allocator<function_helper<void ()(void *,uint)>::function_helper<PlaneShamal>(void (PlaneShamal::*)(void *,uint),PlaneShamal*)::{lambda(void *,uint)#1}>,void ()(void *,uint)> ...
127EDA:  LDRD.W          R2, R3, [R1]
127EDE:  MOV             R5, SP
127EE0:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(void *,uint)>::function_helper<PlaneShamal>(void (PlaneShamal::*)(void *,uint),PlaneShamal*)::{lambda(void *,uint)#1},std::allocator<function_helper<void ()(void *,uint)>::function_helper<PlaneShamal>(void (PlaneShamal::*)(void *,uint),PlaneShamal*)::{lambda(void *,uint)#1}>,void ()(void *,uint)>
127EE2:  LDR             R1, [R1,#8]
127EE4:  ADDS            R0, #8
127EE6:  STRD.W          R1, R5, [SP,#0x20+var_14]
127EEA:  STR             R0, [SP,#0x20+var_20]
127EEC:  MOV             R0, R5
127EEE:  MOV             R1, R4
127EF0:  STRD.W          R2, R3, [SP,#0x20+var_1C]
127EF4:  BL              sub_127FB0
127EF8:  LDR             R0, [SP,#0x20+var_10]
127EFA:  CMP             R5, R0
127EFC:  BEQ             loc_127F04
127EFE:  CBZ             R0, loc_127F0E
127F00:  MOVS            R1, #5
127F02:  B               loc_127F06
127F04:  MOVS            R1, #4
127F06:  LDR             R2, [R0]
127F08:  LDR.W           R1, [R2,R1,LSL#2]
127F0C:  BLX             R1
127F0E:  MOV             R0, R4
127F10:  ADD             SP, SP, #0x18
127F12:  POP             {R4,R5,R7,PC}
