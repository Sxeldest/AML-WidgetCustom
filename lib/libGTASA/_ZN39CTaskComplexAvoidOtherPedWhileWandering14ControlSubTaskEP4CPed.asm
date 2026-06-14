; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWandering14ControlSubTaskEP4CPed
; Address            : 0x522488 - 0x52297A
; =========================================================

522488:  PUSH            {R4-R7,LR}
52248A:  ADD             R7, SP, #0xC
52248C:  PUSH.W          {R8-R11}
522490:  SUB             SP, SP, #4
522492:  VPUSH           {D8-D9}
522496:  SUB             SP, SP, #0x40
522498:  MOV             R5, R0
52249A:  MOV             R4, R1
52249C:  LDR             R1, [R5,#0xC]
52249E:  MOV             R9, #0xFFFFFFBF
5224A2:  LDRB.W          R0, [R5,#0x5C]
5224A6:  MOV.W           R11, #0xFFFFFFFF
5224AA:  CBZ             R1, loc_5224F6
5224AC:  LSLS            R0, R0, #0x1E
5224AE:  BPL             loc_5224C2
5224B0:  LDR             R0, [R5,#8]
5224B2:  MOVS            R2, #1
5224B4:  MOVS            R3, #0
5224B6:  LDR             R1, [R0]
5224B8:  LDR             R6, [R1,#0x1C]
5224BA:  MOV             R1, R4
5224BC:  BLX             R6
5224BE:  CMP             R0, #1
5224C0:  BEQ             loc_52251A
5224C2:  LDRB.W          R0, [R5,#0x48]
5224C6:  CBNZ            R0, loc_5224DE
5224C8:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5224D2)
5224CC:  MOVS            R1, #0xC8
5224CE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5224D0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5224D2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5224D4:  STRD.W          R0, R1, [R5,#0x40]
5224D8:  MOVS            R0, #1
5224DA:  STRB.W          R0, [R5,#0x48]
5224DE:  MOV             R0, R5; this
5224E0:  MOV             R1, R4; CPed *
5224E2:  BLX             j__ZN39CTaskComplexAvoidOtherPedWhileWandering7SetUpIKEP4CPed; CTaskComplexAvoidOtherPedWhileWandering::SetUpIK(CPed *)
5224E6:  LDR             R0, [R5,#8]
5224E8:  LDR             R1, [R0]
5224EA:  LDR             R1, [R1,#0x14]
5224EC:  BLX             R1
5224EE:  CMP             R0, #0xCB
5224F0:  BNE             loc_52255C
5224F2:  LDR             R4, [R5,#8]
5224F4:  B               loc_52254C
5224F6:  LSLS            R0, R0, #0x1F
5224F8:  BEQ             loc_52251A
5224FA:  LDR.W           R0, =(g_ikChainMan_ptr - 0x522504)
5224FE:  MOV             R1, R4; CPed *
522500:  ADD             R0, PC; g_ikChainMan_ptr
522502:  LDR             R0, [R0]; g_ikChainMan ; this
522504:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
522508:  CBZ             R0, loc_52251A
52250A:  LDR.W           R0, =(g_ikChainMan_ptr - 0x522512)
52250E:  ADD             R0, PC; g_ikChainMan_ptr
522510:  LDR             R0, [R0]; g_ikChainMan ; this
522512:  MOV             R1, R4; CPed *
522514:  MOVS            R2, #0xFA; int
522516:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
52251A:  LDR.W           R0, [R4,#0x484]
52251E:  LDR.W           R1, [R4,#0x488]
522522:  LDR.W           R2, [R4,#0x48C]
522526:  AND.W           R0, R0, R11
52252A:  LDR.W           R3, [R4,#0x490]
52252E:  AND.W           R1, R1, R11
522532:  STR.W           R0, [R4,#0x484]
522536:  AND.W           R2, R2, R11
52253A:  STR.W           R1, [R4,#0x488]
52253E:  AND.W           R3, R3, R9
522542:  STR.W           R2, [R4,#0x48C]
522546:  STR.W           R3, [R4,#0x490]
52254A:  MOVS            R4, #0
52254C:  MOV             R0, R4
52254E:  ADD             SP, SP, #0x40 ; '@'
522550:  VPOP            {D8-D9}
522554:  ADD             SP, SP, #4
522556:  POP.W           {R8-R11}
52255A:  POP             {R4-R7,PC}
52255C:  LDR.W           R0, =(_ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr - 0x522568)
522560:  LDR.W           R1, [R4,#0x440]
522564:  ADD             R0, PC; _ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr
522566:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount ...
522568:  LDR.W           R1, [R1,#0x278]
52256C:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount
52256E:  CMP             R1, R0
522570:  BLE             loc_5225DE
522572:  LDRB.W          R0, [R5,#0x5C]
522576:  LSLS            R0, R0, #0x1F
522578:  BEQ             loc_52259A
52257A:  LDR.W           R0, =(g_ikChainMan_ptr - 0x522584)
52257E:  MOV             R1, R4; CPed *
522580:  ADD             R0, PC; g_ikChainMan_ptr
522582:  LDR             R0, [R0]; g_ikChainMan ; this
522584:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
522588:  CBZ             R0, loc_52259A
52258A:  LDR.W           R0, =(g_ikChainMan_ptr - 0x522596)
52258E:  MOV             R1, R4; CPed *
522590:  MOVS            R2, #0xFA; int
522592:  ADD             R0, PC; g_ikChainMan_ptr
522594:  LDR             R0, [R0]; g_ikChainMan ; this
522596:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
52259A:  MOVS            R0, #dword_20; this
52259C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5225A0:  MOV             R4, R0
5225A2:  BLX             rand
5225A6:  UXTH            R0, R0
5225A8:  VLDR            S2, =0.000015259
5225AC:  VMOV            S0, R0
5225B0:  MOV.W           R0, #0x41000000
5225B4:  MOVS            R2, #0; bool
5225B6:  MOVS            R3, #0; bool
5225B8:  VCVT.F32.S32    S0, S0
5225BC:  VMUL.F32        S0, S0, S2
5225C0:  VLDR            S2, =2000.0
5225C4:  VMUL.F32        S0, S0, S2
5225C8:  VCVT.S32.F32    S0, S0
5225CC:  STR             R0, [SP,#0x70+var_70]; float
5225CE:  VMOV            R0, S0
5225D2:  ADD.W           R1, R0, #0x1F4; int
5225D6:  MOV             R0, R4; this
5225D8:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5225DC:  B               loc_52254C
5225DE:  LDR             R0, [R5,#0xC]
5225E0:  ADD.W           R10, R4, #4
5225E4:  LDR             R2, [R4,#0x14]
5225E6:  MOV             R1, R10
5225E8:  LDR             R3, [R0,#0x14]
5225EA:  CMP             R2, #0
5225EC:  IT NE
5225EE:  ADDNE.W         R1, R2, #0x30 ; '0'
5225F2:  ADD.W           R2, R3, #0x30 ; '0'
5225F6:  CMP             R3, #0
5225F8:  VLDR            S0, [R1,#8]
5225FC:  IT EQ
5225FE:  ADDEQ           R2, R0, #4
522600:  VLDR            S2, [R2,#8]
522604:  VSUB.F32        S0, S0, S2
522608:  VMOV.F32        S2, #3.0
52260C:  VABS.F32        S0, S0
522610:  VCMPE.F32       S0, S2
522614:  VMRS            APSR_nzcv, FPSCR
522618:  BLE             loc_522640
52261A:  LDRB.W          R0, [R5,#0x5C]
52261E:  LSLS            R0, R0, #0x1F
522620:  BEQ.W           loc_52251A
522624:  LDR.W           R0, =(g_ikChainMan_ptr - 0x52262E)
522628:  MOV             R1, R4; CPed *
52262A:  ADD             R0, PC; g_ikChainMan_ptr
52262C:  LDR             R0, [R0]; g_ikChainMan ; this
52262E:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
522632:  CMP             R0, #0
522634:  BEQ.W           loc_52251A
522638:  LDR.W           R0, =(g_ikChainMan_ptr - 0x522640)
52263C:  ADD             R0, PC; g_ikChainMan_ptr
52263E:  B               loc_522510
522640:  VLDR            S0, [R2]
522644:  VLDR            S4, [R1]
522648:  VLDR            S2, [R2,#4]
52264C:  VLDR            S6, [R1,#4]
522650:  VSUB.F32        S0, S4, S0
522654:  LDR.W           R0, [R0,#0x440]
522658:  VSUB.F32        S2, S6, S2
52265C:  VLDR            S18, =0.0
522660:  ADDS            R0, #4; this
522662:  VMUL.F32        S0, S0, S0
522666:  VMUL.F32        S2, S2, S2
52266A:  VADD.F32        S0, S0, S2
52266E:  VADD.F32        S16, S0, S18
522672:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
522676:  CMP             R0, #0
522678:  ITT NE
52267A:  LDRBNE.W        R1, [R5,#0x54]
52267E:  CMPNE           R1, #0
522680:  BEQ             loc_522774
522682:  LDRB.W          R1, [R5,#0x55]
522686:  CBZ             R1, loc_52269C
522688:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x522690)
52268A:  MOVS            R2, #0
52268C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52268E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
522690:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
522692:  STRB.W          R2, [R5,#0x55]
522696:  STR             R1, [R5,#0x4C]
522698:  MOV             R2, R1
52269A:  B               loc_5226A6
52269C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5226A4)
52269E:  LDR             R2, [R5,#0x4C]
5226A0:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5226A2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5226A4:  LDR             R1, [R1]; CTask *
5226A6:  LDR             R3, [R5,#0x50]
5226A8:  ADD             R2, R3
5226AA:  CMP             R2, R1
5226AC:  BHI             loc_522774
5226AE:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
5226B2:  CMP             R0, #0
5226B4:  BEQ             loc_522774
5226B6:  LDR             R0, [R5,#0xC]
5226B8:  LDR             R1, [R4,#0x14]
5226BA:  LDR             R2, [R0,#0x14]
5226BC:  VLDR            S0, [R1,#0x10]
5226C0:  VLDR            S2, [R1,#0x14]
5226C4:  VLDR            S6, [R2,#0x10]
5226C8:  VLDR            S8, [R2,#0x14]
5226CC:  VMUL.F32        S0, S0, S6
5226D0:  VLDR            S4, [R1,#0x18]
5226D4:  VMUL.F32        S2, S2, S8
5226D8:  VLDR            S10, [R2,#0x18]
5226DC:  VMUL.F32        S4, S4, S10
5226E0:  VADD.F32        S0, S0, S2
5226E4:  VLDR            S2, =0.923
5226E8:  VADD.F32        S0, S0, S4
5226EC:  VCMPE.F32       S0, S2
5226F0:  VMRS            APSR_nzcv, FPSCR
5226F4:  BLT             loc_522774
5226F6:  VMOV.F32        S0, #1.0
5226FA:  VCMPE.F32       S16, S0
5226FE:  VMRS            APSR_nzcv, FPSCR
522702:  BLE             loc_522774
522704:  VLDR            D16, =2.06158464e11
522708:  VMOV.F32        S6, #0.25
52270C:  VLDR            D17, [R0,#0x48]
522710:  VMUL.F32        D16, D17, D16
522714:  VLDR            S0, =50.0
522718:  VLDR            S4, [R4,#0x4C]
52271C:  VLDR            S2, [R4,#0x48]
522720:  VMUL.F32        S4, S4, S0
522724:  VMUL.F32        S0, S2, S0
522728:  VMUL.F32        D1, D16, D16
52272C:  VADD.F32        S2, S2, S3
522730:  VMUL.F32        S4, S4, S4
522734:  VMUL.F32        S0, S0, S0
522738:  VADD.F32        S2, S2, S18
52273C:  VADD.F32        S0, S0, S4
522740:  VADD.F32        S2, S2, S6
522744:  VADD.F32        S0, S0, S18
522748:  VCMPE.F32       S2, S0
52274C:  VMRS            APSR_nzcv, FPSCR
522750:  BLT             loc_522774
522752:  LDRB.W          R0, [R5,#0x5C]
522756:  LSLS            R0, R0, #0x1F
522758:  BEQ.W           loc_52251A
52275C:  LDR             R0, =(g_ikChainMan_ptr - 0x522764)
52275E:  MOV             R1, R4; CPed *
522760:  ADD             R0, PC; g_ikChainMan_ptr
522762:  LDR             R0, [R0]; g_ikChainMan ; this
522764:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
522768:  CMP             R0, #0
52276A:  BEQ.W           loc_52251A
52276E:  LDR             R0, =(g_ikChainMan_ptr - 0x522774)
522770:  ADD             R0, PC; g_ikChainMan_ptr
522772:  B               loc_522510
522774:  LDR             R0, =(byte_9FF01C - 0x52277A)
522776:  ADD             R0, PC; byte_9FF01C
522778:  LDRB            R0, [R0]
52277A:  DMB.W           ISH
52277E:  TST.W           R0, #1
522782:  BNE             loc_5227B4
522784:  LDR             R0, =(byte_9FF01C - 0x52278A)
522786:  ADD             R0, PC; byte_9FF01C ; __guard *
522788:  BLX             j___cxa_guard_acquire
52278C:  CBZ             R0, loc_5227B4
52278E:  LDR             R0, =(_ZN29CPedPotentialCollisionScanner20ms_fPedAvoidDistanceE_ptr - 0x52279A)
522790:  VMOV.F32        S2, #1.0
522794:  LDR             R1, =(unk_9FF018 - 0x52279C)
522796:  ADD             R0, PC; _ZN29CPedPotentialCollisionScanner20ms_fPedAvoidDistanceE_ptr
522798:  ADD             R1, PC; unk_9FF018
52279A:  LDR             R0, [R0]; CPedPotentialCollisionScanner::ms_fPedAvoidDistance ...
52279C:  VLDR            S0, [R0]
5227A0:  LDR             R0, =(byte_9FF01C - 0x5227AA)
5227A2:  VMUL.F32        S0, S0, S0
5227A6:  ADD             R0, PC; byte_9FF01C ; __guard *
5227A8:  VADD.F32        S0, S0, S2
5227AC:  VSTR            S0, [R1]
5227B0:  BLX             j___cxa_guard_release
5227B4:  LDR             R0, =(unk_9FF018 - 0x5227BA)
5227B6:  ADD             R0, PC; unk_9FF018
5227B8:  VLDR            S0, [R0]
5227BC:  VCMPE.F32       S16, S0
5227C0:  VMRS            APSR_nzcv, FPSCR
5227C4:  BLE             loc_5227E8
5227C6:  LDRB.W          R0, [R5,#0x5C]
5227CA:  LSLS            R0, R0, #0x1F
5227CC:  BEQ.W           loc_52251A
5227D0:  LDR             R0, =(g_ikChainMan_ptr - 0x5227D8)
5227D2:  MOV             R1, R4; CPed *
5227D4:  ADD             R0, PC; g_ikChainMan_ptr
5227D6:  LDR             R0, [R0]; g_ikChainMan ; this
5227D8:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
5227DC:  CMP             R0, #0
5227DE:  BEQ.W           loc_52251A
5227E2:  LDR             R0, =(g_ikChainMan_ptr - 0x5227E8)
5227E4:  ADD             R0, PC; g_ikChainMan_ptr
5227E6:  B               loc_522510
5227E8:  LDRB.W          R0, [R5,#0x48]
5227EC:  CMP             R0, #0
5227EE:  BEQ.W           loc_5224F2
5227F2:  LDRB.W          R0, [R5,#0x49]
5227F6:  CBZ             R0, loc_522814
5227F8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x522800)
5227FA:  MOVS            R1, #0
5227FC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5227FE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
522800:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
522802:  STRB.W          R1, [R5,#0x49]
522806:  STR             R0, [R5,#0x40]
522808:  MOV             R1, R0
52280A:  B               loc_52281E
52280C:  DCFS 0.000015259
522810:  DCFS 2000.0
522814:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52281C)
522816:  LDR             R1, [R5,#0x40]
522818:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52281A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52281C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52281E:  LDR             R2, [R5,#0x44]
522820:  ADD             R1, R2
522822:  CMP             R1, R0
522824:  BHI.W           loc_5224F2
522828:  LDRB.W          R2, [R5,#0x5C]
52282C:  MOVS            R1, #0xC8
52282E:  STRD.W          R0, R1, [R5,#0x40]
522832:  MOVS            R0, #1
522834:  STRB.W          R0, [R5,#0x48]
522838:  LSLS            R0, R2, #0x1D
52283A:  BPL             loc_52289C
52283C:  LDR.W           R0, [R4,#0x440]; this
522840:  MOVW            R1, #0x4B7; int
522844:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
522848:  CMP             R0, #0
52284A:  ITT NE
52284C:  LDRNE.W         R8, [R0,#0x10]
522850:  CMPNE.W         R8, #0
522854:  BEQ             loc_52289C
522856:  ADD             R1, SP, #0x70+var_64; CVector *
522858:  BLX             j__ZN24CTaskComplexGangFollower23CalculateOffsetPositionER7CVector; CTaskComplexGangFollower::CalculateOffsetPosition(CVector &)
52285C:  LDR.W           R0, [R8,#0x14]
522860:  VLDR            S0, [SP,#0x70+var_64]
522864:  ADD.W           R1, R0, #0x30 ; '0'
522868:  CMP             R0, #0
52286A:  VLDR            S2, [SP,#0x70+var_60]
52286E:  VLDR            S4, [SP,#0x70+var_5C]
522872:  IT EQ
522874:  ADDEQ.W         R1, R8, #4
522878:  VLDR            S6, [R1]
52287C:  VLDR            S8, [R1,#4]
522880:  VLDR            S10, [R1,#8]
522884:  VADD.F32        S0, S6, S0
522888:  VADD.F32        S2, S8, S2
52288C:  VADD.F32        S4, S10, S4
522890:  VSTR            S0, [R5,#0x1C]
522894:  VSTR            S2, [R5,#0x20]
522898:  VSTR            S4, [R5,#0x24]
52289C:  ADD.W           R8, SP, #0x70+var_64
5228A0:  MOV             R0, R5; this
5228A2:  MOV             R1, R4; CPed *
5228A4:  MOV             R2, R8; CColSphere *
5228A6:  BLX             j__ZN39CTaskComplexAvoidOtherPedWhileWandering18ComputeAvoidSphereERK4CPedR10CColSphere; CTaskComplexAvoidOtherPedWhileWandering::ComputeAvoidSphere(CPed const&,CColSphere &)
5228AA:  LDRD.W          R0, R1, [R5,#0x10]
5228AE:  ADD             R2, SP, #0x70+var_40; CColSphere *
5228B0:  STRD.W          R0, R1, [SP,#0x70+var_40]
5228B4:  ADD             R3, SP, #0x70+var_50; CVector *
5228B6:  LDRD.W          R0, R1, [R5,#0x1C]
5228BA:  STRD.W          R0, R1, [SP,#0x70+var_50]
5228BE:  MOV             R1, R8; CPed *
5228C0:  LDR             R0, [R4,#0x14]
5228C2:  CMP             R0, #0
5228C4:  IT NE
5228C6:  ADDNE.W         R10, R0, #0x30 ; '0'
5228CA:  LDR.W           R0, [R10,#8]
5228CE:  ADD.W           R10, R5, #0x28 ; '('
5228D2:  STR             R0, [SP,#0x70+var_38]
5228D4:  STR             R0, [SP,#0x70+var_48]
5228D6:  STR             R0, [SP,#0x70+var_5C]
5228D8:  ADD.W           R0, R5, #0x34 ; '4'
5228DC:  STRD.W          R0, R10, [SP,#0x70+var_70]; CVector *
5228E0:  MOV             R0, R4; this
5228E2:  BLX             j__ZN20CPedGeometryAnalyser23ComputeRouteRoundSphereERK4CPedRK10CColSphereRK7CVectorS8_RS6_S9_; CPedGeometryAnalyser::ComputeRouteRoundSphere(CPed const&,CColSphere const&,CVector const&,CVector const&,CVector&,CVector&)
5228E6:  CMP             R0, #1
5228E8:  BNE             loc_522958
5228EA:  LDR             R4, [R5,#8]
5228EC:  VLDR            S0, [R5,#0x28]
5228F0:  VLDR            S2, [R4,#0xC]
5228F4:  VCMP.F32        S2, S0
5228F8:  VMRS            APSR_nzcv, FPSCR
5228FC:  BNE             loc_522936
5228FE:  VLDR            S0, [R5,#0x2C]
522902:  VLDR            S2, [R4,#0x10]
522906:  VCMP.F32        S2, S0
52290A:  VMRS            APSR_nzcv, FPSCR
52290E:  BNE             loc_522936
522910:  VLDR            S0, [R5,#0x30]
522914:  VLDR            S2, [R4,#0x14]
522918:  VCMP.F32        S2, S0
52291C:  VMRS            APSR_nzcv, FPSCR
522920:  BNE             loc_522936
522922:  VMOV.F32        S0, #0.5
522926:  VLDR            S2, [R4,#0x18]
52292A:  VCMP.F32        S2, S0
52292E:  VMRS            APSR_nzcv, FPSCR
522932:  BEQ.W           loc_52254C
522936:  LDRB            R0, [R4,#0x1C]
522938:  MOV.W           R2, #0x3F000000
52293C:  VLDR            D16, [R10]
522940:  LDR.W           R1, [R10,#8]
522944:  AND.W           R0, R0, #0xD0
522948:  STRD.W          R1, R2, [R4,#0x14]
52294C:  ORR.W           R0, R0, #0x20 ; ' '
522950:  VSTR            D16, [R4,#0xC]
522954:  STRB            R0, [R4,#0x1C]
522956:  B               loc_5224F2
522958:  LDRB.W          R0, [R5,#0x5C]
52295C:  LSLS            R0, R0, #0x1F
52295E:  BEQ.W           loc_52251A
522962:  LDR             R0, =(g_ikChainMan_ptr - 0x52296A)
522964:  MOV             R1, R4; CPed *
522966:  ADD             R0, PC; g_ikChainMan_ptr
522968:  LDR             R0, [R0]; g_ikChainMan ; this
52296A:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
52296E:  CMP             R0, #0
522970:  BEQ.W           loc_52251A
522974:  LDR             R0, =(g_ikChainMan_ptr - 0x52297A)
522976:  ADD             R0, PC; g_ikChainMan_ptr
522978:  B               loc_522510
