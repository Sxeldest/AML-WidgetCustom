; =========================================================
; Game Engine Function: sub_73BD0
; Address            : 0x73BD0 - 0x73BDE
; =========================================================

73BD0:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_5NS_9allocatorIS3_EEFvvEEE - 0x73BD8); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_5,std::allocator<ButtonPanel::ButtonPanel(void)::$_5>,void ()(void)> ...
73BD2:  LDR             R0, [R0,#4]
73BD4:  ADD             R2, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_5,std::allocator<ButtonPanel::ButtonPanel(void)::$_5>,void ()(void)>
73BD6:  ADDS            R2, #8
73BD8:  STRD.W          R2, R0, [R1]
73BDC:  BX              LR
