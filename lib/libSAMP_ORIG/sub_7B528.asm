; =========================================================
; Game Engine Function: sub_7B528
; Address            : 0x7B528 - 0x7B53C
; =========================================================

7B528:  PUSH            {R7,LR}
7B52A:  MOV             R7, SP
7B52C:  MOVS            R0, #8; unsigned int
7B52E:  BLX             j__Znwj; operator new(uint)
7B532:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN5SpawnC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x7B538); `vtable for'std::__function::__func<Spawn::Spawn(void)::$_0,std::allocator<Spawn::Spawn(void)::$_0>,void ()(void)> ...
7B534:  ADD             R1, PC; `vtable for'std::__function::__func<Spawn::Spawn(void)::$_0,std::allocator<Spawn::Spawn(void)::$_0>,void ()(void)>
7B536:  ADDS            R1, #8
7B538:  STR             R1, [R0]
7B53A:  POP             {R7,PC}
