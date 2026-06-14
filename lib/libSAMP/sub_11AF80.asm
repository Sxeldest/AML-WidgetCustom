; =========================================================
; Game Engine Function: sub_11AF80
; Address            : 0x11AF80 - 0x11AF8E
; =========================================================

11AF80:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_3NS_9allocatorIS4_EEFiPcEEE - 0x11AF88); `vtable for'std::__function::__func<modloader::models::models(void)::$_3,std::allocator<modloader::models::models(void)::$_3>,int ()(char *)> ...
11AF82:  LDR             R0, [R0,#4]
11AF84:  ADD             R2, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_3,std::allocator<modloader::models::models(void)::$_3>,int ()(char *)>
11AF86:  ADDS            R2, #8
11AF88:  STRD.W          R2, R0, [R1]
11AF8C:  BX              LR
