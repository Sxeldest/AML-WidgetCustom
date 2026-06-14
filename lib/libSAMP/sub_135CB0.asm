; =========================================================
; Game Engine Function: sub_135CB0
; Address            : 0x135CB0 - 0x135CBE
; =========================================================

135CB0:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN14SelectorLayoutC1EvE3$_3NS_9allocatorIS3_EEFvbEEE - 0x135CB8); `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_3,std::allocator<SelectorLayout::SelectorLayout(void)::$_3>,void ()(bool)> ...
135CB2:  LDR             R0, [R0,#4]
135CB4:  ADD             R2, PC; `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_3,std::allocator<SelectorLayout::SelectorLayout(void)::$_3>,void ()(bool)>
135CB6:  ADDS            R2, #8
135CB8:  STRD.W          R2, R0, [R1]
135CBC:  BX              LR
