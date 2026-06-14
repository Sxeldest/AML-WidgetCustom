; =========================================================
; Game Engine Function: sub_73BB0
; Address            : 0x73BB0 - 0x73BCA
; =========================================================

73BB0:  PUSH            {R4,R6,R7,LR}
73BB2:  ADD             R7, SP, #8
73BB4:  MOV             R4, R0
73BB6:  MOVS            R0, #8; unsigned int
73BB8:  BLX             j__Znwj; operator new(uint)
73BBC:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_5NS_9allocatorIS3_EEFvvEEE - 0x73BC4); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_5,std::allocator<ButtonPanel::ButtonPanel(void)::$_5>,void ()(void)> ...
73BBE:  LDR             R2, [R4,#4]
73BC0:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_5,std::allocator<ButtonPanel::ButtonPanel(void)::$_5>,void ()(void)>
73BC2:  ADDS            R1, #8
73BC4:  STRD.W          R1, R2, [R0]
73BC8:  POP             {R4,R6,R7,PC}
