; =========================================================
; Game Engine Function: sub_1010B8
; Address            : 0x1010B8 - 0x1010D4
; =========================================================

1010B8:  PUSH            {R4,R6,R7,LR}
1010BA:  ADD             R7, SP, #8
1010BC:  MOV             R4, R0
1010BE:  MOVS            R0, #0xC; unsigned int
1010C0:  BLX             j__Znwj; operator new(uint)
1010C4:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZ32AllVehicles__ProcessControl_hookjE3$_4NS_9allocatorIS2_EEFvvEEE - 0x1010CE); `vtable for'std::__function::__func<AllVehicles__ProcessControl_hook(uint)::$_4,std::allocator<AllVehicles__ProcessControl_hook(uint)::$_4>,void ()(void)> ...
1010C6:  LDRD.W          R2, R3, [R4,#4]
1010CA:  ADD             R1, PC; `vtable for'std::__function::__func<AllVehicles__ProcessControl_hook(uint)::$_4,std::allocator<AllVehicles__ProcessControl_hook(uint)::$_4>,void ()(void)>
1010CC:  ADDS            R1, #8
1010CE:  STM.W           R0, {R1-R3}
1010D2:  POP             {R4,R6,R7,PC}
