; =========================================================
; Game Engine Function: sub_78D20
; Address            : 0x78D20 - 0x78D3A
; =========================================================

78D20:  PUSH            {R4,R6,R7,LR}
78D22:  ADD             R7, SP, #8
78D24:  MOV             R4, R0
78D26:  MOVS            R0, #8; unsigned int
78D28:  BLX             j__Znwj; operator new(uint)
78D2C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN14selectorLayoutC1EvE3$_4NS_9allocatorIS3_EEFvvEEE - 0x78D34); `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_4,std::allocator<selectorLayout::selectorLayout(void)::$_4>,void ()(void)> ...
78D2E:  LDR             R2, [R4,#4]
78D30:  ADD             R1, PC; `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_4,std::allocator<selectorLayout::selectorLayout(void)::$_4>,void ()(void)>
78D32:  ADDS            R1, #8
78D34:  STRD.W          R1, R2, [R0]
78D38:  POP             {R4,R6,R7,PC}
