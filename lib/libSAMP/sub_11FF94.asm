; =========================================================
; Game Engine Function: sub_11FF94
; Address            : 0x11FF94 - 0x11FFB6
; =========================================================

11FF94:  PUSH            {R4,R6,R7,LR}
11FF96:  ADD             R7, SP, #8
11FF98:  MOV             R4, R0
11FF9A:  MOVS            R0, #0x10; unsigned int
11FF9C:  BLX             j__Znwj; operator new(uint)
11FFA0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP13FxEmitterBP_cP8RwCamerajfhEEC1I16FixFxEmitterBP_cEEMT_FvS4_S6_jfhEPSB_EUlS4_S6_jfhE_NS_9allocatorISF_EES7_EE - 0x11FFAA); `vtable for'std::__function::__func<function_helper<void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>::function_helper<FixFxEmitterBP_c>(void (FixFxEmitterBP_c::*)(FxEmitterBP_c *,RwCamera *,uint,float,uchar),FixFxEmitterBP_c*)::{lambda(FxEmitterBP_c *,RwCamera *,uint,float,uchar)#1},std::allocator<function_helper<void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>::function_helper<FixFxEmitterBP_c>(void (FixFxEmitterBP_c::*)(FxEmitterBP_c *,RwCamera *,uint,float,uchar),FixFxEmitterBP_c*)::{lambda(FxEmitterBP_c *,RwCamera *,uint,float,uchar)#1}>,void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)> ...
11FFA2:  VLDR            D16, [R4,#4]
11FFA6:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>::function_helper<FixFxEmitterBP_c>(void (FixFxEmitterBP_c::*)(FxEmitterBP_c *,RwCamera *,uint,float,uchar),FixFxEmitterBP_c*)::{lambda(FxEmitterBP_c *,RwCamera *,uint,float,uchar)#1},std::allocator<function_helper<void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>::function_helper<FixFxEmitterBP_c>(void (FixFxEmitterBP_c::*)(FxEmitterBP_c *,RwCamera *,uint,float,uchar),FixFxEmitterBP_c*)::{lambda(FxEmitterBP_c *,RwCamera *,uint,float,uchar)#1}>,void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>
11FFA8:  LDR             R2, [R4,#0xC]
11FFAA:  ADDS            R1, #8
11FFAC:  STR             R1, [R0]
11FFAE:  STR             R2, [R0,#0xC]
11FFB0:  VSTR            D16, [R0,#4]
11FFB4:  POP             {R4,R6,R7,PC}
