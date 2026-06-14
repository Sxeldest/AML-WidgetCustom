; =========================================================
; Game Engine Function: sub_78B00
; Address            : 0x78B00 - 0x78B0E
; =========================================================

78B00:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN13commandLayoutC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x78B08); `vtable for'std::__function::__func<commandLayout::commandLayout(void)::$_1,std::allocator<commandLayout::commandLayout(void)::$_1>,void ()(void)> ...
78B02:  LDR             R0, [R0,#4]
78B04:  ADD             R2, PC; `vtable for'std::__function::__func<commandLayout::commandLayout(void)::$_1,std::allocator<commandLayout::commandLayout(void)::$_1>,void ()(void)>
78B06:  ADDS            R2, #8
78B08:  STRD.W          R2, R0, [R1]
78B0C:  BX              LR
