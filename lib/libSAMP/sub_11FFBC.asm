; =========================================================
; Game Engine Function: sub_11FFBC
; Address            : 0x11FFBC - 0x11FFD2
; =========================================================

11FFBC:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP13FxEmitterBP_cP8RwCamerajfhEEC1I16FixFxEmitterBP_cEEMT_FvS4_S6_jfhEPSB_EUlS4_S6_jfhE_NS_9allocatorISF_EES7_EE - 0x11FFC2); `vtable for'std::__function::__func<function_helper<void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>::function_helper<FixFxEmitterBP_c>(void (FixFxEmitterBP_c::*)(FxEmitterBP_c *,RwCamera *,uint,float,uchar),FixFxEmitterBP_c*)::{lambda(FxEmitterBP_c *,RwCamera *,uint,float,uchar)#1},std::allocator<function_helper<void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>::function_helper<FixFxEmitterBP_c>(void (FixFxEmitterBP_c::*)(FxEmitterBP_c *,RwCamera *,uint,float,uchar),FixFxEmitterBP_c*)::{lambda(FxEmitterBP_c *,RwCamera *,uint,float,uchar)#1}>,void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)> ...
11FFBE:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>::function_helper<FixFxEmitterBP_c>(void (FixFxEmitterBP_c::*)(FxEmitterBP_c *,RwCamera *,uint,float,uchar),FixFxEmitterBP_c*)::{lambda(FxEmitterBP_c *,RwCamera *,uint,float,uchar)#1},std::allocator<function_helper<void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>::function_helper<FixFxEmitterBP_c>(void (FixFxEmitterBP_c::*)(FxEmitterBP_c *,RwCamera *,uint,float,uchar),FixFxEmitterBP_c*)::{lambda(FxEmitterBP_c *,RwCamera *,uint,float,uchar)#1}>,void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>
11FFC0:  ADDS            R2, #8
11FFC2:  STR             R2, [R1]
11FFC4:  VLDR            D16, [R0,#4]
11FFC8:  LDR             R0, [R0,#0xC]
11FFCA:  STR             R0, [R1,#0xC]
11FFCC:  VSTR            D16, [R1,#4]
11FFD0:  BX              LR
