; =========================================================
; Game Engine Function: sub_135DA8
; Address            : 0x135DA8 - 0x135DB6
; =========================================================

135DA8:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN14SelectorLayoutC1EvE3$_4NS_9allocatorIS3_EEFvbEEE - 0x135DB0); `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_4,std::allocator<SelectorLayout::SelectorLayout(void)::$_4>,void ()(bool)> ...
135DAA:  LDR             R0, [R0,#4]
135DAC:  ADD             R2, PC; `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_4,std::allocator<SelectorLayout::SelectorLayout(void)::$_4>,void ()(bool)>
135DAE:  ADDS            R2, #8
135DB0:  STRD.W          R2, R0, [R1]
135DB4:  BX              LR
