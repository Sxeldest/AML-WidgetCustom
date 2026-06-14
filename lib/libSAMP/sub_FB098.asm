; =========================================================
; Game Engine Function: sub_FB098
; Address            : 0xFB098 - 0xFB0DC
; =========================================================

FB098:  PUSH            {R4,R5,R7,LR}
FB09A:  ADD             R7, SP, #8
FB09C:  SUB             SP, SP, #0x18
FB09E:  MOV             R4, R0
FB0A0:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiPvPKcP9_PED_TYPES7_iiP5RwV3difiiiEEC1I8HeadmoveEEMT_FiS3_S5_S7_S7_iiS9_ifiiiEPSE_EUlS3_S5_S7_S7_iiS9_ifiiiE_NS_9allocatorISI_EESA_EE - 0xFB0AC); `vtable for'std::__function::__func<function_helper<int ()(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)>::function_helper<Headmove>(int (Headmove::*)(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int),Headmove*)::{lambda(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)#1},std::allocator<function_helper<int ()(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)>::function_helper<Headmove>(int (Headmove::*)(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int),Headmove*)::{lambda(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)#1}>,int ()(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)> ...
FB0A2:  LDRD.W          R2, R3, [R1]
FB0A6:  MOV             R5, SP
FB0A8:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<int ()(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)>::function_helper<Headmove>(int (Headmove::*)(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int),Headmove*)::{lambda(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)#1},std::allocator<function_helper<int ()(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)>::function_helper<Headmove>(int (Headmove::*)(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int),Headmove*)::{lambda(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)#1}>,int ()(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)>
FB0AA:  LDR             R1, [R1,#8]
FB0AC:  ADDS            R0, #8
FB0AE:  STRD.W          R1, R5, [SP,#0x20+var_14]
FB0B2:  STR             R0, [SP,#0x20+var_20]
FB0B4:  MOV             R0, R5
FB0B6:  MOV             R1, R4
FB0B8:  STRD.W          R2, R3, [SP,#0x20+var_1C]
FB0BC:  BL              sub_FB20C
FB0C0:  LDR             R0, [SP,#0x20+var_10]
FB0C2:  CMP             R5, R0
FB0C4:  BEQ             loc_FB0CC
FB0C6:  CBZ             R0, loc_FB0D6
FB0C8:  MOVS            R1, #5
FB0CA:  B               loc_FB0CE
FB0CC:  MOVS            R1, #4
FB0CE:  LDR             R2, [R0]
FB0D0:  LDR.W           R1, [R2,R1,LSL#2]
FB0D4:  BLX             R1
FB0D6:  MOV             R0, R4
FB0D8:  ADD             SP, SP, #0x18
FB0DA:  POP             {R4,R5,R7,PC}
