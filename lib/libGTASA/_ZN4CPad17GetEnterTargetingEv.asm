; =========================================================
; Game Engine Function: _ZN4CPad17GetEnterTargetingEv
; Address            : 0x3FB49C - 0x3FB6AA
; =========================================================

3FB49C:  PUSH            {R4,R5,R7,LR}
3FB49E:  ADD             R7, SP, #8
3FB4A0:  LDRH.W          R0, [R0,#0x110]
3FB4A4:  CMP             R0, #0
3FB4A6:  BNE.W           loc_3FB660; jumptable 003FB570 cases 4,8,37,41,42
3FB4AA:  MOV.W           R0, #0xFFFFFFFF; int
3FB4AE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FB4B2:  MOV             R4, R0
3FB4B4:  MOVW            R1, #0x133; int
3FB4B8:  LDR.W           R0, [R4,#0x440]
3FB4BC:  ADDS            R0, #4; this
3FB4BE:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3FB4C2:  MOV             R5, R0
3FB4C4:  BLX             j__ZN14MobileSettings12IsLockOnModeEv; MobileSettings::IsLockOnMode(void)
3FB4C8:  CBNZ            R0, loc_3FB4D2
3FB4CA:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FB4CE:  CMP             R0, #1
3FB4D0:  BNE             loc_3FB550
3FB4D2:  CMP             R5, #0
3FB4D4:  BNE.W           loc_3FB660; jumptable 003FB570 cases 4,8,37,41,42
3FB4D8:  MOV.W           R0, #0xFFFFFFFF; int
3FB4DC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FB4E0:  CMP             R0, #0
3FB4E2:  BEQ.W           loc_3FB61A
3FB4E6:  MOV.W           R0, #0xFFFFFFFF; int
3FB4EA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FB4EE:  LDRSB.W         R1, [R0,#0x71C]
3FB4F2:  RSB.W           R1, R1, R1,LSL#3
3FB4F6:  ADD.W           R0, R0, R1,LSL#2
3FB4FA:  LDR.W           R0, [R0,#0x5A4]
3FB4FE:  SUBS            R0, #0x21 ; '!'
3FB500:  CMP             R0, #0xC
3FB502:  BHI.W           loc_3FB61A
3FB506:  MOVS            R1, #1
3FB508:  LSL.W           R0, R1, R0; this
3FB50C:  MOVW            R1, #0x1C0F
3FB510:  TST             R0, R1
3FB512:  BEQ.W           loc_3FB61A
3FB516:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FB51A:  CBZ             R0, loc_3FB526
3FB51C:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FB520:  CMP             R0, #2
3FB522:  BNE.W           loc_3FB64A
3FB526:  MOVS            R0, #0x13
3FB528:  MOVS            R1, #0
3FB52A:  MOVS            R2, #1
3FB52C:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FB530:  CMP             R0, #1
3FB532:  BNE.W           loc_3FB64A
3FB536:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
3FB53A:  VMOV            D16, R0, R1
3FB53E:  LDR             R0, =(unk_959E20 - 0x3FB548)
3FB540:  VCVT.F32.F64    S0, D16
3FB544:  ADD             R0, PC; unk_959E20
3FB546:  VSTR            S0, [R0]
3FB54A:  MOVS            R4, #1
3FB54C:  MOV             R0, R4
3FB54E:  POP             {R4,R5,R7,PC}
3FB550:  BLX             j__ZN14MobileSettings13IsFreeAimModeEv; MobileSettings::IsFreeAimMode(void)
3FB554:  CMP             R0, #1
3FB556:  BNE.W           loc_3FB660; jumptable 003FB570 cases 4,8,37,41,42
3FB55A:  LDRSB.W         R0, [R4,#0x71C]
3FB55E:  RSB.W           R0, R0, R0,LSL#3
3FB562:  ADD.W           R0, R4, R0,LSL#2
3FB566:  LDR.W           R0, [R0,#0x5A4]
3FB56A:  SUBS            R0, #4; switch 39 cases
3FB56C:  CMP             R0, #0x26 ; '&'
3FB56E:  BHI             def_3FB570; jumptable 003FB570 default case, cases 5-7,9-36,38-40
3FB570:  TBB.W           [PC,R0]; switch jump
3FB574:  DCB 0x76; jump table for switch statement
3FB575:  DCB 0x14
3FB576:  DCB 0x14
3FB577:  DCB 0x14
3FB578:  DCB 0x76
3FB579:  DCB 0x14
3FB57A:  DCB 0x14
3FB57B:  DCB 0x14
3FB57C:  DCB 0x14
3FB57D:  DCB 0x14
3FB57E:  DCB 0x14
3FB57F:  DCB 0x14
3FB580:  DCB 0x14
3FB581:  DCB 0x14
3FB582:  DCB 0x14
3FB583:  DCB 0x14
3FB584:  DCB 0x14
3FB585:  DCB 0x14
3FB586:  DCB 0x14
3FB587:  DCB 0x14
3FB588:  DCB 0x14
3FB589:  DCB 0x14
3FB58A:  DCB 0x14
3FB58B:  DCB 0x14
3FB58C:  DCB 0x14
3FB58D:  DCB 0x14
3FB58E:  DCB 0x14
3FB58F:  DCB 0x14
3FB590:  DCB 0x14
3FB591:  DCB 0x14
3FB592:  DCB 0x14
3FB593:  DCB 0x14
3FB594:  DCB 0x14
3FB595:  DCB 0x76
3FB596:  DCB 0x14
3FB597:  DCB 0x14
3FB598:  DCB 0x14
3FB599:  DCB 0x76
3FB59A:  DCB 0x76
3FB59B:  ALIGN 2
3FB59C:  CMP             R5, #0; jumptable 003FB570 default case, cases 5-7,9-36,38-40
3FB59E:  BNE             loc_3FB660; jumptable 003FB570 cases 4,8,37,41,42
3FB5A0:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FB5A4:  CMP             R0, #2
3FB5A6:  BNE             loc_3FB5FA
3FB5A8:  MOV.W           R0, #0xFFFFFFFF; int
3FB5AC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FB5B0:  CBZ             R0, loc_3FB5DE
3FB5B2:  MOV.W           R0, #0xFFFFFFFF; int
3FB5B6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FB5BA:  LDRSB.W         R1, [R0,#0x71C]
3FB5BE:  RSB.W           R1, R1, R1,LSL#3
3FB5C2:  ADD.W           R0, R0, R1,LSL#2
3FB5C6:  LDR.W           R0, [R0,#0x5A4]
3FB5CA:  SUBS            R0, #0x21 ; '!'
3FB5CC:  CMP             R0, #0xC
3FB5CE:  BHI             loc_3FB5DE
3FB5D0:  MOVS            R1, #1
3FB5D2:  LSL.W           R0, R1, R0
3FB5D6:  MOVW            R1, #0x1C0F
3FB5DA:  TST             R0, R1
3FB5DC:  BNE             loc_3FB5FA
3FB5DE:  MOVS            R0, #1
3FB5E0:  MOVS            R1, #0
3FB5E2:  MOVS            R2, #1
3FB5E4:  MOVS            R4, #1
3FB5E6:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FB5EA:  CBNZ            R0, loc_3FB662
3FB5EC:  MOVS            R0, #0x13
3FB5EE:  MOVS            R1, #0
3FB5F0:  MOVS            R2, #1
3FB5F2:  MOVS            R4, #1
3FB5F4:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FB5F8:  CBNZ            R0, loc_3FB662
3FB5FA:  MOVS            R0, #0x13
3FB5FC:  MOVS            R1, #0
3FB5FE:  MOVS            R2, #1
3FB600:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FB604:  CMP             R0, #1
3FB606:  BNE             loc_3FB660; jumptable 003FB570 cases 4,8,37,41,42
3FB608:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
3FB60C:  VMOV            D16, R0, R1
3FB610:  LDR             R0, =(unk_959E20 - 0x3FB61A)
3FB612:  VCVT.F32.F64    S0, D16
3FB616:  ADD             R0, PC; unk_959E20
3FB618:  B               loc_3FB546
3FB61A:  LDRSB.W         R0, [R4,#0x71C]
3FB61E:  RSB.W           R0, R0, R0,LSL#3
3FB622:  ADD.W           R0, R4, R0,LSL#2
3FB626:  LDR.W           R0, [R0,#0x5A4]
3FB62A:  CMP             R0, #4
3FB62C:  IT NE
3FB62E:  CMPNE           R0, #8
3FB630:  BEQ             loc_3FB660; jumptable 003FB570 cases 4,8,37,41,42
3FB632:  LDR.W           R0, [R4,#0x440]; this
3FB636:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
3FB63A:  CBZ             R0, loc_3FB666
3FB63C:  MOVS            R0, #0x16
3FB63E:  MOVS            R1, #0
3FB640:  MOVS            R2, #1
3FB642:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FB646:  MOV             R5, R0
3FB648:  B               loc_3FB668
3FB64A:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FB64E:  CMP             R0, #1
3FB650:  BNE             loc_3FB660; jumptable 003FB570 cases 4,8,37,41,42
3FB652:  MOVS            R0, #0x13
3FB654:  MOVS            R1, #0
3FB656:  MOVS            R2, #1
3FB658:  MOVS            R4, #1
3FB65A:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FB65E:  CBNZ            R0, loc_3FB662
3FB660:  MOVS            R4, #0; jumptable 003FB570 cases 4,8,37,41,42
3FB662:  MOV             R0, R4
3FB664:  POP             {R4,R5,R7,PC}
3FB666:  MOVS            R5, #0
3FB668:  MOVS            R0, #0x24 ; '$'
3FB66A:  MOVS            R1, #0
3FB66C:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FB670:  CMP             R0, #1
3FB672:  ITT EQ
3FB674:  LDREQ.W         R0, [R4,#0x720]; this
3FB678:  CMPEQ           R0, #0
3FB67A:  BEQ             loc_3FB692
3FB67C:  MOVS            R0, #1
3FB67E:  MOVS            R1, #0
3FB680:  MOVS            R2, #1
3FB682:  MOVS            R4, #1
3FB684:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FB688:  ORRS            R0, R5
3FB68A:  IT EQ
3FB68C:  MOVEQ           R4, #0
3FB68E:  MOV             R0, R4
3FB690:  POP             {R4,R5,R7,PC}
3FB692:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FB696:  CMP             R0, #1
3FB698:  BNE.W           loc_3FB54A
3FB69C:  LDR.W           R0, [R4,#0x440]; this
3FB6A0:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
3FB6A4:  CMP             R0, #0
3FB6A6:  BNE             loc_3FB67C
3FB6A8:  B               loc_3FB54A
