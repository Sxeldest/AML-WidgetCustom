; =========================================================
; Game Engine Function: sub_1070C4
; Address            : 0x1070C4 - 0x1070D2
; =========================================================

1070C4:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN10CPlayerPed12StartJetpackEvE3$_4NS_9allocatorIS3_EEFvvEEE - 0x1070CC); `vtable for'std::__function::__func<CPlayerPed::StartJetpack(void)::$_4,std::allocator<CPlayerPed::StartJetpack(void)::$_4>,void ()(void)> ...
1070C6:  LDR             R0, [R0,#4]
1070C8:  ADD             R2, PC; `vtable for'std::__function::__func<CPlayerPed::StartJetpack(void)::$_4,std::allocator<CPlayerPed::StartJetpack(void)::$_4>,void ()(void)>
1070CA:  ADDS            R2, #8
1070CC:  STRD.W          R2, R0, [R1]
1070D0:  BX              LR
