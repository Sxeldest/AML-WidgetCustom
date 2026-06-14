; =========================================================
; Game Engine Function: sub_11D134
; Address            : 0x11D134 - 0x11D156
; =========================================================

11D134:  PUSH            {R4,R6,R7,LR}
11D136:  ADD             R7, SP, #8
11D138:  MOV             R4, R0
11D13A:  MOVS            R0, #0x10; unsigned int
11D13C:  BLX             j__Znwj; operator new(uint)
11D140:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvPvjiEEC1I16CCarEnterExitFixEEMT_FvS3_jiEPS8_EUlS3_jiE_NS_9allocatorISC_EES4_EE - 0x11D14A); `vtable for'std::__function::__func<function_helper<void ()(void *,uint,int)>::function_helper<CCarEnterExitFix>(void (CCarEnterExitFix::*)(void *,uint,int),CCarEnterExitFix*)::{lambda(void *,uint,int)#1},std::allocator<function_helper<void ()(void *,uint,int)>::function_helper<CCarEnterExitFix>(void (CCarEnterExitFix::*)(void *,uint,int),CCarEnterExitFix*)::{lambda(void *,uint,int)#1}>,void ()(void *,uint,int)> ...
11D142:  VLDR            D16, [R4,#4]
11D146:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<void ()(void *,uint,int)>::function_helper<CCarEnterExitFix>(void (CCarEnterExitFix::*)(void *,uint,int),CCarEnterExitFix*)::{lambda(void *,uint,int)#1},std::allocator<function_helper<void ()(void *,uint,int)>::function_helper<CCarEnterExitFix>(void (CCarEnterExitFix::*)(void *,uint,int),CCarEnterExitFix*)::{lambda(void *,uint,int)#1}>,void ()(void *,uint,int)>
11D148:  LDR             R2, [R4,#0xC]
11D14A:  ADDS            R1, #8
11D14C:  STR             R1, [R0]
11D14E:  STR             R2, [R0,#0xC]
11D150:  VSTR            D16, [R0,#4]
11D154:  POP             {R4,R6,R7,PC}
