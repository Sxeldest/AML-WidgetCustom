; =========================================================
; Game Engine Function: _ZN15FxInfoManager_c4LoadEji
; Address            : 0x46E45C - 0x46EBA8
; =========================================================

46E45C:  PUSH            {R4-R7,LR}
46E45E:  ADD             R7, SP, #0xC
46E460:  PUSH.W          {R8-R11}
46E464:  SUB             SP, SP, #0x18C
46E466:  MOV             R4, R0
46E468:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x46E474)
46E46C:  ADD             R5, SP, #0x1A8+var_120
46E46E:  MOV             R6, R1
46E470:  ADD             R0, PC; __stack_chk_guard_ptr
46E472:  MOV             R8, R2
46E474:  MOV             R1, R5; char *
46E476:  MOV.W           R2, #0x100; int
46E47A:  LDR             R0, [R0]; __stack_chk_guard
46E47C:  LDR             R0, [R0]
46E47E:  STR             R0, [SP,#0x1A8+var_20]
46E480:  MOV             R0, R6; unsigned int
46E482:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E486:  MOV             R0, R6; unsigned int
46E488:  MOV             R1, R5; char *
46E48A:  MOV.W           R2, #0x100; int
46E48E:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E492:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E4A0); "%s %d"
46E496:  ADD             R2, SP, #0x1A8+var_1A0
46E498:  MOV             R0, R5; s
46E49A:  MOV             R3, R4
46E49C:  ADD             R1, PC; "%s %d" ; format
46E49E:  BLX             sscanf
46E4A2:  LDR.W           R0, =(g_fxMan_ptr - 0x46E4B0)
46E4A6:  MOVW            R2, #0xFFFF
46E4AA:  LDR             R1, [R4]
46E4AC:  ADD             R0, PC; g_fxMan_ptr
46E4AE:  STRH            R2, [R4,#8]
46E4B0:  MOVS            R2, #4; int
46E4B2:  LDR             R0, [R0]; g_fxMan
46E4B4:  LSLS            R1, R1, #2; int
46E4B6:  ADDS            R0, #0xAC; this
46E4B8:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
46E4BC:  LDR             R1, [R4]
46E4BE:  STR             R0, [R4,#4]
46E4C0:  CMP             R1, #1
46E4C2:  BLT.W           loc_46EB7C
46E4C6:  ADD.W           R10, SP, #0x1A8+var_120
46E4CA:  ADD             R5, SP, #0x1A8+var_1A0
46E4CC:  ADR.W           R11, aFxInfoEmrateDa; "FX_INFO_EMRATE_DATA:"
46E4D0:  MOV.W           R9, #0
46E4D4:  MOVS            R0, #1
46E4D6:  MOV             R1, R10; char *
46E4D8:  STR             R0, [SP,#0x1A8+var_1A4]
46E4DA:  MOV             R0, R6; unsigned int
46E4DC:  MOV.W           R2, #0x100; int
46E4E0:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E4E4:  ADR.W           R1, dword_46EBB4; format
46E4E8:  MOV             R0, R10; s
46E4EA:  MOV             R2, R5
46E4EC:  BLX             sscanf
46E4F0:  MOV             R0, R5; char *
46E4F2:  MOV             R1, R11; char *
46E4F4:  BLX             strcmp
46E4F8:  CMP             R0, #0
46E4FA:  BEQ.W           loc_46E74C
46E4FE:  ADR.W           R1, aFxInfoEmsizeDa; "FX_INFO_EMSIZE_DATA:"
46E502:  MOV             R0, R5; char *
46E504:  BLX             strcmp
46E508:  CMP             R0, #0
46E50A:  BEQ.W           loc_46E754
46E50E:  ADR.W           R1, aFxInfoEmspeedD; "FX_INFO_EMSPEED_DATA:"
46E512:  MOV             R0, R5; char *
46E514:  BLX             strcmp
46E518:  CMP             R0, #0
46E51A:  BEQ.W           loc_46E75C
46E51E:  ADR.W           R1, aFxInfoEmdirDat; "FX_INFO_EMDIR_DATA:"
46E522:  MOV             R0, R5; char *
46E524:  BLX             strcmp
46E528:  CMP             R0, #0
46E52A:  BEQ.W           loc_46E764
46E52E:  ADR.W           R1, aFxInfoEmangleD; "FX_INFO_EMANGLE_DATA:"
46E532:  MOV             R0, R5; char *
46E534:  BLX             strcmp
46E538:  CMP             R0, #0
46E53A:  BEQ.W           loc_46E76C
46E53E:  ADR.W           R1, aFxInfoEmlifeDa; "FX_INFO_EMLIFE_DATA:"
46E542:  MOV             R0, R5; char *
46E544:  BLX             strcmp
46E548:  CMP             R0, #0
46E54A:  BEQ.W           loc_46E774
46E54E:  LDR.W           R1, =(aFxInfoEmposDat - 0x46E558); "FX_INFO_EMPOS_DATA:"
46E552:  MOV             R0, R5; char *
46E554:  ADD             R1, PC; "FX_INFO_EMPOS_DATA:"
46E556:  BLX             strcmp
46E55A:  CMP             R0, #0
46E55C:  BEQ.W           loc_46E77C
46E560:  LDR.W           R1, =(aFxInfoEmweathe - 0x46E56A); "FX_INFO_EMWEATHER_DATA:"
46E564:  MOV             R0, R5; char *
46E566:  ADD             R1, PC; "FX_INFO_EMWEATHER_DATA:"
46E568:  BLX             strcmp
46E56C:  CMP             R0, #0
46E56E:  BEQ.W           loc_46E784
46E572:  LDR.W           R1, =(aFxInfoEmrotati - 0x46E57C); "FX_INFO_EMROTATION_DATA:"
46E576:  MOV             R0, R5; char *
46E578:  ADD             R1, PC; "FX_INFO_EMROTATION_DATA:"
46E57A:  BLX             strcmp
46E57E:  CMP             R0, #0
46E580:  BEQ.W           loc_46E78C
46E584:  LDR.W           R1, =(aFxInfoNoiseDat - 0x46E58E); "FX_INFO_NOISE_DATA:"
46E588:  MOV             R0, R5; char *
46E58A:  ADD             R1, PC; "FX_INFO_NOISE_DATA:"
46E58C:  BLX             strcmp
46E590:  CMP             R0, #0
46E592:  BEQ.W           loc_46E794
46E596:  LDR.W           R1, =(aFxInfoForceDat - 0x46E5A0); "FX_INFO_FORCE_DATA:"
46E59A:  MOV             R0, R5; char *
46E59C:  ADD             R1, PC; "FX_INFO_FORCE_DATA:"
46E59E:  BLX             strcmp
46E5A2:  CMP             R0, #0
46E5A4:  BEQ.W           loc_46E7BE
46E5A8:  LDR.W           R1, =(aFxInfoFriction - 0x46E5B2); "FX_INFO_FRICTION_DATA:"
46E5AC:  MOV             R0, R5; char *
46E5AE:  ADD             R1, PC; "FX_INFO_FRICTION_DATA:"
46E5B0:  BLX             strcmp
46E5B4:  CMP             R0, #0
46E5B6:  BEQ.W           loc_46E7E8
46E5BA:  LDR.W           R1, =(aFxInfoAttractp - 0x46E5C4); "FX_INFO_ATTRACTPT_DATA:"
46E5BE:  MOV             R0, R5; char *
46E5C0:  ADD             R1, PC; "FX_INFO_ATTRACTPT_DATA:"
46E5C2:  BLX             strcmp
46E5C6:  CMP             R0, #0
46E5C8:  BEQ.W           loc_46E812
46E5CC:  LDR.W           R1, =(aFxInfoAttractl - 0x46E5D6); "FX_INFO_ATTRACTLINE_DATA:"
46E5D0:  MOV             R0, R5; char *
46E5D2:  ADD             R1, PC; "FX_INFO_ATTRACTLINE_DATA:"
46E5D4:  BLX             strcmp
46E5D8:  CMP             R0, #0
46E5DA:  BEQ.W           loc_46E83C
46E5DE:  LDR.W           R1, =(aFxInfoGroundco - 0x46E5E8); "FX_INFO_GROUNDCOLLIDE_DATA:"
46E5E2:  MOV             R0, R5; char *
46E5E4:  ADD             R1, PC; "FX_INFO_GROUNDCOLLIDE_DATA:"
46E5E6:  BLX             strcmp
46E5EA:  CMP             R0, #0
46E5EC:  BEQ.W           loc_46E866
46E5F0:  LDR.W           R1, =(aFxInfoWindData - 0x46E5FA); "FX_INFO_WIND_DATA:"
46E5F4:  MOV             R0, R5; char *
46E5F6:  ADD             R1, PC; "FX_INFO_WIND_DATA:"
46E5F8:  BLX             strcmp
46E5FC:  CMP             R0, #0
46E5FE:  BEQ.W           loc_46E890
46E602:  LDR.W           R1, =(aFxInfoJitterDa - 0x46E60C); "FX_INFO_JITTER_DATA:"
46E606:  MOV             R0, R5; char *
46E608:  ADD             R1, PC; "FX_INFO_JITTER_DATA:"
46E60A:  BLX             strcmp
46E60E:  CMP             R0, #0
46E610:  BEQ.W           loc_46E8BA
46E614:  LDR.W           R1, =(aFxInfoRotspeed - 0x46E61E); "FX_INFO_ROTSPEED_DATA:"
46E618:  MOV             R0, R5; char *
46E61A:  ADD             R1, PC; "FX_INFO_ROTSPEED_DATA:"
46E61C:  BLX             strcmp
46E620:  CMP             R0, #0
46E622:  BEQ.W           loc_46E8E4
46E626:  LDR.W           R1, =(aFxInfoFloatDat - 0x46E630); "FX_INFO_FLOAT_DATA:"
46E62A:  MOV             R0, R5; char *
46E62C:  ADD             R1, PC; "FX_INFO_FLOAT_DATA:"
46E62E:  BLX             strcmp
46E632:  CMP             R0, #0
46E634:  BEQ.W           loc_46E90C
46E638:  LDR.W           R1, =(aFxInfoUnderwat - 0x46E642); "FX_INFO_UNDERWATER_DATA:"
46E63C:  MOV             R0, R5; char *
46E63E:  ADD             R1, PC; "FX_INFO_UNDERWATER_DATA:"
46E640:  BLX             strcmp
46E644:  CMP             R0, #0
46E646:  BEQ.W           loc_46E934
46E64A:  LDR.W           R1, =(aFxInfoColourDa - 0x46E654); "FX_INFO_COLOUR_DATA:"
46E64E:  MOV             R0, R5; char *
46E650:  ADD             R1, PC; "FX_INFO_COLOUR_DATA:"
46E652:  BLX             strcmp
46E656:  CMP             R0, #0
46E658:  BEQ.W           loc_46E95C
46E65C:  LDR.W           R1, =(aFxInfoSizeData - 0x46E666); "FX_INFO_SIZE_DATA:"
46E660:  MOV             R0, R5; char *
46E662:  ADD             R1, PC; "FX_INFO_SIZE_DATA:"
46E664:  BLX             strcmp
46E668:  CMP             R0, #0
46E66A:  BEQ.W           loc_46E984
46E66E:  LDR.W           R1, =(aFxInfoSpritere - 0x46E678); "FX_INFO_SPRITERECT_DATA:"
46E672:  MOV             R0, R5; char *
46E674:  ADD             R1, PC; "FX_INFO_SPRITERECT_DATA:"
46E676:  BLX             strcmp
46E67A:  CMP             R0, #0
46E67C:  BEQ.W           loc_46E9AC
46E680:  LDR.W           R1, =(aFxInfoHeathaze - 0x46E68A); "FX_INFO_HEATHAZE_DATA:"
46E684:  MOV             R0, R5; char *
46E686:  ADD             R1, PC; "FX_INFO_HEATHAZE_DATA:"
46E688:  BLX             strcmp
46E68C:  CMP             R0, #0
46E68E:  BEQ.W           loc_46E9D4
46E692:  LDR.W           R1, =(aFxInfoTrailDat - 0x46E69C); "FX_INFO_TRAIL_DATA:"
46E696:  MOV             R0, R5; char *
46E698:  ADD             R1, PC; "FX_INFO_TRAIL_DATA:"
46E69A:  BLX             strcmp
46E69E:  CMP             R0, #0
46E6A0:  BEQ.W           loc_46E9FC
46E6A4:  LDR.W           R1, =(aFxInfoFlatData - 0x46E6AE); "FX_INFO_FLAT_DATA:"
46E6A8:  MOV             R0, R5; char *
46E6AA:  ADD             R1, PC; "FX_INFO_FLAT_DATA:"
46E6AC:  BLX             strcmp
46E6B0:  CMP             R0, #0
46E6B2:  BEQ.W           loc_46EA24
46E6B6:  LDR.W           R1, =(aFxInfoDirData - 0x46E6C0); "FX_INFO_DIR_DATA:"
46E6BA:  MOV             R0, R5; char *
46E6BC:  ADD             R1, PC; "FX_INFO_DIR_DATA:"
46E6BE:  BLX             strcmp
46E6C2:  CMP             R0, #0
46E6C4:  BEQ.W           loc_46EA4C
46E6C8:  LDR.W           R1, =(aFxInfoAnimtexD - 0x46E6D2); "FX_INFO_ANIMTEX_DATA:"
46E6CC:  MOV             R0, R5; char *
46E6CE:  ADD             R1, PC; "FX_INFO_ANIMTEX_DATA:"
46E6D0:  BLX             strcmp
46E6D4:  CMP             R0, #0
46E6D6:  BEQ.W           loc_46EA74
46E6DA:  LDR.W           R1, =(aFxInfoColourra - 0x46E6E4); "FX_INFO_COLOURRANGE_DATA:"
46E6DE:  MOV             R0, R5; char *
46E6E0:  ADD             R1, PC; "FX_INFO_COLOURRANGE_DATA:"
46E6E2:  BLX             strcmp
46E6E6:  CMP             R0, #0
46E6E8:  BEQ.W           loc_46EA9C
46E6EC:  LDR.W           R1, =(aFxInfoSelflitD - 0x46E6F6); "FX_INFO_SELFLIT_DATA:"
46E6F0:  MOV             R0, R5; char *
46E6F2:  ADD             R1, PC; "FX_INFO_SELFLIT_DATA:"
46E6F4:  BLX             strcmp
46E6F8:  CMP             R0, #0
46E6FA:  BEQ.W           loc_46EAC4
46E6FE:  LDR.W           R1, =(aFxInfoColourbr - 0x46E708); "FX_INFO_COLOURBRIGHT_DATA:"
46E702:  MOV             R0, R5; char *
46E704:  ADD             R1, PC; "FX_INFO_COLOURBRIGHT_DATA:"
46E706:  BLX             strcmp
46E70A:  CMP             R0, #0
46E70C:  BEQ.W           loc_46EAEC
46E710:  LDR.W           R1, =(aFxInfoSmokeDat - 0x46E71A); "FX_INFO_SMOKE_DATA:"
46E714:  MOV             R0, R5; char *
46E716:  ADD             R1, PC; "FX_INFO_SMOKE_DATA:"
46E718:  BLX             strcmp
46E71C:  CMP             R0, #0
46E71E:  BNE.W           loc_46EB38
46E722:  CMP.W           R8, #1
46E726:  BLT             loc_46E744
46E728:  MOV             R0, R6; unsigned int
46E72A:  MOV             R1, R10; char *
46E72C:  MOV.W           R2, #0x100; int
46E730:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E734:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E742); "%s %d"
46E738:  ADD             R3, SP, #0x1A8+var_1A4
46E73A:  MOV             R0, R10; s
46E73C:  MOV             R2, R5
46E73E:  ADD             R1, PC; "%s %d" ; format
46E740:  BLX             sscanf
46E744:  MOV             R0, R4
46E746:  MOVW            R1, #0x8001
46E74A:  B               loc_46EB12
46E74C:  MOV             R0, R4
46E74E:  MOVW            R1, #0x1001
46E752:  B               loc_46EB12
46E754:  MOV             R0, R4
46E756:  MOVW            R1, #0x1004
46E75A:  B               loc_46EB12
46E75C:  MOV             R0, R4
46E75E:  MOVW            R1, #0x1008
46E762:  B               loc_46EB12
46E764:  MOV             R0, R4
46E766:  MOVW            R1, #0x1010
46E76A:  B               loc_46EB12
46E76C:  MOV             R0, R4
46E76E:  MOV.W           R1, #0x1020
46E772:  B               loc_46EB12
46E774:  MOV             R0, R4
46E776:  MOV.W           R1, #0x1040
46E77A:  B               loc_46EB12
46E77C:  MOV             R0, R4
46E77E:  MOV.W           R1, #0x1080
46E782:  B               loc_46EB12
46E784:  MOV             R0, R4
46E786:  MOV.W           R1, #0x1100
46E78A:  B               loc_46EB12
46E78C:  MOV             R0, R4
46E78E:  MOV.W           R1, #0x1200
46E792:  B               loc_46EB12
46E794:  CMP.W           R8, #1
46E798:  BLT             loc_46E7B6
46E79A:  MOV             R0, R6; unsigned int
46E79C:  MOV             R1, R10; char *
46E79E:  MOV.W           R2, #0x100; int
46E7A2:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E7A6:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E7B4); "%s %d"
46E7AA:  ADD             R3, SP, #0x1A8+var_1A4
46E7AC:  MOV             R0, R10; s
46E7AE:  MOV             R2, R5
46E7B0:  ADD             R1, PC; "%s %d" ; format
46E7B2:  BLX             sscanf
46E7B6:  MOV             R0, R4
46E7B8:  MOVW            R1, #0x2001
46E7BC:  B               loc_46EB12
46E7BE:  CMP.W           R8, #1
46E7C2:  BLT             loc_46E7E0
46E7C4:  MOV             R0, R6; unsigned int
46E7C6:  MOV             R1, R10; char *
46E7C8:  MOV.W           R2, #0x100; int
46E7CC:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E7D0:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E7DE); "%s %d"
46E7D4:  ADD             R3, SP, #0x1A8+var_1A4
46E7D6:  MOV             R0, R10; s
46E7D8:  MOV             R2, R5
46E7DA:  ADD             R1, PC; "%s %d" ; format
46E7DC:  BLX             sscanf
46E7E0:  MOV             R0, R4
46E7E2:  MOVW            R1, #0x2002
46E7E6:  B               loc_46EB12
46E7E8:  CMP.W           R8, #1
46E7EC:  BLT             loc_46E80A
46E7EE:  MOV             R0, R6; unsigned int
46E7F0:  MOV             R1, R10; char *
46E7F2:  MOV.W           R2, #0x100; int
46E7F6:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E7FA:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E808); "%s %d"
46E7FE:  ADD             R3, SP, #0x1A8+var_1A4
46E800:  MOV             R0, R10; s
46E802:  MOV             R2, R5
46E804:  ADD             R1, PC; "%s %d" ; format
46E806:  BLX             sscanf
46E80A:  MOV             R0, R4
46E80C:  MOVW            R1, #0x2004
46E810:  B               loc_46EB12
46E812:  CMP.W           R8, #1
46E816:  BLT             loc_46E834
46E818:  MOV             R0, R6; unsigned int
46E81A:  MOV             R1, R10; char *
46E81C:  MOV.W           R2, #0x100; int
46E820:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E824:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E832); "%s %d"
46E828:  ADD             R3, SP, #0x1A8+var_1A4
46E82A:  MOV             R0, R10; s
46E82C:  MOV             R2, R5
46E82E:  ADD             R1, PC; "%s %d" ; format
46E830:  BLX             sscanf
46E834:  MOV             R0, R4
46E836:  MOVW            R1, #0x2008
46E83A:  B               loc_46EB12
46E83C:  CMP.W           R8, #1
46E840:  BLT             loc_46E85E
46E842:  MOV             R0, R6; unsigned int
46E844:  MOV             R1, R10; char *
46E846:  MOV.W           R2, #0x100; int
46E84A:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E84E:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E85C); "%s %d"
46E852:  ADD             R3, SP, #0x1A8+var_1A4
46E854:  MOV             R0, R10; s
46E856:  MOV             R2, R5
46E858:  ADD             R1, PC; "%s %d" ; format
46E85A:  BLX             sscanf
46E85E:  MOV             R0, R4
46E860:  MOVW            R1, #0x2010
46E864:  B               loc_46EB12
46E866:  CMP.W           R8, #1
46E86A:  BLT             loc_46E888
46E86C:  MOV             R0, R6; unsigned int
46E86E:  MOV             R1, R10; char *
46E870:  MOV.W           R2, #0x100; int
46E874:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E878:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E886); "%s %d"
46E87C:  ADD             R3, SP, #0x1A8+var_1A4
46E87E:  MOV             R0, R10; s
46E880:  MOV             R2, R5
46E882:  ADD             R1, PC; "%s %d" ; format
46E884:  BLX             sscanf
46E888:  MOV             R0, R4
46E88A:  MOVW            R1, #0x2020
46E88E:  B               loc_46EB12
46E890:  CMP.W           R8, #1
46E894:  BLT             loc_46E8B2
46E896:  MOV             R0, R6; unsigned int
46E898:  MOV             R1, R10; char *
46E89A:  MOV.W           R2, #0x100; int
46E89E:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E8A2:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E8B0); "%s %d"
46E8A6:  ADD             R3, SP, #0x1A8+var_1A4
46E8A8:  MOV             R0, R10; s
46E8AA:  MOV             R2, R5
46E8AC:  ADD             R1, PC; "%s %d" ; format
46E8AE:  BLX             sscanf
46E8B2:  MOV             R0, R4
46E8B4:  MOV.W           R1, #0x2040
46E8B8:  B               loc_46EB12
46E8BA:  CMP.W           R8, #1
46E8BE:  BLT             loc_46E8DC
46E8C0:  MOV             R0, R6; unsigned int
46E8C2:  MOV             R1, R10; char *
46E8C4:  MOV.W           R2, #0x100; int
46E8C8:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E8CC:  LDR.W           R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E8DA); "%s %d"
46E8D0:  ADD             R3, SP, #0x1A8+var_1A4
46E8D2:  MOV             R0, R10; s
46E8D4:  MOV             R2, R5
46E8D6:  ADD             R1, PC; "%s %d" ; format
46E8D8:  BLX             sscanf
46E8DC:  MOV             R0, R4
46E8DE:  MOV.W           R1, #0x2080
46E8E2:  B               loc_46EB12
46E8E4:  CMP.W           R8, #1
46E8E8:  BLT             loc_46E904
46E8EA:  MOV             R0, R6; unsigned int
46E8EC:  MOV             R1, R10; char *
46E8EE:  MOV.W           R2, #0x100; int
46E8F2:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E8F6:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E902); "%s %d"
46E8F8:  ADD             R3, SP, #0x1A8+var_1A4
46E8FA:  MOV             R0, R10; s
46E8FC:  MOV             R2, R5
46E8FE:  ADD             R1, PC; "%s %d" ; format
46E900:  BLX             sscanf
46E904:  MOV             R0, R4
46E906:  MOV.W           R1, #0x2100
46E90A:  B               loc_46EB12
46E90C:  CMP.W           R8, #1
46E910:  BLT             loc_46E92C
46E912:  MOV             R0, R6; unsigned int
46E914:  MOV             R1, R10; char *
46E916:  MOV.W           R2, #0x100; int
46E91A:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E91E:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E92A); "%s %d"
46E920:  ADD             R3, SP, #0x1A8+var_1A4
46E922:  MOV             R0, R10; s
46E924:  MOV             R2, R5
46E926:  ADD             R1, PC; "%s %d" ; format
46E928:  BLX             sscanf
46E92C:  MOV             R0, R4
46E92E:  MOV.W           R1, #0x2200
46E932:  B               loc_46EB12
46E934:  CMP.W           R8, #1
46E938:  BLT             loc_46E954
46E93A:  MOV             R0, R6; unsigned int
46E93C:  MOV             R1, R10; char *
46E93E:  MOV.W           R2, #0x100; int
46E942:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E946:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E952); "%s %d"
46E948:  ADD             R3, SP, #0x1A8+var_1A4
46E94A:  MOV             R0, R10; s
46E94C:  MOV             R2, R5
46E94E:  ADD             R1, PC; "%s %d" ; format
46E950:  BLX             sscanf
46E954:  MOV             R0, R4
46E956:  MOV.W           R1, #0x2400
46E95A:  B               loc_46EB12
46E95C:  CMP.W           R8, #1
46E960:  BLT             loc_46E97C
46E962:  MOV             R0, R6; unsigned int
46E964:  MOV             R1, R10; char *
46E966:  MOV.W           R2, #0x100; int
46E96A:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E96E:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E97A); "%s %d"
46E970:  ADD             R3, SP, #0x1A8+var_1A4
46E972:  MOV             R0, R10; s
46E974:  MOV             R2, R5
46E976:  ADD             R1, PC; "%s %d" ; format
46E978:  BLX             sscanf
46E97C:  MOV             R0, R4
46E97E:  MOVW            R1, #0x4001
46E982:  B               loc_46EB12
46E984:  CMP.W           R8, #1
46E988:  BLT             loc_46E9A4
46E98A:  MOV             R0, R6; unsigned int
46E98C:  MOV             R1, R10; char *
46E98E:  MOV.W           R2, #0x100; int
46E992:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E996:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E9A2); "%s %d"
46E998:  ADD             R3, SP, #0x1A8+var_1A4
46E99A:  MOV             R0, R10; s
46E99C:  MOV             R2, R5
46E99E:  ADD             R1, PC; "%s %d" ; format
46E9A0:  BLX             sscanf
46E9A4:  MOV             R0, R4
46E9A6:  MOVW            R1, #0x4002
46E9AA:  B               loc_46EB12
46E9AC:  CMP.W           R8, #1
46E9B0:  BLT             loc_46E9CC
46E9B2:  MOV             R0, R6; unsigned int
46E9B4:  MOV             R1, R10; char *
46E9B6:  MOV.W           R2, #0x100; int
46E9BA:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E9BE:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E9CA); "%s %d"
46E9C0:  ADD             R3, SP, #0x1A8+var_1A4
46E9C2:  MOV             R0, R10; s
46E9C4:  MOV             R2, R5
46E9C6:  ADD             R1, PC; "%s %d" ; format
46E9C8:  BLX             sscanf
46E9CC:  MOV             R0, R4
46E9CE:  MOVW            R1, #0x4004
46E9D2:  B               loc_46EB12
46E9D4:  CMP.W           R8, #1
46E9D8:  BLT             loc_46E9F4
46E9DA:  MOV             R0, R6; unsigned int
46E9DC:  MOV             R1, R10; char *
46E9DE:  MOV.W           R2, #0x100; int
46E9E2:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46E9E6:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46E9F2); "%s %d"
46E9E8:  ADD             R3, SP, #0x1A8+var_1A4
46E9EA:  MOV             R0, R10; s
46E9EC:  MOV             R2, R5
46E9EE:  ADD             R1, PC; "%s %d" ; format
46E9F0:  BLX             sscanf
46E9F4:  MOV             R0, R4
46E9F6:  MOVW            R1, #0x4008
46E9FA:  B               loc_46EB12
46E9FC:  CMP.W           R8, #1
46EA00:  BLT             loc_46EA1C
46EA02:  MOV             R0, R6; unsigned int
46EA04:  MOV             R1, R10; char *
46EA06:  MOV.W           R2, #0x100; int
46EA0A:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EA0E:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46EA1A); "%s %d"
46EA10:  ADD             R3, SP, #0x1A8+var_1A4
46EA12:  MOV             R0, R10; s
46EA14:  MOV             R2, R5
46EA16:  ADD             R1, PC; "%s %d" ; format
46EA18:  BLX             sscanf
46EA1C:  MOV             R0, R4
46EA1E:  MOVW            R1, #0x4010
46EA22:  B               loc_46EB12
46EA24:  CMP.W           R8, #1
46EA28:  BLT             loc_46EA44
46EA2A:  MOV             R0, R6; unsigned int
46EA2C:  MOV             R1, R10; char *
46EA2E:  MOV.W           R2, #0x100; int
46EA32:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EA36:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46EA42); "%s %d"
46EA38:  ADD             R3, SP, #0x1A8+var_1A4
46EA3A:  MOV             R0, R10; s
46EA3C:  MOV             R2, R5
46EA3E:  ADD             R1, PC; "%s %d" ; format
46EA40:  BLX             sscanf
46EA44:  MOV             R0, R4
46EA46:  MOVW            R1, #0x4020
46EA4A:  B               loc_46EB12
46EA4C:  CMP.W           R8, #1
46EA50:  BLT             loc_46EA6C
46EA52:  MOV             R0, R6; unsigned int
46EA54:  MOV             R1, R10; char *
46EA56:  MOV.W           R2, #0x100; int
46EA5A:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EA5E:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46EA6A); "%s %d"
46EA60:  ADD             R3, SP, #0x1A8+var_1A4
46EA62:  MOV             R0, R10; s
46EA64:  MOV             R2, R5
46EA66:  ADD             R1, PC; "%s %d" ; format
46EA68:  BLX             sscanf
46EA6C:  MOV             R0, R4
46EA6E:  MOVW            R1, #0x4040
46EA72:  B               loc_46EB12
46EA74:  CMP.W           R8, #1
46EA78:  BLT             loc_46EA94
46EA7A:  MOV             R0, R6; unsigned int
46EA7C:  MOV             R1, R10; char *
46EA7E:  MOV.W           R2, #0x100; int
46EA82:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EA86:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46EA92); "%s %d"
46EA88:  ADD             R3, SP, #0x1A8+var_1A4
46EA8A:  MOV             R0, R10; s
46EA8C:  MOV             R2, R5
46EA8E:  ADD             R1, PC; "%s %d" ; format
46EA90:  BLX             sscanf
46EA94:  MOV             R0, R4
46EA96:  MOV.W           R1, #0x4080
46EA9A:  B               loc_46EB12
46EA9C:  CMP.W           R8, #1
46EAA0:  BLT             loc_46EABC
46EAA2:  MOV             R0, R6; unsigned int
46EAA4:  MOV             R1, R10; char *
46EAA6:  MOV.W           R2, #0x100; int
46EAAA:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EAAE:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46EABA); "%s %d"
46EAB0:  ADD             R3, SP, #0x1A8+var_1A4
46EAB2:  MOV             R0, R10; s
46EAB4:  MOV             R2, R5
46EAB6:  ADD             R1, PC; "%s %d" ; format
46EAB8:  BLX             sscanf
46EABC:  MOV             R0, R4
46EABE:  MOV.W           R1, #0x4100
46EAC2:  B               loc_46EB12
46EAC4:  CMP.W           R8, #1
46EAC8:  BLT             loc_46EAE4
46EACA:  MOV             R0, R6; unsigned int
46EACC:  MOV             R1, R10; char *
46EACE:  MOV.W           R2, #0x100; int
46EAD2:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EAD6:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46EAE2); "%s %d"
46EAD8:  ADD             R3, SP, #0x1A8+var_1A4
46EADA:  MOV             R0, R10; s
46EADC:  MOV             R2, R5
46EADE:  ADD             R1, PC; "%s %d" ; format
46EAE0:  BLX             sscanf
46EAE4:  MOV             R0, R4
46EAE6:  MOV.W           R1, #0x4200
46EAEA:  B               loc_46EB12
46EAEC:  CMP.W           R8, #1
46EAF0:  BLT             loc_46EB0C
46EAF2:  MOV             R0, R6; unsigned int
46EAF4:  MOV             R1, R10; char *
46EAF6:  MOV.W           R2, #0x100; int
46EAFA:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EAFE:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46EB0A); "%s %d"
46EB00:  ADD             R3, SP, #0x1A8+var_1A4
46EB02:  MOV             R0, R10; s
46EB04:  MOV             R2, R5
46EB06:  ADD             R1, PC; "%s %d" ; format
46EB08:  BLX             sscanf
46EB0C:  MOV             R0, R4; this
46EB0E:  MOV.W           R1, #0x4400; int
46EB12:  BLX             j__ZN15FxInfoManager_c9AddFxInfoEi; FxInfoManager_c::AddFxInfo(int)
46EB16:  LDR             R1, [R4,#4]
46EB18:  MOV             R2, R8
46EB1A:  STR.W           R0, [R1,R9,LSL#2]
46EB1E:  LDR             R0, [R4,#4]
46EB20:  LDR.W           R0, [R0,R9,LSL#2]
46EB24:  LDR             R1, [R0]
46EB26:  LDR             R3, [R1,#8]
46EB28:  MOV             R1, R6
46EB2A:  BLX             R3
46EB2C:  MOV             R0, R6; unsigned int
46EB2E:  MOV             R1, R10; char *
46EB30:  MOV.W           R2, #0x100; int
46EB34:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46EB38:  LDR             R0, [R4,#4]
46EB3A:  LDR             R1, [SP,#0x1A8+var_1A4]
46EB3C:  LDR.W           R0, [R0,R9,LSL#2]
46EB40:  STRB            R1, [R0,#6]
46EB42:  LDR             R0, [R4,#4]
46EB44:  LDR.W           R0, [R0,R9,LSL#2]
46EB48:  LDRH            R0, [R0,#4]
46EB4A:  TST.W           R0, #0x1000
46EB4E:  BNE             loc_46EB70
46EB50:  LSLS            R1, R0, #0x12
46EB52:  BMI             loc_46EB66
46EB54:  TST.W           R0, #0xC000
46EB58:  BEQ             loc_46EB70
46EB5A:  LDRB            R0, [R4,#9]
46EB5C:  CMP             R0, #0xFF
46EB5E:  IT EQ
46EB60:  STRBEQ.W        R9, [R4,#9]
46EB64:  B               loc_46EB70
46EB66:  LDRB            R0, [R4,#8]
46EB68:  CMP             R0, #0xFF
46EB6A:  IT EQ
46EB6C:  STRBEQ.W        R9, [R4,#8]
46EB70:  LDR             R1, [R4]
46EB72:  ADD.W           R9, R9, #1
46EB76:  CMP             R9, R1
46EB78:  BLT.W           loc_46E4D4
46EB7C:  LDRB            R0, [R4,#9]
46EB7E:  CMP             R0, #0xFF
46EB80:  ITT EQ
46EB82:  STRBEQ          R1, [R4,#9]
46EB84:  MOVEQ           R0, R1
46EB86:  LDRB            R1, [R4,#8]
46EB88:  CMP             R1, #0xFF
46EB8A:  IT EQ
46EB8C:  STRBEQ          R0, [R4,#8]
46EB8E:  LDR             R0, =(__stack_chk_guard_ptr - 0x46EB96)
46EB90:  LDR             R1, [SP,#0x1A8+var_20]
46EB92:  ADD             R0, PC; __stack_chk_guard_ptr
46EB94:  LDR             R0, [R0]; __stack_chk_guard
46EB96:  LDR             R0, [R0]
46EB98:  SUBS            R0, R0, R1
46EB9A:  ITTT EQ
46EB9C:  ADDEQ           SP, SP, #0x18C
46EB9E:  POPEQ.W         {R8-R11}
46EBA2:  POPEQ           {R4-R7,PC}
46EBA4:  BLX             __stack_chk_fail
