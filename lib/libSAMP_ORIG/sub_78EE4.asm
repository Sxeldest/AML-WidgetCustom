; =========================================================
; Game Engine Function: sub_78EE4
; Address            : 0x78EE4 - 0x78EFE
; =========================================================

78EE4:  PUSH            {R4,R6,R7,LR}
78EE6:  ADD             R7, SP, #8
78EE8:  MOV             R4, R0
78EEA:  MOVS            R0, #8; unsigned int
78EEC:  BLX             j__Znwj; operator new(uint)
78EF0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12coordsLayoutC1EvE3$_6NS_9allocatorIS3_EEFvvEEE - 0x78EF8); `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_6,std::allocator<coordsLayout::coordsLayout(void)::$_6>,void ()(void)> ...
78EF2:  LDR             R2, [R4,#4]
78EF4:  ADD             R1, PC; `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_6,std::allocator<coordsLayout::coordsLayout(void)::$_6>,void ()(void)>
78EF6:  ADDS            R1, #8
78EF8:  STRD.W          R1, R2, [R0]
78EFC:  POP             {R4,R6,R7,PC}
