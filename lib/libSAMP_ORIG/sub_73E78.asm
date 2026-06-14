; =========================================================
; Game Engine Function: sub_73E78
; Address            : 0x73E78 - 0x73E92
; =========================================================

73E78:  PUSH            {R4,R6,R7,LR}
73E7A:  ADD             R7, SP, #8
73E7C:  MOV             R4, R0
73E7E:  MOVS            R0, #8; unsigned int
73E80:  BLX             j__Znwj; operator new(uint)
73E84:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE4$_10NS_9allocatorIS3_EEFvvEEE - 0x73E8C); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_10,std::allocator<ButtonPanel::ButtonPanel(void)::$_10>,void ()(void)> ...
73E86:  LDR             R2, [R4,#4]
73E88:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_10,std::allocator<ButtonPanel::ButtonPanel(void)::$_10>,void ()(void)>
73E8A:  ADDS            R1, #8
73E8C:  STRD.W          R1, R2, [R0]
73E90:  POP             {R4,R6,R7,PC}
