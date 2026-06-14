; =========================================================
; Game Engine Function: sub_739C8
; Address            : 0x739C8 - 0x739DC
; =========================================================

739C8:  PUSH            {R7,LR}
739CA:  MOV             R7, SP
739CC:  MOVS            R0, #8; unsigned int
739CE:  BLX             j__Znwj; operator new(uint)
739D2:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x739D8); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_2,std::allocator<ButtonPanel::ButtonPanel(void)::$_2>,void ()(void)> ...
739D4:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_2,std::allocator<ButtonPanel::ButtonPanel(void)::$_2>,void ()(void)>
739D6:  ADDS            R1, #8
739D8:  STR             R1, [R0]
739DA:  POP             {R7,PC}
