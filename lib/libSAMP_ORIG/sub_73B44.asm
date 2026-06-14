; =========================================================
; Game Engine Function: sub_73B44
; Address            : 0x73B44 - 0x73B52
; =========================================================

73B44:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_4NS_9allocatorIS3_EEFvvEEE - 0x73B4C); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_4,std::allocator<ButtonPanel::ButtonPanel(void)::$_4>,void ()(void)> ...
73B46:  LDR             R0, [R0,#4]
73B48:  ADD             R2, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_4,std::allocator<ButtonPanel::ButtonPanel(void)::$_4>,void ()(void)>
73B4A:  ADDS            R2, #8
73B4C:  STRD.W          R2, R0, [R1]
73B50:  BX              LR
