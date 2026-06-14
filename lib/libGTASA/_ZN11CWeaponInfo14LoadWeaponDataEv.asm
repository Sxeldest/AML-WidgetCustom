; =========================================================
; Game Engine Function: _ZN11CWeaponInfo14LoadWeaponDataEv
; Address            : 0x4746E0 - 0x474C7A
; =========================================================

4746E0:  PUSH            {R4-R7,LR}
4746E2:  ADD             R7, SP, #0xC
4746E4:  PUSH.W          {R8-R11}
4746E8:  SUB             SP, SP, #4
4746EA:  VPUSH           {D8-D14}
4746EE:  SUB             SP, SP, #0x1C8
4746F0:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x4746FC)
4746F4:  ADR.W           R1, aRb_25; "rb"
4746F8:  ADD             R0, PC; __stack_chk_guard_ptr
4746FA:  LDR             R0, [R0]; __stack_chk_guard
4746FC:  LDR             R0, [R0]
4746FE:  STR             R0, [SP,#0x220+var_5C]
474700:  ADR.W           R0, aDataWeaponDat; "DATA\\WEAPON.DAT"
474704:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
474708:  MOV             R4, R0
47470A:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
47470E:  CMP             R0, #0
474710:  BEQ.W           loc_474C52
474714:  ADD             R6, SP, #0x220+var_120
474716:  ADD             R5, SP, #0x220+var_E4
474718:  ORR.W           R1, R6, #4
47471C:  STR             R1, [SP,#0x220+var_17C]
47471E:  ADD.W           R1, R6, #8
474722:  STR             R1, [SP,#0x220+var_168]
474724:  LDR.W           R1, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x474734)
474728:  MOV.W           R9, #0
47472C:  VLDR            S20, =0.033333
474730:  ADD             R1, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
474732:  VLDR            S22, =0.02
474736:  VLDR            S24, =0.1
47473A:  LDR             R1, [R1]; CAnimManager::ms_numAnimAssocDefinitions ...
47473C:  STR             R1, [SP,#0x220+var_16C]
47473E:  LDR.W           R1, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x47474A)
474742:  VLDR            S26, =-0.006
474746:  ADD             R1, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
474748:  LDR.W           R10, [R1]; CAnimManager::ms_numAnimAssocDefinitions ...
47474C:  LDR.W           R1, =(_ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr - 0x474754)
474750:  ADD             R1, PC; _ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr
474752:  LDR             R1, [R1]; CWeaponInfo::ms_aWeaponAimOffsets ...
474754:  STR             R1, [SP,#0x220+var_170]
474756:  LDR.W           R1, =(aWeaponInfo_ptr - 0x47475E)
47475A:  ADD             R1, PC; aWeaponInfo_ptr
47475C:  LDR             R1, [R1]; aWeaponInfo
47475E:  STR             R1, [SP,#0x220+var_180]
474760:  ADR.W           R1, loc_474C80
474764:  VLD1.64         {D8-D9}, [R1@128]
474768:  LDR.W           R1, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x474770)
47476C:  ADD             R1, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
47476E:  LDR             R1, [R1]; CAnimManager::ms_numAnimAssocDefinitions ...
474770:  STR             R1, [SP,#0x220+var_190]
474772:  LDR.W           R1, =(aWeaponInfo_ptr - 0x47477A)
474776:  ADD             R1, PC; aWeaponInfo_ptr
474778:  LDR             R1, [R1]; aWeaponInfo
47477A:  STR             R1, [SP,#0x220+var_19C]
47477C:  LDR.W           R1, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x474784)
474780:  ADD             R1, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
474782:  LDR             R1, [R1]; CAnimManager::ms_numAnimAssocDefinitions ...
474784:  STR             R1, [SP,#0x220+var_174]
474786:  LDR.W           R1, =(aWeaponInfo_ptr - 0x47478E)
47478A:  ADD             R1, PC; aWeaponInfo_ptr
47478C:  LDR             R1, [R1]; aWeaponInfo
47478E:  STR             R1, [SP,#0x220+var_184]
474790:  LDR.W           R1, =(aWeaponInfo_ptr - 0x474798)
474794:  ADD             R1, PC; aWeaponInfo_ptr
474796:  LDR             R1, [R1]; aWeaponInfo
474798:  STR             R1, [SP,#0x220+var_198]
47479A:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4747A2)
47479E:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4747A0:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4747A2:  STR             R1, [SP,#0x220+var_188]
4747A4:  LDR.W           R1, =(aWeaponInfo_ptr - 0x4747AC)
4747A8:  ADD             R1, PC; aWeaponInfo_ptr
4747AA:  LDR             R1, [R1]; aWeaponInfo
4747AC:  STR             R1, [SP,#0x220+var_18C]
4747AE:  LDR.W           R1, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x4747B6)
4747B2:  ADD             R1, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
4747B4:  LDR             R1, [R1]; CAnimManager::ms_numAnimAssocDefinitions ...
4747B6:  STR             R1, [SP,#0x220+var_194]
4747B8:  LDR.W           R1, =(aWeaponInfo_ptr - 0x4747C0)
4747BC:  ADD             R1, PC; aWeaponInfo_ptr
4747BE:  LDR             R1, [R1]; aWeaponInfo
4747C0:  STR             R1, [SP,#0x220+var_1A0]
4747C2:  LDR.W           R1, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x4747CA)
4747C6:  ADD             R1, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
4747C8:  LDR             R1, [R1]; CAnimManager::ms_numAnimAssocDefinitions ...
4747CA:  STR             R1, [SP,#0x220+var_178]
4747CC:  STR.W           R8, [SP,#0x220+var_164]
4747D0:  LDRB            R1, [R0]; unsigned int
4747D2:  CMP             R1, #0x23 ; '#'
4747D4:  IT NE
4747D6:  CMPNE           R1, #0
4747D8:  BNE             loc_4747E6
4747DA:  MOV             R0, R4; this
4747DC:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
4747E0:  CMP             R0, #0
4747E2:  BNE             loc_4747D0
4747E4:  B               loc_474C52
4747E6:  STRB.W          R9, [SP,#0x220+var_84]
4747EA:  STRB.W          R9, [SP,#0x220+var_A4]
4747EE:  STRB.W          R9, [SP,#0x220+var_C4]
4747F2:  STRB.W          R9, [SP,#0x220+var_E4]
4747F6:  LDRB            R1, [R0]
4747F8:  CMP             R1, #0x25 ; '%'
4747FA:  BEQ             loc_474826
4747FC:  CMP             R1, #0x24 ; '$'
4747FE:  BEQ.W           loc_474988
474802:  CMP             R1, #0xA3
474804:  BEQ             loc_4748C6
474806:  ADD.W           R11, SP, #0x220+var_84
47480A:  ADR.W           R1, dword_474D2C; format
47480E:  MOV             R2, R11
474810:  BLX             sscanf
474814:  ADR.W           R1, aEndweapondata; "ENDWEAPONDATA"
474818:  MOV             R0, R11; char *
47481A:  MOVS            R2, #0xD; size_t
47481C:  BLX             strncmp
474820:  CMP             R0, #0
474822:  BNE             loc_4747DA
474824:  B               loc_474C52
474826:  LDR             R1, [SP,#0x220+var_168]
474828:  ADD             R2, SP, #0x220+var_64
47482A:  STR             R6, [SP,#0x220+var_220]
47482C:  MOV             R3, R5
47482E:  STR             R1, [SP,#0x220+var_21C]
474830:  ADD             R1, SP, #0x220+var_E8
474832:  STR             R1, [SP,#0x220+var_218]
474834:  ADD             R1, SP, #0x220+var_EC
474836:  STR             R1, [SP,#0x220+var_214]
474838:  ADD             R1, SP, #0x220+var_F8
47483A:  STR             R1, [SP,#0x220+var_210]
47483C:  ADD             R1, SP, #0x220+var_FC
47483E:  STR             R1, [SP,#0x220+var_20C]
474840:  ADD             R1, SP, #0x220+var_100
474842:  STR             R1, [SP,#0x220+var_208]
474844:  ADD             R1, SP, #0x220+var_104
474846:  STR             R1, [SP,#0x220+var_204]
474848:  ADR.W           R1, aSSFFFFDDDD; "%s %s %f %f %f %f %d %d %d %d"
47484C:  BLX             sscanf
474850:  LDR             R0, [SP,#0x220+var_16C]
474852:  MOV.W           R8, #0
474856:  LDR             R0, [R0]
474858:  CMP             R0, #1
47485A:  BLT             loc_474878
47485C:  MOV             R0, R8
47485E:  BLX             j__ZN12CAnimManager16GetAnimGroupNameE12AssocGroupId; CAnimManager::GetAnimGroupName(AssocGroupId)
474862:  MOV             R1, R0; char *
474864:  MOV             R0, R5; char *
474866:  BLX             strcmp
47486A:  CBZ             R0, loc_474878
47486C:  LDR.W           R0, [R10]; CAnimManager::ms_numAnimAssocDefinitions
474870:  ADD.W           R8, R8, #1
474874:  CMP             R8, R0
474876:  BLT             loc_47485C
474878:  ADD.W           R1, R8, R8,LSL#1
47487C:  LDR             R2, [SP,#0x220+var_170]
47487E:  LDR             R0, [SP,#0x220+var_120]
474880:  ADD.W           R1, R2, R1,LSL#3
474884:  MOV             R2, #0xFFFFFEF8
47488C:  LDR.W           R8, [SP,#0x220+var_164]
474890:  STR             R0, [R1,R2]
474892:  MOV             R2, #0xFFFFFEFC
47489A:  LDR             R0, [SP,#0x220+var_118]
47489C:  STR             R0, [R1,R2]
47489E:  MOV             R2, #0xFFFFFF00
4748A2:  LDR             R0, [SP,#0x220+var_E8]
4748A4:  STR             R0, [R1,R2]
4748A6:  LDR             R0, [SP,#0x220+var_EC]
4748A8:  STR.W           R0, [R1,#-0xFC]
4748AC:  LDR             R0, [SP,#0x220+var_F8]
4748AE:  STRH.W          R0, [R1,#-0xF8]
4748B2:  LDR             R0, [SP,#0x220+var_FC]
4748B4:  STRH.W          R0, [R1,#-0xF6]
4748B8:  LDR             R0, [SP,#0x220+var_100]
4748BA:  STRH.W          R0, [R1,#-0xF4]
4748BE:  LDR             R0, [SP,#0x220+var_104]
4748C0:  STRH.W          R0, [R1,#-0xF2]
4748C4:  B               loc_4747DA
4748C6:  ADD             R1, SP, #0x220+var_150
4748C8:  STRD.W          R1, R5, [SP,#0x220+var_200]
4748CC:  ADD             R1, SP, #0x220+var_E8
4748CE:  ADD.W           R8, SP, #0x220+var_A4
4748D2:  STR.W           R8, [SP,#0x220+var_220]
4748D6:  ADD             R6, SP, #0x220+var_84
4748D8:  STR             R1, [SP,#0x220+var_21C]
4748DA:  ADD             R1, SP, #0x220+var_EC
4748DC:  STR             R1, [SP,#0x220+var_218]
4748DE:  ADD             R1, SP, #0x220+var_F0
4748E0:  STR             R1, [SP,#0x220+var_214]
4748E2:  ADD             R1, SP, #0x220+var_F4
4748E4:  STR             R1, [SP,#0x220+var_210]
4748E6:  ADD             R1, SP, #0x220+var_108
4748E8:  STR             R1, [SP,#0x220+var_20C]
4748EA:  ADD             R1, SP, #0x220+var_C4
4748EC:  STR             R1, [SP,#0x220+var_208]
4748EE:  ADD             R1, SP, #0x220+var_10C
4748F0:  STR             R1, [SP,#0x220+var_204]
4748F2:  ADR.W           R1, aSSSFFDDDSDXS; "%s %s %s %f %f %d %d %d %s %d %x %s"
4748F6:  ADD             R2, SP, #0x220+var_64
4748F8:  MOV             R3, R6
4748FA:  BLX             sscanf
4748FE:  MOV             R0, R6; this
474900:  BLX             j__ZN11CWeaponInfo14FindWeaponTypeEPKc; CWeaponInfo::FindWeaponType(char const*)
474904:  MOV             R6, R0
474906:  MOV             R0, R8; this
474908:  BLX             j__ZN11CWeaponInfo18FindWeaponFireTypeEPKc; CWeaponInfo::FindWeaponFireType(char const*)
47490C:  RSB.W           R8, R6, R6,LSL#3
474910:  LDR             R2, [SP,#0x220+var_18C]
474912:  MOV             R11, R6
474914:  LDR.W           R12, [SP,#0x220+var_E8]
474918:  MOV.W           R1, R8,LSL#4
47491C:  ADD.W           R6, R2, R8,LSL#4
474920:  STR             R0, [R2,R1]
474922:  LDR             R1, [SP,#0x220+var_EC]; char *
474924:  LDRD.W          R3, R2, [SP,#0x220+var_F4]
474928:  LDR             R0, [SP,#0x220+var_108]
47492A:  STRD.W          R12, R1, [R6,#4]
47492E:  STRD.W          R2, R3, [R6,#0xC]
474932:  STR             R0, [R6,#0x14]
474934:  LDR             R0, [SP,#0x220+var_10C]
474936:  STRB.W          R0, [R6,#0x6F]
47493A:  ADD             R0, SP, #0x220+var_C4; this
47493C:  BLX             j__ZN16CTaskSimpleFight12GetComboTypeEPc; CTaskSimpleFight::GetComboType(char *)
474940:  STRB.W          R0, [R6,#0x6E]
474944:  ADR             R1, aNull_4; "null"
474946:  LDR             R0, [SP,#0x220+var_150]
474948:  MOVS            R2, #4; size_t
47494A:  STR             R0, [R6,#0x18]
47494C:  MOV             R0, R5; char *
47494E:  BLX             strncmp
474952:  MOVS            R1, #1
474954:  CMP             R0, #0
474956:  BEQ.W           loc_474B80
47495A:  LDR             R0, [SP,#0x220+var_194]
47495C:  LDR             R0, [R0]
47495E:  CMP             R0, #1
474960:  BLT.W           loc_474B80
474964:  MOVS            R6, #0
474966:  MOV             R0, R6
474968:  BLX             j__ZN12CAnimManager16GetAnimGroupNameE12AssocGroupId; CAnimManager::GetAnimGroupName(AssocGroupId)
47496C:  MOV             R1, R0; char *
47496E:  MOV             R0, R5; char *
474970:  BLX             strcmp
474974:  CMP             R0, #0
474976:  BEQ.W           loc_474B76
47497A:  LDR             R0, [SP,#0x220+var_178]
47497C:  ADDS            R6, #1
47497E:  LDR             R0, [R0]
474980:  CMP             R6, R0
474982:  BLT             loc_474966
474984:  MOVS            R1, #1
474986:  B               loc_474B80
474988:  ADD             R1, SP, #0x220+var_154
47498A:  STRD.W          R9, R9, [SP,#0x220+var_160]
47498E:  STRD.W          R9, R9, [SP,#0x220+var_158]
474992:  ADD             R2, SP, #0x220+var_64
474994:  STR             R1, [SP,#0x220+var_1C0]
474996:  ADD             R1, SP, #0x220+var_158
474998:  STR             R1, [SP,#0x220+var_1BC]
47499A:  ADD             R1, SP, #0x220+var_15C
47499C:  STR             R1, [SP,#0x220+var_1B8]
47499E:  ADD             R1, SP, #0x220+var_160
4749A0:  STR             R1, [SP,#0x220+var_1B4]
4749A2:  ADD             R1, SP, #0x220+var_134
4749A4:  STR             R1, [SP,#0x220+var_1E0]
4749A6:  ADD             R1, SP, #0x220+var_138
4749A8:  STR             R1, [SP,#0x220+var_1DC]
4749AA:  ADD             R1, SP, #0x220+var_13C
4749AC:  STR             R1, [SP,#0x220+var_1D8]
4749AE:  ADD             R1, SP, #0x220+var_140
4749B0:  STR             R1, [SP,#0x220+var_1D4]
4749B2:  ADD             R1, SP, #0x220+var_144
4749B4:  STR             R1, [SP,#0x220+var_1D0]
4749B6:  ADD             R1, SP, #0x220+var_148
4749B8:  STR             R1, [SP,#0x220+var_1CC]
4749BA:  ADD             R1, SP, #0x220+var_14C
4749BC:  STR             R1, [SP,#0x220+var_1C8]
4749BE:  ADD             R1, SP, #0x220+var_150
4749C0:  STR             R1, [SP,#0x220+var_1C4]
4749C2:  ADD             R1, SP, #0x220+var_114
4749C4:  STRD.W          R1, R6, [SP,#0x220+var_200]
4749C8:  ADD             R6, SP, #0x220+var_84
4749CA:  LDR             R1, [SP,#0x220+var_17C]
4749CC:  STR             R1, [SP,#0x220+var_1F8]
4749CE:  MOV             R3, R6
4749D0:  LDR             R1, [SP,#0x220+var_168]
4749D2:  STR             R1, [SP,#0x220+var_1F4]
4749D4:  ADD             R1, SP, #0x220+var_124
4749D6:  STR             R1, [SP,#0x220+var_1F0]
4749D8:  ADD             R1, SP, #0x220+var_128
4749DA:  STR             R1, [SP,#0x220+var_1EC]
4749DC:  ADD             R1, SP, #0x220+var_12C
4749DE:  STR             R1, [SP,#0x220+var_1E8]
4749E0:  ADD             R1, SP, #0x220+var_130
4749E2:  STR             R1, [SP,#0x220+var_1E4]
4749E4:  ADD             R1, SP, #0x220+var_A4
4749E6:  STR             R1, [SP,#0x220+var_220]
4749E8:  ADD             R1, SP, #0x220+var_E8
4749EA:  STR             R1, [SP,#0x220+var_21C]
4749EC:  ADD             R1, SP, #0x220+var_EC
4749EE:  STR             R1, [SP,#0x220+var_218]
4749F0:  ADD             R1, SP, #0x220+var_F0
4749F2:  STR             R1, [SP,#0x220+var_214]
4749F4:  ADD             R1, SP, #0x220+var_F4
4749F6:  STR             R1, [SP,#0x220+var_210]
4749F8:  ADD             R1, SP, #0x220+var_108
4749FA:  STRD.W          R1, R5, [SP,#0x220+var_20C]
4749FE:  ADD             R1, SP, #0x220+var_110
474A00:  STR             R1, [SP,#0x220+var_204]
474A02:  LDR             R1, =(aSSSFFDDDSDDFFF - 0x474A08); "%s %s %s %f %f %d %d %d %s %d %d %f %f "...
474A04:  ADD             R1, PC; "%s %s %s %f %f %d %d %d %s %d %d %f %f "...
474A06:  BLX             sscanf
474A0A:  MOV             R0, R6; this
474A0C:  BLX             j__ZN11CWeaponInfo14FindWeaponTypeEPKc; CWeaponInfo::FindWeaponType(char const*)
474A10:  SUB.W           R1, R0, #0x16; char *
474A14:  STR             R0, [SP,#0x220+var_1A4]
474A16:  CMP             R1, #0xA
474A18:  BHI             loc_474A54
474A1A:  LDR             R6, [SP,#0x220+var_124]
474A1C:  CMP             R6, #3; switch 4 cases
474A1E:  BHI             def_474A20; jumptable 00474A20 default case
474A20:  TBB.W           [PC,R6]; switch jump
474A24:  DCB 0xC; jump table for switch statement
474A25:  DCB 0xA
474A26:  DCB 6
474A27:  DCB 2
474A28:  ADD.W           R8, R0, #0x2F ; '/'; jumptable 00474A20 case 3
474A2C:  MOVS            R6, #3
474A2E:  B               def_474A20; jumptable 00474A20 default case
474A30:  ADD.W           R8, R0, #0x24 ; '$'; jumptable 00474A20 case 2
474A34:  MOVS            R6, #2
474A36:  B               def_474A20; jumptable 00474A20 default case
474A38:  MOVS            R6, #1; jumptable 00474A20 case 1
474A3A:  B               loc_474A58
474A3C:  ADD.W           R8, R0, #0x19; jumptable 00474A20 case 0
474A40:  MOVS            R6, #0
474A42:  B               def_474A20; jumptable 00474A20 default case
474A44:  DCFS 0.033333
474A48:  DCFS 0.02
474A4C:  DCFS 0.1
474A50:  DCFS -0.006
474A54:  MOVS            R6, #1
474A56:  STR             R6, [SP,#0x220+var_124]
474A58:  MOV             R8, R0
474A5A:  ADD             R0, SP, #0x220+var_A4; jumptable 00474A20 default case
474A5C:  BLX             j__ZN11CWeaponInfo18FindWeaponFireTypeEPKc; CWeaponInfo::FindWeaponFireType(char const*)
474A60:  SXTH.W          R1, R8
474A64:  LDR             R2, [SP,#0x220+var_180]
474A66:  RSB.W           R11, R1, R1,LSL#3
474A6A:  STR.W           R8, [SP,#0x220+var_164]
474A6E:  VLDR            D16, [SP,#0x220+var_120]
474A72:  MOV.W           R1, R11,LSL#4
474A76:  ADD.W           R8, R2, R11,LSL#4
474A7A:  STR             R0, [R2,R1]
474A7C:  ADD.W           R12, R8, #0x5C ; '\'
474A80:  LDR             R0, [SP,#0x220+var_E8]
474A82:  STR.W           R0, [R8,#4]
474A86:  LDR             R0, [SP,#0x220+var_EC]
474A88:  STR.W           R0, [R8,#8]
474A8C:  LDR             R0, [SP,#0x220+var_F0]
474A8E:  STR.W           R0, [R8,#0xC]
474A92:  LDR             R0, [SP,#0x220+var_F4]
474A94:  STR.W           R0, [R8,#0x10]
474A98:  LDR             R0, [SP,#0x220+var_108]
474A9A:  STR.W           R0, [R8,#0x14]
474A9E:  LDR             R0, [SP,#0x220+var_110]
474AA0:  STRH.W          R0, [R8,#0x20]
474AA4:  LDR             R0, [SP,#0x220+var_114]
474AA6:  STRH.W          R0, [R8,#0x22]
474AAA:  LDR             R0, [SP,#0x220+var_118]
474AAC:  STRD.W          R0, R6, [R8,#0x2C]
474AB0:  LDR             R0, [SP,#0x220+var_128]
474AB2:  VSTR            D16, [R8,#0x24]
474AB6:  STR.W           R0, [R8,#0x34]
474ABA:  LDR             R0, [SP,#0x220+var_12C]
474ABC:  STR.W           R0, [R8,#0x38]
474AC0:  LDR             R0, [SP,#0x220+var_130]
474AC2:  STR.W           R0, [R8,#0x3C]
474AC6:  ADD             R0, SP, #0x220+var_13C
474AC8:  VLDR            S0, [SP,#0x220+var_144]
474ACC:  VLD1.32         {D17[0]}, [R0@32]
474AD0:  ADD             R0, SP, #0x220+var_134
474AD2:  VLD1.32         {D16[0]}, [R0@32]
474AD6:  ADD             R0, SP, #0x220+var_140
474AD8:  VLD1.32         {D17[1]}, [R0@32]
474ADC:  ADD             R0, SP, #0x220+var_138
474ADE:  VLD1.32         {D16[1]}, [R0@32]
474AE2:  ADD.W           R0, R8, #0x40 ; '@'
474AE6:  VCVT.F32.S32    Q8, Q8
474AEA:  STR             R0, [SP,#0x220+var_1AC]
474AEC:  VMUL.F32        Q8, Q8, Q4
474AF0:  VST1.32         {D16-D17}, [R0]
474AF4:  VCVT.F32.S32    S0, S0
474AF8:  VMUL.F32        S0, S0, S20
474AFC:  VSTR            S0, [R8,#0x50]
474B00:  VLDR            S0, [SP,#0x220+var_148]
474B04:  VCVT.F32.S32    S0, S0
474B08:  VMUL.F32        S0, S0, S20
474B0C:  VSTR            S0, [R8,#0x54]
474B10:  VLDR            S0, [SP,#0x220+var_14C]
474B14:  VCVT.F32.S32    S0, S0
474B18:  LDR             R0, [SP,#0x220+var_150]
474B1A:  VMUL.F32        S0, S0, S20
474B1E:  VSTR            S0, [R8,#0x58]
474B22:  STR.W           R0, [R8,#0x18]
474B26:  LDRD.W          R1, R0, [SP,#0x220+var_158]
474B2A:  LDRD.W          R3, R2, [SP,#0x220+var_160]
474B2E:  STM.W           R12, {R0-R3}
474B32:  ADR             R1, aNull_4; "null"
474B34:  MOV             R0, R5; char *
474B36:  MOVS            R2, #4; size_t
474B38:  BLX             strncmp
474B3C:  ADD.W           R1, R8, #0x50 ; 'P'
474B40:  STR             R1, [SP,#0x220+var_1A8]
474B42:  ADD.W           R1, R8, #0x4C ; 'L'
474B46:  ADD.W           R8, R8, #0x44 ; 'D'
474B4A:  CMP             R0, #0
474B4C:  STR             R1, [SP,#0x220+var_1B0]
474B4E:  BEQ             loc_474B90
474B50:  LDR             R0, [SP,#0x220+var_190]
474B52:  LDR             R0, [R0]
474B54:  CMP             R0, #1
474B56:  BLT             loc_474B90
474B58:  MOVS            R6, #0
474B5A:  MOV             R0, R6
474B5C:  BLX             j__ZN12CAnimManager16GetAnimGroupNameE12AssocGroupId; CAnimManager::GetAnimGroupName(AssocGroupId)
474B60:  MOV             R1, R0; char *
474B62:  MOV             R0, R5; char *
474B64:  BLX             strcmp
474B68:  CBZ             R0, loc_474B88
474B6A:  LDR             R0, [SP,#0x220+var_174]
474B6C:  ADDS            R6, #1
474B6E:  LDR             R0, [R0]
474B70:  CMP             R6, R0
474B72:  BLT             loc_474B5A
474B74:  B               loc_474B90
474B76:  LDR             R0, [SP,#0x220+var_1A0]
474B78:  MOVS            R1, #1
474B7A:  ADD.W           R0, R0, R8,LSL#4
474B7E:  STR             R6, [R0,#0x1C]
474B80:  LDR.W           R8, [SP,#0x220+var_164]
474B84:  MOV             R2, R11
474B86:  B               loc_474C32
474B88:  LDR             R0, [SP,#0x220+var_19C]
474B8A:  ADD.W           R0, R0, R11,LSL#4
474B8E:  STR             R6, [R0,#0x1C]
474B90:  LDR             R0, [SP,#0x220+var_184]
474B92:  ADD.W           R0, R0, R11,LSL#4
474B96:  LDR             R0, [R0,#0x1C]
474B98:  SUB.W           R1, R0, #0xB
474B9C:  CMP             R1, #0x14
474B9E:  BHI             loc_474BB0
474BA0:  LDR             R1, [SP,#0x220+var_198]
474BA2:  MOVW            R2, #0xFFF5
474BA6:  ADD             R0, R2
474BA8:  ADD.W           R1, R1, R11,LSL#4
474BAC:  STRH.W          R0, [R1,#0x6C]
474BB0:  LDR             R0, [SP,#0x220+var_1AC]
474BB2:  VLDR            S0, [R8]
474BB6:  VLDR            S28, [R0]
474BBA:  VSUB.F32        S0, S0, S28
474BBE:  VDIV.F32        S0, S0, S22
474BC2:  VADD.F32        S0, S0, S24
474BC6:  VMOV            R0, S0; x
474BCA:  BLX             floorf
474BCE:  VMOV            S0, R0
474BD2:  LDR             R0, [SP,#0x220+var_1B0]
474BD4:  LDR             R6, [SP,#0x220+var_124]
474BD6:  VMUL.F32        S0, S0, S22
474BDA:  VADD.F32        S0, S0, S26
474BDE:  VADD.F32        S0, S28, S0
474BE2:  VSTR            S0, [R8]
474BE6:  VLDR            S28, [R0]
474BEA:  LDR             R0, [SP,#0x220+var_1A8]
474BEC:  MOV             R8, R0
474BEE:  VLDR            S0, [R8]
474BF2:  VSUB.F32        S0, S0, S28
474BF6:  VDIV.F32        S0, S0, S22
474BFA:  VADD.F32        S0, S0, S24
474BFE:  VMOV            R0, S0; x
474C02:  BLX             floorf
474C06:  VMOV            S0, R0
474C0A:  LDR             R2, [SP,#0x220+var_1A4]
474C0C:  MOVS            R0, #0
474C0E:  VMUL.F32        S0, S0, S22
474C12:  CMP             R2, #0x28 ; '('
474C14:  VADD.F32        S0, S0, S26
474C18:  VADD.F32        S0, S28, S0
474C1C:  VSTR            S0, [R8]
474C20:  IT NE
474C22:  MOVNE           R0, #1
474C24:  CMP             R6, #1
474C26:  IT NE
474C28:  MOVNE           R6, #0
474C2A:  LDR.W           R8, [SP,#0x220+var_164]
474C2E:  AND.W           R1, R0, R6
474C32:  ADD             R6, SP, #0x220+var_120
474C34:  CMP             R1, #1
474C36:  BNE             loc_474C46
474C38:  LDR             R0, [SP,#0x220+var_F0]
474C3A:  CMP             R0, #1
474C3C:  ITTT GE
474C3E:  LDRGE           R1, [SP,#0x220+var_188]; unsigned int
474C40:  LDRGE.W         R0, [R1,R0,LSL#2]
474C44:  STRGE           R2, [R0,#0x3C]
474C46:  MOV             R0, R4; this
474C48:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
474C4C:  CMP             R0, #0
474C4E:  BNE.W           loc_4747CC
474C52:  MOV             R0, R4; this
474C54:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
474C58:  LDR             R0, =(__stack_chk_guard_ptr - 0x474C60)
474C5A:  LDR             R1, [SP,#0x220+var_5C]
474C5C:  ADD             R0, PC; __stack_chk_guard_ptr
474C5E:  LDR             R0, [R0]; __stack_chk_guard
474C60:  LDR             R0, [R0]
474C62:  SUBS            R0, R0, R1
474C64:  ITTTT EQ
474C66:  ADDEQ           SP, SP, #0x1C8
474C68:  VPOPEQ          {D8-D14}
474C6C:  ADDEQ           SP, SP, #4
474C6E:  POPEQ.W         {R8-R11}
474C72:  IT EQ
474C74:  POPEQ           {R4-R7,PC}
474C76:  BLX             __stack_chk_fail
