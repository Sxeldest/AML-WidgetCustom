; =========================================================
; Game Engine Function: sub_73A30
; Address            : 0x73A30 - 0x73A4A
; =========================================================

73A30:  PUSH            {R4,R6,R7,LR}
73A32:  ADD             R7, SP, #8
73A34:  MOV             R4, R0
73A36:  MOVS            R0, #8; unsigned int
73A38:  BLX             j__Znwj; operator new(uint)
73A3C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_3NS_9allocatorIS3_EEFvvEEE - 0x73A44); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_3,std::allocator<ButtonPanel::ButtonPanel(void)::$_3>,void ()(void)> ...
73A3E:  LDR             R2, [R4,#4]
73A40:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_3,std::allocator<ButtonPanel::ButtonPanel(void)::$_3>,void ()(void)>
73A42:  ADDS            R1, #8
73A44:  STRD.W          R1, R2, [R0]
73A48:  POP             {R4,R6,R7,PC}
