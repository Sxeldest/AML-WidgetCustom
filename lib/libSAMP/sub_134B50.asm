; =========================================================
; Game Engine Function: sub_134B50
; Address            : 0x134B50 - 0x134B5E
; =========================================================

134B50:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE4$_11NS_9allocatorIS4_EEFvvEEE - 0x134B58); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_11,std::allocator<menu::content::init_callbacks(void)::$_11>,void ()(void)> ...
134B52:  LDR             R0, [R0,#4]
134B54:  ADD             R2, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_11,std::allocator<menu::content::init_callbacks(void)::$_11>,void ()(void)>
134B56:  ADDS            R2, #8
134B58:  STRD.W          R2, R0, [R1]
134B5C:  BX              LR
