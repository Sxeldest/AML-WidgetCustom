; =========================================================
; Game Engine Function: sub_123590
; Address            : 0x123590 - 0x1235A6
; =========================================================

123590:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFbjPPcS4_EEC1I12skin_shadersEEMT_FbjS4_S4_EPS9_EUljS4_S4_E_NS_9allocatorISD_EES5_EE - 0x123596); `vtable for'std::__function::__func<function_helper<bool ()(uint,char **,char **)>::function_helper<skin_shaders>(bool (skin_shaders::*)(uint,char **,char **),skin_shaders*)::{lambda(uint,char **,char **)#1},std::allocator<function_helper<bool ()(uint,char **,char **)>::function_helper<skin_shaders>(bool (skin_shaders::*)(uint,char **,char **),skin_shaders*)::{lambda(uint,char **,char **)#1}>,bool ()(uint,char **,char **)> ...
123592:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<bool ()(uint,char **,char **)>::function_helper<skin_shaders>(bool (skin_shaders::*)(uint,char **,char **),skin_shaders*)::{lambda(uint,char **,char **)#1},std::allocator<function_helper<bool ()(uint,char **,char **)>::function_helper<skin_shaders>(bool (skin_shaders::*)(uint,char **,char **),skin_shaders*)::{lambda(uint,char **,char **)#1}>,bool ()(uint,char **,char **)>
123594:  ADDS            R2, #8
123596:  STR             R2, [R1]
123598:  VLDR            D16, [R0,#4]
12359C:  LDR             R0, [R0,#0xC]
12359E:  STR             R0, [R1,#0xC]
1235A0:  VSTR            D16, [R1,#4]
1235A4:  BX              LR
