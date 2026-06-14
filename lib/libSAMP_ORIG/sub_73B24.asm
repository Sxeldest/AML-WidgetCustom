; =========================================================
; Game Engine Function: sub_73B24
; Address            : 0x73B24 - 0x73B3E
; =========================================================

73B24:  PUSH            {R4,R6,R7,LR}
73B26:  ADD             R7, SP, #8
73B28:  MOV             R4, R0
73B2A:  MOVS            R0, #8; unsigned int
73B2C:  BLX             j__Znwj; operator new(uint)
73B30:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_4NS_9allocatorIS3_EEFvvEEE - 0x73B38); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_4,std::allocator<ButtonPanel::ButtonPanel(void)::$_4>,void ()(void)> ...
73B32:  LDR             R2, [R4,#4]
73B34:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_4,std::allocator<ButtonPanel::ButtonPanel(void)::$_4>,void ()(void)>
73B36:  ADDS            R1, #8
73B38:  STRD.W          R1, R2, [R0]
73B3C:  POP             {R4,R6,R7,PC}
