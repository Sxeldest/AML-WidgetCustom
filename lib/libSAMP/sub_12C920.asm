; =========================================================
; Game Engine Function: sub_12C920
; Address            : 0x12C920 - 0x12C93A
; =========================================================

12C920:  PUSH            {R4,R6,R7,LR}
12C922:  ADD             R7, SP, #8
12C924:  MOV             R4, R0
12C926:  MOVS            R0, #8; unsigned int
12C928:  BLX             j__Znwj; operator new(uint)
12C92C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_4NS_9allocatorIS3_EEFvvEEE - 0x12C934); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_4,std::allocator<ButtonPanel::ButtonPanel(void)::$_4>,void ()(void)> ...
12C92E:  LDR             R2, [R4,#4]
12C930:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_4,std::allocator<ButtonPanel::ButtonPanel(void)::$_4>,void ()(void)>
12C932:  ADDS            R1, #8
12C934:  STRD.W          R1, R2, [R0]
12C938:  POP             {R4,R6,R7,PC}
