; =========================================================
; Game Engine Function: sub_73D80
; Address            : 0x73D80 - 0x73D8E
; =========================================================

73D80:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_8NS_9allocatorIS3_EEFvvEEE - 0x73D88); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_8,std::allocator<ButtonPanel::ButtonPanel(void)::$_8>,void ()(void)> ...
73D82:  LDR             R0, [R0,#4]
73D84:  ADD             R2, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_8,std::allocator<ButtonPanel::ButtonPanel(void)::$_8>,void ()(void)>
73D86:  ADDS            R2, #8
73D88:  STRD.W          R2, R0, [R1]
73D8C:  BX              LR
