; =========================================================
; Game Engine Function: sub_790C4
; Address            : 0x790C4 - 0x790D2
; =========================================================

790C4:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN12coordsLayoutC1EvE3$_8NS_9allocatorIS3_EEFvvEEE - 0x790CC); `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_8,std::allocator<coordsLayout::coordsLayout(void)::$_8>,void ()(void)> ...
790C6:  LDR             R0, [R0,#4]
790C8:  ADD             R2, PC; `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_8,std::allocator<coordsLayout::coordsLayout(void)::$_8>,void ()(void)>
790CA:  ADDS            R2, #8
790CC:  STRD.W          R2, R0, [R1]
790D0:  BX              LR
