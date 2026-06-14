; =========================================================
; Game Engine Function: _ZN6CCheat15HandleCheatMenuEb
; Address            : 0x2FF6F0 - 0x2FF830
; =========================================================

2FF6F0:  PUSH            {R4,R6,R7,LR}
2FF6F2:  ADD             R7, SP, #8
2FF6F4:  SUB.W           SP, SP, #0x420
2FF6F8:  MOV             R4, SP
2FF6FA:  BFC.W           R4, #0, #4
2FF6FE:  MOV             SP, R4
2FF700:  MOV             R4, R0
2FF702:  MOVS            R0, #0; this
2FF704:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2FF708:  LDRH            R0, [R0,#0xE]
2FF70A:  CBZ             R0, loc_2FF720
2FF70C:  MOVS            R0, #0; this
2FF70E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2FF712:  LDRH            R1, [R0,#0x12]
2FF714:  CBZ             R1, loc_2FF720
2FF716:  LDRH.W          R0, [R0,#0x42]
2FF71A:  CBZ             R0, loc_2FF730
2FF71C:  CBZ             R4, loc_2FF722
2FF71E:  B               loc_2FF730
2FF720:  CBNZ            R4, loc_2FF732
2FF722:  MOVS            R0, #0xAE
2FF724:  MOVS            R1, #0
2FF726:  MOVS            R2, #1
2FF728:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
2FF72C:  CMP             R0, #1
2FF72E:  BNE             loc_2FF828
2FF730:  CBZ             R4, loc_2FF742
2FF732:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FF738)
2FF734:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FF736:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2FF738:  LDR.W           R0, [R0,#(dword_6F3A00 - 0x6F3794)]
2FF73C:  CBZ             R0, loc_2FF758
2FF73E:  MOVS            R0, #0x9B
2FF740:  B               loc_2FF766
2FF742:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FF748)
2FF744:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FF746:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2FF748:  LDR.W           R0, [R0,#(dword_6F39F8 - 0x6F3794)]
2FF74C:  CBZ             R0, loc_2FF784
2FF74E:  MOVS            R0, #(stderr+1); this
2FF750:  MOVS            R1, #0; bool
2FF752:  BLX             j__ZN6CCheat17HandleMissionJumpEbi; CCheat::HandleMissionJump(bool,int)
2FF756:  B               loc_2FF822
2FF758:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FF75E)
2FF75A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FF75C:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2FF75E:  LDR.W           R0, [R0,#(dword_6F39F0 - 0x6F3794)]
2FF762:  CBZ             R0, loc_2FF796
2FF764:  MOVS            R0, #0x97
2FF766:  BLX             j__ZN15CTouchInterface12DeleteWidgetENS_9WidgetIDsE; CTouchInterface::DeleteWidget(CTouchInterface::WidgetIDs)
2FF76A:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
2FF76E:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2FF772:  CMP             R0, #1
2FF774:  BNE             loc_2FF822
2FF776:  MOV.W           R0, #0xFFFFFFFF; int
2FF77A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FF77E:  BLX             j__ZN10CPlayerPed17ClearWeaponTargetEv; CPlayerPed::ClearWeaponTarget(void)
2FF782:  B               loc_2FF822
2FF784:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FF78A)
2FF786:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FF788:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2FF78A:  LDR.W           R0, [R0,#(dword_6F39FC - 0x6F3794)]; this
2FF78E:  CBZ             R0, loc_2FF80E
2FF790:  BLX             j__ZN6CCheat16HandleGameCheatsEv; CCheat::HandleGameCheats(void)
2FF794:  B               loc_2FF822
2FF796:  LDR             R0, =(aChtMj0 - 0x2FF7A0); "CHT_MJ0"
2FF798:  ADD             R3, SP, #0x428+var_418
2FF79A:  LDR             R1, =(aChtMj4 - 0x2FF7A4); "CHT_MJ4"
2FF79C:  ADD             R0, PC; "CHT_MJ0"
2FF79E:  LDR             R2, =(aChtGam - 0x2FF7AC); "CHT_GAM"
2FF7A0:  ADD             R1, PC; "CHT_MJ4"
2FF7A2:  VMOV.32         D17[0], R0
2FF7A6:  LDR             R0, =(aChtMj2 - 0x2FF7B4); "CHT_MJ2"
2FF7A8:  ADD             R2, PC; "CHT_GAM"
2FF7AA:  VMOV.32         D19[0], R1
2FF7AE:  LDR             R1, =(aChtMj1 - 0x2FF7BA); "CHT_MJ1"
2FF7B0:  ADD             R0, PC; "CHT_MJ2"
2FF7B2:  VMOV.32         D16[0], R2
2FF7B6:  ADD             R1, PC; "CHT_MJ1"
2FF7B8:  LDR             R2, =(aChtFps - 0x2FF7C4); "CHT_FPS"
2FF7BA:  VMOV.32         D18[0], R0
2FF7BE:  LDR             R0, =(aChtCar - 0x2FF7CA); "CHT_CAR"
2FF7C0:  ADD             R2, PC; "CHT_FPS"
2FF7C2:  VMOV.32         D17[1], R1
2FF7C6:  ADD             R0, PC; "CHT_CAR"
2FF7C8:  LDR             R1, =(aChtMj3 - 0x2FF7D4); "CHT_MJ3"
2FF7CA:  VMOV.32         D16[1], R0
2FF7CE:  LDR             R0, =(_ZN15CWidgetListText13m_fLastScrollE_ptr - 0x2FF7DA)
2FF7D0:  ADD             R1, PC; "CHT_MJ3"
2FF7D2:  VMOV.32         D19[1], R2
2FF7D6:  ADD             R0, PC; _ZN15CWidgetListText13m_fLastScrollE_ptr
2FF7D8:  ADR             R2, dword_2FF830
2FF7DA:  VMOV.32         D18[1], R1
2FF7DE:  LDR             R1, [R0]; CWidgetListText::m_fLastScroll ...
2FF7E0:  ADD             R0, SP, #0x428+var_408
2FF7E2:  VLD1.64         {D20-D21}, [R2@128]
2FF7E6:  MOV             R2, R0
2FF7E8:  VST1.32         {D16-D17}, [R2]!
2FF7EC:  VST1.32         {D18-D19}, [R2]
2FF7F0:  MOVS            R2, #0
2FF7F2:  STR             R2, [R1]; CWidgetListText::m_fLastScroll
2FF7F4:  MOVS            R1, #1
2FF7F6:  VST1.64         {D20-D21}, [R3@128]
2FF7FA:  STRD.W          R2, R1, [SP,#0x428+var_428]
2FF7FE:  MOVS            R1, #8
2FF800:  STR             R2, [SP,#0x428+var_420]
2FF802:  MOVS            R2, #0x9B
2FF804:  BLX             j__ZN15CTouchInterface20CreateListTextWidgetEPPKciNS_9WidgetIDsER14WidgetPositionbbb; CTouchInterface::CreateListTextWidget(char const**,int,CTouchInterface::WidgetIDs,WidgetPosition &,bool,bool,bool)
2FF808:  BLX             j__ZN6CTimer14StartUserPauseEv; CTimer::StartUserPause(void)
2FF80C:  B               loc_2FF822
2FF80E:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FF814)
2FF810:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FF812:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2FF814:  LDR.W           R0, [R0,#(dword_6F39F4 - 0x6F3794)]; this
2FF818:  CMP             R0, #0
2FF81A:  BEQ.W           loc_2FF732
2FF81E:  BLX             j__ZN6CCheat14HandleCarCheatEv; CCheat::HandleCarCheat(void)
2FF822:  MOVS            R0, #0xAE
2FF824:  BLX             j__ZN15CTouchInterface15ClearTapHistoryENS_9WidgetIDsE; CTouchInterface::ClearTapHistory(CTouchInterface::WidgetIDs)
2FF828:  SUB.W           R4, R7, #-var_8
2FF82C:  MOV             SP, R4
2FF82E:  POP             {R4,R6,R7,PC}
