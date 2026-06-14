; =========================================================
; Game Engine Function: sub_73A50
; Address            : 0x73A50 - 0x73A5E
; =========================================================

73A50:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_3NS_9allocatorIS3_EEFvvEEE - 0x73A58); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_3,std::allocator<ButtonPanel::ButtonPanel(void)::$_3>,void ()(void)> ...
73A52:  LDR             R0, [R0,#4]
73A54:  ADD             R2, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_3,std::allocator<ButtonPanel::ButtonPanel(void)::$_3>,void ()(void)>
73A56:  ADDS            R2, #8
73A58:  STRD.W          R2, R0, [R1]
73A5C:  BX              LR
