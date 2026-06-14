; =========================================================
; Game Engine Function: sub_135B58
; Address            : 0x135B58 - 0x135B72
; =========================================================

135B58:  PUSH            {R4,R6,R7,LR}
135B5A:  ADD             R7, SP, #8
135B5C:  MOV             R4, R0
135B5E:  MOVS            R0, #8; unsigned int
135B60:  BLX             j__Znwj; operator new(uint)
135B64:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN13CommandLayoutC1EvE3$_1NS_9allocatorIS3_EEFvbEEE - 0x135B6C); `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_1,std::allocator<CommandLayout::CommandLayout(void)::$_1>,void ()(bool)> ...
135B66:  LDR             R2, [R4,#4]
135B68:  ADD             R1, PC; `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_1,std::allocator<CommandLayout::CommandLayout(void)::$_1>,void ()(bool)>
135B6A:  ADDS            R1, #8
135B6C:  STRD.W          R1, R2, [R0]
135B70:  POP             {R4,R6,R7,PC}
