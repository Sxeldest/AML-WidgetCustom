; =========================================================
; Game Engine Function: sub_1122FC
; Address            : 0x1122FC - 0x112316
; =========================================================

1122FC:  PUSH            {R4,R6,R7,LR}
1122FE:  ADD             R7, SP, #8
112300:  MOV             R4, R0
112302:  MOVS            R0, #8; unsigned int
112304:  BLX             j__Znwj; operator new(uint)
112308:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12custom_radarC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x112310); `vtable for'std::__function::__func<custom_radar::custom_radar(void)::$_0,std::allocator<custom_radar::custom_radar(void)::$_0>,void ()(void)> ...
11230A:  LDR             R2, [R4,#4]
11230C:  ADD             R1, PC; `vtable for'std::__function::__func<custom_radar::custom_radar(void)::$_0,std::allocator<custom_radar::custom_radar(void)::$_0>,void ()(void)>
11230E:  ADDS            R1, #8
112310:  STRD.W          R1, R2, [R0]
112314:  POP             {R4,R6,R7,PC}
