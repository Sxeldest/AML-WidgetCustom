; =========================================================
; Game Engine Function: _ZN13CEventHandler32ComputeBuildingCollisionResponseEP6CEventP5CTaskS3_
; Address            : 0x37E564 - 0x37E93E
; =========================================================

37E564:  PUSH            {R4-R7,LR}
37E566:  ADD             R7, SP, #0xC
37E568:  PUSH.W          {R8-R11}
37E56C:  SUB             SP, SP, #4
37E56E:  VPUSH           {D8-D9}
37E572:  SUB             SP, SP, #0x58; CVector *
37E574:  MOV             R11, R2
37E576:  MOV             R10, R1
37E578:  CMP.W           R11, #0
37E57C:  MOV             R8, R3
37E57E:  ITT NE
37E580:  LDRNE.W         R6, [R10,#0x14]
37E584:  CMPNE           R6, #0
37E586:  MOV             R4, R0
37E588:  BEQ.W           loc_37E7CE
37E58C:  LDR             R1, [R4]; CPed *
37E58E:  MOV             R0, R10; this
37E590:  BLX             j__ZNK23CEventBuildingCollision17IsHeadOnCollisionERK4CPed; CEventBuildingCollision::IsHeadOnCollision(CPed const&)
37E594:  LDRSH.W         R5, [R10,#0xC]
37E598:  MOV             R9, R0
37E59A:  CMP             R5, #1
37E59C:  BEQ.W           loc_37E7CE
37E5A0:  LDR             R0, [R4]
37E5A2:  MOV.W           R1, #0x3E8; int
37E5A6:  LDR.W           R0, [R0,#0x440]; this
37E5AA:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
37E5AE:  STR             R0, [SP,#0x88+var_58]
37E5B0:  MOVW            R1, #0x38B; int
37E5B4:  LDR             R0, [R4]
37E5B6:  LDR.W           R0, [R0,#0x440]; this
37E5BA:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
37E5BE:  STR             R0, [SP,#0x88+var_5C]
37E5C0:  MOVW            R1, #0x2CE; int
37E5C4:  LDR             R0, [R4]
37E5C6:  LDR.W           R0, [R0,#0x440]; this
37E5CA:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
37E5CE:  STR             R0, [SP,#0x88+var_60]
37E5D0:  LDR.W           R0, [R11]
37E5D4:  LDR             R1, [R0,#0x14]
37E5D6:  MOV             R0, R11
37E5D8:  BLX             R1
37E5DA:  MOV             R0, R11; this
37E5DC:  BLX             j__ZN15CTaskCategories19ComputeTaskCategoryEPK5CTask; CTaskCategories::ComputeTaskCategory(CTask const*)
37E5E0:  MOV             R0, R6; this
37E5E2:  BLX             j__ZN23CEventBuildingCollision24CanTreatBuildingAsObjectERK9CBuilding; CEventBuildingCollision::CanTreatBuildingAsObject(CBuilding const&)
37E5E6:  CMP             R0, #1
37E5E8:  BNE             loc_37E60A
37E5EA:  MOV             R0, R8; this
37E5EC:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
37E5F0:  CMP             R0, #0
37E5F2:  BEQ.W           loc_37E7CE
37E5F6:  MOVS            R0, #dword_54; this
37E5F8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E5FC:  ADD.W           R2, R8, #0xC; CVector *
37E600:  MOV             R1, R5; int
37E602:  MOV             R3, R6; CEntity *
37E604:  BLX             j__ZN27CTaskComplexWalkRoundObjectC2EiRK7CVectorP7CEntity; CTaskComplexWalkRoundObject::CTaskComplexWalkRoundObject(int,CVector const&,CEntity *)
37E608:  B               loc_37E7CC
37E60A:  BLX             rand
37E60E:  UXTH            R0, R0
37E610:  VLDR            S2, =0.000015259
37E614:  VMOV            S0, R0
37E618:  MOV             R0, R8; this
37E61A:  VCVT.F32.S32    S0, S0
37E61E:  VMUL.F32        S0, S0, S2
37E622:  VLDR            S2, =1024.0
37E626:  VMUL.F32        S16, S0, S2
37E62A:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
37E62E:  LDR             R1, [R4]; unsigned int
37E630:  CMP             R0, #0
37E632:  LDRB.W          R2, [R1,#0x484]
37E636:  VCVT.S32.F32    S0, S16
37E63A:  IT NE
37E63C:  MOVNE           R0, R8
37E63E:  LSLS            R2, R2, #0x1F
37E640:  BEQ             loc_37E65C
37E642:  LDR             R2, =(_ZN34CBuildingPotentialCollisionScanner20ms_fNormalZThresholdE_ptr - 0x37E64C)
37E644:  VLDR            S2, [R10,#0x20]
37E648:  ADD             R2, PC; _ZN34CBuildingPotentialCollisionScanner20ms_fNormalZThresholdE_ptr
37E64A:  LDR             R2, [R2]; CBuildingPotentialCollisionScanner::ms_fNormalZThreshold ...
37E64C:  VLDR            S4, [R2]
37E650:  VCMPE.F32       S2, S4
37E654:  VMRS            APSR_nzcv, FPSCR
37E658:  BGT.W           loc_37E7B0
37E65C:  ADD.W           R3, R10, #0x24 ; '$'; CVector *
37E660:  ADD.W           R10, R10, #0x18
37E664:  MOV             R11, R5
37E666:  CBZ             R0, loc_37E676
37E668:  LDR             R5, [SP,#0x88+var_58]
37E66A:  CBZ             R5, loc_37E6DC
37E66C:  LDR             R2, [R5,#0x10]
37E66E:  CBNZ            R2, loc_37E682
37E670:  MOV.W           R8, #1
37E674:  B               loc_37E6E0
37E676:  LDR             R5, [SP,#0x88+var_58]
37E678:  CMP             R5, #0
37E67A:  ITT NE
37E67C:  LDRNE           R2, [R5,#0x10]
37E67E:  CMPNE           R2, #0
37E680:  BEQ             loc_37E76A
37E682:  LDR             R1, [R2,#0x14]
37E684:  ADD.W           R12, SP, #0x88+var_40
37E688:  MOV.W           R8, #1
37E68C:  ADD.W           R0, R1, #0x30 ; '0'
37E690:  CMP             R1, #0
37E692:  IT EQ
37E694:  ADDEQ           R0, R2, #4
37E696:  VLDR            D16, [R0]
37E69A:  LDR             R1, [R0,#8]
37E69C:  STR.W           R1, [R12,#8]
37E6A0:  VSTR            D16, [R12]
37E6A4:  CMP.W           R9, #1
37E6A8:  BNE             loc_37E6F2
37E6AA:  VMOV            R0, S0
37E6AE:  LDR.W           R9, [SP,#0x88+var_5C]
37E6B2:  CMP.W           R9, #0
37E6B6:  AND.W           R1, R0, #0xF
37E6BA:  MOV             R0, R9
37E6BC:  IT NE
37E6BE:  MOVNE           R0, #1
37E6C0:  CMP             R1, #0xF
37E6C2:  BEQ             loc_37E72A
37E6C4:  LDR             R1, [SP,#0x88+var_60]; unsigned int
37E6C6:  CBNZ            R1, loc_37E72A
37E6C8:  ORR.W           R0, R0, R8
37E6CC:  CMP             R0, #1
37E6CE:  BEQ             loc_37E72A
37E6D0:  MOVS            R0, #dword_4C; this
37E6D2:  MOV             R5, R3
37E6D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E6D8:  MOVS            R1, #1
37E6DA:  B               loc_37E7BE
37E6DC:  MOV.W           R8, #0
37E6E0:  VLDR            D16, [R0,#0xC]
37E6E4:  LDR             R0, [R0,#0x14]
37E6E6:  STR             R0, [SP,#0x88+var_38]
37E6E8:  VSTR            D16, [SP,#0x88+var_40]
37E6EC:  CMP.W           R9, #1
37E6F0:  BEQ             loc_37E6AA
37E6F2:  LDR             R0, [SP,#0x88+var_5C]
37E6F4:  CMP.W           R8, #1
37E6F8:  BNE             loc_37E74C
37E6FA:  LDR             R6, [R5,#0x10]
37E6FC:  MOV             R9, R3
37E6FE:  CBZ             R6, loc_37E756
37E700:  MOV.W           R8, #0
37E704:  MOVS            R0, #dword_4C; this
37E706:  STR.W           R8, [SP,#0x88+var_48]
37E70A:  STR.W           R8, [SP,#0x88+var_4C]
37E70E:  STR.W           R8, [SP,#0x88+var_44]
37E712:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E716:  STRD.W          R9, R10, [SP,#0x88+var_88]; CVector *
37E71A:  ADD             R3, SP, #0x88+var_4C; CVector *
37E71C:  STR.W           R8, [SP,#0x88+var_80]; bool
37E720:  MOV             R1, R11; int
37E722:  MOV             R2, R6; CEntity *
37E724:  BLX             j__ZN36CTaskComplexWalkRoundBuildingAttemptC2EiP7CEntityRK7CVectorS4_S4_b; CTaskComplexWalkRoundBuildingAttempt::CTaskComplexWalkRoundBuildingAttempt(int,CEntity *,CVector const&,CVector const&,CVector const&,bool)
37E728:  B               loc_37E7CC
37E72A:  LDR             R0, [R4]; this
37E72C:  MOV             R1, R6; CPed *
37E72E:  MOV             R2, R10; CEntity *
37E730:  STR             R3, [SP,#0x88+var_64]
37E732:  BLX             j__ZN20CPedGeometryAnalyser18CanPedJumpObstacleERK4CPedRK7CEntityRK7CVectorS8_; CPedGeometryAnalyser::CanPedJumpObstacle(CPed const&,CEntity const&,CVector const&,CVector const&)
37E736:  CMP             R0, #1
37E738:  MOV             R5, R11
37E73A:  BNE             loc_37E792
37E73C:  CMP             R5, #5
37E73E:  BLT             loc_37E7DC
37E740:  MOVS            R0, #(byte_9+3); this
37E742:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E746:  BLX             j__ZN27CTaskComplexMoveBackAndJumpC2Ev; CTaskComplexMoveBackAndJump::CTaskComplexMoveBackAndJump(void)
37E74A:  B               loc_37E7CC
37E74C:  CBZ             R0, loc_37E7B4
37E74E:  MOV             R9, R3
37E750:  LDR             R6, [R0,#0xC]
37E752:  CMP             R6, #0
37E754:  BNE             loc_37E700
37E756:  MOVS            R0, #dword_4C; this
37E758:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E75C:  MOVS            R1, #0
37E75E:  ADD             R2, SP, #0x88+var_40
37E760:  STRD.W          R10, R1, [SP,#0x88+var_88]
37E764:  MOV             R1, R11
37E766:  MOV             R3, R9
37E768:  B               loc_37E7C8
37E76A:  CMP.W           R9, #1
37E76E:  BNE             loc_37E7B0
37E770:  MOV             R0, R1; this
37E772:  MOV             R1, R6; CPed *
37E774:  MOV             R2, R10; CEntity *
37E776:  BLX             j__ZN20CPedGeometryAnalyser18CanPedJumpObstacleERK4CPedRK7CEntityRK7CVectorS8_; CPedGeometryAnalyser::CanPedJumpObstacle(CPed const&,CEntity const&,CVector const&,CVector const&)
37E77A:  MOV             R1, R0; unsigned int
37E77C:  MOVS            R0, #0
37E77E:  CMP.W           R11, #5
37E782:  BLT             loc_37E7CC
37E784:  CBNZ            R1, loc_37E7CC
37E786:  MOVS            R0, #word_10; this
37E788:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E78C:  BLX             j__ZN18CTaskSimpleHitHeadC2Ev; CTaskSimpleHitHead::CTaskSimpleHitHead(void)
37E790:  B               loc_37E7CC
37E792:  CMP.W           R8, #1
37E796:  BNE             loc_37E7EA
37E798:  LDR             R0, [SP,#0x88+var_58]
37E79A:  LDR             R6, [R0,#0x10]
37E79C:  CBZ             R6, loc_37E7B0
37E79E:  LDR             R0, [R4]; this
37E7A0:  MOV             R1, R6; CPed *
37E7A2:  MOVS            R2, #(stderr+1); CPed *
37E7A4:  MOV.W           R8, #1
37E7A8:  BLX             j__ZN20CPedGeometryAnalyser15CanPedTargetPedER4CPedS1_b; CPedGeometryAnalyser::CanPedTargetPed(CPed &,CPed &,bool)
37E7AC:  CMP             R0, #1
37E7AE:  BNE             loc_37E812
37E7B0:  MOVS            R0, #0
37E7B2:  B               loc_37E7CC
37E7B4:  MOVS            R0, #dword_4C; this
37E7B6:  MOV             R5, R3
37E7B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E7BC:  MOVS            R1, #0
37E7BE:  ADD             R2, SP, #0x88+var_40; CVector *
37E7C0:  STRD.W          R10, R1, [SP,#0x88+var_88]; CVector *
37E7C4:  MOV             R1, R11; int
37E7C6:  MOV             R3, R5; CVector *
37E7C8:  BLX             j__ZN36CTaskComplexWalkRoundBuildingAttemptC2EiRK7CVectorS2_S2_b; CTaskComplexWalkRoundBuildingAttempt::CTaskComplexWalkRoundBuildingAttempt(int,CVector const&,CVector const&,CVector const&,bool)
37E7CC:  STR             R0, [R4,#0x24]
37E7CE:  ADD             SP, SP, #0x58 ; 'X'
37E7D0:  VPOP            {D8-D9}
37E7D4:  ADD             SP, SP, #4
37E7D6:  POP.W           {R8-R11}
37E7DA:  POP             {R4-R7,PC}
37E7DC:  MOVS            R0, #dword_14; this
37E7DE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E7E2:  MOVS            R1, #0; int
37E7E4:  BLX             j__ZN16CTaskComplexJumpC2Ei; CTaskComplexJump::CTaskComplexJump(int)
37E7E8:  B               loc_37E7CC
37E7EA:  LDR             R0, [SP,#0x88+var_60]
37E7EC:  ORRS.W          R0, R0, R9
37E7F0:  BEQ             loc_37E7FE
37E7F2:  CMP.W           R9, #0
37E7F6:  BEQ             loc_37E82C
37E7F8:  ADD.W           R0, R9, #0xC
37E7FC:  B               loc_37E836
37E7FE:  MOVS            R0, #dword_4C; this
37E800:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E804:  MOVS            R1, #1
37E806:  ADD             R2, SP, #0x88+var_40
37E808:  STRD.W          R10, R1, [SP,#0x88+var_88]
37E80C:  MOV             R1, R5
37E80E:  LDR             R3, [SP,#0x88+var_64]
37E810:  B               loc_37E7C8
37E812:  MOVS            R0, #0
37E814:  STRD.W          R0, R0, [SP,#0x88+var_4C]
37E818:  STR             R0, [SP,#0x88+var_44]
37E81A:  MOVS            R0, #dword_4C; this
37E81C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E820:  LDR             R1, [SP,#0x88+var_64]
37E822:  STRD.W          R1, R10, [SP,#0x88+var_88]
37E826:  STR.W           R8, [SP,#0x88+var_80]
37E82A:  B               loc_37E938
37E82C:  LDR             R0, [SP,#0x88+var_60]
37E82E:  LDR             R6, [R0,#0xC]
37E830:  CBZ             R6, loc_37E838
37E832:  ADDW            R0, R6, #0x464
37E836:  LDR             R6, [R0]
37E838:  CMP             R6, #0
37E83A:  BEQ             loc_37E7CE
37E83C:  LDR             R0, =(_ZN24CTaskComplexGangFollower15ms_nUseClimbingE_ptr - 0x37E842)
37E83E:  ADD             R0, PC; _ZN24CTaskComplexGangFollower15ms_nUseClimbingE_ptr
37E840:  LDR             R0, [R0]; CTaskComplexGangFollower::ms_nUseClimbing ...
37E842:  LDR             R0, [R0]; CTaskComplexGangFollower::ms_nUseClimbing
37E844:  CBZ             R0, loc_37E8BC
37E846:  LDR             R0, [R4]; this
37E848:  BLX             j__ZN10CPedGroups16IsInPlayersGroupEPK4CPed; CPedGroups::IsInPlayersGroup(CPed const*)
37E84C:  CMP             R0, #1
37E84E:  BNE             loc_37E8BC
37E850:  LDR             R0, [R4]; this
37E852:  ADD             R1, SP, #0x88+var_4C; CPed *
37E854:  ADD             R2, SP, #0x88+var_51+1; CVector *
37E856:  SUB.W           R3, R7, #-var_51; float *
37E85A:  MOV.W           R9, #(stderr+1)
37E85E:  STR.W           R9, [SP,#0x88+var_88]; unsigned __int8
37E862:  BLX             j__ZN16CTaskSimpleClimb12TestForClimbEP4CPedR7CVectorRfRhb; CTaskSimpleClimb::TestForClimb(CPed *,CVector &,float &,uchar &,bool)
37E866:  MOV             R8, R0
37E868:  CMP.W           R8, #0
37E86C:  BEQ             loc_37E8BC
37E86E:  LDR             R0, =(_ZN16CTaskSimpleClimb21ms_fMinForStretchGrabE_ptr - 0x37E876)
37E870:  LDR             R1, [R4]; unsigned int
37E872:  ADD             R0, PC; _ZN16CTaskSimpleClimb21ms_fMinForStretchGrabE_ptr
37E874:  VLDR            S0, [SP,#0x88+var_44]
37E878:  LDR             R2, [R1,#0x14]
37E87A:  LDR             R0, [R0]; CTaskSimpleClimb::ms_fMinForStretchGrab ...
37E87C:  ADD.W           R3, R2, #0x30 ; '0'
37E880:  CMP             R2, #0
37E882:  VLDR            S16, [R0]
37E886:  IT EQ
37E888:  ADDEQ           R3, R1, #4
37E88A:  VLDR            S2, [R3,#8]
37E88E:  MOVS            R0, #word_30; this
37E890:  VSUB.F32        S18, S0, S2
37E894:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E898:  VCMPE.F32       S18, S16
37E89C:  LDRB.W          R1, [R7,#var_51]
37E8A0:  VMRS            APSR_nzcv, FPSCR
37E8A4:  MOV.W           R2, #1
37E8A8:  LDR             R3, [SP,#0x88+var_51+1]; float
37E8AA:  IT LT
37E8AC:  MOVLT           R2, #2
37E8AE:  STMEA.W         SP, {R1,R2,R9}
37E8B2:  ADD             R2, SP, #0x88+var_4C; CVector *
37E8B4:  MOV             R1, R8; CEntity *
37E8B6:  BLX             j__ZN16CTaskSimpleClimbC2EP7CEntityRK7CVectorfhab; CTaskSimpleClimb::CTaskSimpleClimb(CEntity *,CVector const&,float,uchar,signed char,bool)
37E8BA:  B               loc_37E7CC
37E8BC:  LDRB.W          R0, [R6,#0x3A]
37E8C0:  AND.W           R0, R0, #7
37E8C4:  CMP             R0, #3
37E8C6:  BNE             loc_37E920
37E8C8:  LDR             R0, =(g_ikChainMan_ptr - 0x37E8D0)
37E8CA:  LDR             R1, [R4]; CPed *
37E8CC:  ADD             R0, PC; g_ikChainMan_ptr
37E8CE:  LDR             R0, [R0]; g_ikChainMan ; this
37E8D0:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
37E8D4:  CBNZ            R0, loc_37E912
37E8D6:  LDR.W           R11, =(g_ikChainMan_ptr - 0x37E8E6)
37E8DA:  MOVS            R3, #5
37E8DC:  MOVW            R0, #0xBB8
37E8E0:  LDR             R2, [R4]; CPed *
37E8E2:  ADD             R11, PC; g_ikChainMan_ptr
37E8E4:  STRD.W          R0, R3, [SP,#0x88+var_88]; int
37E8E8:  MOVS            R1, #0
37E8EA:  MOV.W           R12, #1
37E8EE:  MOV.W           LR, #3
37E8F2:  MOV.W           R8, #0x1F4
37E8F6:  MOV.W           R9, #0x3E800000
37E8FA:  LDR.W           R0, [R11]; g_ikChainMan ; int
37E8FE:  STRD.W          R1, R12, [SP,#0x88+var_80]; int
37E902:  MOV             R3, R6; int
37E904:  STRD.W          R9, R8, [SP,#0x88+var_78]; float
37E908:  STRD.W          LR, R1, [SP,#0x88+var_70]; int
37E90C:  ADR             R1, aCompbldgcollre; "CompBldgCollResp"
37E90E:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37E912:  LDR             R0, [R4]
37E914:  MOVS            R1, #2; int
37E916:  LDR.W           R0, [R0,#0x440]
37E91A:  ADDS            R0, #4; this
37E91C:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
37E920:  MOVS            R0, #0
37E922:  STRD.W          R0, R0, [SP,#0x88+var_4C]
37E926:  STR             R0, [SP,#0x88+var_44]
37E928:  MOVS            R0, #dword_4C; this
37E92A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E92E:  LDR             R2, [SP,#0x88+var_64]
37E930:  MOVS            R1, #1
37E932:  STRD.W          R2, R10, [SP,#0x88+var_88]
37E936:  STR             R1, [SP,#0x88+var_80]
37E938:  ADD             R3, SP, #0x88+var_4C
37E93A:  MOV             R1, R5
37E93C:  B               loc_37E722
