; =========================================================
; Game Engine Function: sub_134514
; Address            : 0x134514 - 0x134522
; =========================================================

134514:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4menuC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x13451C); `vtable for'std::__function::__func<menu::menu(void)::$_1,std::allocator<menu::menu(void)::$_1>,void ()(void)> ...
134516:  LDR             R0, [R0,#4]
134518:  ADD             R2, PC; `vtable for'std::__function::__func<menu::menu(void)::$_1,std::allocator<menu::menu(void)::$_1>,void ()(void)>
13451A:  ADDS            R2, #8
13451C:  STRD.W          R2, R0, [R1]
134520:  BX              LR
