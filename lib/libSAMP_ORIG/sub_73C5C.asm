; =========================================================
; Game Engine Function: sub_73C5C
; Address            : 0x73C5C - 0x73C6A
; =========================================================

73C5C:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_6NS_9allocatorIS3_EEFvvEEE - 0x73C64); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_6,std::allocator<ButtonPanel::ButtonPanel(void)::$_6>,void ()(void)> ...
73C5E:  LDR             R0, [R0,#4]
73C60:  ADD             R2, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_6,std::allocator<ButtonPanel::ButtonPanel(void)::$_6>,void ()(void)>
73C62:  ADDS            R2, #8
73C64:  STRD.W          R2, R0, [R1]
73C68:  BX              LR
