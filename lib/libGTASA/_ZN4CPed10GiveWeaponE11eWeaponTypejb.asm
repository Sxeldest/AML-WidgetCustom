; =========================================================
; Game Engine Function: _ZN4CPed10GiveWeaponE11eWeaponTypejb
; Address            : 0x49F518 - 0x49F61E
; =========================================================

49F518:  PUSH            {R4-R7,LR}
49F51A:  ADD             R7, SP, #0xC
49F51C:  PUSH.W          {R8-R11}
49F520:  SUB             SP, SP, #4
49F522:  MOV             R6, R1
49F524:  MOV             R10, R0
49F526:  MOV             R0, R6
49F528:  MOVS            R1, #1
49F52A:  MOV             R8, R2
49F52C:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
49F530:  LDR             R4, [R0,#0x14]
49F532:  ADDS            R0, R4, #1
49F534:  BEQ             loc_49F552
49F536:  RSB.W           R0, R4, R4,LSL#3
49F53A:  ADD.W           R5, R10, R0,LSL#2
49F53E:  ADDW            R9, R5, #0x5A4
49F542:  LDR.W           R0, [R5,#0x5A4]
49F546:  CMP             R0, R6
49F548:  BNE             loc_49F556
49F54A:  CMP             R4, #0xA
49F54C:  BNE             loc_49F5CA
49F54E:  MOVS            R4, #0xA
49F550:  B               loc_49F614
49F552:  MOVS            R4, #0
49F554:  B               loc_49F614
49F556:  CBZ             R0, loc_49F598
49F558:  SUBS            R1, R4, #3
49F55A:  CMP             R1, #2
49F55C:  ITT LS
49F55E:  LDRLS.W         R1, [R5,#0x5B0]
49F562:  ADDLS           R8, R1
49F564:  MOVS            R1, #1
49F566:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
49F56A:  LDR             R1, [R0,#0xC]; int
49F56C:  MOV             R0, R10; this
49F56E:  BLX             j__ZN4CPed17RemoveWeaponModelEi; CPed::RemoveWeaponModel(int)
49F572:  MOV             R0, R6
49F574:  MOVS            R1, #1
49F576:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
49F57A:  LDR.W           R11, [R0,#0x14]
49F57E:  MOVS            R0, #0x2D ; '-'
49F580:  MOVS            R1, #1
49F582:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
49F586:  LDR             R0, [R0,#0x14]
49F588:  CMP             R11, R0
49F58A:  ITT EQ
49F58C:  MOVEQ           R0, R10; this
49F58E:  BLXEQ           j__ZN4CPed18RemoveGogglesModelEv; CPed::RemoveGogglesModel(void)
49F592:  MOV             R0, R9; this
49F594:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F598:  MOV             R0, R9
49F59A:  MOV             R1, R6
49F59C:  MOV             R2, R8
49F59E:  MOV             R3, R10
49F5A0:  BLX             j__ZN7CWeapon10InitialiseE11eWeaponTypeiP4CPed; CWeapon::Initialise(eWeaponType,int,CPed *)
49F5A4:  LDRSB.W         R0, [R10,#0x71C]
49F5A8:  CMP             R4, R0
49F5AA:  ITT EQ
49F5AC:  LDRBEQ.W        R0, [R10,#0x485]
49F5B0:  MOVSEQ.W        R0, R0,LSL#31
49F5B4:  BNE             loc_49F604
49F5B6:  LDR.W           R0, [R5,#0x5A4]
49F5BA:  MOVS            R1, #1
49F5BC:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
49F5C0:  LDR             R1, [R0,#0xC]; int
49F5C2:  MOV             R0, R10; this
49F5C4:  BLX             j__ZN4CPed14AddWeaponModelEi; CPed::AddWeaponModel(int)
49F5C8:  B               loc_49F604
49F5CA:  LDR.W           R0, [R5,#0x5B0]
49F5CE:  MOV             R1, #0x1869F
49F5D6:  ADD             R0, R8
49F5D8:  CMP             R0, R1
49F5DA:  IT LT
49F5DC:  MOVLT           R1, R0
49F5DE:  MOV             R0, R9; this
49F5E0:  STR.W           R1, [R5,#0x5B0]
49F5E4:  MOV             R1, R10; CPed *
49F5E6:  BLX             j__ZN7CWeapon6ReloadEP4CPed; CWeapon::Reload(CPed *)
49F5EA:  LDR.W           R0, [R5,#0x5A8]
49F5EE:  CMP             R0, #3
49F5F0:  BNE             loc_49F604
49F5F2:  ADD.W           R0, R5, #0x5B0
49F5F6:  LDR             R0, [R0]
49F5F8:  CMP             R0, #1
49F5FA:  ITTT GE
49F5FC:  ADDGE.W         R0, R5, #0x5A8
49F600:  MOVGE           R1, #0
49F602:  STRGE           R1, [R0]
49F604:  LDR.W           R0, [R5,#0x5A8]
49F608:  CMP             R0, #3
49F60A:  ITTT NE
49F60C:  ADDNE.W         R0, R5, #0x5A8
49F610:  MOVNE           R1, #0
49F612:  STRNE           R1, [R0]
49F614:  MOV             R0, R4
49F616:  ADD             SP, SP, #4
49F618:  POP.W           {R8-R11}
49F61C:  POP             {R4-R7,PC}
