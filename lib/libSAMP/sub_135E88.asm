; =========================================================
; Game Engine Function: sub_135E88
; Address            : 0x135E88 - 0x135EA2
; =========================================================

135E88:  PUSH            {R4,R6,R7,LR}
135E8A:  ADD             R7, SP, #8
135E8C:  MOV             R4, R0
135E8E:  MOVS            R0, #8; unsigned int
135E90:  BLX             j__Znwj; operator new(uint)
135E94:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN14SelectorLayoutC1EvE3$_5NS_9allocatorIS3_EEFvbEEE - 0x135E9C); `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_5,std::allocator<SelectorLayout::SelectorLayout(void)::$_5>,void ()(bool)> ...
135E96:  LDR             R2, [R4,#4]
135E98:  ADD             R1, PC; `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_5,std::allocator<SelectorLayout::SelectorLayout(void)::$_5>,void ()(bool)>
135E9A:  ADDS            R1, #8
135E9C:  STRD.W          R1, R2, [R0]
135EA0:  POP             {R4,R6,R7,PC}
