; =========================================================
; Game Engine Function: _ZN6CCheat23ProcessWeaponSlotCheatsEv
; Address            : 0x3003D4 - 0x30048E
; =========================================================

3003D4:  PUSH            {R7,LR}
3003D6:  MOV             R7, SP
3003D8:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3003DE)
3003DA:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3003DC:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
3003DE:  LDR.W           R0, [R0,#(dword_6F39F0 - 0x6F3794)]
3003E2:  CMP             R0, #0
3003E4:  BEQ             locret_30048C
3003E6:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3003EC)
3003E8:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
3003EA:  LDR             R0, [R0]; CTimer::m_UserPause ...
3003EC:  LDRB            R0, [R0]; this
3003EE:  CMP             R0, #0
3003F0:  IT EQ
3003F2:  BLXEQ           j__ZN6CTimer14StartUserPauseEv; CTimer::StartUserPause(void)
3003F6:  MOVS            R0, #0x97
3003F8:  MOVS            R1, #0
3003FA:  MOVS            R2, #1
3003FC:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
300400:  CBNZ            R0, loc_30040E
300402:  MOVS            R0, #0x38 ; '8'
300404:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
300408:  CMP             R0, #1
30040A:  IT NE
30040C:  POPNE           {R7,PC}
30040E:  LDR             R0, =(dword_6866B8 - 0x300414)
300410:  ADD             R0, PC; dword_6866B8
300412:  LDR             R0, [R0]
300414:  CMP             R0, #9; switch 10 cases
300416:  BHI             def_300418; jumptable 00300418 default case
300418:  TBB.W           [PC,R0]; switch jump
30041C:  DCB 5; jump table for switch statement
30041D:  DCB 8
30041E:  DCB 0xB
30041F:  DCB 0xE
300420:  DCB 0x11
300421:  DCB 0x14
300422:  DCB 0x17
300423:  DCB 0x1A
300424:  DCB 0x20
300425:  DCB 0x1D
300426:  BLX             j__Z15HandleSlotMeleev; jumptable 00300418 case 0
30042A:  B               def_300418; jumptable 00300418 default case
30042C:  BLX             j__Z18HandleSlotHandgunsv; jumptable 00300418 case 1
300430:  B               def_300418; jumptable 00300418 default case
300432:  BLX             j__Z24HandleSlotSubmachineGunsv; jumptable 00300418 case 2
300436:  B               def_300418; jumptable 00300418 default case
300438:  BLX             j__Z18HandleSlotShotgunsv; jumptable 00300418 case 3
30043C:  B               def_300418; jumptable 00300418 default case
30043E:  BLX             j__Z23HandleSlotAssaultRiflesv; jumptable 00300418 case 4
300442:  B               def_300418; jumptable 00300418 default case
300444:  BLX             j__Z20HandleSlotLongRiflesv; jumptable 00300418 case 5
300448:  B               def_300418; jumptable 00300418 default case
30044A:  BLX             j__Z15HandleSlotThrowv; jumptable 00300418 case 6
30044E:  B               def_300418; jumptable 00300418 default case
300450:  BLX             j__Z19HandleSlotArtilleryv; jumptable 00300418 case 7
300454:  B               def_300418; jumptable 00300418 default case
300456:  BLX             j__Z15HandleSlotOtherv; jumptable 00300418 case 9
30045A:  B               def_300418; jumptable 00300418 default case
30045C:  BLX             j__Z19HandleSlotEquipmentv; jumptable 00300418 case 8
300460:  LDR             R0, =(dword_6866B8 - 0x30046A); jumptable 00300418 default case
300462:  MOV.W           R1, #0xFFFFFFFF
300466:  ADD             R0, PC; dword_6866B8
300468:  STR             R1, [R0]
30046A:  MOVS            R0, #0x97
30046C:  BLX             j__ZN15CTouchInterface12DeleteWidgetENS_9WidgetIDsE; CTouchInterface::DeleteWidget(CTouchInterface::WidgetIDs)
300470:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
300474:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
300478:  CMP             R0, #1
30047A:  BNE             locret_30048C
30047C:  MOV.W           R0, #0xFFFFFFFF; int
300480:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300484:  POP.W           {R7,LR}
300488:  B.W             j_j__ZN10CPlayerPed17ClearWeaponTargetEv; j_CPlayerPed::ClearWeaponTarget(void)
30048C:  POP             {R7,PC}
