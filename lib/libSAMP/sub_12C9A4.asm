; =========================================================
; Game Engine Function: sub_12C9A4
; Address            : 0x12C9A4 - 0x12C9BE
; =========================================================

12C9A4:  PUSH            {R4,R6,R7,LR}
12C9A6:  ADD             R7, SP, #8
12C9A8:  MOV             R4, R0
12C9AA:  MOVS            R0, #8; unsigned int
12C9AC:  BLX             j__Znwj; operator new(uint)
12C9B0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_5NS_9allocatorIS3_EEFvvEEE - 0x12C9B8); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_5,std::allocator<ButtonPanel::ButtonPanel(void)::$_5>,void ()(void)> ...
12C9B2:  LDR             R2, [R4,#4]
12C9B4:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_5,std::allocator<ButtonPanel::ButtonPanel(void)::$_5>,void ()(void)>
12C9B6:  ADDS            R1, #8
12C9B8:  STRD.W          R1, R2, [R0]
12C9BC:  POP             {R4,R6,R7,PC}
