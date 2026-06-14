; =========================================================
; Game Engine Function: sub_78AE0
; Address            : 0x78AE0 - 0x78AFA
; =========================================================

78AE0:  PUSH            {R4,R6,R7,LR}
78AE2:  ADD             R7, SP, #8
78AE4:  MOV             R4, R0
78AE6:  MOVS            R0, #8; unsigned int
78AE8:  BLX             j__Znwj; operator new(uint)
78AEC:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN13commandLayoutC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x78AF4); `vtable for'std::__function::__func<commandLayout::commandLayout(void)::$_1,std::allocator<commandLayout::commandLayout(void)::$_1>,void ()(void)> ...
78AEE:  LDR             R2, [R4,#4]
78AF0:  ADD             R1, PC; `vtable for'std::__function::__func<commandLayout::commandLayout(void)::$_1,std::allocator<commandLayout::commandLayout(void)::$_1>,void ()(void)>
78AF2:  ADDS            R1, #8
78AF4:  STRD.W          R1, R2, [R0]
78AF8:  POP             {R4,R6,R7,PC}
