; =========================================================
; Game Engine Function: sub_7B620
; Address            : 0x7B620 - 0x7B634
; =========================================================

7B620:  PUSH            {R7,LR}
7B622:  MOV             R7, SP
7B624:  MOVS            R0, #8; unsigned int
7B626:  BLX             j__Znwj; operator new(uint)
7B62A:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN5SpawnC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x7B630); `vtable for'std::__function::__func<Spawn::Spawn(void)::$_2,std::allocator<Spawn::Spawn(void)::$_2>,void ()(void)> ...
7B62C:  ADD             R1, PC; `vtable for'std::__function::__func<Spawn::Spawn(void)::$_2,std::allocator<Spawn::Spawn(void)::$_2>,void ()(void)>
7B62E:  ADDS            R1, #8
7B630:  STR             R1, [R0]
7B632:  POP             {R7,PC}
