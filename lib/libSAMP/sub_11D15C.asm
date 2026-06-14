; =========================================================
; Game Engine Function: sub_11D15C
; Address            : 0x11D15C - 0x11D172
; =========================================================

11D15C:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvPvjiEEC1I16CCarEnterExitFixEEMT_FvS3_jiEPS8_EUlS3_jiE_NS_9allocatorISC_EES4_EE - 0x11D162); `vtable for'std::__function::__func<function_helper<void ()(void *,uint,int)>::function_helper<CCarEnterExitFix>(void (CCarEnterExitFix::*)(void *,uint,int),CCarEnterExitFix*)::{lambda(void *,uint,int)#1},std::allocator<function_helper<void ()(void *,uint,int)>::function_helper<CCarEnterExitFix>(void (CCarEnterExitFix::*)(void *,uint,int),CCarEnterExitFix*)::{lambda(void *,uint,int)#1}>,void ()(void *,uint,int)> ...
11D15E:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<void ()(void *,uint,int)>::function_helper<CCarEnterExitFix>(void (CCarEnterExitFix::*)(void *,uint,int),CCarEnterExitFix*)::{lambda(void *,uint,int)#1},std::allocator<function_helper<void ()(void *,uint,int)>::function_helper<CCarEnterExitFix>(void (CCarEnterExitFix::*)(void *,uint,int),CCarEnterExitFix*)::{lambda(void *,uint,int)#1}>,void ()(void *,uint,int)>
11D160:  ADDS            R2, #8
11D162:  STR             R2, [R1]
11D164:  VLDR            D16, [R0,#4]
11D168:  LDR             R0, [R0,#0xC]
11D16A:  STR             R0, [R1,#0xC]
11D16C:  VSTR            D16, [R1,#4]
11D170:  BX              LR
