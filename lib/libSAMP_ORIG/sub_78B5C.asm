; =========================================================
; Game Engine Function: sub_78B5C
; Address            : 0x78B5C - 0x78B76
; =========================================================

78B5C:  PUSH            {R4,R6,R7,LR}
78B5E:  ADD             R7, SP, #8
78B60:  MOV             R4, R0
78B62:  MOVS            R0, #8; unsigned int
78B64:  BLX             j__Znwj; operator new(uint)
78B68:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN14selectorLayoutC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x78B70); `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_2,std::allocator<selectorLayout::selectorLayout(void)::$_2>,void ()(void)> ...
78B6A:  LDR             R2, [R4,#4]
78B6C:  ADD             R1, PC; `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_2,std::allocator<selectorLayout::selectorLayout(void)::$_2>,void ()(void)>
78B6E:  ADDS            R1, #8
78B70:  STRD.W          R1, R2, [R0]
78B74:  POP             {R4,R6,R7,PC}
