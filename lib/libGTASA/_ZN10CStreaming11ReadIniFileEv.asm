; =========================================================
; Game Engine Function: _ZN10CStreaming11ReadIniFileEv
; Address            : 0x4725A4 - 0x4727A0
; =========================================================

4725A4:  PUSH            {R4-R7,LR}
4725A6:  ADD             R7, SP, #0xC
4725A8:  PUSH.W          {R8-R11}
4725AC:  SUB             SP, SP, #0x2C
4725AE:  ADR             R0, aStreamIni; "stream.ini"
4725B0:  ADR             R1, aR_6; "r"
4725B2:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
4725B6:  MOV             R4, R0
4725B8:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
4725BC:  CMP             R0, #0
4725BE:  BEQ.W           loc_472790
4725C2:  LDR             R1, =(_ZN10CStreaming18ms_memoryAvailableE_ptr - 0x4725D0)
4725C4:  ADR             R5, asc_4727B0; " ,\t"
4725C6:  ADR             R6, aMemory; "memory"
4725C8:  MOV.W           R9, #0
4725CC:  ADD             R1, PC; _ZN10CStreaming18ms_memoryAvailableE_ptr
4725CE:  LDR             R1, [R1]; CStreaming::ms_memoryAvailable ...
4725D0:  STR             R1, [SP,#0x48+var_20]
4725D2:  LDR             R1, =(_ZN10CStreaming24desiredNumVehiclesLoadedE_ptr - 0x4725D8)
4725D4:  ADD             R1, PC; _ZN10CStreaming24desiredNumVehiclesLoadedE_ptr
4725D6:  LDR             R1, [R1]; CStreaming::desiredNumVehiclesLoaded ...
4725D8:  STR             R1, [SP,#0x48+var_24]
4725DA:  LDR             R1, =(bDontBuildPaths_ptr - 0x4725E0)
4725DC:  ADD             R1, PC; bDontBuildPaths_ptr
4725DE:  LDR             R1, [R1]; bDontBuildPaths
4725E0:  STR             R1, [SP,#0x48+var_28]
4725E2:  LDR             R1, =(_ZN12CPostEffects29SCREEN_EXTRA_MULT_CHANGE_RATEE_ptr - 0x4725E8)
4725E4:  ADD             R1, PC; _ZN12CPostEffects29SCREEN_EXTRA_MULT_CHANGE_RATEE_ptr
4725E6:  LDR             R1, [R1]; CPostEffects::SCREEN_EXTRA_MULT_CHANGE_RATE ...
4725E8:  STR             R1, [SP,#0x48+var_2C]
4725EA:  LDR             R1, =(_ZN12CPostEffects26SCREEN_EXTRA_MULT_BASE_CAPE_ptr - 0x4725F0)
4725EC:  ADD             R1, PC; _ZN12CPostEffects26SCREEN_EXTRA_MULT_BASE_CAPE_ptr
4725EE:  LDR             R1, [R1]; CPostEffects::SCREEN_EXTRA_MULT_BASE_CAP ...
4725F0:  STR             R1, [SP,#0x48+var_30]
4725F2:  LDR             R1, =(_ZN12CPostEffects27SCREEN_EXTRA_MULT_BASE_MULTE_ptr - 0x4725F8)
4725F4:  ADD             R1, PC; _ZN12CPostEffects27SCREEN_EXTRA_MULT_BASE_MULTE_ptr
4725F6:  LDR             R1, [R1]; CPostEffects::SCREEN_EXTRA_MULT_BASE_MULT ...
4725F8:  STR             R1, [SP,#0x48+var_34]
4725FA:  LDR             R1, =(_ZN12CPostEffects19m_colourLeftUOffsetE_ptr - 0x472600)
4725FC:  ADD             R1, PC; _ZN12CPostEffects19m_colourLeftUOffsetE_ptr
4725FE:  LDR             R1, [R1]; CPostEffects::m_colourLeftUOffset ...
472600:  STR             R1, [SP,#0x48+var_38]
472602:  LDR             R1, =(_ZN12CPostEffects20m_colourRightUOffsetE_ptr - 0x472608)
472604:  ADD             R1, PC; _ZN12CPostEffects20m_colourRightUOffsetE_ptr
472606:  LDR             R1, [R1]; CPostEffects::m_colourRightUOffset ...
472608:  STR             R1, [SP,#0x48+var_3C]
47260A:  LDR             R1, =(_ZN12CPostEffects18m_colourTopVOffsetE_ptr - 0x472610)
47260C:  ADD             R1, PC; _ZN12CPostEffects18m_colourTopVOffsetE_ptr
47260E:  LDR             R1, [R1]; CPostEffects::m_colourTopVOffset ...
472610:  STR             R1, [SP,#0x48+var_40]
472612:  LDR             R1, =(_ZN12CPostEffects21m_colourBottomVOffsetE_ptr - 0x472618)
472614:  ADD             R1, PC; _ZN12CPostEffects21m_colourBottomVOffsetE_ptr
472616:  LDR             R1, [R1]; CPostEffects::m_colourBottomVOffset ...
472618:  STR             R1, [SP,#0x48+var_44]
47261A:  LDR             R1, =(_ZN12CPostEffects12m_bRadiosityE_ptr - 0x472620)
47261C:  ADD             R1, PC; _ZN12CPostEffects12m_bRadiosityE_ptr
47261E:  LDR             R1, [R1]; CPostEffects::m_bRadiosity ...
472620:  STR             R1, [SP,#0x48+var_48]
472622:  LDR             R1, =(_ZN10CStreaming18ms_memoryAvailableE_ptr - 0x472628)
472624:  ADD             R1, PC; _ZN10CStreaming18ms_memoryAvailableE_ptr
472626:  LDR.W           R8, [R1]; CStreaming::ms_memoryAvailable ...
47262A:  B               loc_472654
47262C:  MOV             R0, R11; char *
47262E:  BLX             atoi
472632:  LDR             R1, [SP,#0x48+var_38]
472634:  B               loc_472748
472636:  MOV             R0, R11; char *
472638:  BLX             atoi
47263C:  LDR             R1, [SP,#0x48+var_3C]
47263E:  B               loc_472748
472640:  MOV             R0, R11; char *
472642:  BLX             atoi
472646:  LDR             R1, [SP,#0x48+var_40]
472648:  B               loc_472748
47264A:  MOV             R0, R11; char *
47264C:  BLX             atoi
472650:  LDR             R1, [SP,#0x48+var_44]
472652:  B               loc_472748
472654:  LDRB            R1, [R0]
472656:  CMP             R1, #0
472658:  IT NE
47265A:  CMPNE           R1, #0x23 ; '#'
47265C:  BEQ.W           loc_472784
472660:  MOV             R1, R5; char *
472662:  BLX             strtok
472666:  MOV             R10, R0
472668:  MOVS            R0, #0; char *
47266A:  MOV             R1, R5; char *
47266C:  BLX             strtok
472670:  MOV             R11, R0
472672:  MOV             R0, R10; char *
472674:  MOV             R1, R6; char *
472676:  BLX             strcasecmp
47267A:  CMP             R0, #0
47267C:  IT NE
47267E:  MOVNE           R0, #1
472680:  ORR.W           R0, R0, R9
472684:  LSLS            R0, R0, #0x1F
472686:  BEQ             loc_47271E
472688:  ADR             R1, aDevkitMemory; "devkit_memory"
47268A:  MOV             R0, R10; char *
47268C:  BLX             strcasecmp
472690:  CMP             R0, #0
472692:  BEQ             loc_472730
472694:  ADR             R1, aVehicles; "vehicles"
472696:  MOV             R0, R10; char *
472698:  BLX             strcasecmp
47269C:  CMP             R0, #0
47269E:  BEQ             loc_472740
4726A0:  ADR             R1, aDontbuildpaths; "dontbuildpaths"
4726A2:  MOV             R0, R10; char *
4726A4:  BLX             strcasecmp
4726A8:  CMP             R0, #0
4726AA:  BEQ             loc_47274C
4726AC:  ADR             R1, aPeLightchanger; "pe_lightchangerate"
4726AE:  MOV             R0, R10; char *
4726B0:  BLX             strcasecmp
4726B4:  CMP             R0, #0
4726B6:  BEQ             loc_472754
4726B8:  ADR             R1, aPeLightingbase; "pe_lightingbasecap"
4726BA:  MOV             R0, R10; char *
4726BC:  BLX             strcasecmp
4726C0:  CMP             R0, #0
4726C2:  BEQ             loc_472762
4726C4:  ADR             R1, aPeLightingbase_0; "pe_lightingbasemult"
4726C6:  MOV             R0, R10; char *
4726C8:  BLX             strcasecmp
4726CC:  CMP             R0, #0
4726CE:  BEQ             loc_472770
4726D0:  ADR             R1, aPeLeftx; "pe_leftx"
4726D2:  MOV             R0, R10; char *
4726D4:  BLX             strcasecmp
4726D8:  CMP             R0, #0
4726DA:  BEQ             loc_47262C
4726DC:  ADR             R1, aPeRightx; "pe_rightx"
4726DE:  MOV             R0, R10; char *
4726E0:  BLX             strcasecmp
4726E4:  CMP             R0, #0
4726E6:  BEQ             loc_472636
4726E8:  ADR             R1, aPeTopy; "pe_topy"
4726EA:  MOV             R0, R10; char *
4726EC:  BLX             strcasecmp
4726F0:  CMP             R0, #0
4726F2:  BEQ             loc_472640
4726F4:  ADR             R1, aPeBottomy; "pe_bottomy"
4726F6:  MOV             R0, R10; char *
4726F8:  BLX             strcasecmp
4726FC:  CMP             R0, #0
4726FE:  BEQ             loc_47264A
472700:  LDR             R1, =(aPeBradiosity - 0x472708); "pe_bRadiosity"
472702:  MOV             R0, R10; char *
472704:  ADD             R1, PC; "pe_bRadiosity"
472706:  BLX             strcasecmp
47270A:  CBNZ            R0, loc_472784
47270C:  MOV             R0, R11; char *
47270E:  BLX             atoi
472712:  CMP             R0, #0
472714:  IT NE
472716:  MOVNE           R0, #1
472718:  LDR             R1, [SP,#0x48+var_48]
47271A:  STRB            R0, [R1]
47271C:  B               loc_472784
47271E:  MOV             R0, R11; char *
472720:  BLX             atoi
472724:  LSLS            R0, R0, #0xA
472726:  MOV.W           R9, #0
47272A:  STR.W           R0, [R8]; CStreaming::ms_memoryAvailable
47272E:  B               loc_472784
472730:  MOV             R0, R11; char *
472732:  BLX             atoi
472736:  LDR             R1, [SP,#0x48+var_20]
472738:  LSLS            R0, R0, #0xA
47273A:  MOV.W           R9, #1
47273E:  B               loc_472748
472740:  MOV             R0, R11; char *
472742:  BLX             atoi
472746:  LDR             R1, [SP,#0x48+var_24]
472748:  STR             R0, [R1]
47274A:  B               loc_472784
47274C:  LDR             R0, [SP,#0x48+var_28]
47274E:  MOVS            R1, #1
472750:  STRB            R1, [R0]
472752:  B               loc_472784
472754:  MOV             R0, R11; char *
472756:  BLX             atof
47275A:  VMOV            D16, R0, R1
47275E:  LDR             R0, [SP,#0x48+var_2C]
472760:  B               loc_47277C
472762:  MOV             R0, R11; char *
472764:  BLX             atof
472768:  VMOV            D16, R0, R1
47276C:  LDR             R0, [SP,#0x48+var_30]
47276E:  B               loc_47277C
472770:  MOV             R0, R11; char *
472772:  BLX             atof
472776:  VMOV            D16, R0, R1
47277A:  LDR             R0, [SP,#0x48+var_34]
47277C:  VCVT.F32.F64    S0, D16
472780:  VSTR            S0, [R0]
472784:  MOV             R0, R4; this
472786:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
47278A:  CMP             R0, #0
47278C:  BNE.W           loc_472654
472790:  MOV             R0, R4; this
472792:  ADD             SP, SP, #0x2C ; ','
472794:  POP.W           {R8-R11}
472798:  POP.W           {R4-R7,LR}
47279C:  B.W             j_j__ZN8CFileMgr9CloseFileEj; j_CFileMgr::CloseFile(uint)
