; =========================================================
; Game Engine Function: sub_135C1C
; Address            : 0x135C1C - 0x135C2A
; =========================================================

135C1C:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN13CommandLayoutC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x135C24); `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_2,std::allocator<CommandLayout::CommandLayout(void)::$_2>,void ()(void)> ...
135C1E:  LDR             R0, [R0,#4]
135C20:  ADD             R2, PC; `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_2,std::allocator<CommandLayout::CommandLayout(void)::$_2>,void ()(void)>
135C22:  ADDS            R2, #8
135C24:  STRD.W          R2, R0, [R1]
135C28:  BX              LR
