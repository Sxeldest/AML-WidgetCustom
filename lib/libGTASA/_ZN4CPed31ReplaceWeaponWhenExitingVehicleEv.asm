; =========================================================
; Game Engine Function: _ZN4CPed31ReplaceWeaponWhenExitingVehicleEv
; Address            : 0x4A53D2 - 0x4A542E
; =========================================================

4A53D2:  PUSH            {R4,R6,R7,LR}
4A53D4:  ADD             R7, SP, #8
4A53D6:  MOV             R4, R0
4A53D8:  LDR.W           R0, [R4,#0x444]
4A53DC:  CMP             R0, #0
4A53DE:  ITTT NE
4A53E0:  LDRHNE          R1, [R0,#0x34]
4A53E2:  BICNE.W         R1, R1, #0x800
4A53E6:  STRHNE          R1, [R0,#0x34]
4A53E8:  LDR.W           R0, [R4,#0x59C]
4A53EC:  CMP             R0, #1
4A53EE:  BHI             loc_4A53F8
4A53F0:  LDR.W           R0, [R4,#0x710]
4A53F4:  CMP             R0, #0x37 ; '7'
4A53F6:  BNE             loc_4A5418
4A53F8:  LDRSB.W         R0, [R4,#0x71C]
4A53FC:  MOVS            R1, #1
4A53FE:  RSB.W           R0, R0, R0,LSL#3
4A5402:  ADD.W           R0, R4, R0,LSL#2
4A5406:  LDR.W           R0, [R0,#0x5A4]
4A540A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A540E:  LDR             R1, [R0,#0xC]; int
4A5410:  MOV             R0, R4; this
4A5412:  POP.W           {R4,R6,R7,LR}
4A5416:  B               _ZN4CPed14AddWeaponModelEi; CPed::AddWeaponModel(int)
4A5418:  MOVS            R1, #1
4A541A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A541E:  LDR             R1, [R0,#0x14]; int
4A5420:  MOV             R0, R4; this
4A5422:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
4A5426:  MOVS            R0, #0x37 ; '7'
4A5428:  STR.W           R0, [R4,#0x710]
4A542C:  POP             {R4,R6,R7,PC}
