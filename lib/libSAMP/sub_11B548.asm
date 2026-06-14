; =========================================================
; Game Engine Function: sub_11B548
; Address            : 0x11B548 - 0x11B556
; =========================================================

11B548:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_8NS_9allocatorIS4_EEFPKciS8_EEE - 0x11B550); `vtable for'std::__function::__func<modloader::models::models(void)::$_8,std::allocator<modloader::models::models(void)::$_8>,char const* ()(int,char const*)> ...
11B54A:  LDR             R0, [R0,#4]
11B54C:  ADD             R2, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_8,std::allocator<modloader::models::models(void)::$_8>,char const* ()(int,char const*)>
11B54E:  ADDS            R2, #8
11B550:  STRD.W          R2, R0, [R1]
11B554:  BX              LR
