; =========================================================
; Game Engine Function: sub_134474
; Address            : 0x134474 - 0x134482
; =========================================================

134474:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4menuC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x13447C); `vtable for'std::__function::__func<menu::menu(void)::$_0,std::allocator<menu::menu(void)::$_0>,void ()(void)> ...
134476:  LDR             R0, [R0,#4]
134478:  ADD             R2, PC; `vtable for'std::__function::__func<menu::menu(void)::$_0,std::allocator<menu::menu(void)::$_0>,void ()(void)>
13447A:  ADDS            R2, #8
13447C:  STRD.W          R2, R0, [R1]
134480:  BX              LR
