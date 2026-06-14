; =========================================================
; Game Engine Function: sub_12C89C
; Address            : 0x12C89C - 0x12C8B6
; =========================================================

12C89C:  PUSH            {R4,R6,R7,LR}
12C89E:  ADD             R7, SP, #8
12C8A0:  MOV             R4, R0
12C8A2:  MOVS            R0, #8; unsigned int
12C8A4:  BLX             j__Znwj; operator new(uint)
12C8A8:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_3NS_9allocatorIS3_EEFvvEEE - 0x12C8B0); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_3,std::allocator<ButtonPanel::ButtonPanel(void)::$_3>,void ()(void)> ...
12C8AA:  LDR             R2, [R4,#4]
12C8AC:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_3,std::allocator<ButtonPanel::ButtonPanel(void)::$_3>,void ()(void)>
12C8AE:  ADDS            R1, #8
12C8B0:  STRD.W          R1, R2, [R0]
12C8B4:  POP             {R4,R6,R7,PC}
