; =========================================================
; Game Engine Function: sub_73CF4
; Address            : 0x73CF4 - 0x73D02
; =========================================================

73CF4:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_7NS_9allocatorIS3_EEFvvEEE - 0x73CFC); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_7,std::allocator<ButtonPanel::ButtonPanel(void)::$_7>,void ()(void)> ...
73CF6:  LDR             R0, [R0,#4]
73CF8:  ADD             R2, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_7,std::allocator<ButtonPanel::ButtonPanel(void)::$_7>,void ()(void)>
73CFA:  ADDS            R2, #8
73CFC:  STRD.W          R2, R0, [R1]
73D00:  BX              LR
