; =========================================================
; Game Engine Function: sub_11B274
; Address            : 0x11B274 - 0x11B282
; =========================================================

11B274:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_6NS_9allocatorIS4_EEFiP16CStreamedScriptsPcEEE - 0x11B27C); `vtable for'std::__function::__func<modloader::models::models(void)::$_6,std::allocator<modloader::models::models(void)::$_6>,int ()(CStreamedScripts *,char *)> ...
11B276:  LDR             R0, [R0,#4]
11B278:  ADD             R2, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_6,std::allocator<modloader::models::models(void)::$_6>,int ()(CStreamedScripts *,char *)>
11B27A:  ADDS            R2, #8
11B27C:  STRD.W          R2, R0, [R1]
11B280:  BX              LR
