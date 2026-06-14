; =========================================================
; Game Engine Function: _ZN14ControlsScreenC2Ev
; Address            : 0x29E454 - 0x29E6E0
; =========================================================

29E454:  PUSH            {R4-R7,LR}
29E456:  ADD             R7, SP, #0xC
29E458:  PUSH.W          {R8}
29E45C:  LDR             R1, =(aFecRed - 0x29E466); "FEC_RED"
29E45E:  MOVS            R2, #1; bool
29E460:  MOV             R8, R0
29E462:  ADD             R1, PC; "FEC_RED"
29E464:  BLX             j__ZN16CharSelectScreenC2EPKcb; CharSelectScreen::CharSelectScreen(char const*,bool)
29E468:  LDR             R0, =(_ZTV14ControlsScreen_ptr - 0x29E46E)
29E46A:  ADD             R0, PC; _ZTV14ControlsScreen_ptr
29E46C:  LDR             R0, [R0]; `vtable for'ControlsScreen ...
29E46E:  ADDS            R0, #8; this
29E470:  STR.W           R0, [R8]
29E474:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
29E478:  MOV             R5, R0
29E47A:  MOVS            R0, #0x10; unsigned int
29E47C:  BLX             _Znwj; operator new(uint)
29E480:  MOV             R1, R0; SelectScreen::MenuSelection *
29E482:  CMP             R5, #2
29E484:  BNE             loc_29E492
29E486:  LDR             R0, =(_ZTVN12SelectScreen15ActionSelectionE_ptr - 0x29E490)
29E488:  ADR             R3, aFecKey; "FEC_KEY"
29E48A:  LDR             R2, =(_ZN14ControlsScreen18OnKeyboardControlsEP12SelectScreeni_ptr - 0x29E492)
29E48C:  ADD             R0, PC; _ZTVN12SelectScreen15ActionSelectionE_ptr
29E48E:  ADD             R2, PC; _ZN14ControlsScreen18OnKeyboardControlsEP12SelectScreeni_ptr
29E490:  B               loc_29E49C
29E492:  LDR             R0, =(_ZTVN12SelectScreen15ActionSelectionE_ptr - 0x29E49C)
29E494:  ADR             R3, aFecAdj; "FEC_ADJ"
29E496:  LDR             R2, =(_ZN14ControlsScreen15DoAdjustableHUDEP12SelectScreeni_ptr - 0x29E49E)
29E498:  ADD             R0, PC; _ZTVN12SelectScreen15ActionSelectionE_ptr
29E49A:  ADD             R2, PC; _ZN14ControlsScreen15DoAdjustableHUDEP12SelectScreeni_ptr
29E49C:  LDR             R0, [R0]; `vtable for'SelectScreen::ActionSelection ...
29E49E:  STR             R3, [R1,#4]
29E4A0:  MOVS            R3, #0
29E4A2:  LDR             R2, [R2]; ControlsScreen::OnKeyboardControls(SelectScreen *,int)
29E4A4:  ADDS            R0, #8
29E4A6:  STR             R3, [R1,#0xC]
29E4A8:  STR             R2, [R1,#8]
29E4AA:  STR             R0, [R1]
29E4AC:  MOV             R0, R8; this
29E4AE:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29E4B2:  MOVS            R0, #0x1C; unsigned int
29E4B4:  BLX             _Znwj; operator new(uint)
29E4B8:  MOV             R1, R0; SelectScreen::MenuSelection *
29E4BA:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x29E4C4)
29E4BC:  LDR             R2, =(_ZTVN12SelectScreen16SettingSelectionE_ptr - 0x29E4C6)
29E4BE:  MOVS            R5, #0
29E4C0:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
29E4C2:  ADD             R2, PC; _ZTVN12SelectScreen16SettingSelectionE_ptr
29E4C4:  LDR             R6, [R0]; MobileSettings::settings ...
29E4C6:  LDR             R0, [R2]; `vtable for'SelectScreen::SettingSelection ...
29E4C8:  LDR.W           R2, [R6,#(dword_6E0514 - 0x6E03F4)]
29E4CC:  ADD.W           R4, R0, #8
29E4D0:  MOVS            R0, #9
29E4D2:  STRD.W          R4, R2, [R1]
29E4D6:  STR             R0, [R1,#8]
29E4D8:  MOV             R0, R8; this
29E4DA:  STR.W           R5, [R1,#0x15]
29E4DE:  STR.W           R5, [R1,#0x11]
29E4E2:  STRD.W          R5, R5, [R1,#0xC]
29E4E6:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29E4EA:  MOVS            R0, #0x1C; unsigned int
29E4EC:  BLX             _Znwj; operator new(uint)
29E4F0:  MOV             R1, R0; SelectScreen::MenuSelection *
29E4F2:  LDR             R0, [R6,#(dword_6E0454 - 0x6E03F4)]
29E4F4:  STRD.W          R4, R0, [R1]
29E4F8:  MOVS            R0, #3
29E4FA:  STR             R0, [R1,#8]
29E4FC:  MOV             R0, R8; this
29E4FE:  STR.W           R5, [R1,#0x15]
29E502:  STR.W           R5, [R1,#0x11]
29E506:  STRD.W          R5, R5, [R1,#0xC]
29E50A:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29E50E:  MOVS            R0, #0x1C; unsigned int
29E510:  BLX             _Znwj; operator new(uint)
29E514:  MOV             R1, R0; SelectScreen::MenuSelection *
29E516:  LDR.W           R0, [R6,#(dword_6E04F4 - 0x6E03F4)]
29E51A:  STRD.W          R4, R0, [R1]
29E51E:  MOVS            R0, #8
29E520:  STR             R0, [R1,#8]
29E522:  MOV             R0, R8; this
29E524:  STR.W           R5, [R1,#0x15]
29E528:  STR.W           R5, [R1,#0x11]
29E52C:  STRD.W          R5, R5, [R1,#0xC]
29E530:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29E534:  MOVS            R0, #0x1C; unsigned int
29E536:  BLX             _Znwj; operator new(uint)
29E53A:  MOV             R1, R0; SelectScreen::MenuSelection *
29E53C:  LDR.W           R0, [R6,#(dword_6E05D4 - 0x6E03F4)]
29E540:  STRD.W          R4, R0, [R1]
29E544:  MOVS            R0, #0xF
29E546:  STR             R0, [R1,#8]
29E548:  MOV             R0, R8; this
29E54A:  STR.W           R5, [R1,#0x15]
29E54E:  STR.W           R5, [R1,#0x11]
29E552:  STRD.W          R5, R5, [R1,#0xC]
29E556:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29E55A:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
29E55E:  CMP             R0, #1
29E560:  BNE             loc_29E5BA
29E562:  MOVS            R0, #0x1C; unsigned int
29E564:  BLX             _Znwj; operator new(uint)
29E568:  MOV             R1, R0; SelectScreen::MenuSelection *
29E56A:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x29E572)
29E56C:  LDR             R2, =(_ZTVN12SelectScreen16SettingSelectionE_ptr - 0x29E574)
29E56E:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
29E570:  ADD             R2, PC; _ZTVN12SelectScreen16SettingSelectionE_ptr
29E572:  LDR             R4, [R0]; MobileSettings::settings ...
29E574:  LDR             R0, [R2]; `vtable for'SelectScreen::SettingSelection ...
29E576:  LDR.W           R2, [R4,#(dword_6E0714 - 0x6E03F4)]
29E57A:  ADD.W           R6, R0, #8
29E57E:  MOVS            R0, #0x19
29E580:  STRD.W          R6, R2, [R1]
29E584:  STR             R0, [R1,#8]
29E586:  MOV             R0, R8; this
29E588:  STR.W           R5, [R1,#0x15]
29E58C:  STR.W           R5, [R1,#0x11]
29E590:  STRD.W          R5, R5, [R1,#0xC]
29E594:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29E598:  MOVS            R0, #0x1C; unsigned int
29E59A:  BLX             _Znwj; operator new(uint)
29E59E:  MOV             R1, R0
29E5A0:  LDR.W           R0, [R4,#(dword_6E0734 - 0x6E03F4)]
29E5A4:  STRD.W          R6, R0, [R1]
29E5A8:  MOVS            R0, #0x1A
29E5AA:  STR             R0, [R1,#8]
29E5AC:  STR.W           R5, [R1,#0x15]
29E5B0:  STR.W           R5, [R1,#0x11]
29E5B4:  STRD.W          R5, R5, [R1,#0xC]
29E5B8:  B               loc_29E66C
29E5BA:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
29E5BE:  CMP             R0, #2
29E5C0:  BNE             loc_29E60E
29E5C2:  MOVS            R0, #0x1C; unsigned int
29E5C4:  BLX             _Znwj; operator new(uint)
29E5C8:  MOV             R1, R0; SelectScreen::MenuSelection *
29E5CA:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x29E5D4)
29E5CC:  LDR             R2, =(_ZTVN12SelectScreen16SettingSelectionE_ptr - 0x29E5D6)
29E5CE:  MOVS            R6, #0
29E5D0:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
29E5D2:  ADD             R2, PC; _ZTVN12SelectScreen16SettingSelectionE_ptr
29E5D4:  LDR             R4, [R0]; MobileSettings::settings ...
29E5D6:  LDR             R0, [R2]; `vtable for'SelectScreen::SettingSelection ...
29E5D8:  LDR.W           R2, [R4,#(dword_6E07D4 - 0x6E03F4)]
29E5DC:  ADD.W           R5, R0, #8
29E5E0:  MOVS            R0, #0x1F
29E5E2:  STRD.W          R5, R2, [R1]
29E5E6:  STR             R0, [R1,#8]
29E5E8:  MOV             R0, R8; this
29E5EA:  STR.W           R6, [R1,#0x15]
29E5EE:  STR.W           R6, [R1,#0x11]
29E5F2:  STRD.W          R6, R6, [R1,#0xC]
29E5F6:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29E5FA:  MOVS            R0, #0x1C; unsigned int
29E5FC:  BLX             _Znwj; operator new(uint)
29E600:  MOV             R1, R0
29E602:  LDR.W           R0, [R4,#(dword_6E07F4 - 0x6E03F4)]
29E606:  STRD.W          R5, R0, [R1]
29E60A:  MOVS            R0, #0x20 ; ' '
29E60C:  B               loc_29E65E
29E60E:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
29E612:  CBNZ            R0, loc_29E672
29E614:  MOVS            R0, #0x1C; unsigned int
29E616:  BLX             _Znwj; operator new(uint)
29E61A:  MOV             R1, R0; SelectScreen::MenuSelection *
29E61C:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x29E626)
29E61E:  LDR             R2, =(_ZTVN12SelectScreen16SettingSelectionE_ptr - 0x29E628)
29E620:  MOVS            R6, #0
29E622:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
29E624:  ADD             R2, PC; _ZTVN12SelectScreen16SettingSelectionE_ptr
29E626:  LDR             R4, [R0]; MobileSettings::settings ...
29E628:  LDR             R0, [R2]; `vtable for'SelectScreen::SettingSelection ...
29E62A:  LDR.W           R2, [R4,#(dword_6E0634 - 0x6E03F4)]
29E62E:  ADD.W           R5, R0, #8
29E632:  MOVS            R0, #0x12
29E634:  STRD.W          R5, R2, [R1]
29E638:  STR             R0, [R1,#8]
29E63A:  MOV             R0, R8; this
29E63C:  STR.W           R6, [R1,#0x15]
29E640:  STR.W           R6, [R1,#0x11]
29E644:  STRD.W          R6, R6, [R1,#0xC]
29E648:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29E64C:  MOVS            R0, #0x1C; unsigned int
29E64E:  BLX             _Znwj; operator new(uint)
29E652:  MOV             R1, R0; SelectScreen::MenuSelection *
29E654:  LDR.W           R0, [R4,#(dword_6E06D4 - 0x6E03F4)]
29E658:  STRD.W          R5, R0, [R1]
29E65C:  MOVS            R0, #0x17
29E65E:  STR             R0, [R1,#8]
29E660:  STR.W           R6, [R1,#0x15]
29E664:  STR.W           R6, [R1,#0x11]
29E668:  STR             R6, [R1,#0x10]
29E66A:  STR             R6, [R1,#0xC]
29E66C:  MOV             R0, R8; this
29E66E:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29E672:  MOVS            R0, #0x1C; unsigned int
29E674:  BLX             _Znwj; operator new(uint)
29E678:  MOV             R1, R0; SelectScreen::MenuSelection *
29E67A:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x29E684)
29E67C:  LDR             R2, =(_ZTVN12SelectScreen16SettingSelectionE_ptr - 0x29E686)
29E67E:  MOVS            R4, #0
29E680:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
29E682:  ADD             R2, PC; _ZTVN12SelectScreen16SettingSelectionE_ptr
29E684:  LDR             R0, [R0]; MobileSettings::settings ...
29E686:  LDR             R2, [R2]; `vtable for'SelectScreen::SettingSelection ...
29E688:  LDR.W           R0, [R0,#(dword_6E0854 - 0x6E03F4)]
29E68C:  STR             R0, [R1,#4]
29E68E:  MOVS            R0, #0x23 ; '#'
29E690:  STR             R0, [R1,#8]
29E692:  ADD.W           R0, R2, #8
29E696:  STR.W           R4, [R1,#0x15]
29E69A:  STR.W           R4, [R1,#0x11]
29E69E:  STRD.W          R4, R4, [R1,#0xC]
29E6A2:  STR             R0, [R1]
29E6A4:  MOV             R0, R8; this
29E6A6:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29E6AA:  MOVS            R0, #0x10; unsigned int
29E6AC:  BLX             _Znwj; operator new(uint)
29E6B0:  MOV             R1, R0; SelectScreen::MenuSelection *
29E6B2:  LDR             R0, =(_ZTVN12SelectScreen15ActionSelectionE_ptr - 0x29E6BA)
29E6B4:  LDR             R2, =(_ZN12SelectScreen17OnRestoreDefaultsEPS_i_ptr_0 - 0x29E6BE)
29E6B6:  ADD             R0, PC; _ZTVN12SelectScreen15ActionSelectionE_ptr
29E6B8:  LDR             R3, =(aMobRtd - 0x29E6C2); "MOB_RTD"
29E6BA:  ADD             R2, PC; _ZN12SelectScreen17OnRestoreDefaultsEPS_i_ptr_0
29E6BC:  LDR             R0, [R0]; `vtable for'SelectScreen::ActionSelection ...
29E6BE:  ADD             R3, PC; "MOB_RTD"
29E6C0:  LDR             R2, [R2]; SelectScreen::OnRestoreDefaults(SelectScreen*,int)
29E6C2:  ADDS            R0, #8
29E6C4:  STRD.W          R0, R3, [R1]
29E6C8:  MOV             R0, R8; this
29E6CA:  STRD.W          R2, R4, [R1,#8]
29E6CE:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29E6D2:  MOVS            R0, #1
29E6D4:  STRB.W          R0, [R8,#0x30]
29E6D8:  MOV             R0, R8
29E6DA:  POP.W           {R8}
29E6DE:  POP             {R4-R7,PC}
