; =========================================================
; Game Engine Function: sub_151468
; Address            : 0x151468 - 0x151482
; =========================================================

151468:  PUSH            {R4,R6,R7,LR}
15146A:  ADD             R7, SP, #8
15146C:  MOV             R4, R0
15146E:  MOVS            R0, #8; unsigned int
151470:  BLX             j__Znwj; operator new(uint)
151474:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN12AudioChannel9AddEffectENS_10unique_ptrI11AudioEffectNS_14default_deleteIS4_EEEEE3$_0NS_9allocatorIS8_EEFvP11AudioStreamEEE - 0x15147C); `vtable for'std::__function::__func<AudioChannel::AddEffect(std::unique_ptr<AudioEffect>)::$_0,std::allocator<AudioChannel::AddEffect(std::unique_ptr<AudioEffect>)::$_0>,void ()(AudioStream *)> ...
151476:  LDR             R2, [R4,#4]
151478:  ADD             R1, PC; `vtable for'std::__function::__func<AudioChannel::AddEffect(std::unique_ptr<AudioEffect>)::$_0,std::allocator<AudioChannel::AddEffect(std::unique_ptr<AudioEffect>)::$_0>,void ()(AudioStream *)>
15147A:  ADDS            R1, #8
15147C:  STRD.W          R1, R2, [R0]
151480:  POP             {R4,R6,R7,PC}
