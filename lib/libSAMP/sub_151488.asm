; =========================================================
; Game Engine Function: sub_151488
; Address            : 0x151488 - 0x151496
; =========================================================

151488:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN12AudioChannel9AddEffectENS_10unique_ptrI11AudioEffectNS_14default_deleteIS4_EEEEE3$_0NS_9allocatorIS8_EEFvP11AudioStreamEEE - 0x151490); `vtable for'std::__function::__func<AudioChannel::AddEffect(std::unique_ptr<AudioEffect>)::$_0,std::allocator<AudioChannel::AddEffect(std::unique_ptr<AudioEffect>)::$_0>,void ()(AudioStream *)> ...
15148A:  LDR             R0, [R0,#4]
15148C:  ADD             R2, PC; `vtable for'std::__function::__func<AudioChannel::AddEffect(std::unique_ptr<AudioEffect>)::$_0,std::allocator<AudioChannel::AddEffect(std::unique_ptr<AudioEffect>)::$_0>,void ()(AudioStream *)>
15148E:  ADDS            R2, #8
151490:  STRD.W          R2, R0, [R1]
151494:  BX              LR
