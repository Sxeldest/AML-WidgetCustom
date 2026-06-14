; =========================================================
; Game Engine Function: _ZN10CGameLogic18RestorePedsWeaponsEP4CPed
; Address            : 0x3095BC - 0x309648
; =========================================================

3095BC:  PUSH            {R4-R7,LR}
3095BE:  ADD             R7, SP, #0xC
3095C0:  PUSH.W          {R8-R11}
3095C4:  SUB             SP, SP, #4
3095C6:  MOV             R8, R0
3095C8:  BLX             j__ZN4CPed12ClearWeaponsEv; CPed::ClearWeapons(void)
3095CC:  LDR             R0, =(_ZN10CGameLogic16SavedWeaponSlotsE_ptr - 0x3095D4)
3095CE:  MOVS            R5, #0
3095D0:  ADD             R0, PC; _ZN10CGameLogic16SavedWeaponSlotsE_ptr
3095D2:  LDR             R6, [R0]; CGameLogic::SavedWeaponSlots ...
3095D4:  LDR             R0, =(_ZN10CGameLogic16SavedWeaponSlotsE_ptr - 0x3095DA)
3095D6:  ADD             R0, PC; _ZN10CGameLogic16SavedWeaponSlotsE_ptr
3095D8:  LDR.W           R11, [R0]; CGameLogic::SavedWeaponSlots ...
3095DC:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x3095E2)
3095DE:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
3095E0:  LDR.W           R9, [R0]; CStreaming::ms_aInfoForModel ...
3095E4:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x3095EA)
3095E6:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
3095E8:  LDR.W           R10, [R0]; CStreaming::ms_aInfoForModel ...
3095EC:  LDR             R0, [R6,R5]
3095EE:  MOVS            R1, #1
3095F0:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3095F4:  LDR             R1, [R6,R5]
3095F6:  LDR             R4, [R0,#0xC]
3095F8:  MOV             R0, R1
3095FA:  MOVS            R1, #1
3095FC:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
309600:  LDR             R0, [R0,#0x10]
309602:  ADDS            R1, R4, #1
309604:  BEQ             loc_309614
309606:  ADD.W           R1, R4, R4,LSL#2
30960A:  ADD.W           R1, R10, R1,LSL#2
30960E:  LDRB            R1, [R1,#0x10]
309610:  CMP             R1, #1
309612:  BNE             loc_309638
309614:  ADDS            R0, #1
309616:  BEQ             loc_309626
309618:  ADD.W           R0, R4, R4,LSL#2
30961C:  ADD.W           R0, R9, R0,LSL#2
309620:  LDRB            R0, [R0,#0x10]
309622:  CMP             R0, #1
309624:  BNE             loc_309638
309626:  ADD.W           R0, R11, R5
30962A:  LDR.W           R1, [R11,R5]
30962E:  MOVS            R3, #1
309630:  LDR             R2, [R0,#0xC]
309632:  MOV             R0, R8
309634:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
309638:  ADDS            R5, #0x1C
30963A:  CMP.W           R5, #0x16C
30963E:  BNE             loc_3095EC
309640:  ADD             SP, SP, #4
309642:  POP.W           {R8-R11}
309646:  POP             {R4-R7,PC}
