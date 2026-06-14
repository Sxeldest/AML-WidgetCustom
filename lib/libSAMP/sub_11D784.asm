; =========================================================
; Game Engine Function: sub_11D784
; Address            : 0x11D784 - 0x11D7C8
; =========================================================

11D784:  PUSH            {R4,R5,R7,LR}
11D786:  ADD             R7, SP, #8
11D788:  SUB             SP, SP, #0x18
11D78A:  MOV             R4, R0
11D78C:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiPKvPvS4_S5_S5_S5_PfbEEC1I13CCollisionFixEEMT_FiS4_S5_S4_S5_S5_S5_S6_bEPSB_EUlS4_S5_S4_S5_S5_S5_S6_bE_NS_9allocatorISF_EES7_EE - 0x11D798); `vtable for'std::__function::__func<function_helper<int ()(void const*,void *,void const*,void *,void *,void *,float *,bool)>::function_helper<CCollisionFix>(int (CCollisionFix::*)(void const*,void *,void const*,void *,void *,void *,float *,bool),CCollisionFix*)::{lambda(void const*,void *,void const*,void *,void *,void *,float *,bool)#1},std::allocator<function_helper<int ()(void const*,void *,void const*,void *,void *,void *,float *,bool)>::function_helper<CCollisionFix>(int (CCollisionFix::*)(void const*,void *,void const*,void *,void *,void *,float *,bool),CCollisionFix*)::{lambda(void const*,void *,void const*,void *,void *,void *,float *,bool)#1}>,int ()(void const*,void *,void const*,void *,void *,void *,float *,bool)> ...
11D78E:  LDRD.W          R2, R3, [R1]
11D792:  MOV             R5, SP
11D794:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<int ()(void const*,void *,void const*,void *,void *,void *,float *,bool)>::function_helper<CCollisionFix>(int (CCollisionFix::*)(void const*,void *,void const*,void *,void *,void *,float *,bool),CCollisionFix*)::{lambda(void const*,void *,void const*,void *,void *,void *,float *,bool)#1},std::allocator<function_helper<int ()(void const*,void *,void const*,void *,void *,void *,float *,bool)>::function_helper<CCollisionFix>(int (CCollisionFix::*)(void const*,void *,void const*,void *,void *,void *,float *,bool),CCollisionFix*)::{lambda(void const*,void *,void const*,void *,void *,void *,float *,bool)#1}>,int ()(void const*,void *,void const*,void *,void *,void *,float *,bool)>
11D796:  LDR             R1, [R1,#8]
11D798:  ADDS            R0, #8
11D79A:  STRD.W          R1, R5, [SP,#0x20+var_14]
11D79E:  STR             R0, [SP,#0x20+var_20]
11D7A0:  MOV             R0, R5
11D7A2:  MOV             R1, R4
11D7A4:  STRD.W          R2, R3, [SP,#0x20+var_1C]
11D7A8:  BL              sub_11D8CE
11D7AC:  LDR             R0, [SP,#0x20+var_10]
11D7AE:  CMP             R5, R0
11D7B0:  BEQ             loc_11D7B8
11D7B2:  CBZ             R0, loc_11D7C2
11D7B4:  MOVS            R1, #5
11D7B6:  B               loc_11D7BA
11D7B8:  MOVS            R1, #4
11D7BA:  LDR             R2, [R0]
11D7BC:  LDR.W           R1, [R2,R1,LSL#2]
11D7C0:  BLX             R1
11D7C2:  MOV             R0, R4
11D7C4:  ADD             SP, SP, #0x18
11D7C6:  POP             {R4,R5,R7,PC}
