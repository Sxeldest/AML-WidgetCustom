; =========================================================
; Game Engine Function: sub_73E0C
; Address            : 0x73E0C - 0x73E1A
; =========================================================

73E0C:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_9NS_9allocatorIS3_EEFvvEEE - 0x73E14); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_9,std::allocator<ButtonPanel::ButtonPanel(void)::$_9>,void ()(void)> ...
73E0E:  LDR             R0, [R0,#4]
73E10:  ADD             R2, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_9,std::allocator<ButtonPanel::ButtonPanel(void)::$_9>,void ()(void)>
73E12:  ADDS            R2, #8
73E14:  STRD.W          R2, R0, [R1]
73E18:  BX              LR
