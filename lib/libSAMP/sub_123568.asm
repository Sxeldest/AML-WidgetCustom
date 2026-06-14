; =========================================================
; Game Engine Function: sub_123568
; Address            : 0x123568 - 0x12358A
; =========================================================

123568:  PUSH            {R4,R6,R7,LR}
12356A:  ADD             R7, SP, #8
12356C:  MOV             R4, R0
12356E:  MOVS            R0, #0x10; unsigned int
123570:  BLX             j__Znwj; operator new(uint)
123574:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFbjPPcS4_EEC1I12skin_shadersEEMT_FbjS4_S4_EPS9_EUljS4_S4_E_NS_9allocatorISD_EES5_EE - 0x12357E); `vtable for'std::__function::__func<function_helper<bool ()(uint,char **,char **)>::function_helper<skin_shaders>(bool (skin_shaders::*)(uint,char **,char **),skin_shaders*)::{lambda(uint,char **,char **)#1},std::allocator<function_helper<bool ()(uint,char **,char **)>::function_helper<skin_shaders>(bool (skin_shaders::*)(uint,char **,char **),skin_shaders*)::{lambda(uint,char **,char **)#1}>,bool ()(uint,char **,char **)> ...
123576:  VLDR            D16, [R4,#4]
12357A:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<bool ()(uint,char **,char **)>::function_helper<skin_shaders>(bool (skin_shaders::*)(uint,char **,char **),skin_shaders*)::{lambda(uint,char **,char **)#1},std::allocator<function_helper<bool ()(uint,char **,char **)>::function_helper<skin_shaders>(bool (skin_shaders::*)(uint,char **,char **),skin_shaders*)::{lambda(uint,char **,char **)#1}>,bool ()(uint,char **,char **)>
12357C:  LDR             R2, [R4,#0xC]
12357E:  ADDS            R1, #8
123580:  STR             R1, [R0]
123582:  STR             R2, [R0,#0xC]
123584:  VSTR            D16, [R0,#4]
123588:  POP             {R4,R6,R7,PC}
