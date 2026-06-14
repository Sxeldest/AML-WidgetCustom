; =========================================================
; Game Engine Function: sub_7B5A4
; Address            : 0x7B5A4 - 0x7B5B8
; =========================================================

7B5A4:  PUSH            {R7,LR}
7B5A6:  MOV             R7, SP
7B5A8:  MOVS            R0, #8; unsigned int
7B5AA:  BLX             j__Znwj; operator new(uint)
7B5AE:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN5SpawnC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x7B5B4); `vtable for'std::__function::__func<Spawn::Spawn(void)::$_1,std::allocator<Spawn::Spawn(void)::$_1>,void ()(void)> ...
7B5B0:  ADD             R1, PC; `vtable for'std::__function::__func<Spawn::Spawn(void)::$_1,std::allocator<Spawn::Spawn(void)::$_1>,void ()(void)>
7B5B2:  ADDS            R1, #8
7B5B4:  STR             R1, [R0]
7B5B6:  POP             {R7,PC}
