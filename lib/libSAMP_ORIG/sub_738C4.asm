; =========================================================
; Game Engine Function: sub_738C4
; Address            : 0x738C4 - 0x738DE
; =========================================================

738C4:  PUSH            {R4,R6,R7,LR}
738C6:  ADD             R7, SP, #8
738C8:  MOV             R4, R0
738CA:  MOVS            R0, #8; unsigned int
738CC:  BLX             j__Znwj; operator new(uint)
738D0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x738D8); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_0,std::allocator<ButtonPanel::ButtonPanel(void)::$_0>,void ()(void)> ...
738D2:  LDR             R2, [R4,#4]
738D4:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_0,std::allocator<ButtonPanel::ButtonPanel(void)::$_0>,void ()(void)>
738D6:  ADDS            R1, #8
738D8:  STRD.W          R1, R2, [R0]
738DC:  POP             {R4,R6,R7,PC}
