; =========================================================
; Game Engine Function: _ZN10LoadScreen19LoadScreenSelection11HandleInputEP12SelectScreenf
; Address            : 0x2A7748 - 0x2A787E
; =========================================================

2A7748:  PUSH            {R4-R7,LR}
2A774A:  ADD             R7, SP, #0xC
2A774C:  PUSH.W          {R11}
2A7750:  MOV             R5, R0
2A7752:  MOVS            R0, #0x40 ; '@'
2A7754:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2A7758:  CMP             R0, #1
2A775A:  BNE             loc_2A7764
2A775C:  MOVS            R0, #0x40 ; '@'
2A775E:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
2A7762:  CBNZ            R0, loc_2A777C
2A7764:  LDR             R0, =(lastDevice_ptr - 0x2A776C)
2A7766:  LDR             R1, =(gMobileMenu_ptr - 0x2A776E)
2A7768:  ADD             R0, PC; lastDevice_ptr
2A776A:  ADD             R1, PC; gMobileMenu_ptr
2A776C:  LDR             R0, [R0]; lastDevice
2A776E:  LDR             R1, [R1]; gMobileMenu
2A7770:  LDR             R0, [R0]
2A7772:  ADD.W           R0, R1, R0,LSL#2
2A7776:  LDR.W           R0, [R0,#0x90]
2A777A:  CBNZ            R0, loc_2A778A
2A777C:  LDR             R0, =(_ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x2A7784)
2A777E:  LDR             R1, [R5,#8]
2A7780:  ADD             R0, PC; _ZN19CGenericGameStorage8ms_SlotsE_ptr
2A7782:  LDR             R0, [R0]; CGenericGameStorage::ms_Slots ...
2A7784:  LDR.W           R0, [R0,R1,LSL#2]
2A7788:  CBZ             R0, loc_2A7790
2A778A:  POP.W           {R11}
2A778E:  POP             {R4-R7,PC}
2A7790:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
2A7794:  CBNZ            R0, loc_2A77A8
2A7796:  LDR             R0, =(AudioEngine_ptr - 0x2A77A4)
2A7798:  MOVS            R1, #1; int
2A779A:  MOVS            R2, #0; float
2A779C:  MOV.W           R3, #0x3F800000; float
2A77A0:  ADD             R0, PC; AudioEngine_ptr
2A77A2:  LDR             R0, [R0]; AudioEngine ; this
2A77A4:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
2A77A8:  LDRB            R0, [R5,#0xD]
2A77AA:  CMP             R0, #0
2A77AC:  BEQ             loc_2A7870
2A77AE:  MOVS            R0, #0x54 ; 'T'; unsigned int
2A77B0:  BLX             _Znwj; operator new(uint)
2A77B4:  LDR             R1, =(aFetLg_0 - 0x2A77BE); "FET_LG"
2A77B6:  MOVS            R2, #1; bool
2A77B8:  MOV             R4, R0
2A77BA:  ADD             R1, PC; "FET_LG"
2A77BC:  BLX             j__ZN16CharSelectScreenC2EPKcb; CharSelectScreen::CharSelectScreen(char const*,bool)
2A77C0:  LDR             R0, =(_ZTV11YesNoScreen_ptr - 0x2A77CA)
2A77C2:  ADR             R2, aFeszQl; "FESZ_QL"
2A77C4:  LDR             R1, =(_ZN10LoadScreen19LoadScreenSelection11ConfirmLoadEPv_ptr - 0x2A77CE)
2A77C6:  ADD             R0, PC; _ZTV11YesNoScreen_ptr
2A77C8:  STR             R2, [R4,#0x44]
2A77CA:  ADD             R1, PC; _ZN10LoadScreen19LoadScreenSelection11ConfirmLoadEPv_ptr
2A77CC:  STR             R5, [R4,#0x4C]
2A77CE:  LDR             R0, [R0]; `vtable for'YesNoScreen ...
2A77D0:  MOVS            R5, #0
2A77D2:  LDR             R1, [R1]; LoadScreen::LoadScreenSelection::ConfirmLoad(void *)
2A77D4:  STR             R5, [R4,#0x50]
2A77D6:  ADDS            R0, #8
2A77D8:  STR             R1, [R4,#0x48]
2A77DA:  STR             R0, [R4]
2A77DC:  BLX             j__Z19CachePlayerControlsv; CachePlayerControls(void)
2A77E0:  MOVS            R0, #0x10; unsigned int
2A77E2:  BLX             _Znwj; operator new(uint)
2A77E6:  MOV             R1, R0; SelectScreen::MenuSelection *
2A77E8:  LDR             R0, =(_ZTVN12SelectScreen15ActionSelectionE_ptr - 0x2A77F0)
2A77EA:  LDR             R2, =(_ZN11YesNoScreen6NoFuncEP12SelectScreeni_ptr - 0x2A77F4)
2A77EC:  ADD             R0, PC; _ZTVN12SelectScreen15ActionSelectionE_ptr
2A77EE:  LDR             R3, =(aFemNo - 0x2A77F8); "FEM_NO"
2A77F0:  ADD             R2, PC; _ZN11YesNoScreen6NoFuncEP12SelectScreeni_ptr
2A77F2:  LDR             R0, [R0]; `vtable for'SelectScreen::ActionSelection ...
2A77F4:  ADD             R3, PC; "FEM_NO"
2A77F6:  LDR             R2, [R2]; YesNoScreen::NoFunc(SelectScreen *,int)
2A77F8:  ADD.W           R6, R0, #8
2A77FC:  MOV             R0, R4; this
2A77FE:  STRD.W          R6, R3, [R1]
2A7802:  STRD.W          R2, R5, [R1,#8]
2A7806:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
2A780A:  MOVS            R0, #0x10; unsigned int
2A780C:  BLX             _Znwj; operator new(uint)
2A7810:  MOV             R1, R0; SelectScreen::MenuSelection *
2A7812:  LDR             R0, =(_ZN11YesNoScreen7YesFuncEP12SelectScreeni_ptr - 0x2A781A)
2A7814:  LDR             R2, =(aFemYes - 0x2A781C); "FEM_YES"
2A7816:  ADD             R0, PC; _ZN11YesNoScreen7YesFuncEP12SelectScreeni_ptr
2A7818:  ADD             R2, PC; "FEM_YES"
2A781A:  LDR             R0, [R0]; YesNoScreen::YesFunc(SelectScreen *,int)
2A781C:  STRD.W          R6, R2, [R1]
2A7820:  STRD.W          R0, R5, [R1,#8]
2A7824:  MOV             R0, R4; this
2A7826:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
2A782A:  LDR             R0, =(gMobileMenu_ptr - 0x2A7830)
2A782C:  ADD             R0, PC; gMobileMenu_ptr
2A782E:  LDR             R0, [R0]; gMobileMenu
2A7830:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
2A7832:  CMP             R0, #0
2A7834:  BEQ             loc_2A784E
2A7836:  LDR             R1, =(gMobileMenu_ptr - 0x2A783E)
2A7838:  LDR             R2, [R4]
2A783A:  ADD             R1, PC; gMobileMenu_ptr
2A783C:  LDR             R1, [R1]; gMobileMenu
2A783E:  LDR             R2, [R2,#0x14]
2A7840:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
2A7842:  ADD.W           R0, R1, R0,LSL#2
2A7846:  LDR.W           R1, [R0,#-4]
2A784A:  MOV             R0, R4
2A784C:  BLX             R2
2A784E:  LDR             R0, =(gMobileMenu_ptr - 0x2A7854)
2A7850:  ADD             R0, PC; gMobileMenu_ptr
2A7852:  LDR             R0, [R0]; gMobileMenu
2A7854:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
2A7856:  CBZ             R0, loc_2A7862
2A7858:  LDR             R0, =(gMobileMenu_ptr - 0x2A785E)
2A785A:  ADD             R0, PC; gMobileMenu_ptr
2A785C:  LDR             R0, [R0]; gMobileMenu ; this
2A785E:  BLX             j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
2A7862:  LDR             R0, =(gMobileMenu_ptr - 0x2A7868)
2A7864:  ADD             R0, PC; gMobileMenu_ptr
2A7866:  LDR             R0, [R0]; gMobileMenu
2A7868:  STR             R4, [R0,#(dword_6E0098 - 0x6E006C)]
2A786A:  POP.W           {R11}
2A786E:  POP             {R4-R7,PC}
2A7870:  MOV             R0, R5; this
2A7872:  POP.W           {R11}
2A7876:  POP.W           {R4-R7,LR}
2A787A:  B.W             j_j__ZN10LoadScreen19LoadScreenSelection4LoadEv; j_LoadScreen::LoadScreenSelection::Load(void)
