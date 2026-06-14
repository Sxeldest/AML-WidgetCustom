; =========================================================
; Game Engine Function: sub_11D7D4
; Address            : 0x11D7D4 - 0x11D7F6
; =========================================================

11D7D4:  PUSH            {R4,R6,R7,LR}
11D7D6:  ADD             R7, SP, #8
11D7D8:  MOV             R4, R0
11D7DA:  MOVS            R0, #0x10; unsigned int
11D7DC:  BLX             j__Znwj; operator new(uint)
11D7E0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiPKvPvS4_S5_S5_S5_PfbEEC1I13CCollisionFixEEMT_FiS4_S5_S4_S5_S5_S5_S6_bEPSB_EUlS4_S5_S4_S5_S5_S5_S6_bE_NS_9allocatorISF_EES7_EE - 0x11D7EA); `vtable for'std::__function::__func<function_helper<int ()(void const*,void *,void const*,void *,void *,void *,float *,bool)>::function_helper<CCollisionFix>(int (CCollisionFix::*)(void const*,void *,void const*,void *,void *,void *,float *,bool),CCollisionFix*)::{lambda(void const*,void *,void const*,void *,void *,void *,float *,bool)#1},std::allocator<function_helper<int ()(void const*,void *,void const*,void *,void *,void *,float *,bool)>::function_helper<CCollisionFix>(int (CCollisionFix::*)(void const*,void *,void const*,void *,void *,void *,float *,bool),CCollisionFix*)::{lambda(void const*,void *,void const*,void *,void *,void *,float *,bool)#1}>,int ()(void const*,void *,void const*,void *,void *,void *,float *,bool)> ...
11D7E2:  VLDR            D16, [R4,#4]
11D7E6:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<int ()(void const*,void *,void const*,void *,void *,void *,float *,bool)>::function_helper<CCollisionFix>(int (CCollisionFix::*)(void const*,void *,void const*,void *,void *,void *,float *,bool),CCollisionFix*)::{lambda(void const*,void *,void const*,void *,void *,void *,float *,bool)#1},std::allocator<function_helper<int ()(void const*,void *,void const*,void *,void *,void *,float *,bool)>::function_helper<CCollisionFix>(int (CCollisionFix::*)(void const*,void *,void const*,void *,void *,void *,float *,bool),CCollisionFix*)::{lambda(void const*,void *,void const*,void *,void *,void *,float *,bool)#1}>,int ()(void const*,void *,void const*,void *,void *,void *,float *,bool)>
11D7E8:  LDR             R2, [R4,#0xC]
11D7EA:  ADDS            R1, #8
11D7EC:  STR             R1, [R0]
11D7EE:  STR             R2, [R0,#0xC]
11D7F0:  VSTR            D16, [R0,#4]
11D7F4:  POP             {R4,R6,R7,PC}
