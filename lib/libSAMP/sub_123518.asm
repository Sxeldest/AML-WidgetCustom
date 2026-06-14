; =========================================================
; Game Engine Function: sub_123518
; Address            : 0x123518 - 0x12355C
; =========================================================

123518:  PUSH            {R4,R5,R7,LR}
12351A:  ADD             R7, SP, #8
12351C:  SUB             SP, SP, #0x18
12351E:  MOV             R4, R0
123520:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFbjPPcS4_EEC1I12skin_shadersEEMT_FbjS4_S4_EPS9_EUljS4_S4_E_NS_9allocatorISD_EES5_EE - 0x12352C); `vtable for'std::__function::__func<function_helper<bool ()(uint,char **,char **)>::function_helper<skin_shaders>(bool (skin_shaders::*)(uint,char **,char **),skin_shaders*)::{lambda(uint,char **,char **)#1},std::allocator<function_helper<bool ()(uint,char **,char **)>::function_helper<skin_shaders>(bool (skin_shaders::*)(uint,char **,char **),skin_shaders*)::{lambda(uint,char **,char **)#1}>,bool ()(uint,char **,char **)> ...
123522:  LDRD.W          R2, R3, [R1]
123526:  MOV             R5, SP
123528:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<bool ()(uint,char **,char **)>::function_helper<skin_shaders>(bool (skin_shaders::*)(uint,char **,char **),skin_shaders*)::{lambda(uint,char **,char **)#1},std::allocator<function_helper<bool ()(uint,char **,char **)>::function_helper<skin_shaders>(bool (skin_shaders::*)(uint,char **,char **),skin_shaders*)::{lambda(uint,char **,char **)#1}>,bool ()(uint,char **,char **)>
12352A:  LDR             R1, [R1,#8]
12352C:  ADDS            R0, #8
12352E:  STRD.W          R1, R5, [SP,#0x20+var_14]
123532:  STR             R0, [SP,#0x20+var_20]
123534:  MOV             R0, R5
123536:  MOV             R1, R4
123538:  STRD.W          R2, R3, [SP,#0x20+var_1C]
12353C:  BL              sub_1235FC
123540:  LDR             R0, [SP,#0x20+var_10]
123542:  CMP             R5, R0
123544:  BEQ             loc_12354C
123546:  CBZ             R0, loc_123556
123548:  MOVS            R1, #5
12354A:  B               loc_12354E
12354C:  MOVS            R1, #4
12354E:  LDR             R2, [R0]
123550:  LDR.W           R1, [R2,R1,LSL#2]
123554:  BLX             R1
123556:  MOV             R0, R4
123558:  ADD             SP, SP, #0x18
12355A:  POP             {R4,R5,R7,PC}
