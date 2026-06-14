; =========================================================
; Game Engine Function: sub_78C60
; Address            : 0x78C60 - 0x78C6E
; =========================================================

78C60:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN14selectorLayoutC1EvE3$_3NS_9allocatorIS3_EEFvvEEE - 0x78C68); `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_3,std::allocator<selectorLayout::selectorLayout(void)::$_3>,void ()(void)> ...
78C62:  LDR             R0, [R0,#4]
78C64:  ADD             R2, PC; `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_3,std::allocator<selectorLayout::selectorLayout(void)::$_3>,void ()(void)>
78C66:  ADDS            R2, #8
78C68:  STRD.W          R2, R0, [R1]
78C6C:  BX              LR
