; =========================================================
; Game Engine Function: sub_73DEC
; Address            : 0x73DEC - 0x73E06
; =========================================================

73DEC:  PUSH            {R4,R6,R7,LR}
73DEE:  ADD             R7, SP, #8
73DF0:  MOV             R4, R0
73DF2:  MOVS            R0, #8; unsigned int
73DF4:  BLX             j__Znwj; operator new(uint)
73DF8:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_9NS_9allocatorIS3_EEFvvEEE - 0x73E00); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_9,std::allocator<ButtonPanel::ButtonPanel(void)::$_9>,void ()(void)> ...
73DFA:  LDR             R2, [R4,#4]
73DFC:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_9,std::allocator<ButtonPanel::ButtonPanel(void)::$_9>,void ()(void)>
73DFE:  ADDS            R1, #8
73E00:  STRD.W          R1, R2, [R0]
73E04:  POP             {R4,R6,R7,PC}
