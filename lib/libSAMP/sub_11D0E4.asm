; =========================================================
; Game Engine Function: sub_11D0E4
; Address            : 0x11D0E4 - 0x11D128
; =========================================================

11D0E4:  PUSH            {R4,R5,R7,LR}
11D0E6:  ADD             R7, SP, #8
11D0E8:  SUB             SP, SP, #0x18
11D0EA:  MOV             R4, R0
11D0EC:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvPvjiEEC1I16CCarEnterExitFixEEMT_FvS3_jiEPS8_EUlS3_jiE_NS_9allocatorISC_EES4_EE - 0x11D0F8); `vtable for'std::__function::__func<function_helper<void ()(void *,uint,int)>::function_helper<CCarEnterExitFix>(void (CCarEnterExitFix::*)(void *,uint,int),CCarEnterExitFix*)::{lambda(void *,uint,int)#1},std::allocator<function_helper<void ()(void *,uint,int)>::function_helper<CCarEnterExitFix>(void (CCarEnterExitFix::*)(void *,uint,int),CCarEnterExitFix*)::{lambda(void *,uint,int)#1}>,void ()(void *,uint,int)> ...
11D0EE:  LDRD.W          R2, R3, [R1]
11D0F2:  MOV             R5, SP
11D0F4:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(void *,uint,int)>::function_helper<CCarEnterExitFix>(void (CCarEnterExitFix::*)(void *,uint,int),CCarEnterExitFix*)::{lambda(void *,uint,int)#1},std::allocator<function_helper<void ()(void *,uint,int)>::function_helper<CCarEnterExitFix>(void (CCarEnterExitFix::*)(void *,uint,int),CCarEnterExitFix*)::{lambda(void *,uint,int)#1}>,void ()(void *,uint,int)>
11D0F6:  LDR             R1, [R1,#8]
11D0F8:  ADDS            R0, #8
11D0FA:  STRD.W          R1, R5, [SP,#0x20+var_14]
11D0FE:  STR             R0, [SP,#0x20+var_20]
11D100:  MOV             R0, R5
11D102:  MOV             R1, R4
11D104:  STRD.W          R2, R3, [SP,#0x20+var_1C]
11D108:  BL              sub_11D1C8
11D10C:  LDR             R0, [SP,#0x20+var_10]
11D10E:  CMP             R5, R0
11D110:  BEQ             loc_11D118
11D112:  CBZ             R0, loc_11D122
11D114:  MOVS            R1, #5
11D116:  B               loc_11D11A
11D118:  MOVS            R1, #4
11D11A:  LDR             R2, [R0]
11D11C:  LDR.W           R1, [R2,R1,LSL#2]
11D120:  BLX             R1
11D122:  MOV             R0, R4
11D124:  ADD             SP, SP, #0x18
11D126:  POP             {R4,R5,R7,PC}
