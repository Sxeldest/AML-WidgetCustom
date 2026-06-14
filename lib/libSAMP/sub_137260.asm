; =========================================================
; Game Engine Function: sub_137260
; Address            : 0x137260 - 0x137274
; =========================================================

137260:  PUSH            {R7,LR}
137262:  MOV             R7, SP
137264:  MOVS            R0, #8; unsigned int
137266:  BLX             j__Znwj; operator new(uint)
13726A:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN5SpawnC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x137270); `vtable for'std::__function::__func<Spawn::Spawn(void)::$_0,std::allocator<Spawn::Spawn(void)::$_0>,void ()(void)> ...
13726C:  ADD             R1, PC; `vtable for'std::__function::__func<Spawn::Spawn(void)::$_0,std::allocator<Spawn::Spawn(void)::$_0>,void ()(void)>
13726E:  ADDS            R1, #8
137270:  STR             R1, [R0]
137272:  POP             {R7,PC}
