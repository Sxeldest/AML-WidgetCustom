; =========================================================
; Game Engine Function: _ZN6CCheat14HandleCarCheatEv
; Address            : 0x2FF4F8 - 0x2FF596
; =========================================================

2FF4F8:  PUSH            {R7,LR}
2FF4FA:  MOV             R7, SP
2FF4FC:  SUB.W           SP, SP, #0x408
2FF500:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FF506)
2FF502:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FF504:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2FF506:  LDR.W           R0, [R0,#(dword_6F39F4 - 0x6F3794)]
2FF50A:  CBZ             R0, loc_2FF542
2FF50C:  LDR             R0, =(_ZN15CWidgetListText13m_fLastScrollE_ptr - 0x2FF514)
2FF50E:  LDR             R1, =(_ZN4CPad21m_fLastCarCheatScrollE_ptr - 0x2FF516)
2FF510:  ADD             R0, PC; _ZN15CWidgetListText13m_fLastScrollE_ptr
2FF512:  ADD             R1, PC; _ZN4CPad21m_fLastCarCheatScrollE_ptr
2FF514:  LDR             R0, [R0]; CWidgetListText::m_fLastScroll ...
2FF516:  LDR             R1, [R1]; CPad::m_fLastCarCheatScroll ...
2FF518:  LDR             R0, [R0]; CWidgetListText::m_fLastScroll
2FF51A:  STR             R0, [R1]; CPad::m_fLastCarCheatScroll
2FF51C:  MOVS            R0, #0x98
2FF51E:  BLX             j__ZN15CTouchInterface12DeleteWidgetENS_9WidgetIDsE; CTouchInterface::DeleteWidget(CTouchInterface::WidgetIDs)
2FF522:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
2FF526:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2FF52A:  CMP             R0, #1
2FF52C:  BNE             loc_2FF590
2FF52E:  MOV.W           R0, #0xFFFFFFFF; int
2FF532:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FF536:  ADD.W           SP, SP, #0x408
2FF53A:  POP.W           {R7,LR}
2FF53E:  B.W             j_j__ZN10CPlayerPed17ClearWeaponTargetEv; j_CPlayerPed::ClearWeaponTarget(void)
2FF542:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2FF54E)
2FF544:  ADD.W           R12, SP, #0x410+var_408
2FF548:  MOVS            R0, #0
2FF54A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2FF54C:  LDR             R2, [R1]; CModelInfo::ms_modelInfoPtrs ...
2FF54E:  MOVS            R1, #0
2FF550:  ADD.W           R3, R2, R0,LSL#2
2FF554:  ADDS            R0, #1
2FF556:  LDR.W           R3, [R3,#0x640]
2FF55A:  CMP             R3, #0
2FF55C:  ITTT NE
2FF55E:  ADDNE           R3, #0x4A ; 'J'
2FF560:  STRNE.W         R3, [R12,R1,LSL#2]
2FF564:  ADDNE           R1, #1
2FF566:  CMP             R0, #0xD4
2FF568:  BNE             loc_2FF550
2FF56A:  LDR             R0, =(_ZN4CPad21m_fLastCarCheatScrollE_ptr - 0x2FF574)
2FF56C:  MOVS            R3, #1
2FF56E:  LDR             R2, =(_ZN15CWidgetListText13m_fLastScrollE_ptr - 0x2FF576)
2FF570:  ADD             R0, PC; _ZN4CPad21m_fLastCarCheatScrollE_ptr
2FF572:  ADD             R2, PC; _ZN15CWidgetListText13m_fLastScrollE_ptr
2FF574:  LDR             R0, [R0]; CPad::m_fLastCarCheatScroll ...
2FF576:  LDR             R2, [R2]; CWidgetListText::m_fLastScroll ...
2FF578:  LDR             R0, [R0]; CPad::m_fLastCarCheatScroll
2FF57A:  STR             R0, [R2]; CWidgetListText::m_fLastScroll
2FF57C:  MOVS            R0, #0
2FF57E:  MOVS            R2, #1
2FF580:  STRD.W          R2, R0, [SP,#0x410+var_410]
2FF584:  ADD             R0, SP, #0x410+var_408
2FF586:  MOVS            R2, #0x98
2FF588:  BLX             j__ZN15CTouchInterface20CreateListTextWidgetEPPKciNS_9WidgetIDsEbbb; CTouchInterface::CreateListTextWidget(char const**,int,CTouchInterface::WidgetIDs,bool,bool,bool)
2FF58C:  BLX             j__ZN6CTimer14StartUserPauseEv; CTimer::StartUserPause(void)
2FF590:  ADD.W           SP, SP, #0x408
2FF594:  POP             {R7,PC}
