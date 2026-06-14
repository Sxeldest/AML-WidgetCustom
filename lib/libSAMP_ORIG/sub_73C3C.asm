; =========================================================
; Game Engine Function: sub_73C3C
; Address            : 0x73C3C - 0x73C56
; =========================================================

73C3C:  PUSH            {R4,R6,R7,LR}
73C3E:  ADD             R7, SP, #8
73C40:  MOV             R4, R0
73C42:  MOVS            R0, #8; unsigned int
73C44:  BLX             j__Znwj; operator new(uint)
73C48:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_6NS_9allocatorIS3_EEFvvEEE - 0x73C50); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_6,std::allocator<ButtonPanel::ButtonPanel(void)::$_6>,void ()(void)> ...
73C4A:  LDR             R2, [R4,#4]
73C4C:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_6,std::allocator<ButtonPanel::ButtonPanel(void)::$_6>,void ()(void)>
73C4E:  ADDS            R1, #8
73C50:  STRD.W          R1, R2, [R0]
73C54:  POP             {R4,R6,R7,PC}
