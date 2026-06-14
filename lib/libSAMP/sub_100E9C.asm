; =========================================================
; Game Engine Function: sub_100E9C
; Address            : 0x100E9C - 0x100EBE
; =========================================================

100E9C:  PUSH            {R4,R6,R7,LR}
100E9E:  ADD             R7, SP, #8
100EA0:  MOV             R4, R0
100EA2:  MOVS            R0, #0x10; unsigned int
100EA4:  BLX             j__Znwj; operator new(uint)
100EA8:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZ37CTaskSimpleUseGun_SetPedPosition_hookjP9_PED_TYPEE3$_2NS_9allocatorIS4_EEFvvEEE - 0x100EB2); `vtable for'std::__function::__func<CTaskSimpleUseGun_SetPedPosition_hook(uint,_PED_TYPE *)::$_2,std::allocator<CTaskSimpleUseGun_SetPedPosition_hook(uint,_PED_TYPE *)::$_2>,void ()(void)> ...
100EAA:  VLDR            D16, [R4,#4]
100EAE:  ADD             R1, PC; `vtable for'std::__function::__func<CTaskSimpleUseGun_SetPedPosition_hook(uint,_PED_TYPE *)::$_2,std::allocator<CTaskSimpleUseGun_SetPedPosition_hook(uint,_PED_TYPE *)::$_2>,void ()(void)>
100EB0:  LDR             R2, [R4,#0xC]
100EB2:  ADDS            R1, #8
100EB4:  STR             R1, [R0]
100EB6:  STR             R2, [R0,#0xC]
100EB8:  VSTR            D16, [R0,#4]
100EBC:  POP             {R4,R6,R7,PC}
