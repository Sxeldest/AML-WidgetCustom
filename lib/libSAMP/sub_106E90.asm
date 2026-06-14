; =========================================================
; Game Engine Function: sub_106E90
; Address            : 0x106E90 - 0x106EAA
; =========================================================

106E90:  PUSH            {R4,R6,R7,LR}
106E92:  ADD             R7, SP, #8
106E94:  MOV             R4, R0
106E96:  MOVS            R0, #8; unsigned int
106E98:  BLX             j__Znwj; operator new(uint)
106E9C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN10CPlayerPed12ClearWeaponsEvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x106EA4); `vtable for'std::__function::__func<CPlayerPed::ClearWeapons(void)::$_1,std::allocator<CPlayerPed::ClearWeapons(void)::$_1>,void ()(void)> ...
106E9E:  LDR             R2, [R4,#4]
106EA0:  ADD             R1, PC; `vtable for'std::__function::__func<CPlayerPed::ClearWeapons(void)::$_1,std::allocator<CPlayerPed::ClearWeapons(void)::$_1>,void ()(void)>
106EA2:  ADDS            R1, #8
106EA4:  STRD.W          R1, R2, [R0]
106EA8:  POP             {R4,R6,R7,PC}
