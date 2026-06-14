; =========================================================
; Game Engine Function: sub_1070A4
; Address            : 0x1070A4 - 0x1070BE
; =========================================================

1070A4:  PUSH            {R4,R6,R7,LR}
1070A6:  ADD             R7, SP, #8
1070A8:  MOV             R4, R0
1070AA:  MOVS            R0, #8; unsigned int
1070AC:  BLX             j__Znwj; operator new(uint)
1070B0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN10CPlayerPed12StartJetpackEvE3$_4NS_9allocatorIS3_EEFvvEEE - 0x1070B8); `vtable for'std::__function::__func<CPlayerPed::StartJetpack(void)::$_4,std::allocator<CPlayerPed::StartJetpack(void)::$_4>,void ()(void)> ...
1070B2:  LDR             R2, [R4,#4]
1070B4:  ADD             R1, PC; `vtable for'std::__function::__func<CPlayerPed::StartJetpack(void)::$_4,std::allocator<CPlayerPed::StartJetpack(void)::$_4>,void ()(void)>
1070B6:  ADDS            R1, #8
1070B8:  STRD.W          R1, R2, [R0]
1070BC:  POP             {R4,R6,R7,PC}
