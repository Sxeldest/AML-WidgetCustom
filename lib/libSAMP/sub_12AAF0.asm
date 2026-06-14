; =========================================================
; Game Engine Function: sub_12AAF0
; Address            : 0x12AAF0 - 0x12AB0A
; =========================================================

12AAF0:  PUSH            {R4,R6,R7,LR}
12AAF2:  ADD             R7, SP, #8
12AAF4:  MOV             R4, R0
12AAF6:  MOVS            R0, #8; unsigned int
12AAF8:  BLX             j__Znwj; operator new(uint)
12AAFC:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN2UI12render3DTextEvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x12AB04); `vtable for'std::__function::__func<UI::render3DText(void)::$_1,std::allocator<UI::render3DText(void)::$_1>,void ()(void)> ...
12AAFE:  LDR             R2, [R4,#4]
12AB00:  ADD             R1, PC; `vtable for'std::__function::__func<UI::render3DText(void)::$_1,std::allocator<UI::render3DText(void)::$_1>,void ()(void)>
12AB02:  ADDS            R1, #8
12AB04:  STRD.W          R1, R2, [R0]
12AB08:  POP             {R4,R6,R7,PC}
