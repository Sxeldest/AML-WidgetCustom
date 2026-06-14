; =========================================================
; Game Engine Function: sub_78A84
; Address            : 0x78A84 - 0x78A92
; =========================================================

78A84:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN13commandLayoutC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x78A8C); `vtable for'std::__function::__func<commandLayout::commandLayout(void)::$_0,std::allocator<commandLayout::commandLayout(void)::$_0>,void ()(void)> ...
78A86:  LDR             R0, [R0,#4]
78A88:  ADD             R2, PC; `vtable for'std::__function::__func<commandLayout::commandLayout(void)::$_0,std::allocator<commandLayout::commandLayout(void)::$_0>,void ()(void)>
78A8A:  ADDS            R2, #8
78A8C:  STRD.W          R2, R0, [R1]
78A90:  BX              LR
