; =========================================================
; Game Engine Function: sub_135EA8
; Address            : 0x135EA8 - 0x135EB6
; =========================================================

135EA8:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN14SelectorLayoutC1EvE3$_5NS_9allocatorIS3_EEFvbEEE - 0x135EB0); `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_5,std::allocator<SelectorLayout::SelectorLayout(void)::$_5>,void ()(bool)> ...
135EAA:  LDR             R0, [R0,#4]
135EAC:  ADD             R2, PC; `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_5,std::allocator<SelectorLayout::SelectorLayout(void)::$_5>,void ()(bool)>
135EAE:  ADDS            R2, #8
135EB0:  STRD.W          R2, R0, [R1]
135EB4:  BX              LR
