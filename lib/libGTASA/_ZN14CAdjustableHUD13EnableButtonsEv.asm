; =========================================================
; Game Engine Function: _ZN14CAdjustableHUD13EnableButtonsEv
; Address            : 0x285468 - 0x285640
; =========================================================

285468:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x285474)
28546A:  MOVS            R2, #1
28546C:  STRB.W          R2, [R0,#0xDC]
285470:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
285472:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
285474:  LDR             R1, [R1,#(dword_6F37E8 - 0x6F3794)]
285476:  CBZ             R1, loc_285486
285478:  LDRB.W          R1, [R1,#0x4E]
28547C:  CMP             R1, #0
28547E:  ITT NE
285480:  MOVNE           R1, #0
285482:  STRBNE.W        R1, [R0,#0xDC]
285486:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x28548C)
285488:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
28548A:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
28548C:  LDR.W           R1, [R1,#(dword_6F3818 - 0x6F3794)]
285490:  CBZ             R1, loc_2854A0
285492:  LDRB.W          R1, [R1,#0x4E]
285496:  CMP             R1, #0
285498:  ITT NE
28549A:  MOVNE           R1, #0
28549C:  STRBNE.W        R1, [R0,#0xDC]
2854A0:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2854A6)
2854A2:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2854A4:  LDR             R2, [R1]; CTouchInterface::m_pWidgets ...
2854A6:  MOVS            R1, #1
2854A8:  STRB.W          R1, [R0,#0x104]
2854AC:  LDR             R2, [R2,#(dword_6F37EC - 0x6F3794)]
2854AE:  CMP             R2, #0
2854B0:  ITTT NE
2854B2:  LDRBNE.W        R2, [R2,#0x4E]
2854B6:  EORNE.W         R2, R2, #1
2854BA:  STRBNE.W        R2, [R0,#0x104]
2854BE:  STRB.W          R1, [R0,#0x12C]
2854C2:  LDR             R2, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2854C8)
2854C4:  ADD             R2, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2854C6:  LDR             R2, [R2]; CTouchInterface::m_pWidgets ...
2854C8:  LDR             R1, [R2,#(dword_6F3808 - 0x6F3794)]
2854CA:  CBZ             R1, loc_2854DA
2854CC:  LDRB.W          R1, [R1,#0x4E]
2854D0:  CMP             R1, #0
2854D2:  ITT NE
2854D4:  MOVNE           R1, #0
2854D6:  STRBNE.W        R1, [R0,#0x12C]
2854DA:  PUSH            {R4,R6,R7,LR}
2854DC:  ADD             R7, SP, #8
2854DE:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2854E4)
2854E0:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2854E2:  LDR             R3, [R1]; CTouchInterface::m_pWidgets ...
2854E4:  MOVS            R1, #1
2854E6:  STRB.W          R1, [R0,#0x154]
2854EA:  LDR.W           R12, [R3,#(dword_6F3804 - 0x6F3794)]
2854EE:  LDRD.W          R2, R4, [R3,#(dword_6F38A8 - 0x6F3794)]
2854F2:  LDRD.W          R1, LR, [R3,#(dword_6F38B0 - 0x6F3794)]
2854F6:  CMP             R2, #0
2854F8:  ITT NE
2854FA:  LDRBNE.W        R2, [R2,#0x4E]
2854FE:  CMPNE           R2, #0
285500:  BNE             loc_285536
285502:  CMP             R1, #0
285504:  ITT NE
285506:  LDRBNE.W        R1, [R1,#0x4E]
28550A:  CMPNE           R1, #0
28550C:  BNE             loc_285536
28550E:  CMP             R4, #0
285510:  ITT NE
285512:  LDRBNE.W        R1, [R4,#0x4E]
285516:  CMPNE           R1, #0
285518:  BNE             loc_285536
28551A:  CMP.W           LR, #0
28551E:  ITT NE
285520:  LDRBNE.W        R1, [LR,#0x4E]
285524:  CMPNE           R1, #0
285526:  BNE             loc_285536
285528:  CMP.W           R12, #0
28552C:  ITT NE
28552E:  LDRBNE.W        R1, [R12,#0x4E]
285532:  CMPNE           R1, #0
285534:  BEQ             loc_28553C
285536:  MOVS            R1, #0
285538:  STRB.W          R1, [R0,#0x154]
28553C:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x285544)
28553E:  MOVS            R3, #1
285540:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
285542:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
285544:  LDR             R2, [R1,#(dword_6F37D4 - 0x6F3794)]
285546:  LDR             R1, [R1,#(dword_6F37FC - 0x6F3794)]
285548:  STRB.W          R3, [R0,#0x294]
28554C:  CMP             R2, #0
28554E:  ITT NE
285550:  LDRBNE.W        R2, [R2,#0x4E]
285554:  CMPNE           R2, #0
285556:  BNE             loc_285560
285558:  CBZ             R1, loc_28556A
28555A:  LDRB.W          R1, [R1,#0x4E]
28555E:  CBZ             R1, loc_28556A
285560:  MOV.W           R12, #0
285564:  STRB.W          R12, [R0,#0x294]
285568:  B               loc_28556E
28556A:  MOV.W           R12, #1
28556E:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x285576)
285570:  MOVS            R4, #1
285572:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
285574:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
285576:  LDR             R3, [R1,#(dword_6F37D8 - 0x6F3794)]
285578:  LDR             R2, [R1,#(dword_6F3800 - 0x6F3794)]
28557A:  STRB.W          R4, [R0,#0x2BC]
28557E:  CMP             R3, #0
285580:  ITT NE
285582:  LDRBNE.W        R1, [R3,#0x4E]
285586:  CMPNE           R1, #0
285588:  BNE             loc_285592
28558A:  CBZ             R2, loc_28559C
28558C:  LDRB.W          R1, [R2,#0x4E]
285590:  CBZ             R1, loc_28559C
285592:  MOV.W           LR, #0
285596:  STRB.W          LR, [R0,#0x2BC]
28559A:  B               loc_2855A0
28559C:  MOV.W           LR, #1
2855A0:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x2855A8)
2855A2:  LDR             R4, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2855AA)
2855A4:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
2855A6:  ADD             R4, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2855A8:  LDR             R1, [R1]; MobileSettings::settings ...
2855AA:  LDR             R4, [R4]; CTouchInterface::m_pWidgets ...
2855AC:  LDR             R3, [R1,#(dword_6E045C - 0x6E03F4)]
2855AE:  MOVS            R1, #0
2855B0:  CMP             R3, #1
2855B2:  IT NE
2855B4:  MOVNE           R1, #1
2855B6:  STRB.W          R1, [R0,#0x21C]
2855BA:  STRB.W          R1, [R0,#0x1F4]
2855BE:  LDR.W           R1, [R4,#(dword_6F385C - 0x6F3794)]
2855C2:  CBZ             R1, loc_2855D2
2855C4:  LDRB.W          R1, [R1,#0x4E]
2855C8:  CMP             R1, #0
2855CA:  ITT NE
2855CC:  MOVNE           R1, #0
2855CE:  STRBNE.W        R1, [R0,#0x1F4]
2855D2:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2855D8)
2855D4:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2855D6:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2855D8:  LDR.W           R1, [R1,#(dword_6F3860 - 0x6F3794)]
2855DC:  CBZ             R1, loc_2855EC
2855DE:  LDRB.W          R1, [R1,#0x4E]
2855E2:  CMP             R1, #0
2855E4:  ITT NE
2855E6:  MOVNE           R1, #0
2855E8:  STRBNE.W        R1, [R0,#0x21C]
2855EC:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x2855F6)
2855EE:  MOVS            R2, #1
2855F0:  LDR             R4, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2855F8)
2855F2:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
2855F4:  ADD             R4, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2855F6:  LDR             R1, [R1]; MobileSettings::settings ...
2855F8:  LDR             R4, [R4]; CTouchInterface::m_pWidgets ...
2855FA:  LDR.W           R1, [R1,#(dword_6E051C - 0x6E03F4)]
2855FE:  STRB.W          R2, [R0,#0x35C]
285602:  CMP             R1, #0
285604:  IT NE
285606:  MOVNE           R1, #1
285608:  STRB.W          R1, [R0,#0x1A4]
28560C:  STRB.W          R1, [R0,#0x17C]
285610:  STRB.W          R1, [R0,#0x30C]
285614:  LDR             R1, [R4,#(dword_6F37C4 - 0x6F3794)]
285616:  CBZ             R1, loc_285626
285618:  LDRB.W          R1, [R1,#0x4E]
28561C:  CMP             R1, #0
28561E:  ITT NE
285620:  MOVNE           R1, #0
285622:  STRBNE.W        R1, [R0,#0x35C]
285626:  CMP             R3, #1
285628:  IT EQ
28562A:  POPEQ           {R4,R6,R7,PC}
28562C:  MOVS            R1, #1
28562E:  STRB.W          LR, [R0,#0x21C]
285632:  STRB.W          R12, [R0,#0x1F4]
285636:  STRB.W          R1, [R0,#0x294]
28563A:  STRB.W          R1, [R0,#0x2BC]
28563E:  POP             {R4,R6,R7,PC}
