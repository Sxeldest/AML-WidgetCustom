; =========================================================
; Game Engine Function: sub_78F04
; Address            : 0x78F04 - 0x78F12
; =========================================================

78F04:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN12coordsLayoutC1EvE3$_6NS_9allocatorIS3_EEFvvEEE - 0x78F0C); `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_6,std::allocator<coordsLayout::coordsLayout(void)::$_6>,void ()(void)> ...
78F06:  LDR             R0, [R0,#4]
78F08:  ADD             R2, PC; `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_6,std::allocator<coordsLayout::coordsLayout(void)::$_6>,void ()(void)>
78F0A:  ADDS            R2, #8
78F0C:  STRD.W          R2, R0, [R1]
78F10:  BX              LR
