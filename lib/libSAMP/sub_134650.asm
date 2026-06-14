; =========================================================
; Game Engine Function: sub_134650
; Address            : 0x134650 - 0x13465E
; =========================================================

134650:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_3NS_9allocatorIS4_EEFvvEEE - 0x134658); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_3,std::allocator<menu::content::init_callbacks(void)::$_3>,void ()(void)> ...
134652:  LDR             R0, [R0,#4]
134654:  ADD             R2, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_3,std::allocator<menu::content::init_callbacks(void)::$_3>,void ()(void)>
134656:  ADDS            R2, #8
134658:  STRD.W          R2, R0, [R1]
13465C:  BX              LR
