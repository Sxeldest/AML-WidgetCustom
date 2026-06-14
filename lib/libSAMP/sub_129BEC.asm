; =========================================================
; Game Engine Function: sub_129BEC
; Address            : 0x129BEC - 0x129C32
; =========================================================

129BEC:  PUSH            {R4,R5,R7,LR}
129BEE:  ADD             R7, SP, #8
129BF0:  SUB             SP, SP, #0x18
129BF2:  MOV             R4, R0
129BF4:  LDR             R0, =(off_23494C - 0x129BFE)
129BF6:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN19extend_render_poolsD1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x129C02); `vtable for'std::__function::__func<extend_render_pools::~extend_render_pools()::$_1,std::allocator<extend_render_pools::~extend_render_pools()::$_1>,void ()(void)> ...
129BF8:  MOV             R5, SP
129BFA:  ADD             R0, PC; off_23494C
129BFC:  STR             R5, [SP,#0x20+var_10]
129BFE:  ADD             R1, PC; `vtable for'std::__function::__func<extend_render_pools::~extend_render_pools()::$_1,std::allocator<extend_render_pools::~extend_render_pools()::$_1>,void ()(void)>
129C00:  LDR             R0, [R0]; dword_23DF24
129C02:  ADDS            R1, #8
129C04:  STR             R1, [SP,#0x20+var_20]
129C06:  LDR             R0, [R0]
129C08:  ADD.W           R0, R0, #0x400000
129C0C:  ADD.W           R0, R0, #0x1D4000
129C10:  MOV             R1, R5
129C12:  BL              sub_1642EC
129C16:  LDR             R0, [SP,#0x20+var_10]
129C18:  CMP             R5, R0
129C1A:  BEQ             loc_129C22
129C1C:  CBZ             R0, loc_129C2C
129C1E:  MOVS            R1, #5
129C20:  B               loc_129C24
129C22:  MOVS            R1, #4
129C24:  LDR             R2, [R0]
129C26:  LDR.W           R1, [R2,R1,LSL#2]
129C2A:  BLX             R1
129C2C:  MOV             R0, R4
129C2E:  ADD             SP, SP, #0x18
129C30:  POP             {R4,R5,R7,PC}
