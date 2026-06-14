; =========================================================
; Game Engine Function: sub_135AC4
; Address            : 0x135AC4 - 0x135ADE
; =========================================================

135AC4:  PUSH            {R4,R6,R7,LR}
135AC6:  ADD             R7, SP, #8
135AC8:  MOV             R4, R0
135ACA:  MOVS            R0, #8; unsigned int
135ACC:  BLX             j__Znwj; operator new(uint)
135AD0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN13CommandLayoutC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x135AD8); `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_0,std::allocator<CommandLayout::CommandLayout(void)::$_0>,void ()(void)> ...
135AD2:  LDR             R2, [R4,#4]
135AD4:  ADD             R1, PC; `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_0,std::allocator<CommandLayout::CommandLayout(void)::$_0>,void ()(void)>
135AD6:  ADDS            R1, #8
135AD8:  STRD.W          R1, R2, [R0]
135ADC:  POP             {R4,R6,R7,PC}
