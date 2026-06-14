; =========================================================
; Game Engine Function: sub_134A10
; Address            : 0x134A10 - 0x134A1E
; =========================================================

134A10:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_9NS_9allocatorIS4_EEFvvEEE - 0x134A18); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_9,std::allocator<menu::content::init_callbacks(void)::$_9>,void ()(void)> ...
134A12:  LDR             R0, [R0,#4]
134A14:  ADD             R2, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_9,std::allocator<menu::content::init_callbacks(void)::$_9>,void ()(void)>
134A16:  ADDS            R2, #8
134A18:  STRD.W          R2, R0, [R1]
134A1C:  BX              LR
