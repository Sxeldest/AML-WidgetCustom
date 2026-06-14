; =========================================================
; Game Engine Function: _ZN12CMenuManager18ProcessMenuOptionsEaPhh
; Address            : 0x432394 - 0x432814
; =========================================================

432394:  PUSH            {R4-R7,LR}
432396:  ADD             R7, SP, #0xC
432398:  PUSH.W          {R8}
43239C:  SUB             SP, SP, #8; int
43239E:  MOV             R4, R0
4323A0:  MOV             R6, R3
4323A2:  LDRB.W          R0, [R4,#0x7C]
4323A6:  MOV             R8, R2
4323A8:  MOV             R5, R1
4323AA:  CMP             R0, #0
4323AC:  BEQ             loc_43244A
4323AE:  LDR.W           R0, =(aScreens_ptr - 0x4323BC)
4323B2:  MOVS            R3, #0xE2
4323B4:  LDRSB.W         R1, [R4,#0x121]
4323B8:  ADD             R0, PC; aScreens_ptr
4323BA:  LDR             R2, [R4,#0x38]
4323BC:  LDR             R0, [R0]; "FEP_STA" ...
4323BE:  SMLABB.W        R0, R1, R3, R0
4323C2:  ADD.W           R1, R2, R2,LSL#3
4323C6:  ADD.W           R0, R0, R1,LSL#1
4323CA:  LDRSH.W         R3, [R0,#0x18]
4323CE:  LDR.W           R0, =(RsGlobal_ptr - 0x4323D6)
4323D2:  ADD             R0, PC; RsGlobal_ptr
4323D4:  LDR             R0, [R0]; RsGlobal
4323D6:  VLDR            S0, [R0,#4]
4323DA:  VCVT.F32.S32    S0, S0
4323DE:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
4323E0:  CMP.W           R0, #0x1C0
4323E4:  VCVT.S32.F32    S0, S0
4323E8:  VMOV            R2, S0; int
4323EC:  BNE             loc_4323FC
4323EE:  ADD.W           R0, R3, #0x19
4323F2:  VMOV            S0, R0
4323F6:  VCVT.F32.S32    S0, S0
4323FA:  B               loc_432438
4323FC:  UXTH            R1, R3
4323FE:  VLDR            S2, =448.0
432402:  SXTH            R1, R1
432404:  VMOV            S0, R1
432408:  ADD.W           R1, R3, #0x19
43240C:  VCVT.F32.S32    S0, S0
432410:  VMOV            S4, R1
432414:  VCVT.F32.S32    S4, S4
432418:  VDIV.F32        S0, S0, S2
43241C:  VDIV.F32        S2, S4, S2
432420:  VMOV            S4, R0
432424:  VCVT.F32.S32    S4, S4
432428:  VMUL.F32        S6, S0, S4
43242C:  VMUL.F32        S0, S2, S4
432430:  VCVT.S32.F32    S2, S6
432434:  VMOV            R3, S2; int
432438:  VCVT.S32.F32    S0, S0
43243C:  MOV             R0, R4; this
43243E:  MOVS            R1, #0; int
432440:  VSTR            S0, [SP,#0x18+var_18]
432444:  BLX             j__ZN12CMenuManager10CheckHoverEiiii; CMenuManager::CheckHover(int,int,int,int)
432448:  CBZ             R0, def_432486; jumptable 00432486 default case
43244A:  MOV             R0, R4; this
43244C:  MOV             R1, R5; signed __int8
43244E:  MOV             R2, R6; unsigned __int8
432450:  BLX             j__ZN12CMenuManager20ProcessPCMenuOptionsEah; CMenuManager::ProcessPCMenuOptions(signed char,uchar)
432454:  CBZ             R0, loc_43245E
432456:  ADD             SP, SP, #8; jumptable 00432486 default case
432458:  POP.W           {R8}
43245C:  POP             {R4-R7,PC}
43245E:  LDR.W           R0, =(aScreens_ptr - 0x43246C)
432462:  MOVS            R3, #0xE2
432464:  LDRSB.W         R2, [R4,#0x121]
432468:  ADD             R0, PC; aScreens_ptr
43246A:  LDR             R1, [R4,#0x38]
43246C:  LDR             R0, [R0]; "FEP_STA" ...
43246E:  SMLABB.W        R0, R2, R3, R0
432472:  ADD.W           R3, R1, R1,LSL#3
432476:  ADD.W           R0, R0, R3,LSL#1
43247A:  LDRB            R0, [R0,#0xA]
43247C:  SUBS            R6, R0, #2; switch 69 cases
43247E:  CMP             R6, #0x44 ; 'D'
432480:  BHI             def_432486; jumptable 00432486 default case
432482:  UXTB.W          R12, R2
432486:  TBH.W           [PC,R6,LSL#1]; switch jump
43248A:  DCW 0x58; jump table for switch statement
43248C:  DCW 0x46
43248E:  DCW 0x46
432490:  DCW 0x46
432492:  DCW 0x45
432494:  DCW 0x45
432496:  DCW 0x45
432498:  DCW 0x45
43249A:  DCW 0xD8
43249C:  DCW 0x5C
43249E:  DCW 0xE0
4324A0:  DCW 0xE7
4324A2:  DCW 0x12B
4324A4:  DCW 0x45
4324A6:  DCW 0x45
4324A8:  DCW 0x45
4324AA:  DCW 0x133
4324AC:  DCW 0x45
4324AE:  DCW 0x45
4324B0:  DCW 0x45
4324B2:  DCW 0x45
4324B4:  DCW 0x85
4324B6:  DCW 0x45
4324B8:  DCW 0x8E
4324BA:  DCW 0x97
4324BC:  DCW 0x45
4324BE:  DCW 0x45
4324C0:  DCW 0x45
4324C2:  DCW 0xA0
4324C4:  DCW 0x164
4324C6:  DCW 0x172
4324C8:  DCW 0x18F
4324CA:  DCW 0x45
4324CC:  DCW 0x198
4324CE:  DCW 0xAE
4324D0:  DCW 0x45
4324D2:  DCW 0x45
4324D4:  DCW 0x45
4324D6:  DCW 0x45
4324D8:  DCW 0x45
4324DA:  DCW 0x45
4324DC:  DCW 0x45
4324DE:  DCW 0x45
4324E0:  DCW 0x45
4324E2:  DCW 0x45
4324E4:  DCW 0x45
4324E6:  DCW 0x45
4324E8:  DCW 0x45
4324EA:  DCW 0x45
4324EC:  DCW 0x45
4324EE:  DCW 0x45
4324F0:  DCW 0x45
4324F2:  DCW 0x45
4324F4:  DCW 0x45
4324F6:  DCW 0x45
4324F8:  DCW 0x45
4324FA:  DCW 0x45
4324FC:  DCW 0x45
4324FE:  DCW 0x45
432500:  DCW 0x45
432502:  DCW 0x45
432504:  DCW 0x45
432506:  DCW 0x45
432508:  DCW 0x45
43250A:  DCW 0x45
43250C:  DCW 0x45
43250E:  DCW 0x45
432510:  DCW 0x45
432512:  DCW 0xCF
432514:  B               def_432486; jumptable 00432486 cases 6-9,15-17,19-22,24,27-29,34,37-69
432516:  LDR             R0, =(aScreens_ptr - 0x43251E); jumptable 00432486 cases 3-5
432518:  MOVS            R1, #0xE2
43251A:  ADD             R0, PC; aScreens_ptr
43251C:  LDR             R0, [R0]; "FEP_STA" ...
43251E:  SMLABB.W        R0, R2, R1, R0
432522:  ADD.W           R0, R0, R3,LSL#1
432526:  LDRSB.W         R1, [R0,#0x14]; signed __int8
43252A:  MOV             R0, R4; this
43252C:  ADD             SP, SP, #8
43252E:  POP.W           {R8}
432532:  POP.W           {R4-R7,LR}
432536:  B.W             _ZN12CMenuManager17SwitchToNewScreenEa; CMenuManager::SwitchToNewScreen(signed char)
43253A:  MOVS            R0, #1; jumptable 00432486 case 2
43253C:  STRB.W          R0, [R8]
432540:  B               def_432486; jumptable 00432486 default case
432542:  MOVW            R0, #0x105; jumptable 00432486 case 11
432546:  MOVS            R5, #0
432548:  MLA.W           R0, R1, R0, R4
43254C:  MOVW            R1, #0x1AAD
432550:  LDRB.W          R0, [R0,#-0xE6]
432554:  STRB            R5, [R4,R1]
432556:  STRB.W          R12, [R4,#0x122]
43255A:  STRB.W          R0, [R4,#0x123]
43255E:  MOV             R0, R4; this
432560:  BLX             j__ZN12CMenuManager15ResetHelperTextEv; CMenuManager::ResetHelperText(void)
432564:  LDRB.W          R0, [R4,#0x121]
432568:  CMP             R0, #4
43256A:  ITTTT EQ
43256C:  LDREQ.W         R0, [R4,#0x8C]
432570:  LDREQ.W         R1, [R4,#0x98]
432574:  STREQ.W         R0, [R4,#0x90]
432578:  STREQ.W         R1, [R4,#0x9C]
43257C:  MOVS            R0, #8
43257E:  STRB.W          R0, [R4,#0x121]
432582:  LDRB.W          R0, [R4,#0xAD]
432586:  STR             R5, [R4,#0x38]
432588:  CMP             R0, #0
43258A:  BEQ.W           def_432486; jumptable 00432486 default case
43258E:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x432594)
432590:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
432592:  B               loc_43264E
432594:  LDRB.W          R0, [R4,#0x20]; jumptable 00432486 case 23
432598:  MOVS            R1, #0
43259A:  CMP             R0, #0
43259C:  IT EQ
43259E:  MOVEQ           R1, #1
4325A0:  STRB.W          R1, [R4,#0x20]
4325A4:  B               def_432486; jumptable 00432486 default case
4325A6:  LDRB.W          R0, [R4,#0x2C]; jumptable 00432486 case 25
4325AA:  MOVS            R1, #0
4325AC:  CMP             R0, #0
4325AE:  IT EQ
4325B0:  MOVEQ           R1, #1
4325B2:  STRB.W          R1, [R4,#0x2C]
4325B6:  B               loc_4327C6
4325B8:  LDRB.W          R0, [R4,#0x2E]; jumptable 00432486 case 26
4325BC:  MOVS            R1, #0
4325BE:  CMP             R0, #0
4325C0:  IT EQ
4325C2:  MOVEQ           R1, #1
4325C4:  STRB.W          R1, [R4,#0x2E]
4325C8:  B               loc_4327C6
4325CA:  LDR             R0, =(AudioEngine_ptr - 0x4325D6); jumptable 00432486 case 30
4325CC:  MOVS            R1, #0
4325CE:  LDRB.W          R2, [R4,#0x34]
4325D2:  ADD             R0, PC; AudioEngine_ptr
4325D4:  CMP             R2, #0
4325D6:  LDR             R0, [R0]; AudioEngine ; this
4325D8:  IT EQ
4325DA:  MOVEQ           R1, #1; unsigned __int8
4325DC:  STRB.W          R1, [R4,#0x34]
4325E0:  BLX             j__ZN12CAudioEngine19SetBassEnhanceOnOffEh; CAudioEngine::SetBassEnhanceOnOff(uchar)
4325E4:  B               loc_4327C6
4325E6:  MOVS            R0, #0x9D; jumptable 00432486 case 36
4325E8:  CMP             R5, #0
4325EA:  STRB.W          R0, [R4,#0x49]
4325EE:  MOV.W           R0, #1
4325F2:  STRB.W          R0, [R4,#0xB7]
4325F6:  MOV.W           R0, #4
4325FA:  MOV.W           R2, #0xFFFFFFFF
4325FE:  IT GT
432600:  MOVGT           R0, #0
432602:  LDRB.W          R1, [R4,#0x48]
432606:  IT GT
432608:  MOVGT           R2, #1
43260A:  CMP             R5, #0
43260C:  MOV.W           R3, #0
432610:  IT GT
432612:  MOVGT           R3, #4
432614:  CMP             R1, R3
432616:  IT NE
432618:  ADDNE           R0, R1, R2
43261A:  MOVS            R1, #0; bool
43261C:  STRB.W          R0, [R4,#0x48]
432620:  MOV             R0, R4; this
432622:  BLX             j__ZN12CMenuManager33InitialiseChangedLanguageSettingsEb; CMenuManager::InitialiseChangedLanguageSettings(bool)
432626:  B               loc_4327C6
432628:  LDRB.W          R0, [R4,#0xAE]; jumptable 00432486 case 70
43262C:  MOVS            R1, #0
43262E:  CMP             R0, #0
432630:  IT EQ
432632:  MOVEQ           R1, #1
432634:  STRB.W          R1, [R4,#0xAE]
432638:  B               def_432486; jumptable 00432486 default case
43263A:  MOV             R0, R4; jumptable 00432486 case 10
43263C:  ADD             SP, SP, #8
43263E:  POP.W           {R8}
432642:  POP.W           {R4-R7,LR}
432646:  B.W             j_j__ZN12CMenuManager25ProcessMissionPackNewGameEv; j_CMenuManager::ProcessMissionPackNewGame(void)
43264A:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x432650); jumptable 00432486 case 12
43264C:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
43264E:  LDR             R0, [R0]; CGame::bMissionPackGame ...
432650:  LDRB.W          R1, [R4,#0x123]
432654:  STRB            R1, [R0]; CGame::bMissionPackGame
432656:  B               def_432486; jumptable 00432486 default case
432658:  LDR             R0, =(aScreens_ptr - 0x432660); jumptable 00432486 case 13
43265A:  MOVS            R6, #0xE2
43265C:  ADD             R0, PC; aScreens_ptr
43265E:  LDR             R0, [R0]; "FEP_STA" ...
432660:  SMLABB.W        R0, R2, R6, R0
432664:  ADD.W           R0, R0, R3,LSL#1
432668:  LDRB            R0, [R0,#0x13]
43266A:  SUBS            R0, #1
43266C:  UXTB            R0, R0
43266E:  CMP             R0, #9
432670:  BHI.W           def_432486; jumptable 00432486 default case
432674:  LDR             R0, =(gMobileMenu_ptr - 0x43267E)
432676:  SUBS            R3, R1, #2
432678:  CMP             R1, #1
43267A:  ADD             R0, PC; gMobileMenu_ptr
43267C:  IT EQ
43267E:  MOVEQ           R3, #8
432680:  CMP             R2, #0xA
432682:  LDR             R0, [R0]; gMobileMenu
432684:  STR             R3, [R0,#(dword_6E00BC - 0x6E006C)]
432686:  BEQ.W           loc_4327D6
43268A:  CMP             R2, #9
43268C:  BNE.W           def_432486; jumptable 00432486 default case
432690:  LDR             R0, =(_ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x432696)
432692:  ADD             R0, PC; _ZN19CGenericGameStorage8ms_SlotsE_ptr
432694:  LDR             R0, [R0]; CGenericGameStorage::ms_Slots ...
432696:  LDR.W           R0, [R0,R3,LSL#2]
43269A:  SUBS            R0, #1
43269C:  CMP             R0, #2
43269E:  BCC.W           def_432486; jumptable 00432486 default case
4326A2:  MOVW            R0, #0x1AAD
4326A6:  MOVS            R5, #0
4326A8:  STRB            R5, [R4,R0]
4326AA:  MOV             R0, R4; this
4326AC:  STRB.W          R12, [R4,#0x122]
4326B0:  BLX             j__ZN12CMenuManager15ResetHelperTextEv; CMenuManager::ResetHelperText(void)
4326B4:  LDRB.W          R0, [R4,#0x121]
4326B8:  CMP             R0, #4
4326BA:  ITTTT EQ
4326BC:  LDREQ.W         R0, [R4,#0x8C]
4326C0:  LDREQ.W         R1, [R4,#0x98]
4326C4:  STREQ.W         R0, [R4,#0x90]
4326C8:  STREQ.W         R1, [R4,#0x9C]
4326CC:  LDRB.W          R0, [R4,#0xAD]
4326D0:  MOVS            R1, #0xD
4326D2:  STR             R5, [R4,#0x38]
4326D4:  CMP             R0, #0
4326D6:  IT EQ
4326D8:  MOVEQ           R1, #0xB
4326DA:  STRB.W          R1, [R4,#0x121]
4326DE:  B               def_432486; jumptable 00432486 default case
4326E0:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x4326E8); jumptable 00432486 case 14
4326E2:  MOVS            R1, #0
4326E4:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
4326E6:  LDR             R0, [R0]; CGame::bMissionPackGame ...
4326E8:  STRB            R1, [R0]; CGame::bMissionPackGame
4326EA:  B               def_432486; jumptable 00432486 default case
4326EC:  DCFS 448.0
4326F0:  LDR             R0, =(aScreens_ptr - 0x4326F8); jumptable 00432486 case 18
4326F2:  MOVS            R6, #0xE2
4326F4:  ADD             R0, PC; aScreens_ptr
4326F6:  LDR             R0, [R0]; "FEP_STA" ...
4326F8:  SMLABB.W        R0, R2, R6, R0
4326FC:  ADD.W           R0, R0, R3,LSL#1
432700:  LDRB            R0, [R0,#0x13]
432702:  SUBS            R0, #1
432704:  UXTB            R0, R0
432706:  CMP             R0, #9
432708:  BHI.W           def_432486; jumptable 00432486 default case
43270C:  LDR             R0, =(gMobileMenu_ptr - 0x43271A)
43270E:  SUBS            R2, R1, #2
432710:  CMP             R1, #1
432712:  MOV.W           R5, #0
432716:  ADD             R0, PC; gMobileMenu_ptr
432718:  IT EQ
43271A:  MOVEQ           R2, #8
43271C:  LDR             R0, [R0]; gMobileMenu
43271E:  STR             R2, [R0,#(dword_6E00BC - 0x6E006C)]
432720:  MOVW            R0, #0x1AAD
432724:  STRB            R5, [R4,R0]
432726:  MOV             R0, R4; this
432728:  STRB.W          R12, [R4,#0x122]
43272C:  BLX             j__ZN12CMenuManager15ResetHelperTextEv; CMenuManager::ResetHelperText(void)
432730:  LDRB.W          R0, [R4,#0x121]
432734:  CMP             R0, #4
432736:  ITTTT EQ
432738:  LDREQ.W         R0, [R4,#0x8C]
43273C:  LDREQ.W         R1, [R4,#0x98]
432740:  STREQ.W         R0, [R4,#0x90]
432744:  STREQ.W         R1, [R4,#0x9C]
432748:  MOVS            R0, #0x11
43274A:  STRB.W          R0, [R4,#0x121]
43274E:  STR             R5, [R4,#0x38]
432750:  B               def_432486; jumptable 00432486 default case
432752:  LDR             R0, =(AudioEngine_ptr - 0x43275E); jumptable 00432486 case 31
432754:  MOVS            R1, #0
432756:  LDRB.W          R2, [R4,#0x30]
43275A:  ADD             R0, PC; AudioEngine_ptr
43275C:  CMP             R2, #0
43275E:  LDR             R0, [R0]; AudioEngine ; this
432760:  IT EQ
432762:  MOVEQ           R1, #1; unsigned __int8
432764:  STRB.W          R1, [R4,#0x30]
432768:  BLX             j__ZN12CAudioEngine23SetRadioAutoRetuneOnOffEh; CAudioEngine::SetRadioAutoRetuneOnOff(uchar)
43276C:  B               loc_4327C6
43276E:  LDRB.W          R0, [R4,#0x35]; jumptable 00432486 case 32
432772:  CMP             R0, #0
432774:  BEQ.W           def_432486; jumptable 00432486 default case
432778:  LDR             R0, =(AudioEngine_ptr - 0x43277E)
43277A:  ADD             R0, PC; AudioEngine_ptr
43277C:  LDR             R0, [R0]; AudioEngine ; this
43277E:  BLX             j__ZN12CAudioEngine21IsCutsceneTrackActiveEv; CAudioEngine::IsCutsceneTrackActive(void)
432782:  CMP             R0, #0
432784:  BNE.W           def_432486; jumptable 00432486 default case
432788:  LDRB.W          R0, [R4,#0x35]
43278C:  UXTAB.W         R0, R0, R5
432790:  LSLS            R1, R0, #0x18
432792:  CMP.W           R1, #0x1000000
432796:  IT LT
432798:  MOVLT           R0, #0xD
43279A:  SXTB            R1, R0
43279C:  CMP             R1, #0xD
43279E:  IT GT
4327A0:  MOVGT           R0, #1
4327A2:  STRB.W          R0, [R4,#0x35]
4327A6:  B               loc_4327C6
4327A8:  LDRB.W          R0, [R4,#0x2D]; jumptable 00432486 case 33
4327AC:  MOVS            R1, #0
4327AE:  CMP             R0, #0
4327B0:  IT EQ
4327B2:  MOVEQ           R1, #1
4327B4:  STRB.W          R1, [R4,#0x2D]
4327B8:  B               def_432486; jumptable 00432486 default case
4327BA:  LDRB            R0, [R4,#0x19]; jumptable 00432486 case 35
4327BC:  MOVS            R1, #0
4327BE:  CMP             R0, #0
4327C0:  IT EQ
4327C2:  MOVEQ           R1, #1
4327C4:  STRB            R1, [R4,#0x19]
4327C6:  MOV             R0, R4; this
4327C8:  ADD             SP, SP, #8
4327CA:  POP.W           {R8}
4327CE:  POP.W           {R4-R7,LR}
4327D2:  B.W             j_j__ZN12CMenuManager12SaveSettingsEv; j_CMenuManager::SaveSettings(void)
4327D6:  LDR             R0, =(_ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x4327DC)
4327D8:  ADD             R0, PC; _ZN19CGenericGameStorage8ms_SlotsE_ptr
4327DA:  LDR             R0, [R0]; CGenericGameStorage::ms_Slots ...
4327DC:  LDR.W           R0, [R0,R3,LSL#2]
4327E0:  CMP             R0, #1
4327E2:  BEQ.W           def_432486; jumptable 00432486 default case
4327E6:  MOVW            R0, #0x1AAD
4327EA:  MOVS            R5, #0
4327EC:  STRB            R5, [R4,R0]
4327EE:  MOV             R0, R4; this
4327F0:  STRB.W          R12, [R4,#0x122]
4327F4:  BLX             j__ZN12CMenuManager15ResetHelperTextEv; CMenuManager::ResetHelperText(void)
4327F8:  LDRB.W          R0, [R4,#0x121]
4327FC:  CMP             R0, #4
4327FE:  ITTTT EQ
432800:  LDREQ.W         R0, [R4,#0x8C]
432804:  LDREQ.W         R1, [R4,#0x98]
432808:  STREQ.W         R0, [R4,#0x90]
43280C:  STREQ.W         R1, [R4,#0x9C]
432810:  MOVS            R0, #0xC
432812:  B               loc_43274A
