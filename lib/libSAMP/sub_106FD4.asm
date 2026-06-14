; =========================================================
; Game Engine Function: sub_106FD4
; Address            : 0x106FD4 - 0x106FF6
; =========================================================

106FD4:  PUSH            {R4,R6,R7,LR}
106FD6:  ADD             R7, SP, #8
106FD8:  MOV             R4, R0
106FDA:  MOVS            R0, #0x10; unsigned int
106FDC:  BLX             j__Znwj; operator new(uint)
106FE0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN10CPlayerPed14SetArmedWeaponEhbE3$_3NS_9allocatorIS3_EEFvvEEE - 0x106FEA); `vtable for'std::__function::__func<CPlayerPed::SetArmedWeapon(uchar,bool)::$_3,std::allocator<CPlayerPed::SetArmedWeapon(uchar,bool)::$_3>,void ()(void)> ...
106FE2:  VLDR            D16, [R4,#4]
106FE6:  ADD             R1, PC; `vtable for'std::__function::__func<CPlayerPed::SetArmedWeapon(uchar,bool)::$_3,std::allocator<CPlayerPed::SetArmedWeapon(uchar,bool)::$_3>,void ()(void)>
106FE8:  LDR             R2, [R4,#0xC]
106FEA:  ADDS            R1, #8
106FEC:  STR             R1, [R0]
106FEE:  STR             R2, [R0,#0xC]
106FF0:  VSTR            D16, [R0,#4]
106FF4:  POP             {R4,R6,R7,PC}
