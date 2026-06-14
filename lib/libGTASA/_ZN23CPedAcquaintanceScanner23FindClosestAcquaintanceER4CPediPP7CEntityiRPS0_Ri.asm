; =========================================================
; Game Engine Function: _ZN23CPedAcquaintanceScanner23FindClosestAcquaintanceER4CPediPP7CEntityiRPS0_Ri
; Address            : 0x4BC4A0 - 0x4BC79E
; =========================================================

4BC4A0:  PUSH            {R4-R7,LR}
4BC4A2:  ADD             R7, SP, #0xC
4BC4A4:  PUSH.W          {R8-R11}
4BC4A8:  SUB             SP, SP, #4
4BC4AA:  VPUSH           {D8-D9}
4BC4AE:  SUB             SP, SP, #0x98
4BC4B0:  STR             R0, [SP,#0xC8+var_9C]
4BC4B2:  MOV             R10, R1
4BC4B4:  LDRD.W          R11, R1, [R7,#arg_0]
4BC4B8:  MOVS            R0, #0
4BC4BA:  MOV             R6, R3
4BC4BC:  MOV             R8, R2
4BC4BE:  CMP.W           R11, #1
4BC4C2:  STR             R0, [R1]
4BC4C4:  BLT.W           loc_4BC790
4BC4C8:  ADD             R0, SP, #0xC8+var_90
4BC4CA:  MOVS            R5, #0
4BC4CC:  ADDS            R0, #4
4BC4CE:  STR             R0, [SP,#0xC8+var_A4]
4BC4D0:  ADDW            R0, R10, #0x484
4BC4D4:  STR             R0, [SP,#0xC8+var_94]
4BC4D6:  ADDW            R0, R10, #0x4EC
4BC4DA:  STR             R0, [SP,#0xC8+var_98]
4BC4DC:  MOVS            R0, #0
4BC4DE:  STR             R0, [SP,#0xC8+var_A0]
4BC4E0:  LDR             R0, =(_ZN23CPedAcquaintanceScanner23ms_fThresholdDotProductE_ptr - 0x4BC4E6)
4BC4E2:  ADD             R0, PC; _ZN23CPedAcquaintanceScanner23ms_fThresholdDotProductE_ptr
4BC4E4:  LDR             R0, [R0]; CPedAcquaintanceScanner::ms_fThresholdDotProduct ...
4BC4E6:  STR             R0, [SP,#0xC8+var_A8]
4BC4E8:  ADR             R0, dword_4BC7A0
4BC4EA:  VLD1.64         {D8-D9}, [R0@128]
4BC4EE:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BC4F4)
4BC4F0:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BC4F2:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BC4F4:  STR             R0, [SP,#0xC8+var_AC]
4BC4F6:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BC4FC)
4BC4F8:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BC4FA:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BC4FC:  STR             R0, [SP,#0xC8+var_B4]
4BC4FE:  LDR.W           R4, [R6,R5,LSL#2]
4BC502:  ADDS            R5, #1
4BC504:  CBZ             R4, loc_4BC50E
4BC506:  MOV             R0, R4; this
4BC508:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4BC50C:  CBNZ            R0, loc_4BC514
4BC50E:  CMP             R5, R11
4BC510:  BLT             loc_4BC4FE
4BC512:  B               loc_4BC734
4BC514:  LDR.W           R0, [R10,#0x14]
4BC518:  LDR             R1, [R4,#0x14]
4BC51A:  ADD.W           R2, R0, #0x30 ; '0'
4BC51E:  CMP             R0, #0
4BC520:  IT EQ
4BC522:  ADDEQ.W         R2, R10, #4
4BC526:  ADD.W           R0, R1, #0x30 ; '0'
4BC52A:  CMP             R1, #0
4BC52C:  VLDR            S0, [R2]
4BC530:  VLDR            S2, [R2,#4]
4BC534:  VLDR            S4, [R2,#8]
4BC538:  IT EQ
4BC53A:  ADDEQ           R0, R4, #4
4BC53C:  VLDR            S6, [R0]
4BC540:  VLDR            S8, [R0,#4]
4BC544:  VLDR            S10, [R0,#8]
4BC548:  VSUB.F32        S0, S6, S0
4BC54C:  VSUB.F32        S2, S8, S2
4BC550:  ADD             R0, SP, #0xC8+var_7C; this
4BC552:  VSUB.F32        S4, S10, S4
4BC556:  VSTR            S2, [SP,#0xC8+var_78]
4BC55A:  VSTR            S0, [SP,#0xC8+var_7C]
4BC55E:  VSTR            S4, [SP,#0xC8+var_74]
4BC562:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4BC566:  LDR.W           R0, [R10,#0x14]
4BC56A:  VLDR            S0, [SP,#0xC8+var_7C]
4BC56E:  VLDR            S2, [SP,#0xC8+var_78]
4BC572:  VLDR            S6, [R0,#0x10]
4BC576:  VLDR            S8, [R0,#0x14]
4BC57A:  VMUL.F32        S0, S6, S0
4BC57E:  VLDR            S10, [R0,#0x18]
4BC582:  VMUL.F32        S2, S8, S2
4BC586:  VLDR            S4, [SP,#0xC8+var_74]
4BC58A:  LDR             R0, [SP,#0xC8+var_A8]
4BC58C:  VMUL.F32        S4, S10, S4
4BC590:  VADD.F32        S0, S0, S2
4BC594:  VLDR            S2, [R0]
4BC598:  VADD.F32        S0, S0, S4
4BC59C:  VCMPE.F32       S0, S2
4BC5A0:  VMRS            APSR_nzcv, FPSCR
4BC5A4:  BGT             loc_4BC5B8
4BC5A6:  LDR             R0, [SP,#0xC8+var_94]
4BC5A8:  LDRB            R0, [R0,#1]
4BC5AA:  LSLS            R0, R0, #0x1F
4BC5AC:  ITT EQ
4BC5AE:  LDRBEQ.W        R0, [R4,#0x485]
4BC5B2:  MOVSEQ.W        R0, R0,LSL#31
4BC5B6:  BEQ             loc_4BC50E
4BC5B8:  STR             R6, [SP,#0xC8+var_B0]
4BC5BA:  ADDS.W          R9, R8, #1
4BC5BE:  ITT EQ
4BC5C0:  LDREQ.W         R0, [R4,#0x59C]
4BC5C4:  CMPEQ           R0, #6
4BC5C6:  BEQ             loc_4BC616
4BC5C8:  STR.W           R10, [SP,#0xC8+var_B8]
4BC5CC:  MOVS            R6, #0
4BC5CE:  MOV.W           R10, #4
4BC5D2:  CMP.W           R9, #0
4BC5D6:  IT NE
4BC5D8:  CMPNE           R8, R10
4BC5DA:  BNE             loc_4BC600
4BC5DC:  LDR             R0, [SP,#0xC8+var_98]; this
4BC5DE:  MOV             R1, R10; int
4BC5E0:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
4BC5E4:  MOV             R11, R8
4BC5E6:  MOV             R8, R0
4BC5E8:  LDR.W           R0, [R4,#0x59C]; this
4BC5EC:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
4BC5F0:  ANDS.W          R0, R0, R8
4BC5F4:  MOV             R8, R11
4BC5F6:  IT NE
4BC5F8:  MOVNE           R0, #1
4BC5FA:  LDR.W           R11, [R7,#arg_0]
4BC5FE:  ORRS            R6, R0
4BC600:  CMP.W           R10, #1
4BC604:  BLT             loc_4BC60E
4BC606:  SUB.W           R10, R10, #1
4BC60A:  LSLS            R0, R6, #0x1F
4BC60C:  BEQ             loc_4BC5D2
4BC60E:  LDR.W           R10, [SP,#0xC8+var_B8]
4BC612:  LSLS            R0, R6, #0x1F; this
4BC614:  BEQ             loc_4BC702
4BC616:  LDR.W           R0, [R4,#0x59C]
4BC61A:  CMP             R0, #6
4BC61C:  BEQ             loc_4BC6F4
4BC61E:  ADD             R0, SP, #0xC8+var_90; this
4BC620:  MOV             R11, R10
4BC622:  STR.W           R8, [SP,#0xC8+var_B8]
4BC626:  VST1.32         {D8-D9}, [R0]
4BC62A:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
4BC62E:  CMP             R0, #1
4BC630:  BNE             loc_4BC63E
4BC632:  MOV             R0, R11; this
4BC634:  MOV             R1, R4; CPed *
4BC636:  BLX             j__ZN23CPedAcquaintanceScanner13CanJoinLARiotERK4CPedS2_; CPedAcquaintanceScanner::CanJoinLARiot(CPed const&,CPed const&)
4BC63A:  CMP             R0, #0
4BC63C:  BNE             loc_4BC6EA
4BC63E:  LDR             R0, [SP,#0xC8+var_AC]
4BC640:  LDR             R0, [R0]
4BC642:  CBNZ            R0, loc_4BC654
4BC644:  MOVW            R0, #0xF1C0; unsigned int
4BC648:  BLX             _Znwj; operator new(uint)
4BC64C:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BC650:  LDR             R1, [SP,#0xC8+var_B4]
4BC652:  STR             R0, [R1]
4BC654:  LDR.W           R1, [R11,#0x440]
4BC658:  MOVS            R3, #0
4BC65A:  LDR.W           R10, [R1,#0xB4]
4BC65E:  MOVW            R1, #0x99C
4BC662:  MLA.W           R2, R10, R1, R0
4BC666:  MOVW            R1, #0xC1B4
4BC66A:  ADD.W           LR, R0, R1
4BC66E:  MOVW            R1, #0xD4EC
4BC672:  ADD.W           R8, R0, R1
4BC676:  ADD.W           R12, R2, #4
4BC67A:  MOVS            R2, #0x24 ; '$'
4BC67C:  B               loc_4BC688
4BC67E:  LDR             R2, [SP,#0xC8+var_A4]
4BC680:  ADDS            R1, R3, #1
4BC682:  LDR.W           R2, [R2,R3,LSL#2]
4BC686:  MOV             R3, R1; bool
4BC688:  ADD.W           R2, R0, R2,LSL#2
4BC68C:  MOVW            R1, #0xC034
4BC690:  LDR             R6, [R2,R1]
4BC692:  ADDS.W          R2, R10, #2
4BC696:  MOV             R2, R8
4BC698:  BEQ             loc_4BC6B4
4BC69A:  ADDS.W          R2, R10, #1
4BC69E:  BNE             loc_4BC6B2
4BC6A0:  LDRB.W          R2, [R11,#0x448]
4BC6A4:  MOVW            R1, #0xCB50
4BC6A8:  CMP             R2, #2
4BC6AA:  MOV             R2, LR
4BC6AC:  IT EQ
4BC6AE:  ADDEQ           R2, R0, R1
4BC6B0:  B               loc_4BC6B4
4BC6B2:  MOV             R2, R12
4BC6B4:  RSB.W           R6, R6, R6,LSL#4
4BC6B8:  LDR.W           R1, [R2,R6,LSL#2]
4BC6BC:  CMP             R1, #0xC8
4BC6BE:  BNE             loc_4BC6EA
4BC6C0:  ADD.W           R6, R2, R6,LSL#2
4BC6C4:  LDR             R1, [R6,#4]
4BC6C6:  CMP             R1, #0xC8
4BC6C8:  ITT EQ
4BC6CA:  LDREQ           R1, [R6,#8]
4BC6CC:  CMPEQ           R1, #0xC8
4BC6CE:  BNE             loc_4BC6EA
4BC6D0:  LDR             R1, [R6,#0xC]
4BC6D2:  CMP             R1, #0xC8
4BC6D4:  ITT EQ
4BC6D6:  LDREQ           R1, [R6,#0x10]
4BC6D8:  CMPEQ           R1, #0xC8
4BC6DA:  BNE             loc_4BC6EA
4BC6DC:  LDR             R2, [R6,#0x14]
4BC6DE:  CMP             R3, #3
4BC6E0:  BGT             loc_4BC6E6
4BC6E2:  CMP             R2, #0xC8
4BC6E4:  BEQ             loc_4BC67E
4BC6E6:  CMP             R2, #0xC8
4BC6E8:  BEQ             loc_4BC722
4BC6EA:  MOV             R10, R11
4BC6EC:  LDR.W           R8, [SP,#0xC8+var_B8]
4BC6F0:  LDR.W           R11, [R7,#arg_0]
4BC6F4:  LDR             R1, [SP,#0xC8+var_A0]
4BC6F6:  ADD             R0, SP, #0xC8+var_70
4BC6F8:  STR.W           R4, [R0,R1,LSL#2]
4BC6FC:  ADDS            R1, #1
4BC6FE:  STR             R1, [SP,#0xC8+var_A0]
4BC700:  B               loc_4BC718
4BC702:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
4BC706:  CMP             R0, #1
4BC708:  BNE             loc_4BC718
4BC70A:  MOV             R0, R10; this
4BC70C:  MOV             R1, R4; CPed *
4BC70E:  BLX             j__ZN23CPedAcquaintanceScanner13CanJoinLARiotERK4CPedS2_; CPedAcquaintanceScanner::CanJoinLARiot(CPed const&,CPed const&)
4BC712:  CMP             R0, #1
4BC714:  BEQ.W           loc_4BC616
4BC718:  LDR             R6, [SP,#0xC8+var_B0]
4BC71A:  CMP             R5, R11
4BC71C:  BLT.W           loc_4BC4FE
4BC720:  B               loc_4BC734
4BC722:  MOV             R10, R11
4BC724:  LDR.W           R8, [SP,#0xC8+var_B8]
4BC728:  LDR             R6, [SP,#0xC8+var_B0]
4BC72A:  LDR.W           R11, [R7,#arg_0]
4BC72E:  CMP             R5, R11
4BC730:  BLT.W           loc_4BC4FE
4BC734:  LDR             R4, [SP,#0xC8+var_A0]
4BC736:  CMP             R4, #1
4BC738:  BLT             loc_4BC790
4BC73A:  ADD             R5, SP, #0xC8+var_70
4BC73C:  MOV.W           R9, #0xFFFFFFFF
4BC740:  CMP.W           R9, #4
4BC744:  BNE             loc_4BC74C
4BC746:  MOV.W           R9, #4
4BC74A:  B               loc_4BC788
4BC74C:  LDR             R0, [SP,#0xC8+var_94]
4BC74E:  LDR             R6, [R5]
4BC750:  LDRB            R0, [R0,#1]
4BC752:  MOV             R1, R6; CPed *
4BC754:  LSLS            R0, R0, #0x1F
4BC756:  ITTE EQ
4BC758:  LDRBEQ.W        R0, [R6,#0x485]
4BC75C:  ANDEQ.W         R0, R0, #1
4BC760:  MOVNE           R0, #1
4BC762:  EOR.W           R2, R0, #1; CPed *
4BC766:  MOV             R0, R10; this
4BC768:  BLX             j__ZN20CPedGeometryAnalyser15CanPedTargetPedER4CPedS1_b; CPedGeometryAnalyser::CanPedTargetPed(CPed &,CPed &,bool)
4BC76C:  CMP             R0, #1
4BC76E:  BNE             loc_4BC788
4BC770:  LDR             R0, [R7,#arg_4]
4BC772:  MOV             R1, R10; CPed *
4BC774:  STR             R6, [SP,#0xC8+var_C8]; CPed *
4BC776:  MOV             R2, R8; int
4BC778:  STR             R0, [SP,#0xC8+var_C4]; CPed **
4BC77A:  MOV             R3, R9; int
4BC77C:  LDR             R0, [R7,#arg_8]
4BC77E:  STR             R0, [SP,#0xC8+var_C0]; int *
4BC780:  LDR             R0, [SP,#0xC8+var_9C]; this
4BC782:  BLX             j__ZN23CPedAcquaintanceScanner21ScanAcquaintanceTypesERK4CPediiPS0_RS3_Ri; CPedAcquaintanceScanner::ScanAcquaintanceTypes(CPed const&,int,int,CPed*,CPed*&,int &)
4BC786:  MOV             R9, R0
4BC788:  SUBS            R4, #1
4BC78A:  ADD.W           R5, R5, #4
4BC78E:  BNE             loc_4BC740
4BC790:  ADD             SP, SP, #0x98
4BC792:  VPOP            {D8-D9}
4BC796:  ADD             SP, SP, #4
4BC798:  POP.W           {R8-R11}
4BC79C:  POP             {R4-R7,PC}
