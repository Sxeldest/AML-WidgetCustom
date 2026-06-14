; =========================================================
; Game Engine Function: sub_78E20
; Address            : 0x78E20 - 0x78E2E
; =========================================================

78E20:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN12coordsLayoutC1EvE3$_5NS_9allocatorIS3_EEFvvEEE - 0x78E28); `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_5,std::allocator<coordsLayout::coordsLayout(void)::$_5>,void ()(void)> ...
78E22:  LDR             R0, [R0,#4]
78E24:  ADD             R2, PC; `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_5,std::allocator<coordsLayout::coordsLayout(void)::$_5>,void ()(void)>
78E26:  ADDS            R2, #8
78E28:  STRD.W          R2, R0, [R1]
78E2C:  BX              LR
