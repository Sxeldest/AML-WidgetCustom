; =========================================================
; Game Engine Function: _ZN6CCheat17HandleMissionJumpEbi
; Address            : 0x2FF5B0 - 0x2FF6B6
; =========================================================

2FF5B0:  PUSH            {R4-R7,LR}
2FF5B2:  ADD             R7, SP, #0xC
2FF5B4:  PUSH.W          {R8-R11}
2FF5B8:  SUB.W           SP, SP, #0x408
2FF5BC:  SUB             SP, SP, #4
2FF5BE:  CMP             R0, #1
2FF5C0:  BNE             loc_2FF6AA
2FF5C2:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FF5C8)
2FF5C4:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FF5C6:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2FF5C8:  LDR.W           R0, [R0,#(dword_6F39F8 - 0x6F3794)]
2FF5CC:  CBZ             R0, loc_2FF60A
2FF5CE:  LDR             R0, =(_ZN15CWidgetListText13m_fLastScrollE_ptr - 0x2FF5D6)
2FF5D0:  LDR             R1, =(_ZN4CPad24m_fLastMissionSkipScrollE_ptr - 0x2FF5D8)
2FF5D2:  ADD             R0, PC; _ZN15CWidgetListText13m_fLastScrollE_ptr
2FF5D4:  ADD             R1, PC; _ZN4CPad24m_fLastMissionSkipScrollE_ptr
2FF5D6:  LDR             R0, [R0]; CWidgetListText::m_fLastScroll ...
2FF5D8:  LDR             R1, [R1]; CPad::m_fLastMissionSkipScroll ...
2FF5DA:  LDR             R0, [R0]; CWidgetListText::m_fLastScroll
2FF5DC:  STR             R0, [R1]; CPad::m_fLastMissionSkipScroll
2FF5DE:  MOVS            R0, #0x99
2FF5E0:  BLX             j__ZN15CTouchInterface12DeleteWidgetENS_9WidgetIDsE; CTouchInterface::DeleteWidget(CTouchInterface::WidgetIDs)
2FF5E4:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
2FF5E8:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2FF5EC:  CMP             R0, #1
2FF5EE:  BNE             loc_2FF6AA
2FF5F0:  MOV.W           R0, #0xFFFFFFFF; int
2FF5F4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FF5F8:  ADD.W           SP, SP, #0x408
2FF5FC:  ADD             SP, SP, #4
2FF5FE:  POP.W           {R8-R11}
2FF602:  POP.W           {R4-R7,LR}
2FF606:  B.W             j_j__ZN10CPlayerPed17ClearWeaponTargetEv; j_CPlayerPed::ClearWeaponTarget(void)
2FF60A:  LDR             R2, =(SkipToMissionPage_ptr - 0x2FF614)
2FF60C:  LDR             R3, =(numMissions_ptr - 0x2FF616)
2FF60E:  LDR             R0, =(currentMissionPage_ptr - 0x2FF618)
2FF610:  ADD             R2, PC; SkipToMissionPage_ptr
2FF612:  ADD             R3, PC; numMissions_ptr
2FF614:  ADD             R0, PC; currentMissionPage_ptr
2FF616:  LDR             R2, [R2]; SkipToMissionPage
2FF618:  LDR             R3, [R3]; numMissions
2FF61A:  LDR             R6, [R0]; currentMissionPage
2FF61C:  SUBS            R0, R1, #1
2FF61E:  STR             R1, [R2]
2FF620:  LDR.W           R1, [R3,R0,LSL#2]
2FF624:  STR             R0, [R6]
2FF626:  CMP             R1, #1
2FF628:  BLT             loc_2FF682
2FF62A:  LDR             R1, =(missionLabel_ptr - 0x2FF638)
2FF62C:  MOVS            R2, #0
2FF62E:  MOV.W           R10, #0
2FF632:  MOVS            R4, #0
2FF634:  ADD             R1, PC; missionLabel_ptr
2FF636:  LDR.W           R8, [R1]; missionLabel
2FF63A:  LDR             R1, =(numMissions_ptr - 0x2FF640)
2FF63C:  ADD             R1, PC; numMissions_ptr
2FF63E:  LDR             R6, [R1]; numMissions
2FF640:  LDR             R1, =(missionList_ptr - 0x2FF646)
2FF642:  ADD             R1, PC; missionList_ptr
2FF644:  LDR.W           R9, [R1]; missionList
2FF648:  LDR             R1, =(currentMissionPage_ptr - 0x2FF64E)
2FF64A:  ADD             R1, PC; currentMissionPage_ptr
2FF64C:  LDR.W           R11, [R1]; currentMissionPage
2FF650:  ADD.W           R1, R8, R0,LSL#12
2FF654:  ADD.W           R1, R1, R2,LSL#4; char *
2FF658:  CBZ             R1, loc_2FF670
2FF65A:  ADD.W           R5, R9, R2,LSL#6
2FF65E:  MOV             R0, R5; char *
2FF660:  BLX             strcpy
2FF664:  ADD             R0, SP, #0x428+var_41C
2FF666:  STR.W           R5, [R0,R4,LSL#2]
2FF66A:  ADDS            R4, #1
2FF66C:  LDR.W           R0, [R11]
2FF670:  ADD.W           R10, R10, #1
2FF674:  LDR.W           R1, [R6,R0,LSL#2]
2FF678:  UXTH.W          R2, R10
2FF67C:  CMP             R1, R2
2FF67E:  BGT             loc_2FF650
2FF680:  B               loc_2FF684
2FF682:  MOVS            R4, #0
2FF684:  LDR             R0, =(_ZN4CPad24m_fLastMissionSkipScrollE_ptr - 0x2FF690)
2FF686:  MOVS            R2, #0x99
2FF688:  LDR             R1, =(_ZN15CWidgetListText13m_fLastScrollE_ptr - 0x2FF692)
2FF68A:  MOVS            R3, #0
2FF68C:  ADD             R0, PC; _ZN4CPad24m_fLastMissionSkipScrollE_ptr
2FF68E:  ADD             R1, PC; _ZN15CWidgetListText13m_fLastScrollE_ptr
2FF690:  LDR             R0, [R0]; CPad::m_fLastMissionSkipScroll ...
2FF692:  LDR             R1, [R1]; CWidgetListText::m_fLastScroll ...
2FF694:  LDR             R0, [R0]; CPad::m_fLastMissionSkipScroll
2FF696:  STR             R0, [R1]; CWidgetListText::m_fLastScroll
2FF698:  MOVS            R0, #1
2FF69A:  STRD.W          R0, R0, [SP,#0x428+var_428]
2FF69E:  ADD             R0, SP, #0x428+var_41C
2FF6A0:  MOV             R1, R4
2FF6A2:  BLX             j__ZN15CTouchInterface20CreateListTextWidgetEPPKciNS_9WidgetIDsEbbb; CTouchInterface::CreateListTextWidget(char const**,int,CTouchInterface::WidgetIDs,bool,bool,bool)
2FF6A6:  BLX             j__ZN6CTimer14StartUserPauseEv; CTimer::StartUserPause(void)
2FF6AA:  ADD.W           SP, SP, #0x408
2FF6AE:  ADD             SP, SP, #4
2FF6B0:  POP.W           {R8-R11}
2FF6B4:  POP             {R4-R7,PC}
