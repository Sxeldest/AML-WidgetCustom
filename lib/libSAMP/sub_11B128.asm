; =========================================================
; Game Engine Function: sub_11B128
; Address            : 0x11B128 - 0x11B136
; =========================================================

11B128:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_5NS_9allocatorIS4_EEFiPcEEE - 0x11B130); `vtable for'std::__function::__func<modloader::models::models(void)::$_5,std::allocator<modloader::models::models(void)::$_5>,int ()(char *)> ...
11B12A:  LDR             R0, [R0,#4]
11B12C:  ADD             R2, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_5,std::allocator<modloader::models::models(void)::$_5>,int ()(char *)>
11B12E:  ADDS            R2, #8
11B130:  STRD.W          R2, R0, [R1]
11B134:  BX              LR
