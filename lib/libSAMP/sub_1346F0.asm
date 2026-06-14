; =========================================================
; Game Engine Function: sub_1346F0
; Address            : 0x1346F0 - 0x1346FE
; =========================================================

1346F0:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_4NS_9allocatorIS4_EEFvvEEE - 0x1346F8); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_4,std::allocator<menu::content::init_callbacks(void)::$_4>,void ()(void)> ...
1346F2:  LDR             R0, [R0,#4]
1346F4:  ADD             R2, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_4,std::allocator<menu::content::init_callbacks(void)::$_4>,void ()(void)>
1346F6:  ADDS            R2, #8
1346F8:  STRD.W          R2, R0, [R1]
1346FC:  BX              LR
