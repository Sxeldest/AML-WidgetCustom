; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo19LoadVehicleUpgradesEv
; Address            : 0x46C80C - 0x46CA10
; =========================================================

46C80C:  PUSH            {R4-R7,LR}
46C80E:  ADD             R7, SP, #0xC
46C810:  PUSH.W          {R8-R11}
46C814:  SUB             SP, SP, #0xC
46C816:  ADR             R0, aDataCarmodsDat; "DATA\\CARMODS.DAT"
46C818:  ADR             R1, aR_4; "r"
46C81A:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
46C81E:  MOV             R8, R0
46C820:  LDR             R0, =(_ZN17CVehicleModelInfo19ms_numWheelUpgradesE_ptr - 0x46C828)
46C822:  MOVS            R6, #0
46C824:  ADD             R0, PC; _ZN17CVehicleModelInfo19ms_numWheelUpgradesE_ptr
46C826:  LDR             R0, [R0]; CVehicleModelInfo::ms_numWheelUpgrades ...
46C828:  STR             R6, [R0,#(dword_93176C - 0x931768)]
46C82A:  STR             R6, [R0]; CVehicleModelInfo::ms_numWheelUpgrades
46C82C:  MOV             R0, R8; this
46C82E:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
46C832:  MOV             R11, R0
46C834:  CMP.W           R11, #0
46C838:  BEQ.W           loc_46CA02
46C83C:  LDR             R0, =(_ZN17CVehicleModelInfo17ms_linkedUpgradesE_ptr - 0x46C84E)
46C83E:  ADR.W           R9, aLink; "link"
46C842:  LDR             R5, =(asc_61C390 - 0x46C850); " \t,"
46C844:  ADD             R4, SP, #0x28+var_24
46C846:  LDR.W           R10, =(asc_61C390 - 0x46C852); " \t,"
46C84A:  ADD             R0, PC; _ZN17CVehicleModelInfo17ms_linkedUpgradesE_ptr
46C84C:  ADD             R5, PC; " \t,"
46C84E:  ADD             R10, PC; " \t,"
46C850:  LDR             R0, [R0]; CVehicleModelInfo::ms_linkedUpgrades ...
46C852:  STR             R0, [SP,#0x28+var_28]
46C854:  LDRB.W          R0, [R11]
46C858:  CMP             R0, #0
46C85A:  IT NE
46C85C:  CMPNE           R0, #0x23 ; '#'
46C85E:  BEQ.W           loc_46C9F2
46C862:  CMP             R6, #0
46C864:  BEQ             loc_46C928
46C866:  ADR             R0, off_46CA2C; char *
46C868:  MOV             R1, R11; char *
46C86A:  MOVS            R2, #3; size_t
46C86C:  BLX             strncmp
46C870:  CMP             R0, #0
46C872:  IT EQ
46C874:  MOVEQ           R6, R0
46C876:  CMP             R6, #1
46C878:  BEQ             loc_46C958
46C87A:  CMP             R6, #3
46C87C:  BEQ.W           loc_46C9A6
46C880:  CMP             R6, #2
46C882:  BNE.W           loc_46C9F2
46C886:  LDR             R1, =(asc_61C390 - 0x46C88E); " \t,"
46C888:  MOV             R0, R11; char *
46C88A:  ADD             R1, PC; " \t,"
46C88C:  BLX             strtok
46C890:  CMP             R0, #0
46C892:  BEQ.W           loc_46C9F0
46C896:  MOV.W           R1, #0xFFFFFFFF
46C89A:  STR             R1, [SP,#0x28+var_20]
46C89C:  ADD             R1, SP, #0x28+var_20; char *
46C89E:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
46C8A2:  LDR             R1, =(asc_61C390 - 0x46C8B0); " \t,"
46C8A4:  MOV             R5, R0
46C8A6:  MOVS            R0, #0; char *
46C8A8:  MOV.W           R11, #0
46C8AC:  ADD             R1, PC; " \t,"
46C8AE:  BLX             strtok
46C8B2:  MOV             R6, R0
46C8B4:  CBZ             R6, loc_46C8E4
46C8B6:  ADDW            R9, R5, #0x36E
46C8BA:  MOV.W           R11, #0
46C8BE:  ADD             R1, SP, #0x28+var_20; char *
46C8C0:  MOV             R0, R6; this
46C8C2:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
46C8C6:  MOV             R1, R6; char *
46C8C8:  BLX             j__ZN16CAtomicModelInfo24SetupVehicleUpgradeFlagsEPKc; CAtomicModelInfo::SetupVehicleUpgradeFlags(char const*)
46C8CC:  LDR             R0, [SP,#0x28+var_20]
46C8CE:  MOV             R1, R10; char *
46C8D0:  STRH.W          R0, [R9,R11,LSL#1]
46C8D4:  MOVS            R0, #0; char *
46C8D6:  BLX             strtok
46C8DA:  ADD.W           R11, R11, #1
46C8DE:  MOV             R6, R0
46C8E0:  CMP             R6, #0
46C8E2:  BNE             loc_46C8BE
46C8E4:  LDR             R6, =(aHydralics - 0x46C8EC); "hydralics"
46C8E6:  ADD             R4, SP, #0x28+var_20
46C8E8:  ADD             R6, PC; "hydralics"
46C8EA:  MOV             R1, R4; char *
46C8EC:  MOV             R0, R6; this
46C8EE:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
46C8F2:  MOV             R1, R6; char *
46C8F4:  BLX             j__ZN16CAtomicModelInfo24SetupVehicleUpgradeFlagsEPKc; CAtomicModelInfo::SetupVehicleUpgradeFlags(char const*)
46C8F8:  ADD.W           R9, R5, R11,LSL#1
46C8FC:  LDR             R5, =(aWideStereo+5 - 0x46C906); "stereo"
46C8FE:  LDR             R0, [SP,#0x28+var_20]
46C900:  MOV             R1, R4; char *
46C902:  ADD             R5, PC; "stereo"
46C904:  STRH.W          R0, [R9,#0x36E]
46C908:  MOV             R0, R5; this
46C90A:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
46C90E:  MOV             R1, R5; char *
46C910:  BLX             j__ZN16CAtomicModelInfo24SetupVehicleUpgradeFlagsEPKc; CAtomicModelInfo::SetupVehicleUpgradeFlags(char const*)
46C914:  LDR             R5, =(asc_61C390 - 0x46C928); " \t,"
46C916:  MOVS            R6, #2
46C918:  LDR             R0, [SP,#0x28+var_20]
46C91A:  ADD             R4, SP, #0x28+var_24
46C91C:  STRH.W          R0, [R9,#0x370]
46C920:  ADR.W           R9, aLink; "link"
46C924:  ADD             R5, PC; " \t,"
46C926:  B               loc_46C9F2
46C928:  MOV             R0, R9; char *
46C92A:  MOV             R1, R11; char *
46C92C:  MOVS            R2, #4; size_t
46C92E:  BLX             strncmp
46C932:  CBZ             R0, loc_46C9A2
46C934:  ADR             R0, aMods; "mods"
46C936:  MOV             R1, R11; char *
46C938:  MOVS            R2, #4; size_t
46C93A:  BLX             strncmp
46C93E:  CMP             R0, #0
46C940:  BEQ             loc_46C9F0
46C942:  ADR             R0, aWheel; "wheel"
46C944:  MOV             R1, R11; char *
46C946:  MOVS            R2, #5; size_t
46C948:  BLX             strncmp
46C94C:  CMP             R0, #0
46C94E:  MOV.W           R6, #0
46C952:  IT EQ
46C954:  MOVEQ           R6, #3
46C956:  B               loc_46C9F2
46C958:  LDR             R1, =(asc_61C390 - 0x46C968); " \t,"
46C95A:  MOV.W           R0, #0xFFFFFFFF
46C95E:  STRD.W          R0, R0, [SP,#0x28+var_24]
46C962:  MOV             R0, R11; char *
46C964:  ADD             R1, PC; " \t,"
46C966:  BLX             strtok
46C96A:  MOV             R6, R0
46C96C:  CBZ             R6, loc_46C9A2
46C96E:  ADD             R1, SP, #0x28+var_20; char *
46C970:  MOV             R0, R6; this
46C972:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
46C976:  MOV             R1, R6; char *
46C978:  BLX             j__ZN16CAtomicModelInfo24SetupVehicleUpgradeFlagsEPKc; CAtomicModelInfo::SetupVehicleUpgradeFlags(char const*)
46C97C:  LDR             R1, =(asc_61C390 - 0x46C984); " \t,"
46C97E:  MOVS            R0, #0; char *
46C980:  ADD             R1, PC; " \t,"
46C982:  BLX             strtok
46C986:  MOV             R1, R4; char *
46C988:  MOV             R6, R0
46C98A:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
46C98E:  MOV             R1, R6; char *
46C990:  BLX             j__ZN16CAtomicModelInfo24SetupVehicleUpgradeFlagsEPKc; CAtomicModelInfo::SetupVehicleUpgradeFlags(char const*)
46C994:  LDRSH.W         R2, [SP,#0x28+var_24]; __int16
46C998:  LDRSH.W         R1, [SP,#0x28+var_20]; __int16
46C99C:  LDR             R0, [SP,#0x28+var_28]; this
46C99E:  BLX             j__ZN17CVehicleModelInfo18CLinkedUpgradeList14AddUpgradeLinkEss; CVehicleModelInfo::CLinkedUpgradeList::AddUpgradeLink(short,short)
46C9A2:  MOVS            R6, #1
46C9A4:  B               loc_46C9F2
46C9A6:  MOV.W           R0, #0xFFFFFFFF
46C9AA:  ADR             R1, dword_46CA30; format
46C9AC:  ADD             R2, SP, #0x28+var_20
46C9AE:  STR             R0, [SP,#0x28+var_24]
46C9B0:  MOV             R0, R11; s
46C9B2:  BLX             sscanf
46C9B6:  LDR             R6, =(asc_61C390 - 0x46C9BE); " \t,"
46C9B8:  MOV             R0, R11; char *
46C9BA:  ADD             R6, PC; " \t,"
46C9BC:  MOV             R1, R6; char *
46C9BE:  BLX             strtok
46C9C2:  MOVS            R0, #0
46C9C4:  MOV             R1, R6
46C9C6:  B               loc_46C9E2
46C9C8:  MOV             R0, R6; this
46C9CA:  MOV             R1, R4; char *
46C9CC:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
46C9D0:  MOV             R1, R6; char *
46C9D2:  BLX             j__ZN16CAtomicModelInfo24SetupVehicleUpgradeFlagsEPKc; CAtomicModelInfo::SetupVehicleUpgradeFlags(char const*)
46C9D6:  LDRD.W          R1, R0, [SP,#0x28+var_24]; int
46C9DA:  BLX             j__ZN17CVehicleModelInfo15AddWheelUpgradeEii; CVehicleModelInfo::AddWheelUpgrade(int,int)
46C9DE:  MOVS            R0, #0; char *
46C9E0:  MOV             R1, R5; char *
46C9E2:  BLX             strtok
46C9E6:  MOV             R6, R0
46C9E8:  CMP             R6, #0
46C9EA:  BNE             loc_46C9C8
46C9EC:  MOVS            R6, #3
46C9EE:  B               loc_46C9F2
46C9F0:  MOVS            R6, #2
46C9F2:  MOV             R0, R8; this
46C9F4:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
46C9F8:  MOV             R11, R0
46C9FA:  CMP.W           R11, #0
46C9FE:  BNE.W           loc_46C854
46CA02:  MOV             R0, R8; this
46CA04:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
46CA08:  ADD             SP, SP, #0xC
46CA0A:  POP.W           {R8-R11}
46CA0E:  POP             {R4-R7,PC}
