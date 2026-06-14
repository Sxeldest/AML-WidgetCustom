; =========================================================
; Game Engine Function: sub_11A9D8
; Address            : 0x11A9D8 - 0x11A9E6
; =========================================================

11A9D8:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_0NS_9allocatorIS4_EEFvPKciEEE - 0x11A9E0); `vtable for'std::__function::__func<modloader::models::models(void)::$_0,std::allocator<modloader::models::models(void)::$_0>,void ()(char const*,int)> ...
11A9DA:  LDR             R0, [R0,#4]
11A9DC:  ADD             R2, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_0,std::allocator<modloader::models::models(void)::$_0>,void ()(char const*,int)>
11A9DE:  ADDS            R2, #8
11A9E0:  STRD.W          R2, R0, [R1]
11A9E4:  BX              LR
