; =========================================================
; Game Engine Function: sub_78B7C
; Address            : 0x78B7C - 0x78B8A
; =========================================================

78B7C:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN14selectorLayoutC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x78B84); `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_2,std::allocator<selectorLayout::selectorLayout(void)::$_2>,void ()(void)> ...
78B7E:  LDR             R0, [R0,#4]
78B80:  ADD             R2, PC; `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_2,std::allocator<selectorLayout::selectorLayout(void)::$_2>,void ()(void)>
78B82:  ADDS            R2, #8
78B84:  STRD.W          R2, R0, [R1]
78B88:  BX              LR
