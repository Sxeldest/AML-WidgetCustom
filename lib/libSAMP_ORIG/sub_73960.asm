; =========================================================
; Game Engine Function: sub_73960
; Address            : 0x73960 - 0x73974
; =========================================================

73960:  PUSH            {R7,LR}
73962:  MOV             R7, SP
73964:  MOVS            R0, #8; unsigned int
73966:  BLX             j__Znwj; operator new(uint)
7396A:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x73970); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_1,std::allocator<ButtonPanel::ButtonPanel(void)::$_1>,void ()(void)> ...
7396C:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_1,std::allocator<ButtonPanel::ButtonPanel(void)::$_1>,void ()(void)>
7396E:  ADDS            R1, #8
73970:  STR             R1, [R0]
73972:  POP             {R7,PC}
