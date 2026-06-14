; =========================================================
; Game Engine Function: sub_78FC4
; Address            : 0x78FC4 - 0x78FDE
; =========================================================

78FC4:  PUSH            {R4,R6,R7,LR}
78FC6:  ADD             R7, SP, #8
78FC8:  MOV             R4, R0
78FCA:  MOVS            R0, #8; unsigned int
78FCC:  BLX             j__Znwj; operator new(uint)
78FD0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12coordsLayoutC1EvE3$_7NS_9allocatorIS3_EEFvvEEE - 0x78FD8); `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_7,std::allocator<coordsLayout::coordsLayout(void)::$_7>,void ()(void)> ...
78FD2:  LDR             R2, [R4,#4]
78FD4:  ADD             R1, PC; `vtable for'std::__function::__func<coordsLayout::coordsLayout(void)::$_7,std::allocator<coordsLayout::coordsLayout(void)::$_7>,void ()(void)>
78FD6:  ADDS            R1, #8
78FD8:  STRD.W          R1, R2, [R0]
78FDC:  POP             {R4,R6,R7,PC}
