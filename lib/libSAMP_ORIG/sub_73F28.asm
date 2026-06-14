; =========================================================
; Game Engine Function: sub_73F28
; Address            : 0x73F28 - 0x73F36
; =========================================================

73F28:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE4$_11NS_9allocatorIS3_EEFvvEEE - 0x73F30); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_11,std::allocator<ButtonPanel::ButtonPanel(void)::$_11>,void ()(void)> ...
73F2A:  LDR             R0, [R0,#4]
73F2C:  ADD             R2, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_11,std::allocator<ButtonPanel::ButtonPanel(void)::$_11>,void ()(void)>
73F2E:  ADDS            R2, #8
73F30:  STRD.W          R2, R0, [R1]
73F34:  BX              LR
