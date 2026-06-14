; =========================================================
; Game Engine Function: _ZN6CCheat16HandleGameCheatsEv
; Address            : 0x2FF448 - 0x2FF4E0
; =========================================================

2FF448:  PUSH            {R7,LR}
2FF44A:  MOV             R7, SP
2FF44C:  SUB.W           SP, SP, #0x408
2FF450:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FF456)
2FF452:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FF454:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2FF456:  LDR.W           R0, [R0,#(dword_6F39FC - 0x6F3794)]
2FF45A:  CBZ             R0, loc_2FF492
2FF45C:  LDR             R0, =(_ZN15CWidgetListText13m_fLastScrollE_ptr - 0x2FF464)
2FF45E:  LDR             R1, =(_ZN4CPad18m_fLastCheatScrollE_ptr - 0x2FF466)
2FF460:  ADD             R0, PC; _ZN15CWidgetListText13m_fLastScrollE_ptr
2FF462:  ADD             R1, PC; _ZN4CPad18m_fLastCheatScrollE_ptr
2FF464:  LDR             R0, [R0]; CWidgetListText::m_fLastScroll ...
2FF466:  LDR             R1, [R1]; CPad::m_fLastCheatScroll ...
2FF468:  LDR             R0, [R0]; CWidgetListText::m_fLastScroll
2FF46A:  STR             R0, [R1]; CPad::m_fLastCheatScroll
2FF46C:  MOVS            R0, #0x9A
2FF46E:  BLX             j__ZN15CTouchInterface12DeleteWidgetENS_9WidgetIDsE; CTouchInterface::DeleteWidget(CTouchInterface::WidgetIDs)
2FF472:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
2FF476:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2FF47A:  CMP             R0, #1
2FF47C:  BNE             loc_2FF4DA
2FF47E:  MOV.W           R0, #0xFFFFFFFF; int
2FF482:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FF486:  ADD.W           SP, SP, #0x408
2FF48A:  POP.W           {R7,LR}
2FF48E:  B.W             j_j__ZN10CPlayerPed17ClearWeaponTargetEv; j_CPlayerPed::ClearWeaponTarget(void)
2FF492:  LDR             R1, =(_ZN6CCheat10CheatLabelE_ptr - 0x2FF49E)
2FF494:  ADD.W           R12, SP, #0x410+var_408
2FF498:  MOVS            R0, #0
2FF49A:  ADD             R1, PC; _ZN6CCheat10CheatLabelE_ptr
2FF49C:  LDR             R2, [R1]; CCheat::CheatLabel ...
2FF49E:  MOVS            R1, #0
2FF4A0:  LDR.W           R3, [R2,R0,LSL#2]
2FF4A4:  ADDS            R0, #1
2FF4A6:  CMP             R3, #0
2FF4A8:  ITT NE
2FF4AA:  STRNE.W         R3, [R12,R1,LSL#2]
2FF4AE:  ADDNE           R1, #1
2FF4B0:  CMP             R0, #0x6F ; 'o'
2FF4B2:  BNE             loc_2FF4A0
2FF4B4:  LDR             R0, =(_ZN4CPad18m_fLastCheatScrollE_ptr - 0x2FF4BE)
2FF4B6:  MOVS            R3, #0
2FF4B8:  LDR             R2, =(_ZN15CWidgetListText13m_fLastScrollE_ptr - 0x2FF4C0)
2FF4BA:  ADD             R0, PC; _ZN4CPad18m_fLastCheatScrollE_ptr
2FF4BC:  ADD             R2, PC; _ZN15CWidgetListText13m_fLastScrollE_ptr
2FF4BE:  LDR             R0, [R0]; CPad::m_fLastCheatScroll ...
2FF4C0:  LDR             R2, [R2]; CWidgetListText::m_fLastScroll ...
2FF4C2:  LDR             R0, [R0]; CPad::m_fLastCheatScroll
2FF4C4:  STR             R0, [R2]; CWidgetListText::m_fLastScroll
2FF4C6:  MOVS            R0, #1
2FF4C8:  MOVS            R2, #0
2FF4CA:  STRD.W          R2, R0, [SP,#0x410+var_410]
2FF4CE:  ADD             R0, SP, #0x410+var_408
2FF4D0:  MOVS            R2, #0x9A
2FF4D2:  BLX             j__ZN15CTouchInterface20CreateListTextWidgetEPPKciNS_9WidgetIDsEbbb; CTouchInterface::CreateListTextWidget(char const**,int,CTouchInterface::WidgetIDs,bool,bool,bool)
2FF4D6:  BLX             j__ZN6CTimer14StartUserPauseEv; CTimer::StartUserPause(void)
2FF4DA:  ADD.W           SP, SP, #0x408
2FF4DE:  POP             {R7,PC}
