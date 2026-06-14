; =========================================================
; Game Engine Function: sub_11B054
; Address            : 0x11B054 - 0x11B062
; =========================================================

11B054:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_4NS_9allocatorIS4_EEFiPcEEE - 0x11B05C); `vtable for'std::__function::__func<modloader::models::models(void)::$_4,std::allocator<modloader::models::models(void)::$_4>,int ()(char *)> ...
11B056:  LDR             R0, [R0,#4]
11B058:  ADD             R2, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_4,std::allocator<modloader::models::models(void)::$_4>,int ()(char *)>
11B05A:  ADDS            R2, #8
11B05C:  STRD.W          R2, R0, [R1]
11B060:  BX              LR
