; =========================================================
; Game Engine Function: _ZN12CMenuManager21CheckCodesForControlsEi
; Address            : 0x435690 - 0x4358E6
; =========================================================

435690:  PUSH            {R4-R7,LR}
435692:  ADD             R7, SP, #0xC
435694:  PUSH.W          {R8-R11}
435698:  SUB             SP, SP, #4
43569A:  MOV             R4, R0
43569C:  MOVW            R5, #0x1AD0
4356A0:  LDR.W           R9, [R4,R5]
4356A4:  MOV             R6, R1
4356A6:  CBZ             R6, loc_4356CC
4356A8:  CMP             R6, #3
4356AA:  BEQ.W           loc_43576A
4356AE:  CMP             R6, #2
4356B0:  BNE.W           loc_435780
4356B4:  LDR             R0, =(AudioEngine_ptr - 0x4356C2)
4356B6:  MOVS            R1, #1; int
4356B8:  MOVS            R2, #0; float
4356BA:  MOV.W           R3, #0x3F800000; float
4356BE:  ADD             R0, PC; AudioEngine_ptr
4356C0:  LDR             R0, [R0]; AudioEngine ; this
4356C2:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
4356C6:  MOV.W           R8, #2
4356CA:  B               loc_435780
4356CC:  LDR.W           R0, [R4,#0xB8]
4356D0:  LDR             R1, [R0]
4356D2:  SUB.W           R0, R1, #0x3E8; switch 55 cases
4356D6:  CMP             R0, #0x36 ; '6'
4356D8:  BHI.W           def_4356DC; jumptable 004356DC default case
4356DC:  TBH.W           [PC,R0,LSL#1]; switch jump
4356E0:  DCW 0xEA; jump table for switch statement
4356E2:  DCW 0x37
4356E4:  DCW 0x37
4356E6:  DCW 0x37
4356E8:  DCW 0xC5
4356EA:  DCW 0xC5
4356EC:  DCW 0xC5
4356EE:  DCW 0xC5
4356F0:  DCW 0xC5
4356F2:  DCW 0x37
4356F4:  DCW 0xC5
4356F6:  DCW 0xC5
4356F8:  DCW 0xC5
4356FA:  DCW 0xC5
4356FC:  DCW 0xC5
4356FE:  DCW 0xC5
435700:  DCW 0xC5
435702:  DCW 0xC5
435704:  DCW 0xC5
435706:  DCW 0xC5
435708:  DCW 0xC5
43570A:  DCW 0xC5
43570C:  DCW 0xC5
43570E:  DCW 0xC5
435710:  DCW 0xC5
435712:  DCW 0xC5
435714:  DCW 0xC5
435716:  DCW 0xC5
435718:  DCW 0xC5
43571A:  DCW 0xC5
43571C:  DCW 0xC5
43571E:  DCW 0xC5
435720:  DCW 0xC5
435722:  DCW 0xC5
435724:  DCW 0xC5
435726:  DCW 0xC5
435728:  DCW 0xC5
43572A:  DCW 0xC5
43572C:  DCW 0xC5
43572E:  DCW 0xC5
435730:  DCW 0xC5
435732:  DCW 0xC5
435734:  DCW 0xC5
435736:  DCW 0xC5
435738:  DCW 0xC5
43573A:  DCW 0xC5
43573C:  DCW 0xC5
43573E:  DCW 0xC5
435740:  DCW 0xC5
435742:  DCW 0xC5
435744:  DCW 0xC5
435746:  DCW 0xC5
435748:  DCW 0x37
43574A:  DCW 0x37
43574C:  DCW 0x37
43574E:  LDR             R0, =(AudioEngine_ptr - 0x43575C); jumptable 004356DC cases 1001-1003,1009,1052-1054
435750:  MOVS            R1, #4; int
435752:  MOVS            R2, #0; float
435754:  MOV.W           R3, #0x3F800000; float
435758:  ADD             R0, PC; AudioEngine_ptr
43575A:  LDR             R0, [R0]; AudioEngine ; this
43575C:  ADD             SP, SP, #4
43575E:  POP.W           {R8-R11}
435762:  POP.W           {R4-R7,LR}
435766:  B.W             j_j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; j_CAudioEngine::ReportFrontendAudioEvent(int,float,float)
43576A:  LDR             R0, =(AudioEngine_ptr - 0x435778)
43576C:  MOVS            R1, #1; int
43576E:  MOVS            R2, #0; float
435770:  MOV.W           R3, #0x3F800000; float
435774:  ADD             R0, PC; AudioEngine_ptr
435776:  LDR             R0, [R0]; AudioEngine ; this
435778:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
43577C:  MOV.W           R8, #3
435780:  MOVW            R0, #0x1ACF
435784:  LDRB            R1, [R4,R0]
435786:  CBZ             R1, loc_4357CC
435788:  ADD.W           R10, R4, R0
43578C:  LDR             R0, =(ControlsManager_ptr - 0x435798)
43578E:  ADD.W           R11, R4, R5
435792:  MOVS            R2, #0
435794:  ADD             R0, PC; ControlsManager_ptr
435796:  LDR.W           R1, [R11]
43579A:  LDR             R5, [R0]; ControlsManager
43579C:  MOV             R0, R5
43579E:  BLX             j__ZN24CControllerConfigManager33ClearSettingsAssociatedWithActionE18e_ControllerAction15eControllerType; CControllerConfigManager::ClearSettingsAssociatedWithAction(e_ControllerAction,eControllerType)
4357A2:  LDR.W           R1, [R11]
4357A6:  MOV             R0, R5
4357A8:  MOVS            R2, #1
4357AA:  BLX             j__ZN24CControllerConfigManager33ClearSettingsAssociatedWithActionE18e_ControllerAction15eControllerType; CControllerConfigManager::ClearSettingsAssociatedWithAction(e_ControllerAction,eControllerType)
4357AE:  LDR.W           R1, [R11]
4357B2:  MOV             R0, R5
4357B4:  MOVS            R2, #2
4357B6:  BLX             j__ZN24CControllerConfigManager33ClearSettingsAssociatedWithActionE18e_ControllerAction15eControllerType; CControllerConfigManager::ClearSettingsAssociatedWithAction(e_ControllerAction,eControllerType)
4357BA:  LDR.W           R1, [R11]
4357BE:  MOV             R0, R5
4357C0:  MOVS            R2, #3
4357C2:  BLX             j__ZN24CControllerConfigManager33ClearSettingsAssociatedWithActionE18e_ControllerAction15eControllerType; CControllerConfigManager::ClearSettingsAssociatedWithAction(e_ControllerAction,eControllerType)
4357C6:  MOVS            R0, #0
4357C8:  STRB.W          R0, [R10]
4357CC:  LDR             R0, =(ControlsManager_ptr - 0x4357D6)
4357CE:  MOV             R1, R9
4357D0:  MOV             R2, R8
4357D2:  ADD             R0, PC; ControlsManager_ptr
4357D4:  LDR             R0, [R0]; ControlsManager
4357D6:  BLX             j__ZN24CControllerConfigManager33ClearSettingsAssociatedWithActionE18e_ControllerAction15eControllerType; CControllerConfigManager::ClearSettingsAssociatedWithAction(e_ControllerAction,eControllerType)
4357DA:  CBZ             R6, loc_4357F4
4357DC:  CMP             R6, #3
4357DE:  BEQ             loc_435822
4357E0:  CMP             R6, #2
4357E2:  BNE             loc_435844
4357E4:  LDR             R0, =(ControlsManager_ptr - 0x4357F2)
4357E6:  MOVW            R6, #0x1AA4
4357EA:  LDR             R2, [R4,R6]
4357EC:  MOV             R1, R9
4357EE:  ADD             R0, PC; ControlsManager_ptr
4357F0:  MOVS            R3, #2
4357F2:  B               loc_435830
4357F4:  LDR             R0, =(ControlsManager_ptr - 0x435800)
4357F6:  MOVS            R3, #0
4357F8:  LDR.W           R1, [R4,#0xB8]
4357FC:  ADD             R0, PC; ControlsManager_ptr
4357FE:  LDR             R5, [R0]; ControlsManager
435800:  LDR             R2, [R1]
435802:  MOV             R1, R9
435804:  MOV             R0, R5
435806:  BLX             j__ZN24CControllerConfigManager30DeleteMatchingActionInitiatorsE18e_ControllerActioni15eControllerType; CControllerConfigManager::DeleteMatchingActionInitiators(e_ControllerAction,int,eControllerType)
43580A:  LDR.W           R0, [R4,#0xB8]
43580E:  MOV             R1, R9
435810:  MOVS            R3, #1
435812:  LDR             R2, [R0]
435814:  MOV             R0, R5
435816:  BLX             j__ZN24CControllerConfigManager30DeleteMatchingActionInitiatorsE18e_ControllerActioni15eControllerType; CControllerConfigManager::DeleteMatchingActionInitiators(e_ControllerAction,int,eControllerType)
43581A:  LDR.W           R0, [R4,#0xB8]
43581E:  LDR             R2, [R0]
435820:  B               loc_43583A
435822:  LDR             R0, =(ControlsManager_ptr - 0x435830)
435824:  MOVW            R6, #0x1AA8
435828:  LDR             R2, [R4,R6]
43582A:  MOV             R1, R9
43582C:  ADD             R0, PC; ControlsManager_ptr
43582E:  MOVS            R3, #3
435830:  LDR             R5, [R0]; ControlsManager
435832:  MOV             R0, R5
435834:  BLX             j__ZN24CControllerConfigManager30DeleteMatchingActionInitiatorsE18e_ControllerActioni15eControllerType; CControllerConfigManager::DeleteMatchingActionInitiators(e_ControllerAction,int,eControllerType)
435838:  LDR             R2, [R4,R6]
43583A:  MOV             R0, R5
43583C:  MOV             R1, R9
43583E:  MOV             R3, R8
435840:  BLX             j__ZN24CControllerConfigManager36SetControllerKeyAssociatedWithActionE18e_ControllerActioni15eControllerType; CControllerConfigManager::SetControllerKeyAssociatedWithAction(e_ControllerAction,int,eControllerType)
435844:  MOVW            R0, #0x1ACC
435848:  MOVS            R1, #0
43584A:  STRH            R1, [R4,R0]
43584C:  MOV.W           R0, #0xFFFFFFFF
435850:  STR.W           R1, [R4,#0xB8]
435854:  STR             R0, [R4,#0x24]
435856:  ADD             SP, SP, #4
435858:  POP.W           {R8-R11}
43585C:  POP.W           {R4-R7,LR}
435860:  B.W             sub_19F2DC
435864:  CMP             R1, #0; jumptable 004356DC default case
435866:  BEQ.W           loc_43574E; jumptable 004356DC cases 1001-1003,1009,1052-1054
43586A:  LDR             R0, =(AudioEngine_ptr - 0x435878); jumptable 004356DC cases 1004-1008,1010-1051
43586C:  MOVS            R1, #1; int
43586E:  MOVS            R2, #0; float
435870:  MOV.W           R3, #0x3F800000; float
435874:  ADD             R0, PC; AudioEngine_ptr
435876:  MOV.W           R8, #0
43587A:  LDR             R0, [R0]; AudioEngine ; this
43587C:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
435880:  LDR             R0, =(ControlsManager_ptr - 0x43588A)
435882:  MOV             R1, R9
435884:  MOVS            R2, #0
435886:  ADD             R0, PC; ControlsManager_ptr
435888:  LDR             R0, [R0]; ControlsManager
43588A:  BLX             j__ZN24CControllerConfigManager36GetControllerKeyAssociatedWithActionE18e_ControllerAction15eControllerType; CControllerConfigManager::GetControllerKeyAssociatedWithAction(e_ControllerAction,eControllerType)
43588E:  CMP.W           R0, #0x420
435892:  BEQ.W           loc_435780
435896:  LDR             R0, =(ControlsManager_ptr - 0x4358A0)
435898:  MOV             R1, R9
43589A:  MOVS            R2, #0
43589C:  ADD             R0, PC; ControlsManager_ptr
43589E:  LDR             R0, [R0]; ControlsManager
4358A0:  BLX             j__ZN24CControllerConfigManager36GetControllerKeyAssociatedWithActionE18e_ControllerAction15eControllerType; CControllerConfigManager::GetControllerKeyAssociatedWithAction(e_ControllerAction,eControllerType)
4358A4:  LDR.W           R1, [R4,#0xB8]
4358A8:  LDR             R1, [R1]
4358AA:  CMP             R0, R1
4358AC:  IT NE
4358AE:  MOVNE.W         R8, #1
4358B2:  B               loc_435780
4358B4:  LDR             R0, =(AudioEngine_ptr - 0x4358C2); jumptable 004356DC case 1000
4358B6:  MOVS            R1, #4; int
4358B8:  MOVS            R2, #0; float
4358BA:  MOV.W           R3, #0x3F800000; float
4358BE:  ADD             R0, PC; AudioEngine_ptr
4358C0:  MOVS            R5, #0
4358C2:  LDR             R0, [R0]; AudioEngine ; this
4358C4:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
4358C8:  MOVW            R0, #0x1ACF
4358CC:  STRB            R5, [R4,R0]
4358CE:  MOVW            R0, #0x1ACC
4358D2:  STRH            R5, [R4,R0]
4358D4:  MOV.W           R0, #0xFFFFFFFF
4358D8:  STR.W           R5, [R4,#0xB8]
4358DC:  STR             R0, [R4,#0x24]
4358DE:  ADD             SP, SP, #4
4358E0:  POP.W           {R8-R11}
4358E4:  POP             {R4-R7,PC}
