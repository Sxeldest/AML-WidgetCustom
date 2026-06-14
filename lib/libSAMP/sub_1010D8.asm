; =========================================================
; Game Engine Function: sub_1010D8
; Address            : 0x1010D8 - 0x1010EA
; =========================================================

1010D8:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZ32AllVehicles__ProcessControl_hookjE3$_4NS_9allocatorIS2_EEFvvEEE - 0x1010DE); `vtable for'std::__function::__func<AllVehicles__ProcessControl_hook(uint)::$_4,std::allocator<AllVehicles__ProcessControl_hook(uint)::$_4>,void ()(void)> ...
1010DA:  ADD             R2, PC; `vtable for'std::__function::__func<AllVehicles__ProcessControl_hook(uint)::$_4,std::allocator<AllVehicles__ProcessControl_hook(uint)::$_4>,void ()(void)>
1010DC:  ADDS            R2, #8
1010DE:  STR             R2, [R1]
1010E0:  LDRD.W          R2, R0, [R0,#4]
1010E4:  STRD.W          R2, R0, [R1,#4]
1010E8:  BX              LR
