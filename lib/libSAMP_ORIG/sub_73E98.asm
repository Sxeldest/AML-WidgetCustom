; =========================================================
; Game Engine Function: sub_73E98
; Address            : 0x73E98 - 0x73EA6
; =========================================================

73E98:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE4$_10NS_9allocatorIS3_EEFvvEEE - 0x73EA0); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_10,std::allocator<ButtonPanel::ButtonPanel(void)::$_10>,void ()(void)> ...
73E9A:  LDR             R0, [R0,#4]
73E9C:  ADD             R2, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_10,std::allocator<ButtonPanel::ButtonPanel(void)::$_10>,void ()(void)>
73E9E:  ADDS            R2, #8
73EA0:  STRD.W          R2, R0, [R1]
73EA4:  BX              LR
