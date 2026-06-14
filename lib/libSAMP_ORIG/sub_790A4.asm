; =========================================================
; Game Engine Function: sub_790A4
; Address            : 0x790A4 - 0x790BE
; =========================================================

790A4:  PUSH            {R4,R6,R7,LR}
790A6:  ADD             R7, SP, #8
790A8:  MOV             R4, R0
790AA:  MOVS            R0, #8; unsigned int
790AC:  BLX             j__Znwj; operator new(uint)
790B0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12coordsLayoutC1EvE3$_8NS_9allocatorIS3_EEFvvEEE - 0x790B8); `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_8,std::allocator<coordsLayout::coordsLayout(void)::$_8>,void ()(void)> ...
790B2:  LDR             R2, [R4,#4]
790B4:  ADD             R1, PC; `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_8,std::allocator<coordsLayout::coordsLayout(void)::$_8>,void ()(void)>
790B6:  ADDS            R1, #8
790B8:  STRD.W          R1, R2, [R0]
790BC:  POP             {R4,R6,R7,PC}
