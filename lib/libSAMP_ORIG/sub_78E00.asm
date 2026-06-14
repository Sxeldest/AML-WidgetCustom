; =========================================================
; Game Engine Function: sub_78E00
; Address            : 0x78E00 - 0x78E1A
; =========================================================

78E00:  PUSH            {R4,R6,R7,LR}
78E02:  ADD             R7, SP, #8
78E04:  MOV             R4, R0
78E06:  MOVS            R0, #8; unsigned int
78E08:  BLX             j__Znwj; operator new(uint)
78E0C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12coordsLayoutC1EvE3$_5NS_9allocatorIS3_EEFvvEEE - 0x78E14); `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_5,std::allocator<coordsLayout::coordsLayout(void)::$_5>,void ()(void)> ...
78E0E:  LDR             R2, [R4,#4]
78E10:  ADD             R1, PC; `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_5,std::allocator<coordsLayout::coordsLayout(void)::$_5>,void ()(void)>
78E12:  ADDS            R1, #8
78E14:  STRD.W          R1, R2, [R0]
78E18:  POP             {R4,R6,R7,PC}
