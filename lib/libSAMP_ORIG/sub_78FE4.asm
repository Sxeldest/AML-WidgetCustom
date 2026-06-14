; =========================================================
; Game Engine Function: sub_78FE4
; Address            : 0x78FE4 - 0x78FF2
; =========================================================

78FE4:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN12coordsLayoutC1EvE3$_7NS_9allocatorIS3_EEFvvEEE - 0x78FEC); `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_7,std::allocator<coordsLayout::coordsLayout(void)::$_7>,void ()(void)> ...
78FE6:  LDR             R0, [R0,#4]
78FE8:  ADD             R2, PC; `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_7,std::allocator<coordsLayout::coordsLayout(void)::$_7>,void ()(void)>
78FEA:  ADDS            R2, #8
78FEC:  STRD.W          R2, R0, [R1]
78FF0:  BX              LR
