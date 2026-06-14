; =========================================================
; Game Engine Function: sub_1345B0
; Address            : 0x1345B0 - 0x1345BE
; =========================================================

1345B0:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4menu7content14init_callbacksEvE3$_2NS_9allocatorIS4_EEFvvEEE - 0x1345B8); `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_2,std::allocator<menu::content::init_callbacks(void)::$_2>,void ()(void)> ...
1345B2:  LDR             R0, [R0,#4]
1345B4:  ADD             R2, PC; `vtable for'std::__function::__func<menu::content::init_callbacks(void)::$_2,std::allocator<menu::content::init_callbacks(void)::$_2>,void ()(void)>
1345B6:  ADDS            R2, #8
1345B8:  STRD.W          R2, R0, [R1]
1345BC:  BX              LR
