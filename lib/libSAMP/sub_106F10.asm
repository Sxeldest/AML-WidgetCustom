; =========================================================
; Game Engine Function: sub_106F10
; Address            : 0x106F10 - 0x106F32
; =========================================================

106F10:  PUSH            {R4,R6,R7,LR}
106F12:  ADD             R7, SP, #8
106F14:  MOV             R4, R0
106F16:  MOVS            R0, #0x10; unsigned int
106F18:  BLX             j__Znwj; operator new(uint)
106F1C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN10CPlayerPed10GiveWeaponEiiE3$_2NS_9allocatorIS3_EEFvvEEE - 0x106F26); `vtable for'std::__function::__func<CPlayerPed::GiveWeapon(int,int)::$_2,std::allocator<CPlayerPed::GiveWeapon(int,int)::$_2>,void ()(void)> ...
106F1E:  VLDR            D16, [R4,#4]
106F22:  ADD             R1, PC; `vtable for'std::__function::__func<CPlayerPed::GiveWeapon(int,int)::$_2,std::allocator<CPlayerPed::GiveWeapon(int,int)::$_2>,void ()(void)>
106F24:  LDR             R2, [R4,#0xC]
106F26:  ADDS            R1, #8
106F28:  STR             R1, [R0]
106F2A:  STR             R2, [R0,#0xC]
106F2C:  VSTR            D16, [R0,#4]
106F30:  POP             {R4,R6,R7,PC}
