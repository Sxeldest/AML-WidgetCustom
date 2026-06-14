; =========================================================
; Game Engine Function: _ZN26CTaskComplexWanderStandard19LookForChatPartnersEP4CPed
; Address            : 0x52337C - 0x523716
; =========================================================

52337C:  PUSH            {R4-R7,LR}
52337E:  ADD             R7, SP, #0xC
523380:  PUSH.W          {R8-R11}
523384:  SUB             SP, SP, #4
523386:  VPUSH           {D8}
52338A:  SUB             SP, SP, #0x40
52338C:  MOV             R5, R0
52338E:  LDR             R0, =(g_surfaceInfos_ptr - 0x523396)
523390:  MOV             R11, R1
523392:  ADD             R0, PC; g_surfaceInfos_ptr
523394:  LDRB.W          R1, [R11,#0xBE]; unsigned int
523398:  LDR             R0, [R0]; g_surfaceInfos ; this
52339A:  BLX             j__ZN14SurfaceInfos_c10IsPavementEj; SurfaceInfos_c::IsPavement(uint)
52339E:  CMP             R0, #0
5233A0:  BEQ.W           loc_523618
5233A4:  LDR             R0, [R5,#0xC]
5233A6:  CMP             R0, #4
5233A8:  BGT.W           loc_523618
5233AC:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x5233B8)
5233AE:  MOV.W           R2, #0x194
5233B2:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x5233BA)
5233B4:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
5233B6:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
5233B8:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
5233BA:  LDR             R1, [R1]; CWorld::Players ...
5233BC:  LDR             R0, [R0]; CWorld::PlayerInFocus
5233BE:  SMULBB.W        R0, R0, R2
5233C2:  LDR             R1, [R1,R0]
5233C4:  LDR.W           R0, [R1,#0x590]; this
5233C8:  CMP             R0, #0
5233CA:  ITT NE
5233CC:  LDRNE.W         R1, [R1,#0x484]
5233D0:  ANDSNE.W        R1, R1, #0x100
5233D4:  BEQ             loc_523406
5233D6:  VLDR            S0, [R0,#0x48]
5233DA:  VLDR            S2, [R0,#0x4C]
5233DE:  VMUL.F32        S0, S0, S0
5233E2:  VLDR            S4, [R0,#0x50]
5233E6:  VMUL.F32        S2, S2, S2
5233EA:  VMUL.F32        S4, S4, S4
5233EE:  VADD.F32        S0, S0, S2
5233F2:  VLDR            S2, =0.04
5233F6:  VADD.F32        S0, S0, S4
5233FA:  VCMPE.F32       S0, S2
5233FE:  VMRS            APSR_nzcv, FPSCR
523402:  BGT.W           loc_523618
523406:  BLX             j__ZN10CStreaming10IsVeryBusyEv; CStreaming::IsVeryBusy(void)
52340A:  MOVS            R4, #0
52340C:  CMP             R0, #0
52340E:  BNE.W           loc_52361A
523412:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
523416:  CMP             R0, #0
523418:  BNE.W           loc_52361A
52341C:  STR             R5, [SP,#0x68+var_4C]
52341E:  LDR.W           R0, [R11,#0x14]
523422:  LDR.W           R9, [R11,#0x440]
523426:  ADD.W           R1, R0, #0x30 ; '0'
52342A:  CMP             R0, #0
52342C:  IT EQ
52342E:  ADDEQ.W         R1, R11, #4
523432:  VLDR            S16, =100.0
523436:  STR             R1, [SP,#0x68+var_50]
523438:  MOVS            R0, #0x4C ; 'L'
52343A:  LDR             R1, =(g_surfaceInfos_ptr - 0x523440)
52343C:  ADD             R1, PC; g_surfaceInfos_ptr
52343E:  LDR.W           R8, [R1]; g_surfaceInfos
523442:  MOV             R10, R0
523444:  LDR.W           R6, [R9,R10,LSL#2]
523448:  CMP             R6, #0
52344A:  BEQ.W           loc_52360A
52344E:  LDRB.W          R1, [R6,#0xBE]; unsigned int
523452:  MOV             R0, R8; this
523454:  BLX             j__ZN14SurfaceInfos_c10IsPavementEj; SurfaceInfos_c::IsPavement(uint)
523458:  CMP             R0, #0
52345A:  BEQ.W           loc_52360A
52345E:  LDR.W           R0, [R6,#0x440]
523462:  ADDS            R0, #4; this
523464:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
523468:  CMP             R0, #0
52346A:  BEQ.W           loc_52360A
52346E:  LDR.W           R0, [R6,#0x440]
523472:  ADDS            R0, #4; this
523474:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
523478:  LDR             R1, [R0]
52347A:  LDR             R1, [R1,#0x14]
52347C:  BLX             R1
52347E:  MOV             R5, R0
523480:  LDR             R0, [SP,#0x68+var_4C]
523482:  LDR             R1, [R0]
523484:  LDR             R1, [R1,#0x14]
523486:  BLX             R1
523488:  CMP             R5, R0
52348A:  BNE.W           loc_52360A
52348E:  LDR.W           R0, [R11,#0x440]; this
523492:  MOVW            R1, #0x4B4; int
523496:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
52349A:  CMP             R0, #0
52349C:  BNE.W           loc_52360A
5234A0:  LDR.W           R0, [R6,#0x440]; this
5234A4:  MOVW            R1, #0x4B4; int
5234A8:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
5234AC:  CMP             R0, #0
5234AE:  BNE.W           loc_52360A
5234B2:  LDR.W           R0, [R11,#0x440]
5234B6:  MOVS            R1, #0x13; int
5234B8:  ADDS            R0, #0x68 ; 'h'; this
5234BA:  BLX             j__ZNK11CEventGroup14GetEventOfTypeEi; CEventGroup::GetEventOfType(int)
5234BE:  CMP             R0, #0
5234C0:  BNE.W           loc_52360A
5234C4:  LDR.W           R0, [R6,#0x440]
5234C8:  MOVS            R1, #0x13; int
5234CA:  ADDS            R0, #0x68 ; 'h'; this
5234CC:  BLX             j__ZNK11CEventGroup14GetEventOfTypeEi; CEventGroup::GetEventOfType(int)
5234D0:  CMP             R0, #0
5234D2:  BNE.W           loc_52360A
5234D6:  LDR.W           R0, [R11,#0x440]; this
5234DA:  MOVW            R1, #0x4BF; int
5234DE:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
5234E2:  CMP             R0, #0
5234E4:  BNE.W           loc_52360A
5234E8:  LDR.W           R0, [R6,#0x440]; this
5234EC:  MOVW            R1, #0x4BF; int
5234F0:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
5234F4:  CMP             R0, #0
5234F6:  BNE.W           loc_52360A
5234FA:  LDR.W           R0, [R11,#0x59C]
5234FE:  CMP             R0, #0x14
523500:  IT NE
523502:  CMPNE           R0, #6
523504:  BEQ.W           loc_52360A
523508:  LDR.W           R0, [R6,#0x59C]
52350C:  CMP             R0, #6
52350E:  IT NE
523510:  CMPNE           R0, #0x14
523512:  BEQ             loc_52360A
523514:  MOV             R0, R11; this
523516:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52351A:  CMP             R0, #0
52351C:  BNE             loc_52360A
52351E:  MOV             R0, R6; this
523520:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
523524:  CMP             R0, #0
523526:  BNE             loc_52360A
523528:  LDR.W           R0, [R11,#0x59C]
52352C:  SUBS            R0, #7
52352E:  CMP             R0, #0xA
523530:  BCC             loc_52360A
523532:  LDR.W           R0, [R6,#0x59C]
523536:  SUBS            R0, #7
523538:  CMP             R0, #0xA
52353A:  BCC             loc_52360A
52353C:  MOV             R0, R11; this
52353E:  MOV             R1, R6; CPed *
523540:  BLX             j__ZN16CPedIntelligence10AreFriendsERK4CPedS2_; CPedIntelligence::AreFriends(CPed const&,CPed const&)
523544:  CMP             R0, #1
523546:  BNE             loc_52360A
523548:  LDR             R1, [SP,#0x68+var_50]
52354A:  LDR             R0, [R6,#0x14]
52354C:  VLDR            S0, [R1]
523550:  CMP             R0, #0
523552:  VLDR            S2, [R1,#4]
523556:  VLDR            S4, [R1,#8]
52355A:  ADD.W           R1, R0, #0x30 ; '0'
52355E:  IT EQ
523560:  ADDEQ           R1, R6, #4; CVector *
523562:  VLDR            S6, [R1]
523566:  VLDR            S8, [R1,#4]
52356A:  VSUB.F32        S0, S6, S0
52356E:  VLDR            S10, [R1,#8]
523572:  VSUB.F32        S2, S8, S2
523576:  VSUB.F32        S4, S10, S4
52357A:  VMUL.F32        S8, S0, S0
52357E:  VMUL.F32        S6, S2, S2
523582:  VMUL.F32        S10, S4, S4
523586:  VADD.F32        S6, S8, S6
52358A:  VADD.F32        S6, S6, S10
52358E:  VCMPE.F32       S6, S16
523592:  VMRS            APSR_nzcv, FPSCR
523596:  BGE             loc_52360A
523598:  LDR.W           R2, [R11,#0x14]
52359C:  VLDR            S6, [R2,#0x10]
5235A0:  VLDR            S8, [R2,#0x14]
5235A4:  VMUL.F32        S6, S0, S6
5235A8:  VLDR            S10, [R2,#0x18]
5235AC:  VMUL.F32        S8, S2, S8
5235B0:  VMUL.F32        S10, S4, S10
5235B4:  VADD.F32        S6, S6, S8
5235B8:  VADD.F32        S6, S6, S10
5235BC:  VCMPE.F32       S6, #0.0
5235C0:  VMRS            APSR_nzcv, FPSCR
5235C4:  BLE             loc_52360A
5235C6:  VLDR            S6, [R0,#0x10]
5235CA:  VLDR            S8, [R0,#0x14]
5235CE:  VMUL.F32        S0, S0, S6
5235D2:  VLDR            S10, [R0,#0x18]
5235D6:  VMUL.F32        S2, S2, S8
5235DA:  VMUL.F32        S4, S4, S10
5235DE:  VADD.F32        S0, S0, S2
5235E2:  VADD.F32        S0, S0, S4
5235E6:  VCMPE.F32       S0, #0.0
5235EA:  VMRS            APSR_nzcv, FPSCR
5235EE:  BGE             loc_52360A
5235F0:  MOVS            R0, #1
5235F2:  STR             R4, [SP,#0x68+var_68]; bool
5235F4:  STRD.W          R0, R4, [SP,#0x68+var_64]; bool
5235F8:  MOVS            R2, #(stderr+1); CVector *
5235FA:  STRD.W          R4, R4, [SP,#0x68+var_5C]; CColLine *
5235FE:  MOVS            R3, #0; bool
523600:  LDR             R0, [SP,#0x68+var_50]; this
523602:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
523606:  CMP             R0, #1
523608:  BEQ             loc_52362A
52360A:  SUB.W           R1, R10, #0x4C ; 'L'
52360E:  ADD.W           R0, R10, #1
523612:  CMP             R1, #0xF
523614:  BLT.W           loc_523442
523618:  MOVS            R4, #0
52361A:  MOV             R0, R4
52361C:  ADD             SP, SP, #0x40 ; '@'
52361E:  VPOP            {D8}
523622:  ADD             SP, SP, #4
523624:  POP.W           {R8-R11}
523628:  POP             {R4-R7,PC}
52362A:  ADD             R4, SP, #0x68+var_38
52362C:  MOVS            R1, #1; bool
52362E:  MOV             R2, R6; CPed *
523630:  MOV             R0, R4; this
523632:  BLX             j__ZN17CEventChatPartnerC2EbP4CPed; CEventChatPartner::CEventChatPartner(bool,CPed *)
523636:  LDR.W           R0, [R11,#0x440]
52363A:  MOV             R1, R4; CEvent *
52363C:  MOVS            R2, #0; bool
52363E:  ADDS            R0, #0x68 ; 'h'; this
523640:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
523644:  ADD             R4, SP, #0x68+var_48
523646:  MOVS            R1, #0; bool
523648:  MOV             R2, R11; CPed *
52364A:  MOV             R0, R4; this
52364C:  BLX             j__ZN17CEventChatPartnerC2EbP4CPed; CEventChatPartner::CEventChatPartner(bool,CPed *)
523650:  LDR.W           R0, [R6,#0x440]
523654:  MOV             R1, R4; CEvent *
523656:  MOVS            R2, #0; bool
523658:  ADDS            R0, #0x68 ; 'h'; this
52365A:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
52365E:  LDR.W           R0, [R11,#0x440]
523662:  ADDS            R0, #4; this
523664:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
523668:  MOVW            R9, #:lower16:(elf_hash_chain+0x8538)
52366C:  MOV             R4, R0
52366E:  MOVT            R9, #:upper16:(elf_hash_chain+0x8538)
523672:  CBZ             R4, loc_5236B6
523674:  LDR             R0, [R4]
523676:  LDR             R1, [R0,#0x14]
523678:  MOV             R0, R4
52367A:  BLX             R1
52367C:  MOV             R5, R0
52367E:  LDR             R0, [SP,#0x68+var_4C]
523680:  LDR             R1, [R0]
523682:  LDR             R1, [R1,#0x14]
523684:  BLX             R1
523686:  CMP             R5, R0
523688:  BNE             loc_5236B6
52368A:  LDR             R0, [R4]
52368C:  LDR             R1, [R0,#0x34]
52368E:  MOV             R0, R4
523690:  BLX             R1
523692:  MOV             R4, R0
523694:  LDR             R0, [SP,#0x68+var_4C]
523696:  LDR             R1, [R0]
523698:  LDR             R1, [R1,#0x34]
52369A:  BLX             R1
52369C:  CMP             R4, R0
52369E:  BNE             loc_5236B6
5236A0:  LDR.W           R0, [R11,#0x440]
5236A4:  ADDS            R0, #4; this
5236A6:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
5236AA:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5236B0)
5236AC:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5236AE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5236B0:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5236B2:  ADD             R1, R9
5236B4:  STR             R1, [R0,#0x34]
5236B6:  LDR.W           R0, [R6,#0x440]
5236BA:  ADDS            R0, #4; this
5236BC:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
5236C0:  MOV             R4, R0
5236C2:  CBZ             R4, loc_523706
5236C4:  LDR             R0, [R4]
5236C6:  LDR             R1, [R0,#0x14]
5236C8:  MOV             R0, R4
5236CA:  BLX             R1
5236CC:  MOV             R5, R0
5236CE:  LDR             R0, [SP,#0x68+var_4C]
5236D0:  LDR             R1, [R0]
5236D2:  LDR             R1, [R1,#0x14]
5236D4:  BLX             R1
5236D6:  CMP             R5, R0
5236D8:  BNE             loc_523706
5236DA:  LDR             R0, [R4]
5236DC:  LDR             R1, [R0,#0x34]
5236DE:  MOV             R0, R4
5236E0:  BLX             R1
5236E2:  MOV             R4, R0
5236E4:  LDR             R0, [SP,#0x68+var_4C]
5236E6:  LDR             R1, [R0]
5236E8:  LDR             R1, [R1,#0x34]
5236EA:  BLX             R1
5236EC:  CMP             R4, R0
5236EE:  BNE             loc_523706
5236F0:  LDR.W           R0, [R6,#0x440]
5236F4:  ADDS            R0, #4; this
5236F6:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
5236FA:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x523700)
5236FC:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5236FE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
523700:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
523702:  ADD             R1, R9
523704:  STR             R1, [R0,#0x34]
523706:  ADD             R0, SP, #0x68+var_48; this
523708:  BLX             j__ZN17CEventChatPartnerD2Ev; CEventChatPartner::~CEventChatPartner()
52370C:  ADD             R0, SP, #0x68+var_38; this
52370E:  BLX             j__ZN17CEventChatPartnerD2Ev; CEventChatPartner::~CEventChatPartner()
523712:  MOVS            R4, #1
523714:  B               loc_52361A
