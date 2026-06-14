; =========================================================
; Game Engine Function: sub_106E3C
; Address            : 0x106E3C - 0x106E4A
; =========================================================

106E3C:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN10CPlayerPed7SetDeadEvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x106E44); `vtable for'std::__function::__func<CPlayerPed::SetDead(void)::$_0,std::allocator<CPlayerPed::SetDead(void)::$_0>,void ()(void)> ...
106E3E:  LDR             R0, [R0,#4]
106E40:  ADD             R2, PC; `vtable for'std::__function::__func<CPlayerPed::SetDead(void)::$_0,std::allocator<CPlayerPed::SetDead(void)::$_0>,void ()(void)>
106E42:  ADDS            R2, #8
106E44:  STRD.W          R2, R0, [R1]
106E48:  BX              LR
