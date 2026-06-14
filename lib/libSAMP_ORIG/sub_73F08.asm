; =========================================================
; Game Engine Function: sub_73F08
; Address            : 0x73F08 - 0x73F22
; =========================================================

73F08:  PUSH            {R4,R6,R7,LR}
73F0A:  ADD             R7, SP, #8
73F0C:  MOV             R4, R0
73F0E:  MOVS            R0, #8; unsigned int
73F10:  BLX             j__Znwj; operator new(uint)
73F14:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE4$_11NS_9allocatorIS3_EEFvvEEE - 0x73F1C); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_11,std::allocator<ButtonPanel::ButtonPanel(void)::$_11>,void ()(void)> ...
73F16:  LDR             R2, [R4,#4]
73F18:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_11,std::allocator<ButtonPanel::ButtonPanel(void)::$_11>,void ()(void)>
73F1A:  ADDS            R1, #8
73F1C:  STRD.W          R1, R2, [R0]
73F20:  POP             {R4,R6,R7,PC}
