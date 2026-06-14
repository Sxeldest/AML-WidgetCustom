; =========================================================
; Game Engine Function: sub_11AB18
; Address            : 0x11AB18 - 0x11AB32
; =========================================================

11AB18:  PUSH            {R4,R6,R7,LR}
11AB1A:  ADD             R7, SP, #8
11AB1C:  MOV             R4, R0
11AB1E:  MOVS            R0, #8; unsigned int
11AB20:  BLX             j__Znwj; operator new(uint)
11AB24:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_1NS_9allocatorIS4_EEFvP14CStreamingInfojjEEE - 0x11AB2C); `vtable for'std::__function::__func<modloader::models::models(void)::$_1,std::allocator<modloader::models::models(void)::$_1>,void ()(CStreamingInfo *,uint,uint)> ...
11AB26:  LDR             R2, [R4,#4]
11AB28:  ADD             R1, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_1,std::allocator<modloader::models::models(void)::$_1>,void ()(CStreamingInfo *,uint,uint)>
11AB2A:  ADDS            R1, #8
11AB2C:  STRD.W          R1, R2, [R0]
11AB30:  POP             {R4,R6,R7,PC}
