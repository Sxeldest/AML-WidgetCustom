; =========================================================
; Game Engine Function: _ZN9CPopCycle14FindNewPedTypeEP8ePedTypePibb
; Address            : 0x4CB49C - 0x4CB8EE
; =========================================================

4CB49C:  PUSH            {R4-R7,LR}
4CB49E:  ADD             R7, SP, #0xC
4CB4A0:  PUSH.W          {R8-R11}
4CB4A4:  SUB             SP, SP, #4
4CB4A6:  VPUSH           {D8-D14}
4CB4AA:  SUB             SP, SP, #0x28
4CB4AC:  MOV             R5, R1
4CB4AE:  LDR.W           R1, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x4CB4BA)
4CB4B2:  MOV             R6, R3
4CB4B4:  MOV             R8, R2
4CB4B6:  ADD             R1, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
4CB4B8:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo ...
4CB4BA:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo
4CB4BC:  CMP             R1, #0
4CB4BE:  BEQ.W           loc_4CB880
4CB4C2:  LDR.W           R1, =(_ZN11CPopulation16bInPoliceStationE_ptr - 0x4CB4CC)
4CB4C6:  STR             R0, [SP,#0x80+var_64]
4CB4C8:  ADD             R1, PC; _ZN11CPopulation16bInPoliceStationE_ptr
4CB4CA:  LDR             R1, [R1]; CPopulation::bInPoliceStation ...
4CB4CC:  LDRB            R1, [R1]; CPopulation::bInPoliceStation
4CB4CE:  CBZ             R1, loc_4CB50A
4CB4D0:  BLX             rand
4CB4D4:  UXTH            R0, R0
4CB4D6:  LDR             R1, [SP,#0x80+var_64]
4CB4D8:  VMOV            S0, R0
4CB4DC:  VLDR            S2, =0.000015259
4CB4E0:  VCVT.F32.S32    S0, S0
4CB4E4:  VMUL.F32        S0, S0, S2
4CB4E8:  VLDR            S2, =100.0
4CB4EC:  VMUL.F32        S0, S0, S2
4CB4F0:  VCVT.S32.F32    S0, S0
4CB4F4:  VMOV            R0, S0
4CB4F8:  CMP             R0, #0x45 ; 'E'
4CB4FA:  BGT             loc_4CB50A
4CB4FC:  MOVS            R0, #byte_6; this
4CB4FE:  STR             R0, [R1]
4CB500:  BLX             j__ZN11CPopulation25ChoosePolicePedOccupationEv; CPopulation::ChoosePolicePedOccupation(void)
4CB504:  STR             R0, [R5]
4CB506:  MOVS            R6, #1
4CB508:  B               loc_4CB882
4CB50A:  LDR.W           R0, =(_ZN11CPopulation14ms_nNumDealersE_ptr - 0x4CB516)
4CB50E:  LDR.W           R1, =(_ZN9CPopCycle17m_NumDealers_PedsE_ptr - 0x4CB518)
4CB512:  ADD             R0, PC; _ZN11CPopulation14ms_nNumDealersE_ptr
4CB514:  ADD             R1, PC; _ZN9CPopCycle17m_NumDealers_PedsE_ptr
4CB516:  LDR             R0, [R0]; CPopulation::ms_nNumDealers ...
4CB518:  VLDR            S0, [R0]
4CB51C:  LDR             R0, [R1]; CPopCycle::m_NumDealers_Peds ...
4CB51E:  LDR.W           R1, =(_ZN11CPopulation30m_bDontCreateRandomGangMembersE_ptr - 0x4CB52A)
4CB522:  VCVT.F32.S32    S24, S0
4CB526:  ADD             R1, PC; _ZN11CPopulation30m_bDontCreateRandomGangMembersE_ptr
4CB528:  VLDR            S26, [R0]
4CB52C:  LDR             R0, [R1]; CPopulation::m_bDontCreateRandomGangMembers ...
4CB52E:  LDRB            R0, [R0]; CPopulation::m_bDontCreateRandomGangMembers
4CB530:  CBZ             R0, loc_4CB538
4CB532:  VMOV.F32        S16, #-10.0
4CB536:  B               loc_4CB5E2
4CB538:  LDR.W           R0, =(_ZN11CPopulation11ms_nNumGangE_ptr - 0x4CB544)
4CB53C:  LDR.W           R1, =(_ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr - 0x4CB546)
4CB540:  ADD             R0, PC; _ZN11CPopulation11ms_nNumGangE_ptr
4CB542:  ADD             R1, PC; _ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr
4CB544:  LDR             R0, [R0]; CPopulation::ms_nNumGang ...
4CB546:  VLDR            S0, [R0]
4CB54A:  VLDR            S2, [R0,#4]
4CB54E:  VLDR            S4, [R0,#8]
4CB552:  VLDR            S6, [R0,#0xC]
4CB556:  VCVT.F32.S32    S2, S2
4CB55A:  VCVT.F32.S32    S0, S0
4CB55E:  VCVT.F32.S32    S4, S4
4CB562:  VADD.F32        S0, S0, S2
4CB566:  VCVT.F32.S32    S2, S6
4CB56A:  VADD.F32        S0, S0, S4
4CB56E:  VLDR            S4, [R0,#0x10]
4CB572:  VCVT.F32.S32    S4, S4
4CB576:  VADD.F32        S0, S0, S2
4CB57A:  VLDR            S2, [R0,#0x14]
4CB57E:  VCVT.F32.S32    S2, S2
4CB582:  VADD.F32        S0, S0, S4
4CB586:  VLDR            S4, [R0,#0x18]
4CB58A:  VCVT.F32.S32    S4, S4
4CB58E:  VADD.F32        S0, S0, S2
4CB592:  VLDR            S2, [R0,#0x1C]
4CB596:  VCVT.F32.S32    S2, S2
4CB59A:  VADD.F32        S0, S0, S4
4CB59E:  VLDR            S4, [R0,#0x20]
4CB5A2:  VCVT.F32.S32    S4, S4
4CB5A6:  VADD.F32        S0, S0, S2
4CB5AA:  VLDR            S2, [R0,#0x24]
4CB5AE:  LDR             R0, =(_ZN9CPopCycle15m_NumGangs_PedsE_ptr - 0x4CB5B8)
4CB5B0:  VCVT.F32.S32    S2, S2
4CB5B4:  ADD             R0, PC; _ZN9CPopCycle15m_NumGangs_PedsE_ptr
4CB5B6:  LDR             R0, [R0]; CPopCycle::m_NumGangs_Peds ...
4CB5B8:  VADD.F32        S0, S0, S4
4CB5BC:  VADD.F32        S0, S0, S2
4CB5C0:  VLDR            S2, [R0]
4CB5C4:  LDR             R0, [R1]; CPopulation::m_bOnlyCreateRandomGangMembers ...
4CB5C6:  LDRB            R0, [R0]; CPopulation::m_bOnlyCreateRandomGangMembers
4CB5C8:  CMP             R0, #0
4CB5CA:  VSUB.F32        S16, S2, S0
4CB5CE:  VLDR            S0, =50.0
4CB5D2:  IT NE
4CB5D4:  VMOVNE.F32      S16, S0
4CB5D8:  CMP.W           R8, #1
4CB5DC:  IT EQ
4CB5DE:  VMOVEQ.F32      S16, #-10.0
4CB5E2:  LDR             R0, =(_ZN11CPopulation10ms_nNumCopE_ptr - 0x4CB5F0)
4CB5E4:  VMOV.F32        S22, #-10.0
4CB5E8:  LDR             R1, =(_ZN9CPopCycle14m_NumCops_PedsE_ptr - 0x4CB5F2)
4CB5EA:  CMP             R6, #0
4CB5EC:  ADD             R0, PC; _ZN11CPopulation10ms_nNumCopE_ptr
4CB5EE:  ADD             R1, PC; _ZN9CPopCycle14m_NumCops_PedsE_ptr
4CB5F0:  LDR             R0, [R0]; CPopulation::ms_nNumCop ...
4CB5F2:  VLDR            S0, [R0]
4CB5F6:  LDR             R0, [R1]; CPopCycle::m_NumCops_Peds ...
4CB5F8:  VCVT.F32.S32    S0, S0
4CB5FC:  VLDR            S2, [R0]
4CB600:  LDR             R0, =(_ZN11CPopulation23m_bDontCreateRandomCopsE_ptr - 0x4CB606)
4CB602:  ADD             R0, PC; _ZN11CPopulation23m_bDontCreateRandomCopsE_ptr ; this
4CB604:  VSUB.F32        S20, S2, S0
4CB608:  LDR             R4, [R0]; CPopulation::m_bDontCreateRandomCops ...
4CB60A:  IT NE
4CB60C:  VMOVNE.F32      S20, S22
4CB610:  BLX             j__ZN9CGangWars22GangWarFightingGoingOnEv; CGangWars::GangWarFightingGoingOn(void)
4CB614:  LDRB            R1, [R4]; CPopulation::m_bDontCreateRandomCops
4CB616:  CMP             R1, #0
4CB618:  LDR             R1, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x4CB626)
4CB61A:  IT NE
4CB61C:  VMOVNE.F32      S20, S22
4CB620:  CMP             R0, #0
4CB622:  ADD             R1, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
4CB624:  IT NE
4CB626:  VMOVNE.F32      S20, S22
4CB62A:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo ...
4CB62C:  LDR             R0, [R1]; CPopCycle::m_pCurrZoneInfo
4CB62E:  CBZ             R0, loc_4CB640
4CB630:  LDRB            R0, [R0,#0xF]
4CB632:  VMOV.F64        D9, D11
4CB636:  LSLS            R0, R0, #0x18
4CB638:  IT PL
4CB63A:  VMOVPL.F32      S18, S20
4CB63E:  B               loc_4CB644
4CB640:  VMOV            D9, D10
4CB644:  LDR             R0, =(_ZN11CPopulation14ms_nNumCivMaleE_ptr - 0x4CB650)
4CB646:  VMOV.F32        S28, #2.0
4CB64A:  LDR             R1, =(_ZN11CPopulation16ms_nNumCivFemaleE_ptr - 0x4CB654)
4CB64C:  ADD             R0, PC; _ZN11CPopulation14ms_nNumCivMaleE_ptr
4CB64E:  LDR             R2, =(_ZN9CPopCycle15m_NumOther_PedsE_ptr - 0x4CB658)
4CB650:  ADD             R1, PC; _ZN11CPopulation16ms_nNumCivFemaleE_ptr
4CB652:  LDR             R0, [R0]; CPopulation::ms_nNumCivMale ...
4CB654:  ADD             R2, PC; _ZN9CPopCycle15m_NumOther_PedsE_ptr
4CB656:  LDR             R1, [R1]; CPopulation::ms_nNumCivFemale ...
4CB658:  LDR             R0, [R0]; CPopulation::ms_nNumCivMale
4CB65A:  LDR             R1, [R1]; CPopulation::ms_nNumCivFemale
4CB65C:  ADD             R0, R1
4CB65E:  VMOV            S0, R0
4CB662:  LDR             R0, [R2]; CPopCycle::m_NumOther_Peds ...
4CB664:  VCVT.F32.S32    S0, S0
4CB668:  VLDR            S2, [R0]
4CB66C:  VSUB.F32        S20, S2, S0
4CB670:  VCMPE.F32       S20, S28
4CB674:  VMRS            APSR_nzcv, FPSCR
4CB678:  BGE             loc_4CB69A
4CB67A:  BLX             rand
4CB67E:  VMOV            S0, R0
4CB682:  VLDR            S2, =4.6566e-10
4CB686:  VCVT.F32.S32    S0, S0
4CB68A:  VMUL.F32        S0, S0, S2
4CB68E:  VLDR            S2, =0.0
4CB692:  VADD.F32        S0, S0, S2
4CB696:  VMUL.F32        S20, S20, S0
4CB69A:  VSUB.F32        S24, S26, S24
4CB69E:  VCMPE.F32       S18, S28
4CB6A2:  VMRS            APSR_nzcv, FPSCR
4CB6A6:  BGE             loc_4CB6C8
4CB6A8:  BLX             rand
4CB6AC:  VMOV            S0, R0
4CB6B0:  VLDR            S2, =4.6566e-10
4CB6B4:  VCVT.F32.S32    S0, S0
4CB6B8:  VMUL.F32        S0, S0, S2
4CB6BC:  VLDR            S2, =0.0
4CB6C0:  VADD.F32        S0, S0, S2
4CB6C4:  VMUL.F32        S18, S18, S0
4CB6C8:  VCMPE.F32       S24, S28
4CB6CC:  VMRS            APSR_nzcv, FPSCR
4CB6D0:  BGE             loc_4CB6F2
4CB6D2:  BLX             rand
4CB6D6:  VMOV            S0, R0
4CB6DA:  VLDR            S2, =4.6566e-10
4CB6DE:  VCVT.F32.S32    S0, S0
4CB6E2:  VMUL.F32        S0, S0, S2
4CB6E6:  VLDR            S2, =0.0
4CB6EA:  VADD.F32        S0, S0, S2
4CB6EE:  VMUL.F32        S24, S24, S0
4CB6F2:  VCMPE.F32       S16, S28
4CB6F6:  VMRS            APSR_nzcv, FPSCR
4CB6FA:  BGE             loc_4CB71C
4CB6FC:  BLX             rand
4CB700:  VMOV            S0, R0
4CB704:  VLDR            S2, =4.6566e-10
4CB708:  VCVT.F32.S32    S0, S0
4CB70C:  VMUL.F32        S0, S0, S2
4CB710:  VLDR            S2, =0.0
4CB714:  VADD.F32        S0, S0, S2
4CB718:  VMUL.F32        S16, S16, S0
4CB71C:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x4CB72C)
4CB71E:  MOV.W           LR, #0x11
4CB722:  LDR             R1, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x4CB732)
4CB724:  MOV.W           R9, #0x2A ; '*'
4CB728:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
4CB72A:  LDR.W           R12, [SP,#0x80+var_64]
4CB72E:  ADD             R1, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
4CB730:  LDR             R0, [R0]; CGame::currArea ...
4CB732:  LDR             R0, [R0]; CGame::currArea
4CB734:  CMP             R0, #0
4CB736:  LDR             R0, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x4CB746)
4CB738:  IT EQ
4CB73A:  VMOVEQ.F32      S22, S24
4CB73E:  VLDR            S24, =0.0
4CB742:  ADD             R0, PC; _ZN11CPopulation18m_TranslationArrayE_ptr
4CB744:  LDR             R0, [R0]; CPopulation::m_TranslationArray ...
4CB746:  STR             R0, [SP,#0x80+var_5C]
4CB748:  LDR             R0, [R1]; CPopulation::m_nNumPedsInGroup ...
4CB74A:  STR             R0, [SP,#0x80+var_60]
4CB74C:  LDR             R0, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x4CB752)
4CB74E:  ADD             R0, PC; _ZN11CPopulation11m_PedGroupsE_ptr
4CB750:  LDR.W           R8, [R0]; CPopulation::m_PedGroups ...
4CB754:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x4CB75A)
4CB756:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
4CB758:  LDR.W           R10, [R0]; CStreaming::ms_aInfoForModel ...
4CB75C:  LDR             R0, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x4CB762)
4CB75E:  ADD             R0, PC; _ZN11CPopulation18m_TranslationArrayE_ptr
4CB760:  LDR.W           R11, [R0]; CPopulation::m_TranslationArray ...
4CB764:  LDR             R0, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x4CB76A)
4CB766:  ADD             R0, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
4CB768:  LDR             R4, [R0]; CPopulation::m_nNumPedsInGroup ...
4CB76A:  LDR             R0, =(_ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr - 0x4CB770)
4CB76C:  ADD             R0, PC; _ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr
4CB76E:  LDR             R0, [R0]; this
4CB770:  STR             R0, [SP,#0x80+var_6C]; char *
4CB772:  STR             R0, [SP,#0x80+var_68]
4CB774:  VMAX.F32        D16, D11, D8
4CB778:  VMAX.F32        D16, D16, D9
4CB77C:  VMAX.F32        D1, D16, D10
4CB780:  VCMPE.F32       S2, #0.0
4CB784:  VMRS            APSR_nzcv, FPSCR
4CB788:  BLE             loc_4CB880
4CB78A:  VMAX.F32        D16, D8, D12
4CB78E:  VMAX.F32        D16, D16, D9
4CB792:  VMAX.F32        D0, D16, D10
4CB796:  VCMP.F32        S2, S22
4CB79A:  VMRS            APSR_nzcv, FPSCR
4CB79E:  BNE             loc_4CB81E
4CB7A0:  MOV.W           R0, #0xFFFFFFFF
4CB7A4:  STR.W           LR, [R12]
4CB7A8:  STR             R0, [R5]
4CB7AA:  LDR             R0, [SP,#0x80+var_5C]
4CB7AC:  LDR             R1, [SP,#0x80+var_60]
4CB7AE:  LDR.W           R0, [R0,#0x150]
4CB7B2:  LDRSH.W         R1, [R1,R0,LSL#1]
4CB7B6:  CMP             R1, #1
4CB7B8:  BLT             loc_4CB80A
4CB7BA:  MOVS            R1, #0
4CB7BC:  MOV.W           R2, #0xFFFFFFFF
4CB7C0:  MLA.W           R3, R0, R9, R8
4CB7C4:  LDRH.W          R3, [R3,R1,LSL#1]
4CB7C8:  ADDS            R1, #1
4CB7CA:  ADD.W           R6, R3, R3,LSL#2
4CB7CE:  ADD.W           R6, R10, R6,LSL#2
4CB7D2:  LDRB            R6, [R6,#0x10]
4CB7D4:  CMP             R6, #1
4CB7D6:  ITTT EQ
4CB7D8:  STREQ           R3, [R5]
4CB7DA:  LDREQ.W         R0, [R11,#(dword_6AFBE0 - 0x6AFA90)]
4CB7DE:  MOVEQ           R2, R3
4CB7E0:  LDRSH.W         R3, [R4,R0,LSL#1]
4CB7E4:  CMP             R1, R3
4CB7E6:  BLT             loc_4CB7C0
4CB7E8:  CMP.W           R2, #0xFFFFFFFF
4CB7EC:  MOV.W           R6, #0
4CB7F0:  IT GT
4CB7F2:  MOVGT           R6, #1
4CB7F4:  BGT             loc_4CB882
4CB7F6:  VMOV            D1, D0
4CB7FA:  VMOV            D11, D12
4CB7FE:  VCMPE.F32       S0, #0.0
4CB802:  VMRS            APSR_nzcv, FPSCR
4CB806:  BGT             loc_4CB796
4CB808:  B               loc_4CB882
4CB80A:  VMOV            D1, D0
4CB80E:  VMOV            D11, D12
4CB812:  VCMPE.F32       S0, #0.0
4CB816:  VMRS            APSR_nzcv, FPSCR
4CB81A:  BGT             loc_4CB796
4CB81C:  B               loc_4CB880
4CB81E:  VCMP.F32        S2, S16
4CB822:  VMRS            APSR_nzcv, FPSCR
4CB826:  BNE             loc_4CB892
4CB828:  BLX             j__ZN9CPopCycle25PickGangToCreateMembersOfEv; CPopCycle::PickGangToCreateMembersOf(void)
4CB82C:  LDR.W           R12, [SP,#0x80+var_64]
4CB830:  CMP             R0, #0
4CB832:  STR.W           R0, [R12]
4CB836:  BEQ             loc_4CB84E
4CB838:  SUBS            R0, #7; this
4CB83A:  BLX             j__ZN11CPopulation20ChooseGangOccupationEi; CPopulation::ChooseGangOccupation(int)
4CB83E:  LDR.W           R12, [SP,#0x80+var_64]
4CB842:  CMP             R0, #0
4CB844:  MOV.W           LR, #0x11
4CB848:  STR             R0, [R5]
4CB84A:  BLT             loc_4CB858
4CB84C:  B               loc_4CB506
4CB84E:  MOV.W           R0, #0xFFFFFFFF
4CB852:  MOV.W           LR, #0x11
4CB856:  STR             R0, [R5]
4CB858:  LDR             R0, [SP,#0x80+var_6C]
4CB85A:  VMOV            D8, D12
4CB85E:  LDRB            R0, [R0]
4CB860:  CMP             R0, #0
4CB862:  MOV.W           R0, #0
4CB866:  IT EQ
4CB868:  MOVEQ           R0, #1
4CB86A:  LDR             R6, [SP,#0x80+var_68]
4CB86C:  AND.W           R6, R6, R0
4CB870:  STR             R6, [SP,#0x80+var_68]
4CB872:  BEQ.W           loc_4CB774
4CB876:  B               loc_4CB882
4CB878:  DCFS 0.000015259
4CB87C:  DCFS 100.0
4CB880:  MOVS            R6, #0
4CB882:  MOV             R0, R6
4CB884:  ADD             SP, SP, #0x28 ; '('
4CB886:  VPOP            {D8-D14}
4CB88A:  ADD             SP, SP, #4
4CB88C:  POP.W           {R8-R11}
4CB890:  POP             {R4-R7,PC}
4CB892:  VCMP.F32        S2, S18
4CB896:  VMRS            APSR_nzcv, FPSCR
4CB89A:  BNE             loc_4CB8A4
4CB89C:  MOVS            R0, #6
4CB89E:  STR.W           R0, [R12]
4CB8A2:  B               loc_4CB500
4CB8A4:  VCMP.F32        S2, S20
4CB8A8:  MOVS            R0, #1
4CB8AA:  VMRS            APSR_nzcv, FPSCR
4CB8AE:  BNE.W           loc_4CB506
4CB8B2:  MOVS            R6, #0
4CB8B4:  MOV.W           R1, #0xFFFFFFFF
4CB8B8:  STRD.W          R1, R6, [SP,#0x80+var_80]; int
4CB8BC:  MOVS            R1, #0; bool
4CB8BE:  STRD.W          R0, R6, [SP,#0x80+var_78]; bool
4CB8C2:  MOVS            R0, #0; this
4CB8C4:  MOV.W           R2, #0xFFFFFFFF; bool
4CB8C8:  MOV.W           R3, #0xFFFFFFFF; int
4CB8CC:  STR             R6, [SP,#0x80+var_70]; char *
4CB8CE:  BLX             j__ZN11CPopulation24ChooseCivilianOccupationEbbiiibbbPc; CPopulation::ChooseCivilianOccupation(bool,bool,int,int,int,bool,bool,bool,char *)
4CB8D2:  CMP             R0, #0
4CB8D4:  STR             R0, [R5]
4CB8D6:  BLT             loc_4CB882
4CB8D8:  LDR             R2, [SP,#0x80+var_64]
4CB8DA:  CMP             R0, #7
4CB8DC:  BEQ             loc_4CB882
4CB8DE:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CB8E4)
4CB8E0:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CB8E2:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4CB8E4:  LDR.W           R0, [R1,R0,LSL#2]
4CB8E8:  LDR             R0, [R0,#0x40]
4CB8EA:  STR             R0, [R2]
4CB8EC:  B               loc_4CB506
