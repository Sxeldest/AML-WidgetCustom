; =========================================================
; Game Engine Function: sub_73D60
; Address            : 0x73D60 - 0x73D7A
; =========================================================

73D60:  PUSH            {R4,R6,R7,LR}
73D62:  ADD             R7, SP, #8
73D64:  MOV             R4, R0
73D66:  MOVS            R0, #8; unsigned int
73D68:  BLX             j__Znwj; operator new(uint)
73D6C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_8NS_9allocatorIS3_EEFvvEEE - 0x73D74); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_8,std::allocator<ButtonPanel::ButtonPanel(void)::$_8>,void ()(void)> ...
73D6E:  LDR             R2, [R4,#4]
73D70:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_8,std::allocator<ButtonPanel::ButtonPanel(void)::$_8>,void ()(void)>
73D72:  ADDS            R1, #8
73D74:  STRD.W          R1, R2, [R0]
73D78:  POP             {R4,R6,R7,PC}
