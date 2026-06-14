; =========================================================
; Game Engine Function: sub_135C90
; Address            : 0x135C90 - 0x135CAA
; =========================================================

135C90:  PUSH            {R4,R6,R7,LR}
135C92:  ADD             R7, SP, #8
135C94:  MOV             R4, R0
135C96:  MOVS            R0, #8; unsigned int
135C98:  BLX             j__Znwj; operator new(uint)
135C9C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN14SelectorLayoutC1EvE3$_3NS_9allocatorIS3_EEFvbEEE - 0x135CA4); `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_3,std::allocator<SelectorLayout::SelectorLayout(void)::$_3>,void ()(bool)> ...
135C9E:  LDR             R2, [R4,#4]
135CA0:  ADD             R1, PC; `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_3,std::allocator<SelectorLayout::SelectorLayout(void)::$_3>,void ()(bool)>
135CA2:  ADDS            R1, #8
135CA4:  STRD.W          R1, R2, [R0]
135CA8:  POP             {R4,R6,R7,PC}
