; =========================================================
; Game Engine Function: _Z11DoGameStatev
; Address            : 0x5E4714 - 0x5E4A42
; =========================================================

5E4714:  PUSH            {R4,R5,R7,LR}
5E4716:  ADD             R7, SP, #8
5E4718:  LDR             R0, =(gGameState_ptr - 0x5E471E)
5E471A:  ADD             R0, PC; gGameState_ptr
5E471C:  LDR             R0, [R0]; gGameState
5E471E:  LDR             R0, [R0]; this
5E4720:  CMP             R0, #9; switch 10 cases
5E4722:  BHI.W           def_5E4726; jumptable 005E4726 default case
5E4726:  TBH.W           [PC,R0,LSL#1]; switch jump
5E472A:  DCW 0xA; jump table for switch statement
5E472C:  DCW 0x15
5E472E:  DCW 0x1A
5E4730:  DCW 0x66
5E4732:  DCW 0x6C
5E4734:  DCW 0xB9
5E4736:  DCW 0xCB
5E4738:  DCW 0xD9
5E473A:  DCW 0xF3
5E473C:  DCW 0x124
5E473E:  LDR.W           R0, =(gMobileMenu_ptr - 0x5E4746); jumptable 005E4726 case 0
5E4742:  ADD             R0, PC; gMobileMenu_ptr
5E4744:  LDR             R0, [R0]; gMobileMenu ; this
5E4746:  BLX.W           j__ZN10MobileMenu10InitializeEv; MobileMenu::Initialize(void)
5E474A:  LDR.W           R0, =(gGameState_ptr - 0x5E4754)
5E474E:  MOVS            R1, #5
5E4750:  ADD             R0, PC; gGameState_ptr
5E4752:  B               loc_5E47FC
5E4754:  LDR.W           R0, =(gGameState_ptr - 0x5E475E); jumptable 005E4726 case 1
5E4758:  MOVS            R1, #2
5E475A:  ADD             R0, PC; gGameState_ptr
5E475C:  B               loc_5E47FC
5E475E:  BLX.W           j__ZN4CPad10UpdatePadsEv; jumptable 005E4726 case 2
5E4762:  LDR.W           R0, =(startupDeactivate_ptr - 0x5E476A)
5E4766:  ADD             R0, PC; startupDeactivate_ptr
5E4768:  LDR             R0, [R0]; startupDeactivate
5E476A:  LDR             R0, [R0]
5E476C:  CMP             R0, #0
5E476E:  BNE             loc_5E47F0
5E4770:  LDR.W           R0, =(ControlsManager_ptr - 0x5E4778)
5E4774:  ADD             R0, PC; ControlsManager_ptr
5E4776:  LDR             R0, [R0]; ControlsManager ; this
5E4778:  BLX.W           j__ZN24CControllerConfigManager20GetJoyButtonJustDownEv; CControllerConfigManager::GetJoyButtonJustDown(void)
5E477C:  CBNZ            R0, loc_5E47F0
5E477E:  MOVS            R0, #0; this
5E4780:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E4784:  BLX.W           j__ZN16CControllerState13CheckForInputEv; CControllerState::CheckForInput(void)
5E4788:  CBNZ            R0, loc_5E47F0
5E478A:  MOVS            R0, #0; this
5E478C:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E4790:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x5E4796)
5E4792:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
5E4794:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
5E4796:  LDRB            R0, [R0]; CPad::NewMouseControllerState
5E4798:  CBZ             R0, loc_5E47A4
5E479A:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x5E47A0)
5E479C:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
5E479E:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
5E47A0:  LDRB            R0, [R0]; CPad::OldMouseControllerState
5E47A2:  CBZ             R0, loc_5E47F0
5E47A4:  MOVS            R0, #0; this
5E47A6:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E47AA:  MOVS            R0, #0x35 ; '5'
5E47AC:  BLX.W           j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
5E47B0:  CBNZ            R0, loc_5E47F0
5E47B2:  MOVS            R0, #0; this
5E47B4:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E47B8:  MOVS            R0, #0x20 ; ' '
5E47BA:  BLX.W           j__Z13RsKeyToOSWKey10RsKeyCodes; RsKeyToOSWKey(RsKeyCodes)
5E47BE:  CMP             R0, #0x64 ; 'd'
5E47C0:  BEQ             loc_5E47C8
5E47C2:  BLX.W           j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
5E47C6:  CBNZ            R0, loc_5E47F0
5E47C8:  MOVS            R0, #0; this
5E47CA:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E47CE:  MOVS            R0, #0x43 ; 'C'
5E47D0:  BLX.W           j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
5E47D4:  CBNZ            R0, loc_5E47F0
5E47D6:  MOVS            R0, #0x45 ; 'E'
5E47D8:  BLX.W           j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
5E47DC:  CBNZ            R0, loc_5E47F0
5E47DE:  MOVS            R0, #0; this
5E47E0:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E47E4:  MOVS            R0, #0x1B
5E47E6:  BLX.W           j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
5E47EA:  CMP             R0, #0
5E47EC:  BEQ.W           def_5E4726; jumptable 005E4726 default case
5E47F0:  LDR             R0, =(gGameState_ptr - 0x5E47F6)
5E47F2:  ADD             R0, PC; gGameState_ptr
5E47F4:  B               loc_5E4892
5E47F6:  LDR             R0, =(gGameState_ptr - 0x5E47FE); jumptable 005E4726 case 3
5E47F8:  MOVS            R1, #4
5E47FA:  ADD             R0, PC; gGameState_ptr
5E47FC:  LDR             R0, [R0]; gGameState
5E47FE:  STR             R1, [R0]
5E4800:  B               def_5E4726; jumptable 005E4726 default case
5E4802:  BLX.W           j__ZN4CPad10UpdatePadsEv; jumptable 005E4726 case 4
5E4806:  LDR             R0, =(startupDeactivate_ptr - 0x5E480C)
5E4808:  ADD             R0, PC; startupDeactivate_ptr
5E480A:  LDR             R0, [R0]; startupDeactivate
5E480C:  LDR             R0, [R0]
5E480E:  CBNZ            R0, loc_5E488E
5E4810:  LDR             R0, =(ControlsManager_ptr - 0x5E4816)
5E4812:  ADD             R0, PC; ControlsManager_ptr
5E4814:  LDR             R0, [R0]; ControlsManager ; this
5E4816:  BLX.W           j__ZN24CControllerConfigManager20GetJoyButtonJustDownEv; CControllerConfigManager::GetJoyButtonJustDown(void)
5E481A:  CBNZ            R0, loc_5E488E
5E481C:  MOVS            R0, #0; this
5E481E:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E4822:  BLX.W           j__ZN16CControllerState13CheckForInputEv; CControllerState::CheckForInput(void)
5E4826:  CBNZ            R0, loc_5E488E
5E4828:  MOVS            R0, #0; this
5E482A:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E482E:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x5E4834)
5E4830:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
5E4832:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
5E4834:  LDRB            R0, [R0]; CPad::NewMouseControllerState
5E4836:  CBZ             R0, loc_5E4842
5E4838:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x5E483E)
5E483A:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
5E483C:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
5E483E:  LDRB            R0, [R0]; CPad::OldMouseControllerState
5E4840:  CBZ             R0, loc_5E488E
5E4842:  MOVS            R0, #0; this
5E4844:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E4848:  MOVS            R0, #0x35 ; '5'
5E484A:  BLX.W           j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
5E484E:  CBNZ            R0, loc_5E488E
5E4850:  MOVS            R0, #0; this
5E4852:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E4856:  MOVS            R0, #0x20 ; ' '
5E4858:  BLX.W           j__Z13RsKeyToOSWKey10RsKeyCodes; RsKeyToOSWKey(RsKeyCodes)
5E485C:  CMP             R0, #0x64 ; 'd'
5E485E:  BEQ             loc_5E4866
5E4860:  BLX.W           j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
5E4864:  CBNZ            R0, loc_5E488E
5E4866:  MOVS            R0, #0; this
5E4868:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E486C:  MOVS            R0, #0x43 ; 'C'
5E486E:  BLX.W           j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
5E4872:  CBNZ            R0, loc_5E488E
5E4874:  MOVS            R0, #0x45 ; 'E'
5E4876:  BLX.W           j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
5E487A:  CBNZ            R0, loc_5E488E
5E487C:  MOVS            R0, #0; this
5E487E:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E4882:  MOVS            R0, #0x1B
5E4884:  BLX.W           j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
5E4888:  CMP             R0, #0
5E488A:  BEQ.W           def_5E4726; jumptable 005E4726 default case
5E488E:  LDR             R0, =(gGameState_ptr - 0x5E4894)
5E4890:  ADD             R0, PC; gGameState_ptr
5E4892:  LDR             R0, [R0]; gGameState
5E4894:  LDR             R1, [R0]
5E4896:  ADDS            R1, #1
5E4898:  STR             R1, [R0]
5E489A:  B               def_5E4726; jumptable 005E4726 default case
5E489C:  BLX.W           j__ZN5CGame27InitialiseEssentialsAfterRWEv; jumptable 005E4726 case 5
5E48A0:  CBNZ            R0, loc_5E48AC
5E48A2:  LDR             R0, =(RsGlobal_ptr - 0x5E48AA)
5E48A4:  MOVS            R1, #1
5E48A6:  ADD             R0, PC; RsGlobal_ptr
5E48A8:  LDR             R0, [R0]; RsGlobal ; this
5E48AA:  STR             R1, [R0,#(dword_9FC90C - 0x9FC8FC)]
5E48AC:  BLX.W           j__ZN5CGame25InitialiseCoreDataAfterRWEv; CGame::InitialiseCoreDataAfterRW(void)
5E48B0:  LDR             R0, =(gGameState_ptr - 0x5E48B8)
5E48B2:  MOVS            R1, #6
5E48B4:  ADD             R0, PC; gGameState_ptr
5E48B6:  LDR             R0, [R0]; gGameState
5E48B8:  STR             R1, [R0]
5E48BA:  BLX.W           j__Z10CheckAnisov; CheckAniso(void)
5E48BE:  B               def_5E4726; jumptable 005E4726 default case
5E48C0:  BLX.W           j__Z19NeedsAmazonDownloadv; jumptable 005E4726 case 6
5E48C4:  LDR             R1, =(byte_A88799 - 0x5E48CC)
5E48C6:  CMP             R0, #0
5E48C8:  ADD             R1, PC; byte_A88799
5E48CA:  STRB            R0, [R1]
5E48CC:  BEQ.W           loc_5E4A06
5E48D0:  LDR             R0, =(gMobileMenu_ptr - 0x5E48D6)
5E48D2:  ADD             R0, PC; gMobileMenu_ptr
5E48D4:  LDR             R0, [R0]; gMobileMenu ; this
5E48D6:  BLX.W           j__ZN10MobileMenu15InitForDownloadEv; MobileMenu::InitForDownload(void)
5E48DA:  B               loc_5E4A10
5E48DC:  LDR             R0, =(RsGlobal_ptr - 0x5E48E4); jumptable 005E4726 case 7
5E48DE:  MOVS            R1, #0x1E
5E48E0:  ADD             R0, PC; RsGlobal_ptr
5E48E2:  LDR             R0, [R0]; RsGlobal
5E48E4:  STR             R1, [R0,#(dword_9FC908 - 0x9FC8FC)]
5E48E6:  MOVS            R0, #0x1B
5E48E8:  MOVS            R1, #0
5E48EA:  BLX.W           j__Z14RsEventHandler7RsEventPv; RsEventHandler(RsEvent,void *)
5E48EE:  LDR             R0, =(byte_A88799 - 0x5E48F4)
5E48F0:  ADD             R0, PC; byte_A88799
5E48F2:  LDRB            R0, [R0]
5E48F4:  CBZ             R0, loc_5E4900
5E48F6:  NOP
5E48F8:  NOP
5E48FA:  LDR             R1, =(byte_A88799 - 0x5E4900)
5E48FC:  ADD             R1, PC; byte_A88799
5E48FE:  STRB            R0, [R1]
5E4900:  LDR             R0, =(gMobileMenu_ptr - 0x5E4906)
5E4902:  ADD             R0, PC; gMobileMenu_ptr
5E4904:  LDR             R0, [R0]; gMobileMenu
5E4906:  LDRB.W          R0, [R0,#(byte_6E00B9 - 0x6E006C)]
5E490A:  CMP             R0, #0
5E490C:  BEQ.W           def_5E4726; jumptable 005E4726 default case
5E4910:  LDR             R0, =(AudioEngine_ptr - 0x5E4916); jumptable 005E4726 case 8
5E4912:  ADD             R0, PC; AudioEngine_ptr
5E4914:  LDR             R0, [R0]; AudioEngine
5E4916:  NOP
5E4918:  NOP
5E491A:  MOVS            R0, #0; this
5E491C:  MOVS            R1, #1; unsigned int
5E491E:  MOVS            R4, #0
5E4920:  BLX.W           j__ZN14CLoadingScreen16DoPCScreenChangeEjj; CLoadingScreen::DoPCScreenChange(uint,uint)
5E4924:  LDR             R0, =(gMobileMenu_ptr - 0x5E492A)
5E4926:  ADD             R0, PC; gMobileMenu_ptr
5E4928:  LDR             R0, [R0]; gMobileMenu
5E492A:  LDRB.W          R0, [R0,#(byte_6E00B9 - 0x6E006C)]
5E492E:  CMP             R0, #0
5E4930:  ITTT NE
5E4932:  MOVNE           R0, #(dword_1C+2); this
5E4934:  MOVNE           R1, #1; int
5E4936:  BLXNE.W         j__ZN14CLoadingScreen15SetChunksToLoadEib; CLoadingScreen::SetChunksToLoad(int,bool)
5E493A:  BLX.W           j__Z14InitialiseGamev; InitialiseGame(void)
5E493E:  LDR             R0, =(FrontEndMenuManager_ptr - 0x5E4948)
5E4940:  LDR             R1, =(gGameState_ptr - 0x5E494A)
5E4942:  LDR             R2, =(AudioEngine_ptr - 0x5E494C)
5E4944:  ADD             R0, PC; FrontEndMenuManager_ptr
5E4946:  ADD             R1, PC; gGameState_ptr
5E4948:  ADD             R2, PC; AudioEngine_ptr
5E494A:  LDR             R3, [R0]; FrontEndMenuManager
5E494C:  LDR             R1, [R1]; gGameState
5E494E:  LDR             R0, [R2]; AudioEngine ; this
5E4950:  MOVS            R2, #9
5E4952:  STRB.W          R4, [R3,#(byte_98F1A5 - 0x98F0F8)]
5E4956:  STR             R2, [R1]
5E4958:  BLX.W           j__ZN12CAudioEngine21InitialisePostLoadingEv; CAudioEngine::InitialisePostLoading(void)
5E495C:  LDR             R0, =(gMobileMenu_ptr - 0x5E4962)
5E495E:  ADD             R0, PC; gMobileMenu_ptr
5E4960:  LDR             R0, [R0]; gMobileMenu
5E4962:  LDRB.W          R0, [R0,#(byte_6E00B9 - 0x6E006C)]
5E4966:  CMP             R0, #0
5E4968:  BNE             def_5E4726; jumptable 005E4726 default case
5E496A:  MOVS            R0, #0; this
5E496C:  BLX.W           j__ZN14CLoadingScreen8ShutdownEb; CLoadingScreen::Shutdown(bool)
5E4970:  B               def_5E4726; jumptable 005E4726 default case
5E4972:  LDR             R0, =(gMobileMenu_ptr - 0x5E4978); jumptable 005E4726 case 9
5E4974:  ADD             R0, PC; gMobileMenu_ptr
5E4976:  BL              sub_3F66C4
5E497A:  LDR             R2, [R1,#0x24]
5E497C:  CMP             R2, #0
5E497E:  ITT EQ
5E4980:  LDREQ           R1, [R1,#0x2C]
5E4982:  CMPEQ           R1, #0
5E4984:  BNE             loc_5E4998
5E4986:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5E498C)
5E4988:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5E498A:  LDR             R0, [R0]; MobileSettings::settings ...
5E498C:  BL              sub_3F672E
5E4990:  NOP
5E4992:  CMP             R1, #0
5E4994:  IT NE
5E4996:  MOVNE           R0, #(dword_1C+2); this
5E4998:  LDR             R1, =(RsGlobal_ptr - 0x5E49A0)
5E499A:  LDR             R2, =(RwInitialized_ptr - 0x5E49A2)
5E499C:  ADD             R1, PC; RsGlobal_ptr
5E499E:  ADD             R2, PC; RwInitialized_ptr
5E49A0:  LDR             R1, [R1]; RsGlobal
5E49A2:  LDR             R5, [R2]; RwInitialized
5E49A4:  STR             R0, [R1,#(dword_9FC908 - 0x9FC8FC)]
5E49A6:  BLX.W           j__ZN6CTimer22GetCurrentTimeInCyclesEv; CTimer::GetCurrentTimeInCycles(void)
5E49AA:  MOV             R4, R0
5E49AC:  BLX.W           j__ZN6CTimer23GetCyclesPerMillisecondEv; CTimer::GetCyclesPerMillisecond(void)
5E49B0:  LDR             R1, [R5]
5E49B2:  CBZ             R1, loc_5E49FE
5E49B4:  VMOV            S0, R0
5E49B8:  LDR             R0, =(RsGlobal_ptr - 0x5E49CA)
5E49BA:  VLDR            S2, =0.001
5E49BE:  VMOV            S4, R4
5E49C2:  VCVT.F32.U32    S0, S0
5E49C6:  ADD             R0, PC; RsGlobal_ptr
5E49C8:  VCVT.F32.U32    S4, S4
5E49CC:  VLDR            S6, =1000000.0
5E49D0:  LDR             R0, [R0]; RsGlobal
5E49D2:  VMUL.F32        S0, S0, S2
5E49D6:  VLDR            S2, [R0,#0xC]
5E49DA:  VCVT.F32.S32    S2, S2
5E49DE:  VDIV.F32        S0, S4, S0
5E49E2:  VDIV.F32        S2, S6, S2
5E49E6:  VCMPE.F32       S0, S2
5E49EA:  VMRS            APSR_nzcv, FPSCR
5E49EE:  BLE             loc_5E49FE
5E49F0:  BLX.W           j__Z11UpdateInputv; UpdateInput(void)
5E49F4:  MOVS            R0, #0x1A
5E49F6:  MOVS            R1, #1
5E49F8:  BLX.W           j__Z14RsEventHandler7RsEventPv; RsEventHandler(RsEvent,void *)
5E49FC:  B               def_5E4726; jumptable 005E4726 default case
5E49FE:  MOVS            R0, #0x64 ; 'd'; useconds
5E4A00:  BLX.W           j__Z14OS_ThreadSleepi; OS_ThreadSleep(int)
5E4A04:  B               def_5E4726; jumptable 005E4726 default case
5E4A06:  LDR             R0, =(gMobileMenu_ptr - 0x5E4A0C)
5E4A08:  ADD             R0, PC; gMobileMenu_ptr
5E4A0A:  LDR             R0, [R0]; gMobileMenu ; this
5E4A0C:  BLX.W           j__ZN10MobileMenu12InitForTitleEv; MobileMenu::InitForTitle(void)
5E4A10:  LDR             R0, =(gGameState_ptr - 0x5E4A1A)
5E4A12:  MOVS            R2, #7
5E4A14:  LDR             R1, =(SkipBankLoader_ptr - 0x5E4A1C)
5E4A16:  ADD             R0, PC; gGameState_ptr
5E4A18:  ADD             R1, PC; SkipBankLoader_ptr
5E4A1A:  LDR             R0, [R0]; gGameState
5E4A1C:  LDR             R1, [R1]; SkipBankLoader
5E4A1E:  STR             R2, [R0]
5E4A20:  MOVS            R0, #0
5E4A22:  STR             R0, [R1]
5E4A24:  BLX.W           j__Z16SendLanguageToSCv; SendLanguageToSC(void)
5E4A28:  LDR             R0, =(WasForegroundApp_ptr - 0x5E4A2E); jumptable 005E4726 default case
5E4A2A:  ADD             R0, PC; WasForegroundApp_ptr
5E4A2C:  LDR             R0, [R0]; WasForegroundApp
5E4A2E:  LDR             R0, [R0]
5E4A30:  CMP             R0, #0
5E4A32:  IT NE
5E4A34:  POPNE           {R4,R5,R7,PC}
5E4A36:  LDR             R0, =(WasForegroundApp_ptr - 0x5E4A3E)
5E4A38:  MOVS            R1, #1
5E4A3A:  ADD             R0, PC; WasForegroundApp_ptr
5E4A3C:  LDR             R0, [R0]; WasForegroundApp
5E4A3E:  STR             R1, [R0]
5E4A40:  POP             {R4,R5,R7,PC}
