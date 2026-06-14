; =========================================================
; Game Engine Function: sub_12EEDC
; Address            : 0x12EEDC - 0x12EEF0
; =========================================================

12EEDC:  PUSH            {R7,LR}
12EEDE:  MOV             R7, SP
12EEE0:  MOVS            R0, #8; unsigned int
12EEE2:  BLX             j__Znwj; operator new(uint)
12EEE6:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN14ExtButtonPanelC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x12EEEC); `vtable for'std::__function::__func<ExtButtonPanel::ExtButtonPanel(void)::$_0,std::allocator<ExtButtonPanel::ExtButtonPanel(void)::$_0>,void ()(void)> ...
12EEE8:  ADD             R1, PC; `vtable for'std::__function::__func<ExtButtonPanel::ExtButtonPanel(void)::$_0,std::allocator<ExtButtonPanel::ExtButtonPanel(void)::$_0>,void ()(void)>
12EEEA:  ADDS            R1, #8
12EEEC:  STR             R1, [R0]
12EEEE:  POP             {R7,PC}
