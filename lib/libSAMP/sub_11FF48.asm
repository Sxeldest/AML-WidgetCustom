; =========================================================
; Game Engine Function: sub_11FF48
; Address            : 0x11FF48 - 0x11FF8C
; =========================================================

11FF48:  PUSH            {R4,R5,R7,LR}
11FF4A:  ADD             R7, SP, #8
11FF4C:  SUB             SP, SP, #0x18
11FF4E:  MOV             R4, R0
11FF50:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP13FxEmitterBP_cP8RwCamerajfhEEC1I16FixFxEmitterBP_cEEMT_FvS4_S6_jfhEPSB_EUlS4_S6_jfhE_NS_9allocatorISF_EES7_EE - 0x11FF5C); `vtable for'std::__function::__func<function_helper<void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>::function_helper<FixFxEmitterBP_c>(void (FixFxEmitterBP_c::*)(FxEmitterBP_c *,RwCamera *,uint,float,uchar),FixFxEmitterBP_c*)::{lambda(FxEmitterBP_c *,RwCamera *,uint,float,uchar)#1},std::allocator<function_helper<void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>::function_helper<FixFxEmitterBP_c>(void (FixFxEmitterBP_c::*)(FxEmitterBP_c *,RwCamera *,uint,float,uchar),FixFxEmitterBP_c*)::{lambda(FxEmitterBP_c *,RwCamera *,uint,float,uchar)#1}>,void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)> ...
11FF52:  LDRD.W          R2, R3, [R1]
11FF56:  MOV             R5, SP
11FF58:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>::function_helper<FixFxEmitterBP_c>(void (FixFxEmitterBP_c::*)(FxEmitterBP_c *,RwCamera *,uint,float,uchar),FixFxEmitterBP_c*)::{lambda(FxEmitterBP_c *,RwCamera *,uint,float,uchar)#1},std::allocator<function_helper<void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>::function_helper<FixFxEmitterBP_c>(void (FixFxEmitterBP_c::*)(FxEmitterBP_c *,RwCamera *,uint,float,uchar),FixFxEmitterBP_c*)::{lambda(FxEmitterBP_c *,RwCamera *,uint,float,uchar)#1}>,void ()(FxEmitterBP_c *,RwCamera *,uint,float,uchar)>
11FF5A:  LDR             R1, [R1,#8]
11FF5C:  ADDS            R0, #8
11FF5E:  STRD.W          R1, R5, [SP,#0x20+var_14]
11FF62:  STR             R0, [SP,#0x20+var_20]
11FF64:  MOV             R0, R5
11FF66:  MOV             R1, R4
11FF68:  STRD.W          R2, R3, [SP,#0x20+var_1C]
11FF6C:  BL              sub_120046
11FF70:  LDR             R0, [SP,#0x20+var_10]
11FF72:  CMP             R5, R0
11FF74:  BEQ             loc_11FF7C
11FF76:  CBZ             R0, loc_11FF86
11FF78:  MOVS            R1, #5
11FF7A:  B               loc_11FF7E
11FF7C:  MOVS            R1, #4
11FF7E:  LDR             R2, [R0]
11FF80:  LDR.W           R1, [R2,R1,LSL#2]
11FF84:  BLX             R1
11FF86:  MOV             R0, R4
11FF88:  ADD             SP, SP, #0x18
11FF8A:  POP             {R4,R5,R7,PC}
