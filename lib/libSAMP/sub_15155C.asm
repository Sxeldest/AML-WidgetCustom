; =========================================================
; Game Engine Function: sub_15155C
; Address            : 0x15155C - 0x151570
; =========================================================

15155C:  PUSH            {R7,LR}
15155E:  MOV             R7, SP
151560:  MOVS            R0, #8; unsigned int
151562:  BLX             j__Znwj; operator new(uint)
151566:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12AudioChannel12ClearEffectsEvE3$_1NS_9allocatorIS3_EEFvP11AudioStreamEEE - 0x15156C); `vtable for'std::__function::__func<AudioChannel::ClearEffects(void)::$_1,std::allocator<AudioChannel::ClearEffects(void)::$_1>,void ()(AudioStream *)> ...
151568:  ADD             R1, PC; `vtable for'std::__function::__func<AudioChannel::ClearEffects(void)::$_1,std::allocator<AudioChannel::ClearEffects(void)::$_1>,void ()(AudioStream *)>
15156A:  ADDS            R1, #8
15156C:  STR             R1, [R0]
15156E:  POP             {R7,PC}
