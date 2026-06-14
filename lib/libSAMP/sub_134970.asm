; =========================================================
; Game Engine Function: sub_134970
; Address            : 0x134970 - 0x13497E
; =========================================================

134970:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_8NS_9allocatorIS4_EEFvvEEE - 0x134978); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_8,std::allocator<menu::content::init_callbacks(void)::$_8>,void ()(void)> ...
134972:  LDR             R0, [R0,#4]
134974:  ADD             R2, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_8,std::allocator<menu::content::init_callbacks(void)::$_8>,void ()(void)>
134976:  ADDS            R2, #8
134978:  STRD.W          R2, R0, [R1]
13497C:  BX              LR
