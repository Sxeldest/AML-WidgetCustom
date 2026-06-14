; =========================================================
; Game Engine Function: sub_135BFC
; Address            : 0x135BFC - 0x135C16
; =========================================================

135BFC:  PUSH            {R4,R6,R7,LR}
135BFE:  ADD             R7, SP, #8
135C00:  MOV             R4, R0
135C02:  MOVS            R0, #8; unsigned int
135C04:  BLX             j__Znwj; operator new(uint)
135C08:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN13CommandLayoutC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x135C10); `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_2,std::allocator<CommandLayout::CommandLayout(void)::$_2>,void ()(void)> ...
135C0A:  LDR             R2, [R4,#4]
135C0C:  ADD             R1, PC; `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_2,std::allocator<CommandLayout::CommandLayout(void)::$_2>,void ()(void)>
135C0E:  ADDS            R1, #8
135C10:  STRD.W          R1, R2, [R0]
135C14:  POP             {R4,R6,R7,PC}
