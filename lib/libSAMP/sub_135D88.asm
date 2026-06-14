; =========================================================
; Game Engine Function: sub_135D88
; Address            : 0x135D88 - 0x135DA2
; =========================================================

135D88:  PUSH            {R4,R6,R7,LR}
135D8A:  ADD             R7, SP, #8
135D8C:  MOV             R4, R0
135D8E:  MOVS            R0, #8; unsigned int
135D90:  BLX             j__Znwj; operator new(uint)
135D94:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN14SelectorLayoutC1EvE3$_4NS_9allocatorIS3_EEFvbEEE - 0x135D9C); `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_4,std::allocator<SelectorLayout::SelectorLayout(void)::$_4>,void ()(bool)> ...
135D96:  LDR             R2, [R4,#4]
135D98:  ADD             R1, PC; `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_4,std::allocator<SelectorLayout::SelectorLayout(void)::$_4>,void ()(bool)>
135D9A:  ADDS            R1, #8
135D9C:  STRD.W          R1, R2, [R0]
135DA0:  POP             {R4,R6,R7,PC}
