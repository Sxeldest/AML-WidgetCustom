; =========================================================
; Game Engine Function: sub_FB0E8
; Address            : 0xFB0E8 - 0xFB10A
; =========================================================

FB0E8:  PUSH            {R4,R6,R7,LR}
FB0EA:  ADD             R7, SP, #8
FB0EC:  MOV             R4, R0
FB0EE:  MOVS            R0, #0x10; unsigned int
FB0F0:  BLX             j__Znwj; operator new(uint)
FB0F4:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiPvPKcP9_PED_TYPES7_iiP5RwV3difiiiEEC1I8HeadmoveEEMT_FiS3_S5_S7_S7_iiS9_ifiiiEPSE_EUlS3_S5_S7_S7_iiS9_ifiiiE_NS_9allocatorISI_EESA_EE - 0xFB0FE); `vtable for'std::__function::__func<function_helper<int ()(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)>::function_helper<Headmove>(int (Headmove::*)(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int),Headmove*)::{lambda(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)#1},std::allocator<function_helper<int ()(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)>::function_helper<Headmove>(int (Headmove::*)(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int),Headmove*)::{lambda(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)#1}>,int ()(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)> ...
FB0F6:  VLDR            D16, [R4,#4]
FB0FA:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<int ()(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)>::function_helper<Headmove>(int (Headmove::*)(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int),Headmove*)::{lambda(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)#1},std::allocator<function_helper<int ()(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)>::function_helper<Headmove>(int (Headmove::*)(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int),Headmove*)::{lambda(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)#1}>,int ()(void *,char const*,_PED_TYPE *,_PED_TYPE *,int,int,RwV3d *,int,float,int,int,int)>
FB0FC:  LDR             R2, [R4,#0xC]
FB0FE:  ADDS            R1, #8
FB100:  STR             R1, [R0]
FB102:  STR             R2, [R0,#0xC]
FB104:  VSTR            D16, [R0,#4]
FB108:  POP             {R4,R6,R7,PC}
