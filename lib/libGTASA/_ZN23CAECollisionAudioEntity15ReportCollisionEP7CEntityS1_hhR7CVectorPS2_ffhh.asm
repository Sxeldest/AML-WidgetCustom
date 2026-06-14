; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh
; Address            : 0x393674 - 0x393A1E
; =========================================================

393674:  PUSH            {R4-R7,LR}
393676:  ADD             R7, SP, #0xC
393678:  PUSH.W          {R8-R11}
39367C:  SUB             SP, SP, #4
39367E:  VPUSH           {D8-D9}
393682:  SUB             SP, SP, #0x38
393684:  MOV             R5, R0
393686:  LDR.W           R0, =(AEAudioHardware_ptr - 0x393692)
39368A:  STR             R2, [SP,#0x68+var_34]
39368C:  MOV             R6, R1
39368E:  ADD             R0, PC; AEAudioHardware_ptr
393690:  MOVS            R1, #0x27 ; '''; unsigned __int16
393692:  MOVS            R2, #2; __int16
393694:  MOV             R4, R3
393696:  LDR             R0, [R0]; AEAudioHardware ; this
393698:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
39369C:  CMP             R0, #0
39369E:  BEQ.W           loc_3938F6
3936A2:  VLDR            S0, [R7,#arg_10]
3936A6:  VCMPE.F32       S0, #0.0
3936AA:  VMRS            APSR_nzcv, FPSCR
3936AE:  BLE.W           loc_3938F6
3936B2:  LDR.W           R0, [R5,#0x204]
3936B6:  CMP.W           R0, #0x12C
3936BA:  BEQ.W           loc_3938F6
3936BE:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x3936CC)
3936C2:  MOVS            R1, #0
3936C4:  LDR.W           R8, [R7,#arg_8]
3936C8:  ADD             R0, PC; g_surfaceInfos_ptr
3936CA:  LDR             R3, [R7,#arg_0]
3936CC:  VLDR            S16, [R7,#arg_C]
3936D0:  LDR             R0, [R0]; g_surfaceInfos
3936D2:  STR             R0, [SP,#0x68+var_38]
3936D4:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x3936E0)
3936D8:  VLDR            S18, =0.6
3936DC:  ADD             R0, PC; g_surfaceInfos_ptr
3936DE:  STR             R5, [SP,#0x68+var_44]
3936E0:  LDR             R0, [R0]; g_surfaceInfos
3936E2:  STR             R0, [SP,#0x68+var_40]
3936E4:  LDR             R0, =(MI_BASKETBALL_ptr - 0x3936EA)
3936E6:  ADD             R0, PC; MI_BASKETBALL_ptr
3936E8:  LDR             R0, [R0]; MI_BASKETBALL
3936EA:  STR             R0, [SP,#0x68+var_48]
3936EC:  LDR             R0, =(MI_PUNCHBAG_ptr - 0x3936F2)
3936EE:  ADD             R0, PC; MI_PUNCHBAG_ptr
3936F0:  LDR             R0, [R0]; MI_PUNCHBAG
3936F2:  STR             R0, [SP,#0x68+var_4C]
3936F4:  LDR             R0, =(MI_GRASSHOUSE_ptr - 0x3936FA)
3936F6:  ADD             R0, PC; MI_GRASSHOUSE_ptr
3936F8:  LDR             R0, [R0]; MI_GRASSHOUSE
3936FA:  STR             R0, [SP,#0x68+var_50]
3936FC:  LDR             R0, =(MI_IMY_GRAY_CRATE_ptr - 0x393702)
3936FE:  ADD             R0, PC; MI_IMY_GRAY_CRATE_ptr
393700:  LDR             R0, [R0]; MI_IMY_GRAY_CRATE
393702:  STR             R0, [SP,#0x68+var_54]
393704:  B               loc_393796
393706:  LDR             R2, [SP,#0x68+var_48]; jumptable 0039383E default case
393708:  LDRH            R2, [R2]
39370A:  CMP             R1, R2
39370C:  BNE             loc_393720
39370E:  LDR             R3, [SP,#0x68+var_3C]
393710:  CMP.W           R9, #0
393714:  ITE NE
393716:  MOVNE           R3, #0xFFFFFFC1
39371A:  MOVEQ           R10, #0xFFFFFFC1
39371E:  B               loc_3938CE
393720:  LDR             R2, [SP,#0x68+var_4C]
393722:  LDRH            R2, [R2]
393724:  CMP             R1, R2
393726:  BNE             loc_39373A
393728:  LDR             R3, [SP,#0x68+var_3C]
39372A:  CMP.W           R9, #0
39372E:  ITE NE
393730:  MOVNE           R3, #0xFFFFFFC2
393734:  MOVEQ           R10, #0xFFFFFFC2
393738:  B               loc_3938CE
39373A:  LDR             R2, [SP,#0x68+var_50]
39373C:  LDRH            R2, [R2]
39373E:  CMP             R1, R2
393740:  BNE             loc_393754
393742:  LDR             R3, [SP,#0x68+var_3C]
393744:  CMP.W           R9, #0
393748:  ITE NE
39374A:  MOVNE           R3, #0xFFFFFFAF
39374E:  MOVEQ           R10, #0xFFFFFFAF
393752:  B               loc_3938CE
393754:  LDR             R2, [SP,#0x68+var_54]
393756:  LDRH            R2, [R2]
393758:  CMP             R1, R2
39375A:  BNE             loc_39376C
39375C:  LDR             R3, [SP,#0x68+var_3C]
39375E:  CMP.W           R9, #0
393762:  ITE NE
393764:  MOVNE           R3, #0x2B ; '+'
393766:  MOVEQ.W         R10, #0x2B ; '+'
39376A:  B               loc_3938CE
39376C:  SUBS            R0, #2
39376E:  UXTB            R0, R0
393770:  CMP             R0, #2
393772:  BHI             loc_393790
393774:  LDRB.W          R0, [R11,#0x44]
393778:  LDR             R3, [SP,#0x68+var_3C]
39377A:  LSLS            R0, R0, #0x18
39377C:  BPL.W           loc_3938CE
393780:  CMP.W           R9, #0
393784:  ITE NE
393786:  MOVNE           R3, #0xFFFFFFC0
39378A:  MOVEQ           R10, #0xFFFFFFC0
39378E:  B               loc_3938CE
393790:  MOV             R4, R10
393792:  LDR             R3, [SP,#0x68+var_3C]
393794:  B               loc_3938D0
393796:  UXTB            R5, R3
393798:  STR             R3, [SP,#0x68+var_3C]
39379A:  LDR             R2, [SP,#0x68+var_34]
39379C:  MOV             R9, R1
39379E:  CMP.W           R9, #0
3937A2:  MOV             R1, R6
3937A4:  MOV             R10, R4
3937A6:  MOV             R11, R2
3937A8:  IT EQ
3937AA:  MOVEQ           R11, R6
3937AC:  LDRB.W          R0, [R11,#0x3A]
3937B0:  IT EQ
3937B2:  MOVEQ           R1, R2
3937B4:  AND.W           R0, R0, #7
3937B8:  CMP             R0, #2
3937BA:  BNE             loc_393830
3937BC:  CMP             R1, #0
3937BE:  IT NE
3937C0:  CMPNE.W         R8, #0
3937C4:  BEQ.W           loc_3938A6
3937C8:  LDRB.W          R0, [R1,#0x3A]
3937CC:  AND.W           R0, R0, #7
3937D0:  CMP             R0, #1
3937D2:  BNE.W           loc_3938A6
3937D6:  LDR.W           R0, [R11,#0x14]
3937DA:  VLDR            S0, [R8]
3937DE:  VLDR            S2, [R8,#4]
3937E2:  VLDR            S6, [R0,#0x20]
3937E6:  VLDR            S8, [R0,#0x24]
3937EA:  VMUL.F32        S0, S0, S6
3937EE:  VLDR            S4, [R8,#8]
3937F2:  VMUL.F32        S2, S2, S8
3937F6:  VLDR            S10, [R0,#0x28]
3937FA:  VMUL.F32        S4, S4, S10
3937FE:  VADD.F32        S0, S0, S2
393802:  VADD.F32        S0, S0, S4
393806:  VCMPE.F32       S0, S18
39380A:  VMRS            APSR_nzcv, FPSCR
39380E:  BLE             loc_3938A6
393810:  LDR.W           R0, [R11,#0x5A4]
393814:  CMP             R0, #0xA
393816:  BEQ             loc_3938A6
393818:  CMP.W           R9, #0
39381C:  BNE             loc_393890
39381E:  LDR             R0, [SP,#0x68+var_38]; this
393820:  MOV             R1, R5; unsigned int
393822:  BLX             j__ZN14SurfaceInfos_c17GetFrictionEffectEj; SurfaceInfos_c::GetFrictionEffect(uint)
393826:  MOVS            R1, #1
393828:  MOVS            R4, #0x43 ; 'C'
39382A:  CMP             R0, #1
39382C:  BNE             loc_39379A
39382E:  B               loc_3938A6
393830:  LDRSH.W         R1, [R11,#0x26]
393834:  SUB.W           R2, R1, #0x156; switch 23 cases
393838:  CMP             R2, #0x16
39383A:  BHI.W           def_39383E; jumptable 0039383E default case
39383E:  TBB.W           [PC,R2]; switch jump
393842:  DCB 0x1E; jump table for switch statement
393843:  DCB 0x1E
393844:  DCB 0x16
393845:  DCB 0x15
393846:  DCB 0x15
393847:  DCB 0x15
393848:  DCB 0x15
393849:  DCB 0x15
39384A:  DCB 0x15
39384B:  DCB 0x15
39384C:  DCB 0x15
39384D:  DCB 0x15
39384E:  DCB 0x15
39384F:  DCB 0x15
393850:  DCB 0x15
393851:  DCB 0x15
393852:  DCB 0x15
393853:  DCB 0x15
393854:  DCB 0x15
393855:  DCB 0x15
393856:  DCB 0x15
393857:  DCB 0xC
393858:  DCB 0x1E
393859:  ALIGN 2
39385A:  LDR             R3, [SP,#0x68+var_3C]; jumptable 0039383E case 363
39385C:  CMP.W           R9, #0
393860:  ITE NE
393862:  MOVNE           R3, #0xFFFFFFBE
393866:  MOVEQ           R10, #0xFFFFFFBE
39386A:  B               loc_3938CE
39386C:  B               def_39383E; jumptable 0039383E cases 345-362
39386E:  LDR             R3, [SP,#0x68+var_3C]; jumptable 0039383E case 344
393870:  CMP.W           R9, #0
393874:  ITE NE
393876:  MOVNE           R3, #0x2D ; '-'
393878:  MOVEQ.W         R10, #0x2D ; '-'
39387C:  B               loc_3938CE
39387E:  LDR             R3, [SP,#0x68+var_3C]; jumptable 0039383E cases 342,343,364
393880:  CMP.W           R9, #0
393884:  ITE NE
393886:  MOVNE           R3, #0xFFFFFFBF
39388A:  MOVEQ           R10, #0xFFFFFFBF
39388E:  B               loc_3938CE
393890:  CMP.W           R9, #1
393894:  BNE             loc_3938A6
393896:  LDR             R0, [SP,#0x68+var_40]; this
393898:  UXTB.W          R1, R10; unsigned int
39389C:  BLX             j__ZN14SurfaceInfos_c17GetFrictionEffectEj; SurfaceInfos_c::GetFrictionEffect(uint)
3938A0:  CMP             R0, #1
3938A2:  BNE.W           loc_3939C8
3938A6:  LDR.W           R0, [R11,#0x5A4]
3938AA:  CMP             R0, #0xA
3938AC:  BNE             loc_3938C0
3938AE:  LDR             R3, [SP,#0x68+var_3C]
3938B0:  CMP.W           R9, #0
3938B4:  ITE NE
3938B6:  MOVNE           R3, #0xFFFFFFBC
3938BA:  MOVEQ           R10, #0xFFFFFFBC
3938BE:  B               loc_3938CE
3938C0:  LDR             R3, [SP,#0x68+var_3C]
3938C2:  CMP.W           R9, #0
3938C6:  ITE NE
3938C8:  MOVNE           R3, #0x3F ; '?'
3938CA:  MOVEQ.W         R10, #0x3F ; '?'
3938CE:  MOV             R4, R10
3938D0:  ADD.W           R1, R9, #1
3938D4:  CMP             R1, #2
3938D6:  BNE.W           loc_393796
3938DA:  LDR             R0, [R7,#arg_14]
3938DC:  CBZ             R0, loc_393904
3938DE:  LDR             R0, [R7,#arg_4]
3938E0:  STR             R0, [SP,#0x68+var_60]; CVector *
3938E2:  UXTB            R0, R3
3938E4:  VSTR            S16, [SP,#0x68+var_64]
3938E8:  UXTB            R3, R4; unsigned __int8
3938EA:  STR             R0, [SP,#0x68+var_68]; unsigned __int8
3938EC:  LDR             R0, [SP,#0x68+var_44]; this
3938EE:  LDR             R2, [SP,#0x68+var_34]; CEntity *
3938F0:  MOV             R1, R6; CEntity *
3938F2:  BLX             j__ZN23CAECollisionAudioEntity25PlayOneShotCollisionSoundEP7CEntityS1_hhfR7CVector; CAECollisionAudioEntity::PlayOneShotCollisionSound(CEntity *,CEntity *,uchar,uchar,float,CVector &)
3938F6:  ADD             SP, SP, #0x38 ; '8'
3938F8:  VPOP            {D8-D9}
3938FC:  ADD             SP, SP, #4
3938FE:  POP.W           {R8-R11}
393902:  POP             {R4-R7,PC}
393904:  LDR.W           R12, [SP,#0x68+var_44]
393908:  MOVS            R2, #0
39390A:  MOV.W           LR, #0
39390E:  ADD.W           R1, R12, #0x218
393912:  MOV             R8, R2
393914:  LDR.W           R2, [R1,#-0x10]
393918:  CMP             R2, R6
39391A:  BNE             loc_393926
39391C:  LDR.W           R5, [R1,#-0xC]
393920:  LDR             R0, [SP,#0x68+var_34]
393922:  CMP             R5, R0
393924:  BEQ             loc_393934
393926:  LDR             R0, [SP,#0x68+var_34]
393928:  CMP             R2, R0
39392A:  ITT EQ
39392C:  LDREQ.W         R2, [R1,#-0xC]
393930:  CMPEQ           R2, R6
393932:  BNE             loc_39393E
393934:  LDRB.W          LR, [R1]
393938:  CMP.W           LR, #2
39393C:  BEQ             loc_39394C
39393E:  ADDS            R1, #0x14
393940:  ADD.W           R2, R8, #1
393944:  CMP.W           R8, #0x12A
393948:  BLE             loc_393912
39394A:  B               loc_393952
39394C:  MOV.W           LR, #2
393950:  MOV             R2, R8
393952:  LDR.W           R8, [R7,#arg_18]
393956:  CMP.W           R8, #0
39395A:  BEQ             loc_393996
39395C:  UXTB.W          R0, LR
393960:  CMP             R0, #2
393962:  BNE             loc_3939B0
393964:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39396E)
393966:  ADD.W           R1, R2, R2,LSL#2
39396A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39396C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
39396E:  LDR             R2, [R0]; CTimer::m_snTimeInMilliseconds
393970:  ADD.W           R0, R12, R1,LSL#2
393974:  LDR.W           R1, [R0,#0x210]
393978:  ADDS            R2, #0x64 ; 'd'
39397A:  STR.W           R2, [R0,#0x214]
39397E:  CMP             R1, #0
393980:  BEQ             loc_3938F6
393982:  LDRD.W          R2, R3, [R0,#0x208]
393986:  LDRB.W          R6, [R0,#0x219]
39398A:  LDRB.W          R0, [R0,#0x21A]
39398E:  LDR             R5, [R7,#arg_4]
393990:  STRD.W          R5, R8, [SP,#0x68+var_5C]
393994:  B               loc_393A02
393996:  UXTB.W          R1, LR
39399A:  CMP             R1, #2
39399C:  BEQ             loc_3939CE
39399E:  SXTB.W          R0, LR
3939A2:  CMP             R0, #1
3939A4:  BNE             loc_393A0C
3939A6:  MOVS            R0, #0
3939A8:  LDR             R1, [R7,#arg_4]
3939AA:  STRD.W          R1, R0, [SP,#0x68+var_60]
3939AE:  B               loc_3939B6
3939B0:  LDR             R0, [R7,#arg_4]
3939B2:  STRD.W          R0, R8, [SP,#0x68+var_60]; CVector *
3939B6:  LDR             R2, [SP,#0x68+var_34]; CEntity *
3939B8:  UXTB            R0, R3
3939BA:  STR             R0, [SP,#0x68+var_68]; unsigned __int8
3939BC:  UXTB            R3, R4; unsigned __int8
3939BE:  MOV             R0, R12; this
3939C0:  MOV             R1, R6; CEntity *
3939C2:  BLX             j__ZN23CAECollisionAudioEntity25PlayLoopingCollisionSoundEP7CEntityS1_hhfR7CVectorh; CAECollisionAudioEntity::PlayLoopingCollisionSound(CEntity *,CEntity *,uchar,uchar,float,CVector &,uchar)
3939C6:  B               loc_3938F6
3939C8:  MOVS            R3, #0x43 ; 'C'
3939CA:  MOV             R4, R10
3939CC:  B               loc_3938DA
3939CE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3939D8)
3939D0:  ADD.W           R1, R2, R2,LSL#2
3939D4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3939D6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3939D8:  LDR             R2, [R0]; CTimer::m_snTimeInMilliseconds
3939DA:  ADD.W           R0, R12, R1,LSL#2
3939DE:  LDR.W           R1, [R0,#0x210]; CAESound *
3939E2:  ADDS            R2, #0x64 ; 'd'
3939E4:  STR.W           R2, [R0,#0x214]
3939E8:  CMP             R1, #0
3939EA:  BEQ.W           loc_3938F6
3939EE:  MOVS            R5, #0
3939F0:  LDR             R4, [R7,#arg_4]
3939F2:  LDRD.W          R2, R3, [R0,#0x208]; CEntity *
3939F6:  LDRB.W          R6, [R0,#0x219]
3939FA:  LDRB.W          R0, [R0,#0x21A]; this
3939FE:  STRD.W          R4, R5, [SP,#0x68+var_5C]; CVector *
393A02:  STRD.W          R6, R0, [SP,#0x68+var_68]; unsigned __int8
393A06:  BLX             j__ZN23CAECollisionAudioEntity27UpdateLoopingCollisionSoundEP8CAESoundP7CEntityS3_hhfR7CVectorh; CAECollisionAudioEntity::UpdateLoopingCollisionSound(CAESound *,CEntity *,CEntity *,uchar,uchar,float,CVector &,uchar)
393A0A:  B               loc_3938F6
393A0C:  LDR             R0, [R7,#arg_4]
393A0E:  STR             R0, [SP,#0x68+var_60]
393A10:  UXTB            R0, R3
393A12:  VSTR            S16, [SP,#0x68+var_64]
393A16:  UXTB            R3, R4
393A18:  STR             R0, [SP,#0x68+var_68]
393A1A:  MOV             R0, R12
393A1C:  B               loc_3938EE
