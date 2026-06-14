; =========================================================
; Game Engine Function: _ZN22CTaskComplexGangLeader14ControlSubTaskEP4CPed
; Address            : 0x5154E8 - 0x515C34
; =========================================================

5154E8:  PUSH            {R4-R7,LR}
5154EA:  ADD             R7, SP, #0xC
5154EC:  PUSH.W          {R8-R11}
5154F0:  SUB             SP, SP, #4
5154F2:  VPUSH           {D8}
5154F6:  SUB             SP, SP, #0x38
5154F8:  MOV             R4, R0
5154FA:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x515508)
5154FE:  MOV             R5, R1
515500:  MOV.W           R2, #0x194
515504:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
515506:  LDR.W           R1, [R5,#0x48C]
51550A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
51550C:  BIC.W           R1, R1, #0x400000
515510:  STR.W           R1, [R5,#0x48C]
515514:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x51551E)
515518:  LDR             R0, [R0]; CWorld::PlayerInFocus
51551A:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
51551C:  LDRB.W          R6, [R4,#0x34]
515520:  SMULBB.W        R0, R0, R2
515524:  LDR             R1, [R1]; CWorld::Players ...
515526:  LDR             R1, [R1,R0]
515528:  LDR.W           R0, [R1,#0x590]; this
51552C:  CMP             R0, #0
51552E:  ITT NE
515530:  LDRNE.W         R1, [R1,#0x484]
515534:  ANDSNE.W        R1, R1, #0x100; char *
515538:  BEQ             loc_515592
51553A:  VLDR            S0, [R0,#0x48]
51553E:  VLDR            S2, [R0,#0x4C]
515542:  VMUL.F32        S0, S0, S0
515546:  VLDR            S4, [R0,#0x50]
51554A:  VMUL.F32        S2, S2, S2
51554E:  VMUL.F32        S4, S4, S4
515552:  VADD.F32        S0, S0, S2
515556:  VLDR            S2, =0.04
51555A:  VADD.F32        S0, S0, S4
51555E:  VCMPE.F32       S0, S2
515562:  VMRS            APSR_nzcv, FPSCR
515566:  BLE             loc_515592
515568:  MOVS            R0, #0
51556A:  CBNZ            R6, loc_51559E
51556C:  CBZ             R0, loc_5155C2
51556E:  LDR.W           R0, =(aGangs - 0x515576); "gangs"
515572:  ADD             R0, PC; "gangs"
515574:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
515578:  LDR.W           R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x515580)
51557C:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
51557E:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
515580:  ADD.W           R1, R1, R0,LSL#5
515584:  LDRB            R1, [R1,#0x10]; int
515586:  CMP             R1, #1
515588:  BNE             loc_5155B6
51558A:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
51558E:  MOVS            R0, #1
515590:  B               loc_5155B0
515592:  BLX             j__ZN10CStreaming10IsVeryBusyEv; CStreaming::IsVeryBusy(void)
515596:  EOR.W           R0, R0, #1
51559A:  CMP             R6, #0
51559C:  BEQ             loc_51556C
51559E:  CBNZ            R0, loc_5155C2
5155A0:  LDR.W           R0, =(aGangs - 0x5155A8); "gangs"
5155A4:  ADD             R0, PC; "gangs"
5155A6:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
5155AA:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
5155AE:  MOVS            R0, #0
5155B0:  STRB.W          R0, [R4,#0x34]
5155B4:  B               loc_5155C2
5155B6:  MOVW            R1, #0x63E7
5155BA:  ADD             R0, R1; this
5155BC:  MOVS            R1, #8; int
5155BE:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
5155C2:  LDR             R0, [R4,#8]
5155C4:  LDR             R1, [R0]
5155C6:  LDR             R1, [R1,#0x14]
5155C8:  BLX             R1
5155CA:  CMP             R0, #0xCB
5155CC:  BNE             loc_51561C
5155CE:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x5155D6)
5155D2:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
5155D4:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
5155D6:  LDRB            R0, [R0]; CTimer::m_FrameCounter
5155D8:  LSLS            R0, R0, #0x1C
5155DA:  BNE             loc_51561C
5155DC:  LDR             R0, [R5,#0x14]
5155DE:  MOVS            R6, #0
5155E0:  LDR.W           R12, =(ThePaths_ptr - 0x5155F2)
5155E4:  MOV.W           R8, #1
5155E8:  ADD.W           R3, R0, #0x30 ; '0'
5155EC:  CMP             R0, #0
5155EE:  ADD             R12, PC; ThePaths_ptr
5155F0:  IT EQ
5155F2:  ADDEQ           R3, R5, #4
5155F4:  LDM             R3, {R1-R3}
5155F6:  LDR.W           R0, [R12]; ThePaths
5155FA:  MOV.W           R12, #0x40000000
5155FE:  STRD.W          R8, R12, [SP,#0x60+var_60]
515602:  STRD.W          R6, R6, [SP,#0x60+var_58]
515606:  STRD.W          R6, R6, [SP,#0x60+var_50]
51560A:  STR             R6, [SP,#0x60+var_48]
51560C:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
515610:  UXTH            R0, R0
515612:  MOVW            R1, #0xFFFF
515616:  CMP             R0, R1
515618:  BEQ.W           loc_515934
51561C:  LDR             R0, [R4,#8]
51561E:  LDR             R1, [R0]
515620:  LDR             R1, [R1,#0x14]
515622:  BLX             R1
515624:  CMP.W           R0, #0x390
515628:  BNE             loc_51569C
51562A:  LDRB            R0, [R4,#0x18]
51562C:  CBZ             R0, loc_51569C
51562E:  LDRB            R0, [R4,#0x19]
515630:  CBZ             R0, loc_515646
515632:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51563C)
515636:  MOVS            R1, #0
515638:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51563A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
51563C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
51563E:  STRB            R1, [R4,#0x19]
515640:  STR             R0, [R4,#0x10]
515642:  MOV             R1, R0
515644:  B               loc_515652
515646:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x515650)
51564A:  LDR             R1, [R4,#0x10]
51564C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51564E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
515650:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
515652:  LDR             R2, [R4,#0x14]
515654:  ADD             R1, R2
515656:  CMP             R1, R0
515658:  BHI             loc_51569C
51565A:  LDR             R0, [R4,#8]; this
51565C:  MOV             R1, R5; CPed *
51565E:  BLX             j__ZN22CTaskComplexWanderGang19GetDistanceSqToNodeEP4CPed; CTaskComplexWanderGang::GetDistanceSqToNode(CPed *)
515662:  VMOV.F32        S0, #2.0
515666:  VMOV            S2, R0
51566A:  VCMPE.F32       S2, S0
51566E:  VMRS            APSR_nzcv, FPSCR
515672:  BGE             loc_51569C
515674:  LDR             R0, [R4,#0xC]
515676:  MOVS            R1, #5; int
515678:  ADDS            R0, #0x30 ; '0'; this
51567A:  BLX             j__ZN21CPedGroupIntelligence27SetDefaultTaskAllocatorTypeEi; CPedGroupIntelligence::SetDefaultTaskAllocatorType(int)
51567E:  MOVS            R0, #dword_20; this
515680:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
515684:  MOV             R4, R0
515686:  MOV.W           R0, #0x41000000
51568A:  STR             R0, [SP,#0x60+var_60]; float
51568C:  MOV             R0, R4; this
51568E:  MOV.W           R1, #0x1F4; int
515692:  MOVS            R2, #0; bool
515694:  MOVS            R3, #0; bool
515696:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
51569A:  B               loc_515A7E
51569C:  LDRB.W          R0, [R4,#0x30]
5156A0:  CMP             R0, #0
5156A2:  BEQ             loc_51572C
5156A4:  LDRB.W          R0, [R4,#0x31]
5156A8:  CBZ             R0, loc_5156D0
5156AA:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5156B4)
5156AE:  MOVS            R1, #0
5156B0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5156B2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5156B4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5156B6:  STRB.W          R1, [R4,#0x31]
5156BA:  STR             R0, [R4,#0x28]
5156BC:  MOV             R1, R0
5156BE:  B               loc_5156DC
5156C0:  DCFS 0.04
5156C4:  DCFS 0.000015259
5156C8:  DCFS 100.0
5156CC:  DCFS 2000.0
5156D0:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5156DA)
5156D4:  LDR             R1, [R4,#0x28]
5156D6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5156D8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5156DA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5156DC:  LDR             R2, [R4,#0x2C]
5156DE:  ADD             R1, R2
5156E0:  CMP             R1, R0
5156E2:  BHI             loc_51572C
5156E4:  MOV             R0, #0x3DCCCCCD
5156EC:  STR             R0, [SP,#0x60+var_38]
5156EE:  MOVS            R0, #0
5156F0:  STR             R0, [SP,#0x60+var_3C]
5156F2:  STR             R0, [SP,#0x60+var_34]
5156F4:  LDR             R1, [R5,#0x18]
5156F6:  CBZ             R1, loc_51572C
5156F8:  LDR.W           R2, =(g_fxMan_ptr - 0x515702)
5156FC:  LDR             R3, [R1,#4]
5156FE:  ADD             R2, PC; g_fxMan_ptr
515700:  LDR.W           R1, =(aExhale - 0x51570E); "exhale"
515704:  STR             R0, [SP,#0x60+var_60]; int
515706:  ADDS            R3, #0x10; int
515708:  LDR             R0, [R2]; g_fxMan ; int
51570A:  ADD             R1, PC; "exhale"
51570C:  ADD             R2, SP, #0x60+var_3C; int
51570E:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
515712:  MOV             R6, R0
515714:  CBZ             R6, loc_515726
515716:  MOV             R0, R6; this
515718:  MOV             R1, R5; CEntity *
51571A:  MOVS            R2, #5; int
51571C:  BLX             j__ZN10FxSystem_c12AttachToBoneEP7CEntityi; FxSystem_c::AttachToBone(CEntity *,int)
515720:  MOV             R0, R6; this
515722:  BLX             j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
515726:  MOVS            R0, #0
515728:  STRB.W          R0, [R4,#0x30]
51572C:  LDR             R0, [R4]
51572E:  MOV             R1, R5
515730:  LDR             R2, [R0,#0x34]
515732:  MOV             R0, R4
515734:  BLX             R2
515736:  MOV             R0, R5; this
515738:  BLX             j__ZN7CEntity9IsVisibleEv; CEntity::IsVisible(void)
51573C:  CMP             R0, #1
51573E:  BNE.W           loc_515A7C
515742:  LDR.W           R0, =(g_ikChainMan_ptr - 0x51574C)
515746:  MOV             R1, R5; CPed *
515748:  ADD             R0, PC; g_ikChainMan_ptr
51574A:  LDR             R0, [R0]; g_ikChainMan ; this
51574C:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
515750:  CMP             R0, #0
515752:  BNE             loc_51581E
515754:  BLX             rand
515758:  UXTH            R0, R0
51575A:  VLDR            S16, =0.000015259
51575E:  VMOV            S0, R0
515762:  VLDR            S2, =100.0
515766:  VCVT.F32.S32    S0, S0
51576A:  VMUL.F32        S0, S0, S16
51576E:  VMUL.F32        S0, S0, S2
515772:  VCVT.S32.F32    S0, S0
515776:  VMOV            R0, S0
51577A:  CMP             R0, #0x60 ; '`'
51577C:  BLT             loc_51581E
51577E:  BLX             rand
515782:  MOV             R6, R0
515784:  BLX             rand
515788:  UXTH            R0, R0
51578A:  VMOV.F32        S2, #8.0
51578E:  VMOV            S0, R0
515792:  VCVT.F32.S32    S0, S0
515796:  LDR             R0, [R4,#0xC]
515798:  ADDS            R0, #8; this
51579A:  VMUL.F32        S0, S0, S16
51579E:  VMUL.F32        S0, S0, S2
5157A2:  VCVT.S32.F32    S0, S0
5157A6:  VMOV            R1, S0; int
5157AA:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
5157AE:  MOV             R3, R0; int
5157B0:  CMP             R3, #0
5157B2:  IT NE
5157B4:  CMPNE           R3, R5
5157B6:  BEQ             loc_51581E
5157B8:  UXTH            R0, R6
5157BA:  VLDR            S2, =2000.0
5157BE:  VMOV            S0, R0
5157C2:  MOVS            R1, #0
5157C4:  MOVS            R2, #3
5157C6:  VCVT.F32.S32    S0, S0
5157CA:  VMUL.F32        S0, S0, S16
5157CE:  VMUL.F32        S0, S0, S2
5157D2:  VCVT.S32.F32    S0, S0
5157D6:  VMOV            R0, S0
5157DA:  ADDW            R0, R0, #0xBB8
5157DE:  VMOV            S0, R0
5157E2:  LDR.W           R0, =(g_ikChainMan_ptr - 0x5157FC)
5157E6:  VCVT.F32.S32    S0, S0
5157EA:  STR             R1, [SP,#0x60+var_44]; int
5157EC:  STR             R2, [SP,#0x60+var_48]; int
5157EE:  MOV.W           R2, #0x1F4
5157F2:  STR             R2, [SP,#0x60+var_4C]; int
5157F4:  MOVW            R2, #0x999A
5157F8:  ADD             R0, PC; g_ikChainMan_ptr
5157FA:  MOVT            R2, #0x3E19
5157FE:  LDR             R0, [R0]; g_ikChainMan ; int
515800:  VCVT.S32.F32    S0, S0
515804:  STR             R2, [SP,#0x60+var_50]; float
515806:  MOVS            R2, #1
515808:  STRD.W          R1, R2, [SP,#0x60+var_58]; int
51580C:  MOVS            R1, #5
51580E:  STR             R1, [SP,#0x60+var_5C]; unsigned __int8
515810:  ADR.W           R1, aTaskgangleader; "TaskGangLeader"
515814:  MOV             R2, R5; CPed *
515816:  VSTR            S0, [SP,#0x60+var_60]
51581A:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
51581E:  LDRB.W          R0, [R4,#0x34]
515822:  CMP             R0, #0
515824:  BEQ.W           loc_515A7C
515828:  LDR.W           R0, [R5,#0x450]
51582C:  CMP             R0, #5
51582E:  BGT.W           loc_515A7C
515832:  MOV             R0, R5; this
515834:  BLX             j__ZN4CPed29GetEntityThatThisPedIsHoldingEv; CPed::GetEntityThatThisPedIsHolding(void)
515838:  MOV             R11, R0
51583A:  CMP.W           R11, #0
51583E:  BEQ.W           loc_5159B8
515842:  LDR             R0, [R5,#0x18]
515844:  MOVW            R1, #0x12B
515848:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
51584C:  MOV             R6, R0
51584E:  LDR             R0, [R5,#0x18]
515850:  MOV.W           R1, #0x12C
515854:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
515858:  MOV             R8, R0
51585A:  LDR             R0, [R5,#0x18]
51585C:  MOVW            R1, #0x12D
515860:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
515864:  LDR             R1, [R5,#0x18]
515866:  ORR.W           R2, R6, R8
51586A:  ORR.W           R6, R2, R0
51586E:  MOV             R0, R1
515870:  MOV.W           R1, #0x12E
515874:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
515878:  MOV             R10, R0
51587A:  ORRS.W          R9, R6, R10
51587E:  IT NE
515880:  MOVNE.W         R9, #1
515884:  BEQ             loc_5158BA
515886:  LDR.W           R0, =(g_ikChainMan_ptr - 0x515896)
51588A:  MOV             R1, R5; CPed *
51588C:  MOV             R6, R11
51588E:  ADDW            R11, R5, #0x484
515892:  ADD             R0, PC; g_ikChainMan_ptr
515894:  LDR             R0, [R0]; g_ikChainMan ; this
515896:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
51589A:  CBZ             R0, loc_5158AC
51589C:  LDR.W           R0, =(g_ikChainMan_ptr - 0x5158A8)
5158A0:  MOV             R1, R5; CPed *
5158A2:  MOVS            R2, #0xFA; int
5158A4:  ADD             R0, PC; g_ikChainMan_ptr
5158A6:  LDR             R0, [R0]; g_ikChainMan ; this
5158A8:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
5158AC:  LDR.W           R0, [R11,#8]
5158B0:  ORR.W           R0, R0, #0x400000
5158B4:  STR.W           R0, [R11,#8]
5158B8:  MOV             R11, R6
5158BA:  ORRS.W          R0, R8, R10
5158BE:  BEQ             loc_51590C
5158C0:  CMP.W           R8, #0
5158C4:  BEQ             loc_5158D8
5158C6:  VMOV.F32        S0, #0.5
5158CA:  VLDR            S2, [R8,#0x20]
5158CE:  VCMPE.F32       S2, S0
5158D2:  VMRS            APSR_nzcv, FPSCR
5158D6:  BLT             loc_5158F0
5158D8:  CMP.W           R10, #0
5158DC:  BEQ             loc_51590C
5158DE:  VMOV.F32        S0, #0.5
5158E2:  VLDR            S2, [R10,#0x20]
5158E6:  VCMPE.F32       S2, S0
5158EA:  VMRS            APSR_nzcv, FPSCR
5158EE:  BGE             loc_51590C
5158F0:  LDRB.W          R0, [R4,#0x30]
5158F4:  CBNZ            R0, loc_51590C
5158F6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x515900)
5158F8:  MOVW            R1, #0xA8C
5158FC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5158FE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
515900:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
515902:  STRD.W          R0, R1, [R4,#0x28]
515906:  MOVS            R0, #1
515908:  STRB.W          R0, [R4,#0x30]
51590C:  LDR             R0, =(MI_GANG_DRINK_ptr - 0x515912)
51590E:  ADD             R0, PC; MI_GANG_DRINK_ptr
515910:  LDR             R1, [R0]; MI_GANG_DRINK
515912:  LDRSH.W         R0, [R11,#0x26]
515916:  LDRH            R1, [R1]
515918:  CMP             R0, R1
51591A:  BNE.W           loc_515A46
51591E:  MOVW            R3, #0xCCCD
515922:  MOVS            R0, #0
515924:  STRD.W          R0, R0, [SP,#0x60+var_60]
515928:  MOVT            R3, #0x3E4C
51592C:  STR             R0, [SP,#0x60+var_58]
51592E:  MOV             R0, R5
515930:  MOVS            R1, #0x17
515932:  B               loc_515A66
515934:  BLX             rand
515938:  UXTH            R0, R0
51593A:  VLDR            S16, =0.000015259
51593E:  VMOV            S0, R0
515942:  VLDR            S2, =40000.0
515946:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x515954)
515948:  MOVW            R1, #0x4E20; unsigned int
51594C:  VCVT.F32.S32    S0, S0
515950:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
515952:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
515954:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
515956:  VMUL.F32        S0, S0, S16
51595A:  STR             R0, [R4,#0x10]
51595C:  VMUL.F32        S0, S0, S2
515960:  VCVT.S32.F32    S0, S0
515964:  STRB.W          R8, [R4,#0x18]
515968:  VMOV            R0, S0
51596C:  ADD             R0, R1
51596E:  STR             R0, [R4,#0x14]
515970:  MOVS            R0, #dword_38; this
515972:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
515976:  MOV             R4, R0
515978:  BLX             rand
51597C:  UXTH            R0, R0
51597E:  VMOV.F32        S2, #8.0
515982:  VMOV            S0, R0
515986:  MOV             R0, #0x3D4CCCCD
51598E:  MOVS            R1, #4; int
515990:  VCVT.F32.S32    S0, S0
515994:  STR             R0, [SP,#0x60+var_5C]; float
515996:  MOVW            R3, #0x1388; int
51599A:  VMUL.F32        S0, S0, S16
51599E:  VMUL.F32        S0, S0, S2
5159A2:  VCVT.S32.F32    S0, S0
5159A6:  STR.W           R8, [SP,#0x60+var_60]; bool
5159AA:  VMOV            R0, S0
5159AE:  UXTB            R2, R0; unsigned __int8
5159B0:  MOV             R0, R4; this
5159B2:  BLX             j__ZN22CTaskComplexWanderGangC2Eihibf; CTaskComplexWanderGang::CTaskComplexWanderGang(int,uchar,int,bool,float)
5159B6:  B               loc_515A7E
5159B8:  MOV             R0, R5; this
5159BA:  BLX             j__ZN4CPed19IsPlayingHandSignalEv; CPed::IsPlayingHandSignal(void)
5159BE:  CMP             R0, #0
5159C0:  BNE             loc_515A7C
5159C2:  LDR.W           R0, [R5,#0x440]
5159C6:  MOVS            R1, #4; int
5159C8:  ADDS            R0, #4; this
5159CA:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5159CE:  CMP             R0, #0
5159D0:  BNE             loc_515A7C
5159D2:  BLX             rand
5159D6:  UXTH            R0, R0
5159D8:  VLDR            S16, =0.000015259
5159DC:  VMOV            S0, R0
5159E0:  VLDR            S2, =500.0
5159E4:  VCVT.F32.S32    S0, S0
5159E8:  VMUL.F32        S0, S0, S16
5159EC:  VMUL.F32        S0, S0, S2
5159F0:  VCVT.S32.F32    S0, S0
5159F4:  VMOV            R0, S0
5159F8:  SUB.W           R1, R0, #0x33 ; '3'; unsigned int
5159FC:  CMP             R1, #4
5159FE:  BHI.W           loc_515B72
515A02:  MOVS            R0, #dword_20; this
515A04:  LDR.W           R6, [R5,#0x440]
515A08:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
515A0C:  MOV             R5, R0
515A0E:  BLX             rand
515A12:  UXTH            R0, R0
515A14:  VMOV.F32        S2, #8.0
515A18:  VMOV            S0, R0
515A1C:  MOVS            R0, #0
515A1E:  MOVS            R1, #0x34 ; '4'
515A20:  MOV.W           R3, #0x40800000
515A24:  VCVT.F32.S32    S0, S0
515A28:  VMUL.F32        S0, S0, S16
515A2C:  VMUL.F32        S0, S0, S2
515A30:  VCVT.S32.F32    S0, S0
515A34:  STR             R0, [SP,#0x60+var_60]
515A36:  VMOV            R0, S0
515A3A:  ADDW            R2, R0, #0x117
515A3E:  MOV             R0, R5
515A40:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
515A44:  B               loc_515B90
515A46:  LDR             R1, =(MI_GANG_SMOKE_ptr - 0x515A4C)
515A48:  ADD             R1, PC; MI_GANG_SMOKE_ptr
515A4A:  LDR             R1, [R1]; MI_GANG_SMOKE
515A4C:  LDRH            R1, [R1]
515A4E:  CMP             R0, R1
515A50:  BNE             loc_515A6C
515A52:  MOVW            R3, #0xCCCD
515A56:  MOVS            R0, #0
515A58:  STRD.W          R0, R0, [SP,#0x60+var_60]; unsigned __int8
515A5C:  MOVT            R3, #0x3E4C; float
515A60:  STR             R0, [SP,#0x60+var_58]; unsigned __int8
515A62:  MOV             R0, R5; this
515A64:  MOVS            R1, #0xC8; unsigned __int16
515A66:  MOVS            R2, #0; unsigned int
515A68:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
515A6C:  LDR.W           R0, [R5,#0x440]
515A70:  MOVW            R1, #0x4BB; int
515A74:  ADDS            R0, #4; this
515A76:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
515A7A:  CBZ             R0, loc_515A8E
515A7C:  LDR             R4, [R4,#8]
515A7E:  MOV             R0, R4
515A80:  ADD             SP, SP, #0x38 ; '8'
515A82:  VPOP            {D8}
515A86:  ADD             SP, SP, #4
515A88:  POP.W           {R8-R11}
515A8C:  POP             {R4-R7,PC}
515A8E:  BLX             rand
515A92:  UXTH            R0, R0
515A94:  VLDR            S16, =0.000015259
515A98:  VMOV            S0, R0
515A9C:  VLDR            S2, =500.0
515AA0:  VCVT.F32.S32    S0, S0
515AA4:  VMUL.F32        S0, S0, S16
515AA8:  VMUL.F32        S0, S0, S2
515AAC:  VCVT.S32.F32    S0, S0
515AB0:  VMOV            R0, S0
515AB4:  CMP             R0, #0xC8
515AB6:  BNE             loc_515B24
515AB8:  CMP.W           R9, #0
515ABC:  BNE             loc_515A7C
515ABE:  ADD.W           R9, SP, #0x60+var_3C
515AC2:  LDR             R0, [R4,#0xC]; this
515AC4:  MOV             R1, R5; CPed *
515AC6:  MOV             R2, R9; float *
515AC8:  BLX             j__ZN9CPedGroup18GetClosestGroupPedEP4CPedPf; CPedGroup::GetClosestGroupPed(CPed *,float *)
515ACC:  MOV             R8, R0
515ACE:  CMP.W           R8, #0
515AD2:  BEQ             loc_515A7C
515AD4:  VMOV.F32        S2, #4.0
515AD8:  VLDR            S0, [SP,#0x60+var_3C]
515ADC:  VCMPE.F32       S0, S2
515AE0:  VMRS            APSR_nzcv, FPSCR
515AE4:  BGE             loc_515A7C
515AE6:  MOV             R0, R5; this
515AE8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
515AEC:  CMP             R0, #1
515AEE:  BEQ             loc_515A7C
515AF0:  MOV             R0, R8; this
515AF2:  BLX             j__ZN4CPed29GetEntityThatThisPedIsHoldingEv; CPed::GetEntityThatThisPedIsHolding(void)
515AF6:  CMP             R0, #0
515AF8:  BNE             loc_515A7C
515AFA:  LDRSB.W         R0, [R8,#0x71C]
515AFE:  RSB.W           R0, R0, R0,LSL#3
515B02:  ADD.W           R0, R8, R0,LSL#2
515B06:  LDR.W           R0, [R0,#0x5A4]
515B0A:  CMP             R0, #0
515B0C:  BNE             loc_515A7C
515B0E:  LDR             R0, =(MI_GANG_DRINK_ptr - 0x515B14)
515B10:  ADD             R0, PC; MI_GANG_DRINK_ptr
515B12:  LDR             R1, [R0]; MI_GANG_DRINK
515B14:  LDRSH.W         R0, [R11,#0x26]
515B18:  LDRH            R1, [R1]
515B1A:  CMP             R0, R1
515B1C:  BNE             loc_515B9C
515B1E:  MOVS            R0, #0
515B20:  MOVS            R1, #0x18
515B22:  B               loc_515BAC
515B24:  BLX             rand
515B28:  UXTH            R0, R0
515B2A:  VLDR            S2, =100.0
515B2E:  VMOV            S0, R0
515B32:  VCVT.F32.S32    S0, S0
515B36:  VMUL.F32        S0, S0, S16
515B3A:  VMUL.F32        S0, S0, S2
515B3E:  VCVT.S32.F32    S0, S0
515B42:  VMOV            R0, S0
515B46:  CMP             R0, #0x32 ; '2'
515B48:  BNE             loc_515A7C
515B4A:  LDR.W           R0, [R5,#0x440]
515B4E:  MOVW            R1, #0x133; int
515B52:  ADDS            R0, #4; this
515B54:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
515B58:  MOV             R6, R0
515B5A:  CMP             R6, #0
515B5C:  BEQ             loc_515A7C
515B5E:  MOV             R0, R5; this
515B60:  MOV             R1, R11; CPed *
515B62:  BLX             j__ZN22CTaskComplexGangLeader24GetRandomGangAmbientAnimEP4CPedP7CEntity; CTaskComplexGangLeader::GetRandomGangAmbientAnim(CPed *,CEntity *)
515B66:  MOV             R1, R0
515B68:  MOV             R0, R6
515B6A:  MOVS            R2, #0x34 ; '4'
515B6C:  BLX             j__ZN21CTaskSimpleHoldEntity8PlayAnimE11AnimationId12AssocGroupId; CTaskSimpleHoldEntity::PlayAnim(AnimationId,AssocGroupId)
515B70:  B               loc_515A7C
515B72:  CMP             R0, #0x64 ; 'd'
515B74:  BNE.W           loc_515A7C
515B78:  MOVS            R0, #off_18; this
515B7A:  LDR.W           R6, [R5,#0x440]
515B7E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
515B82:  MOV.W           R1, #0xFFFFFFFF
515B86:  MOV.W           R2, #0x40800000
515B8A:  MOV             R5, R0
515B8C:  BLX             j__ZN30CTaskComplexPlayHandSignalAnimC2E11AnimationIdf; CTaskComplexPlayHandSignalAnim::CTaskComplexPlayHandSignalAnim(AnimationId,float)
515B90:  ADDS            R0, R6, #4; this
515B92:  MOV             R1, R5; CTask *
515B94:  MOVS            R2, #4; int
515B96:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
515B9A:  B               loc_515A7C
515B9C:  LDR             R1, =(MI_GANG_SMOKE_ptr - 0x515BA2)
515B9E:  ADD             R1, PC; MI_GANG_SMOKE_ptr
515BA0:  LDR             R1, [R1]; MI_GANG_SMOKE
515BA2:  LDRH            R1, [R1]
515BA4:  CMP             R0, R1
515BA6:  BNE             loc_515BBE
515BA8:  MOVS            R0, #0
515BAA:  MOVS            R1, #0xC9; unsigned __int16
515BAC:  STRD.W          R0, R0, [SP,#0x60+var_60]; unsigned __int8
515BB0:  STR             R0, [SP,#0x60+var_58]; unsigned __int8
515BB2:  MOV             R0, R8; this
515BB4:  MOVS            R2, #0; unsigned int
515BB6:  MOV.W           R3, #0x3F800000; float
515BBA:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
515BBE:  MOV             R0, R9; this
515BC0:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
515BC4:  LDR             R0, =(_ZTV16CEventPassObject_ptr - 0x515BD0)
515BC6:  ADD.W           R10, R9, #0xC
515BCA:  STR             R5, [SP,#0x60+var_30]
515BCC:  ADD             R0, PC; _ZTV16CEventPassObject_ptr
515BCE:  MOV             R1, R10; CEntity **
515BD0:  LDR             R0, [R0]; `vtable for'CEventPassObject ...
515BD2:  ADD.W           R6, R0, #8
515BD6:  MOV             R0, R5; this
515BD8:  STR             R6, [SP,#0x60+var_3C]
515BDA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
515BDE:  MOVS            R5, #0
515BE0:  MOV             R1, R9; CEvent *
515BE2:  STRB.W          R5, [SP,#0x60+var_2C]
515BE6:  MOVS            R2, #0; bool
515BE8:  LDR.W           R0, [R8,#0x440]
515BEC:  ADDS            R0, #0x68 ; 'h'; this
515BEE:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
515BF2:  MOVS            R0, #word_30; this
515BF4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
515BF8:  MOV             R4, R0
515BFA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
515BFE:  LDR             R0, =(_ZTV22CTaskComplexPassObject_ptr - 0x515C08)
515C00:  MOVS            R1, #1
515C02:  STRH            R5, [R4,#0x28]
515C04:  ADD             R0, PC; _ZTV22CTaskComplexPassObject_ptr
515C06:  STRB            R1, [R4,#0x10]
515C08:  MOV             R1, R4
515C0A:  STRD.W          R5, R5, [R4,#0x20]
515C0E:  LDR             R0, [R0]; `vtable for'CTaskComplexPassObject ...
515C10:  ADDS            R0, #8
515C12:  STR             R0, [R4]
515C14:  STR.W           R8, [R1,#0xC]!; CEntity **
515C18:  MOV             R0, R8; this
515C1A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
515C1E:  LDR             R0, [SP,#0x60+var_30]; this
515C20:  STR             R6, [SP,#0x60+var_3C]
515C22:  CMP             R0, #0
515C24:  ITT NE
515C26:  MOVNE           R1, R10; CEntity **
515C28:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
515C2C:  ADD             R0, SP, #0x60+var_3C; this
515C2E:  BLX             j__ZN6CEventD2Ev_3; CEvent::~CEvent()
515C32:  B               loc_515A7E
