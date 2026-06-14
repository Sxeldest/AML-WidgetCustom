; =========================================================
; Game Engine Function: sub_78C40
; Address            : 0x78C40 - 0x78C5A
; =========================================================

78C40:  PUSH            {R4,R6,R7,LR}
78C42:  ADD             R7, SP, #8
78C44:  MOV             R4, R0
78C46:  MOVS            R0, #8; unsigned int
78C48:  BLX             j__Znwj; operator new(uint)
78C4C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN14selectorLayoutC1EvE3$_3NS_9allocatorIS3_EEFvvEEE - 0x78C54); `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_3,std::allocator<selectorLayout::selectorLayout(void)::$_3>,void ()(void)> ...
78C4E:  LDR             R2, [R4,#4]
78C50:  ADD             R1, PC; `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_3,std::allocator<selectorLayout::selectorLayout(void)::$_3>,void ()(void)>
78C52:  ADDS            R1, #8
78C54:  STRD.W          R1, R2, [R0]
78C58:  POP             {R4,R6,R7,PC}
