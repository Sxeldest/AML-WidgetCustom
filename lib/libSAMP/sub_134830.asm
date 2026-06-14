; =========================================================
; Game Engine Function: sub_134830
; Address            : 0x134830 - 0x13483E
; =========================================================

134830:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_6NS_9allocatorIS4_EEFvvEEE - 0x134838); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_6,std::allocator<menu::content::init_callbacks(void)::$_6>,void ()(void)> ...
134832:  LDR             R0, [R0,#4]
134834:  ADD             R2, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_6,std::allocator<menu::content::init_callbacks(void)::$_6>,void ()(void)>
134836:  ADDS            R2, #8
134838:  STRD.W          R2, R0, [R1]
13483C:  BX              LR
