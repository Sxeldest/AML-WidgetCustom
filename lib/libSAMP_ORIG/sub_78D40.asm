; =========================================================
; Game Engine Function: sub_78D40
; Address            : 0x78D40 - 0x78D4E
; =========================================================

78D40:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN14selectorLayoutC1EvE3$_4NS_9allocatorIS3_EEFvvEEE - 0x78D48); `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_4,std::allocator<selectorLayout::selectorLayout(void)::$_4>,void ()(void)> ...
78D42:  LDR             R0, [R0,#4]
78D44:  ADD             R2, PC; `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_4,std::allocator<selectorLayout::selectorLayout(void)::$_4>,void ()(void)>
78D46:  ADDS            R2, #8
78D48:  STRD.W          R2, R0, [R1]
78D4C:  BX              LR
