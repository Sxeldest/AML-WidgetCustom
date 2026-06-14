; =========================================================
; Game Engine Function: sub_137340
; Address            : 0x137340 - 0x137354
; =========================================================

137340:  PUSH            {R7,LR}
137342:  MOV             R7, SP
137344:  MOVS            R0, #8; unsigned int
137346:  BLX             j__Znwj; operator new(uint)
13734A:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN5SpawnC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x137350); `vtable for'std::__function::__func<Spawn::Spawn(void)::$_2,std::allocator<Spawn::Spawn(void)::$_2>,void ()(void)> ...
13734C:  ADD             R1, PC; `vtable for'std::__function::__func<Spawn::Spawn(void)::$_2,std::allocator<Spawn::Spawn(void)::$_2>,void ()(void)>
13734E:  ADDS            R1, #8
137350:  STR             R1, [R0]
137352:  POP             {R7,PC}
