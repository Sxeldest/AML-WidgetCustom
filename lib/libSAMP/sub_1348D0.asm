; =========================================================
; Game Engine Function: sub_1348D0
; Address            : 0x1348D0 - 0x1348DE
; =========================================================

1348D0:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_7NS_9allocatorIS4_EEFvvEEE - 0x1348D8); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_7,std::allocator<menu::content::init_callbacks(void)::$_7>,void ()(void)> ...
1348D2:  LDR             R0, [R0,#4]
1348D4:  ADD             R2, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_7,std::allocator<menu::content::init_callbacks(void)::$_7>,void ()(void)>
1348D6:  ADDS            R2, #8
1348D8:  STRD.W          R2, R0, [R1]
1348DC:  BX              LR
