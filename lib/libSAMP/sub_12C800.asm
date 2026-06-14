; =========================================================
; Game Engine Function: sub_12C800
; Address            : 0x12C800 - 0x12C822
; =========================================================

12C800:  PUSH            {R4,R6,R7,LR}
12C802:  ADD             R7, SP, #8
12C804:  MOV             R4, R0
12C806:  MOVS            R0, #0x10; unsigned int
12C808:  BLX             j__Znwj; operator new(uint)
12C80C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x12C816); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_2,std::allocator<ButtonPanel::ButtonPanel(void)::$_2>,void ()(void)> ...
12C80E:  VLDR            D16, [R4,#4]
12C812:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_2,std::allocator<ButtonPanel::ButtonPanel(void)::$_2>,void ()(void)>
12C814:  LDR             R2, [R4,#0xC]
12C816:  ADDS            R1, #8
12C818:  STR             R1, [R0]
12C81A:  STR             R2, [R0,#0xC]
12C81C:  VSTR            D16, [R0,#4]
12C820:  POP             {R4,R6,R7,PC}
