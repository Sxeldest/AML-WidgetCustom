; =========================================================
; Game Engine Function: sub_73CD4
; Address            : 0x73CD4 - 0x73CEE
; =========================================================

73CD4:  PUSH            {R4,R6,R7,LR}
73CD6:  ADD             R7, SP, #8
73CD8:  MOV             R4, R0
73CDA:  MOVS            R0, #8; unsigned int
73CDC:  BLX             j__Znwj; operator new(uint)
73CE0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_7NS_9allocatorIS3_EEFvvEEE - 0x73CE8); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_7,std::allocator<ButtonPanel::ButtonPanel(void)::$_7>,void ()(void)> ...
73CE2:  LDR             R2, [R4,#4]
73CE4:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_7,std::allocator<ButtonPanel::ButtonPanel(void)::$_7>,void ()(void)>
73CE6:  ADDS            R1, #8
73CE8:  STRD.W          R1, R2, [R0]
73CEC:  POP             {R4,R6,R7,PC}
