; =========================================================
; Game Engine Function: sub_78A64
; Address            : 0x78A64 - 0x78A7E
; =========================================================

78A64:  PUSH            {R4,R6,R7,LR}
78A66:  ADD             R7, SP, #8
78A68:  MOV             R4, R0
78A6A:  MOVS            R0, #8; unsigned int
78A6C:  BLX             j__Znwj; operator new(uint)
78A70:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN13commandLayoutC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x78A78); `vtable for'std::__function::__func<commandLayout::commandLayout(void)::$_0,std::allocator<commandLayout::commandLayout(void)::$_0>,void ()(void)> ...
78A72:  LDR             R2, [R4,#4]
78A74:  ADD             R1, PC; `vtable for'std::__function::__func<commandLayout::commandLayout(void)::$_0,std::allocator<commandLayout::commandLayout(void)::$_0>,void ()(void)>
78A76:  ADDS            R1, #8
78A78:  STRD.W          R1, R2, [R0]
78A7C:  POP             {R4,R6,R7,PC}
