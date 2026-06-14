; =========================================================
; Game Engine Function: sub_12AA84
; Address            : 0x12AA84 - 0x12AA9E
; =========================================================

12AA84:  PUSH            {R4,R6,R7,LR}
12AA86:  ADD             R7, SP, #8
12AA88:  MOV             R4, R0
12AA8A:  MOVS            R0, #8; unsigned int
12AA8C:  BLX             j__Znwj; operator new(uint)
12AA90:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN2UI6renderEvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x12AA98); `vtable for'std::__function::__func<UI::render(void)::$_0,std::allocator<UI::render(void)::$_0>,void ()(void)> ...
12AA92:  LDR             R2, [R4,#4]
12AA94:  ADD             R1, PC; `vtable for'std::__function::__func<UI::render(void)::$_0,std::allocator<UI::render(void)::$_0>,void ()(void)>
12AA96:  ADDS            R1, #8
12AA98:  STRD.W          R1, R2, [R0]
12AA9C:  POP             {R4,R6,R7,PC}
