; =========================================================
; Game Engine Function: sub_11AB38
; Address            : 0x11AB38 - 0x11AB46
; =========================================================

11AB38:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_1NS_9allocatorIS4_EEFvP14CStreamingInfojjEEE - 0x11AB40); `vtable for'std::__function::__func<modloader::models::models(void)::$_1,std::allocator<modloader::models::models(void)::$_1>,void ()(CStreamingInfo *,uint,uint)> ...
11AB3A:  LDR             R0, [R0,#4]
11AB3C:  ADD             R2, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_1,std::allocator<modloader::models::models(void)::$_1>,void ()(CStreamingInfo *,uint,uint)>
11AB3E:  ADDS            R2, #8
11AB40:  STRD.W          R2, R0, [R1]
11AB44:  BX              LR
