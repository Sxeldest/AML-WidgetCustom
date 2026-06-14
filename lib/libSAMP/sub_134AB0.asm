; =========================================================
; Game Engine Function: sub_134AB0
; Address            : 0x134AB0 - 0x134ABE
; =========================================================

134AB0:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE4$_10NS_9allocatorIS4_EEFvvEEE - 0x134AB8); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_10,std::allocator<menu::content::init_callbacks(void)::$_10>,void ()(void)> ...
134AB2:  LDR             R0, [R0,#4]
134AB4:  ADD             R2, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_10,std::allocator<menu::content::init_callbacks(void)::$_10>,void ()(void)>
134AB6:  ADDS            R2, #8
134AB8:  STRD.W          R2, R0, [R1]
134ABC:  BX              LR
