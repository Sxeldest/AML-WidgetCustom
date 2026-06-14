; =========================================================
; Game Engine Function: sub_F4E08
; Address            : 0xF4E08 - 0xF4E1C
; =========================================================

F4E08:  PUSH            {R7,LR}
F4E0A:  MOV             R7, SP
F4E0C:  MOVS            R0, #8; unsigned int
F4E0E:  BLX             j__Znwj; operator new(uint)
F4E12:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN13CustomMapIconC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0xF4E18); `vtable for'std::__function::__func<CustomMapIcon::CustomMapIcon(void)::$_0,std::allocator<CustomMapIcon::CustomMapIcon(void)::$_0>,void ()(void)> ...
F4E14:  ADD             R1, PC; `vtable for'std::__function::__func<CustomMapIcon::CustomMapIcon(void)::$_0,std::allocator<CustomMapIcon::CustomMapIcon(void)::$_0>,void ()(void)>
F4E16:  ADDS            R1, #8
F4E18:  STR             R1, [R0]
F4E1A:  POP             {R7,PC}
