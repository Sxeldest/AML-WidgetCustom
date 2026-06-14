; =========================================================
; Game Engine Function: sub_135B78
; Address            : 0x135B78 - 0x135B86
; =========================================================

135B78:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN13CommandLayoutC1EvE3$_1NS_9allocatorIS3_EEFvbEEE - 0x135B80); `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_1,std::allocator<CommandLayout::CommandLayout(void)::$_1>,void ()(bool)> ...
135B7A:  LDR             R0, [R0,#4]
135B7C:  ADD             R2, PC; `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_1,std::allocator<CommandLayout::CommandLayout(void)::$_1>,void ()(bool)>
135B7E:  ADDS            R2, #8
135B80:  STRD.W          R2, R0, [R1]
135B84:  BX              LR
