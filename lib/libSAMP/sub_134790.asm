; =========================================================
; Game Engine Function: sub_134790
; Address            : 0x134790 - 0x13479E
; =========================================================

134790:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_5NS_9allocatorIS4_EEFvvEEE - 0x134798); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_5,std::allocator<menu::content::init_callbacks(void)::$_5>,void ()(void)> ...
134792:  LDR             R0, [R0,#4]
134794:  ADD             R2, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_5,std::allocator<menu::content::init_callbacks(void)::$_5>,void ()(void)>
134796:  ADDS            R2, #8
134798:  STRD.W          R2, R0, [R1]
13479C:  BX              LR
