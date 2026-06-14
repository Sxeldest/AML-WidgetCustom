; =========================================================
; Game Engine Function: sub_1011E8
; Address            : 0x1011E8 - 0x101202
; =========================================================

1011E8:  PUSH            {R4,R6,R7,LR}
1011EA:  ADD             R7, SP, #8
1011EC:  MOV             R4, R0
1011EE:  MOVS            R0, #8; unsigned int
1011F0:  BLX             j__Znwj; operator new(uint)
1011F4:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZ24CPed_GetWeaponSkill_hookP9_PED_TYPEE3$_5NS_9allocatorIS4_EEFvvEEE - 0x1011FC); `vtable for'std::__function::__func<CPed_GetWeaponSkill_hook(_PED_TYPE *)::$_5,std::allocator<CPed_GetWeaponSkill_hook(_PED_TYPE *)::$_5>,void ()(void)> ...
1011F6:  LDR             R2, [R4,#4]
1011F8:  ADD             R1, PC; `vtable for'std::__function::__func<CPed_GetWeaponSkill_hook(_PED_TYPE *)::$_5,std::allocator<CPed_GetWeaponSkill_hook(_PED_TYPE *)::$_5>,void ()(void)>
1011FA:  ADDS            R1, #8
1011FC:  STRD.W          R1, R2, [R0]
101200:  POP             {R4,R6,R7,PC}
