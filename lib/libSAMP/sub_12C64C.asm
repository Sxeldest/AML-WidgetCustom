; =========================================================
; Game Engine Function: sub_12C64C
; Address            : 0x12C64C - 0x12C666
; =========================================================

12C64C:  PUSH            {R4,R6,R7,LR}
12C64E:  ADD             R7, SP, #8
12C650:  MOV             R4, R0
12C652:  MOVS            R0, #8; unsigned int
12C654:  BLX             j__Znwj; operator new(uint)
12C658:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x12C660); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_0,std::allocator<ButtonPanel::ButtonPanel(void)::$_0>,void ()(void)> ...
12C65A:  LDR             R2, [R4,#4]
12C65C:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_0,std::allocator<ButtonPanel::ButtonPanel(void)::$_0>,void ()(void)>
12C65E:  ADDS            R1, #8
12C660:  STRD.W          R1, R2, [R0]
12C664:  POP             {R4,R6,R7,PC}
