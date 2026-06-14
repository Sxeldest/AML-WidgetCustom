; =========================================================
; Game Engine Function: _ZN24CTaskComplexKillCriminal18CreateFirstSubTaskEP4CPed
; Address            : 0x53E29C - 0x53E784
; =========================================================

53E29C:  PUSH            {R4-R7,LR}
53E29E:  ADD             R7, SP, #0xC
53E2A0:  PUSH.W          {R8-R10}
53E2A4:  SUB             SP, SP, #0x20
53E2A6:  MOV             R10, R0
53E2A8:  MOV             R9, R1
53E2AA:  LDR.W           R0, [R10,#0xC]; this
53E2AE:  CBZ             R0, loc_53E2B6
53E2B0:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53E2B4:  CBZ             R0, loc_53E2C2
53E2B6:  MOVS            R6, #0
53E2B8:  MOV             R0, R6
53E2BA:  ADD             SP, SP, #0x20 ; ' '
53E2BC:  POP.W           {R8-R10}
53E2C0:  POP             {R4-R7,PC}
53E2C2:  MOV.W           R0, #0xFFFFFFFF; int
53E2C6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
53E2CA:  LDR.W           R0, [R0,#0x444]
53E2CE:  MOVS            R6, #0
53E2D0:  LDR             R0, [R0]
53E2D2:  LDR             R0, [R0,#0x2C]
53E2D4:  CMP             R0, #0
53E2D6:  BNE             loc_53E2B8
53E2D8:  LDR.W           R0, =(g_LoadMonitor_ptr - 0x53E2E0)
53E2DC:  ADD             R0, PC; g_LoadMonitor_ptr
53E2DE:  LDR             R0, [R0]; g_LoadMonitor
53E2E0:  LDRB            R0, [R0,#(byte_959608 - 0x9595EC)]
53E2E2:  CMP             R0, #0
53E2E4:  BEQ             loc_53E2B8
53E2E6:  LDR.W           R0, [R9,#0x59C]
53E2EA:  CMP             R0, #6
53E2EC:  BNE             loc_53E2B6
53E2EE:  LDR.W           R1, [R10,#0xC]
53E2F2:  LDR.W           R2, [R1,#0x590]
53E2F6:  CBZ             R2, loc_53E33A
53E2F8:  LDR.W           R0, [R2,#0x464]; this
53E2FC:  CBZ             R0, loc_53E30E
53E2FE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53E302:  CMP             R0, #0
53E304:  BNE             loc_53E2B6
53E306:  LDR.W           R1, [R10,#0xC]
53E30A:  LDR.W           R2, [R1,#0x590]
53E30E:  LDRB.W          R0, [R2,#0x48C]
53E312:  CBZ             R0, loc_53E33A
53E314:  MOVS            R4, #0
53E316:  ADD.W           R0, R2, R4,LSL#2
53E31A:  LDR.W           R0, [R0,#0x468]; this
53E31E:  CBZ             R0, loc_53E32C
53E320:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53E324:  CMP             R0, #0
53E326:  BNE             loc_53E2B6
53E328:  LDR.W           R1, [R10,#0xC]
53E32C:  LDR.W           R2, [R1,#0x590]
53E330:  ADDS            R4, #1
53E332:  LDRB.W          R0, [R2,#0x48C]
53E336:  CMP             R4, R0
53E338:  BLT             loc_53E316
53E33A:  MOV             R8, R10
53E33C:  MOV             R0, R9; this
53E33E:  STR.W           R9, [R8,#0x10]!
53E342:  MOV             R1, R8; CEntity **
53E344:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53E348:  LDRB.W          R0, [R8,#8]
53E34C:  CBZ             R0, loc_53E3A0
53E34E:  LDR.W           R0, [R10,#0xC]
53E352:  LDR.W           R1, [R0,#0x490]
53E356:  TST.W           R1, #0x800
53E35A:  BNE             loc_53E3A0
53E35C:  LDR.W           R1, [R0,#0x484]
53E360:  LSLS            R1, R1, #0x17
53E362:  BPL             loc_53E2B6
53E364:  LDR.W           R0, [R0,#0x590]
53E368:  CMP             R0, #0
53E36A:  BEQ             loc_53E2B6
53E36C:  LDRB.W          R0, [R0,#0x432]
53E370:  LSLS            R0, R0, #0x1C
53E372:  BPL             loc_53E2B6
53E374:  BLX             rand
53E378:  UXTH            R0, R0
53E37A:  VLDR            S2, =0.000015259
53E37E:  VMOV            S0, R0
53E382:  VMOV.F32        S4, #3.0
53E386:  VCVT.F32.S32    S0, S0
53E38A:  VMUL.F32        S0, S0, S2
53E38E:  VMUL.F32        S0, S0, S4
53E392:  VCVT.S32.F32    S0, S0
53E396:  VMOV            R0, S0
53E39A:  CMP             R0, #0
53E39C:  BNE.W           loc_53E2B6
53E3A0:  LDRD.W          R1, R0, [R10,#0xC]; CPed *
53E3A4:  BLX             j__ZN7CCopPed17AddCriminalToKillEP4CPed; CCopPed::AddCriminalToKill(CPed *)
53E3A8:  LDR.W           R0, [R10,#0xC]
53E3AC:  LDRB.W          R1, [R0,#0x485]
53E3B0:  LSLS            R1, R1, #0x1F
53E3B2:  BEQ             loc_53E3BE
53E3B4:  LDR.W           R0, [R0,#0x440]; this
53E3B8:  MOVS            R1, #6; int
53E3BA:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
53E3BE:  LDR.W           R0, [R8]; this
53E3C2:  LDRB.W          R1, [R0,#0x485]
53E3C6:  LSLS            R1, R1, #0x1F
53E3C8:  ITT NE
53E3CA:  LDRNE.W         R1, [R0,#0x590]
53E3CE:  CMPNE           R1, #0
53E3D0:  BNE             loc_53E3F2
53E3D2:  LDR.W           R1, [R0,#0x7B0]
53E3D6:  CBZ             R1, loc_53E3EA
53E3D8:  ADDW            R1, R1, #0x544
53E3DC:  VLDR            S0, [R1]
53E3E0:  VCMPE.F32       S0, #0.0
53E3E4:  VMRS            APSR_nzcv, FPSCR
53E3E8:  BGT             loc_53E4E6
53E3EA:  MOVS            R1, #1
53E3EC:  STRB.W          R1, [R0,#0x7C8]
53E3F0:  B               loc_53E4E6
53E3F2:  LDR.W           R1, [R1,#0x464]; CCopPed *
53E3F6:  CMP             R1, R9
53E3F8:  BEQ             loc_53E482
53E3FA:  CBZ             R1, loc_53E41E
53E3FC:  LDR.W           R2, [R1,#0x59C]
53E400:  CMP             R2, #6
53E402:  BNE             loc_53E41E
53E404:  BLX             j__ZN7CCopPed10SetPartnerEPS_; CCopPed::SetPartner(CCopPed*)
53E408:  LDR.W           R0, [R8]
53E40C:  MOVS            R1, #1
53E40E:  LDR.W           R0, [R0,#0x590]
53E412:  LDR.W           R0, [R0,#0x464]
53E416:  STRB.W          R1, [R0,#0x7C8]
53E41A:  LDR.W           R0, [R8]
53E41E:  LDR.W           R1, [R0,#0x7B0]; unsigned int
53E422:  CMP             R1, #0
53E424:  BEQ.W           loc_53E6BA
53E428:  LDRB.W          R0, [R1,#0x7C8]
53E42C:  CMP             R0, #0
53E42E:  BEQ             loc_53E4D0
53E430:  LDR.W           R0, [R1,#0x440]; this
53E434:  MOVW            R1, #0x451; int
53E438:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
53E43C:  CMP             R0, #0
53E43E:  BEQ.W           loc_53E732
53E442:  LDR.W           R1, [R10,#0xC]
53E446:  LDR             R0, [R0,#0xC]
53E448:  CMP             R0, R1
53E44A:  BNE.W           loc_53E736
53E44E:  LDR.W           R0, [R8]
53E452:  MOVS            R1, #0
53E454:  STRB.W          R1, [R0,#0x7C8]
53E458:  LDR.W           R0, [R8]
53E45C:  LDR.W           R1, [R0,#0x484]
53E460:  LDR.W           R2, [R0,#0x488]
53E464:  LDR.W           R3, [R0,#0x48C]
53E468:  ORR.W           R1, R1, #0x20000000
53E46C:  LDR.W           R6, [R0,#0x490]
53E470:  STR.W           R1, [R0,#0x484]
53E474:  STR.W           R2, [R0,#0x488]
53E478:  STR.W           R3, [R0,#0x48C]
53E47C:  STR.W           R6, [R0,#0x490]
53E480:  B               loc_53E4D0
53E482:  MOVS            R1, #1
53E484:  STRB.W          R1, [R0,#0x7C8]
53E488:  LDR.W           R0, [R8]; this
53E48C:  LDR.W           R1, [R0,#0x7B0]
53E490:  CMP             R1, #0
53E492:  BEQ.W           loc_53E708
53E496:  ADD             R4, SP, #0x38+var_2C
53E498:  LDR.W           R1, [R10,#0xC]; CPed *
53E49C:  MOV             R0, R4; this
53E49E:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
53E4A2:  LDR             R0, =(_ZTV25CEventAcquaintancePedHate_ptr - 0x53E4B2)
53E4A4:  MOVW            R1, #0x451
53E4A8:  STRH.W          R1, [SP,#0x38+var_22]
53E4AC:  MOV             R1, R4; CEvent *
53E4AE:  ADD             R0, PC; _ZTV25CEventAcquaintancePedHate_ptr
53E4B0:  MOVS            R2, #0; bool
53E4B2:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedHate ...
53E4B4:  ADDS            R0, #8
53E4B6:  STR             R0, [SP,#0x38+var_2C]
53E4B8:  LDR.W           R0, [R10,#0x10]
53E4BC:  LDR.W           R0, [R0,#0x7B0]
53E4C0:  LDR.W           R0, [R0,#0x440]
53E4C4:  ADDS            R0, #0x68 ; 'h'; this
53E4C6:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
53E4CA:  MOV             R0, R4; this
53E4CC:  BLX             j__ZN21CEventAcquaintancePedD2Ev; CEventAcquaintancePed::~CEventAcquaintancePed()
53E4D0:  LDR.W           R0, [R10,#0xC]
53E4D4:  LDRB.W          R1, [R0,#0x485]
53E4D8:  LSLS            R1, R1, #0x1F
53E4DA:  ITT NE
53E4DC:  LDRNE.W         R0, [R0,#0x590]
53E4E0:  CMPNE           R0, #0
53E4E2:  BNE.W           loc_53E6A4
53E4E6:  MOV.W           R1, #0x3E8; int
53E4EA:  MOV             R0, R10; this
53E4EC:  MOV             R2, R9; CPed *
53E4EE:  MOVS            R3, #0; bool
53E4F0:  BLX             j__ZNK24CTaskComplexKillCriminal13CreateSubTaskEiP4CPedb; CTaskComplexKillCriminal::CreateSubTask(int,CPed *,bool)
53E4F4:  MOV             R6, R0
53E4F6:  LDR.W           R0, [R9,#0x590]
53E4FA:  CMP             R0, #0
53E4FC:  ITTT NE
53E4FE:  LDRNE.W         R1, [R8]
53E502:  LDRBNE.W        R1, [R1,#0x7C8]
53E506:  CMPNE           R1, #0
53E508:  BEQ             loc_53E530
53E50A:  LDRB.W          R0, [R0,#0x3BD]
53E50E:  MOVS            R1, #1
53E510:  STRB.W          R0, [R10,#0x1B]
53E514:  LDR.W           R0, [R9,#0x590]
53E518:  LDRB.W          R0, [R0,#0x3BE]
53E51C:  STRB.W          R0, [R10,#0x1C]
53E520:  LDR.W           R0, [R9,#0x590]
53E524:  LDRB.W          R0, [R0,#0x3D4]
53E528:  STRB.W          R1, [R10,#0x1E]
53E52C:  STRB.W          R0, [R10,#0x1D]
53E530:  LDR.W           R0, [R10,#0xC]
53E534:  LDR.W           R1, [R0,#0x590]
53E538:  CBZ             R1, loc_53E5B0
53E53A:  LDRB.W          R2, [R1,#0x432]
53E53E:  LSLS            R2, R2, #0x1C
53E540:  BPL             loc_53E62E
53E542:  LDRB.W          R1, [R1,#0x488]
53E546:  CMP             R1, #0
53E548:  BEQ             loc_53E60A
53E54A:  MOVS            R1, #0x16
53E54C:  MOV.W           R2, #0x3E8
53E550:  MOVS            R3, #1
53E552:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
53E556:  LDR.W           R0, [R10,#0xC]
53E55A:  MOVS            R1, #0x16
53E55C:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
53E560:  LDR.W           R0, [R10,#0xC]
53E564:  LDR.W           R1, [R0,#0x590]
53E568:  LDRB.W          R2, [R1,#0x48C]
53E56C:  CMP             R2, #0
53E56E:  BEQ             loc_53E62E
53E570:  MOVS            R5, #0
53E572:  ADD.W           R1, R1, R5,LSL#2
53E576:  LDR.W           R4, [R1,#0x468]
53E57A:  CBZ             R4, loc_53E5A0
53E57C:  MOV             R0, R4
53E57E:  MOVS            R1, #0x16
53E580:  MOV.W           R2, #0x3E8
53E584:  MOVS            R3, #1
53E586:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
53E58A:  MOV             R0, R4
53E58C:  MOVS            R1, #0x16
53E58E:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
53E592:  LDR.W           R0, [R10,#0x10]; this
53E596:  MOV             R1, R4; CPed *
53E598:  BLX             j__ZN7CCopPed17AddCriminalToKillEP4CPed; CCopPed::AddCriminalToKill(CPed *)
53E59C:  LDR.W           R0, [R10,#0xC]
53E5A0:  LDR.W           R1, [R0,#0x590]
53E5A4:  ADDS            R5, #1
53E5A6:  LDRB.W          R2, [R1,#0x48C]
53E5AA:  CMP             R5, R2
53E5AC:  BLT             loc_53E572
53E5AE:  B               loc_53E62E
53E5B0:  BLX             rand
53E5B4:  TST.W           R0, #1
53E5B8:  BEQ             loc_53E62E
53E5BA:  LDR.W           R0, [R10,#0xC]
53E5BE:  MOVS            R1, #0x16
53E5C0:  MOV.W           R2, #0x3E8
53E5C4:  MOVS            R3, #1
53E5C6:  MOV.W           R5, #0x3E8
53E5CA:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
53E5CE:  LDR.W           R0, [R10,#0xC]
53E5D2:  MOVS            R1, #0x16
53E5D4:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
53E5D8:  ADD             R4, SP, #0x38+var_2C
53E5DA:  MOV             R1, R9; CPed *
53E5DC:  MOV             R0, R4; this
53E5DE:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
53E5E2:  LDR             R0, =(_ZTV25CEventAcquaintancePedHate_ptr - 0x53E5F0)
53E5E4:  MOV             R1, R4; CEvent *
53E5E6:  STRH.W          R5, [SP,#0x38+var_22]
53E5EA:  MOVS            R2, #0; bool
53E5EC:  ADD             R0, PC; _ZTV25CEventAcquaintancePedHate_ptr
53E5EE:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedHate ...
53E5F0:  ADDS            R0, #8
53E5F2:  STR             R0, [SP,#0x38+var_2C]
53E5F4:  LDR.W           R0, [R10,#0xC]
53E5F8:  LDR.W           R0, [R0,#0x440]
53E5FC:  ADDS            R0, #0x68 ; 'h'; this
53E5FE:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
53E602:  MOV             R0, R4; this
53E604:  BLX             j__ZN21CEventAcquaintancePedD2Ev; CEventAcquaintancePed::~CEventAcquaintancePed()
53E608:  B               loc_53E62E
53E60A:  BLX             rand
53E60E:  TST.W           R0, #1
53E612:  BEQ             loc_53E62E
53E614:  LDR.W           R0, [R10,#0xC]
53E618:  MOVS            R1, #0x16
53E61A:  MOV.W           R2, #0x3E8
53E61E:  MOVS            R3, #1
53E620:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
53E624:  LDR.W           R0, [R10,#0xC]
53E628:  MOVS            R1, #0x16
53E62A:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
53E62E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x53E638)
53E630:  LDR.W           R2, [R9,#0x488]
53E634:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
53E636:  ORR.W           R2, R2, #0x40 ; '@'
53E63A:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
53E63C:  LDR.W           R0, [R9,#0x590]
53E640:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
53E642:  CMP             R0, #0
53E644:  STR.W           R2, [R9,#0x488]
53E648:  MOVW            R2, #0x999A
53E64C:  ADD.W           R1, R1, #0x48000
53E650:  MOVT            R2, #0x3E99
53E654:  STR.W           R2, [R9,#0x798]
53E658:  ADD.W           R1, R1, #0x13E0
53E65C:  STR.W           R1, [R9,#0x550]
53E660:  BEQ             loc_53E694
53E662:  MOVS            R1, #0xFF
53E664:  STRH.W          R1, [R0,#0x4B0]
53E668:  LDR.W           R0, [R9,#0x590]
53E66C:  LDR.W           R1, [R0,#0x430]
53E670:  ORR.W           R1, R1, #0x40 ; '@'
53E674:  STR.W           R1, [R0,#0x430]
53E678:  LDR.W           R0, [R9,#0x590]
53E67C:  CBZ             R0, loc_53E694
53E67E:  ADDW            R1, R9, #0x484
53E682:  LDRB            R1, [R1,#1]
53E684:  LSLS            R1, R1, #0x1F
53E686:  ITTT NE
53E688:  LDRNE.W         R1, [R0,#0x430]
53E68C:  ORRNE.W         R1, R1, #0x8000
53E690:  STRNE.W         R1, [R0,#0x430]
53E694:  LDR             R0, =(g_InterestingEvents_ptr - 0x53E69E)
53E696:  MOVS            R1, #0x19
53E698:  MOV             R2, R9
53E69A:  ADD             R0, PC; g_InterestingEvents_ptr
53E69C:  LDR             R0, [R0]; g_InterestingEvents
53E69E:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
53E6A2:  B               loc_53E2B8
53E6A4:  LDR.W           R0, [R8]
53E6A8:  MOVW            R1, #0x2C5
53E6AC:  LDRB.W          R0, [R0,#0x7C8]
53E6B0:  CMP             R0, #0
53E6B2:  IT NE
53E6B4:  MOVNE.W         R1, #0x2D4
53E6B8:  B               loc_53E4EA
53E6BA:  MOVS            R4, #1
53E6BC:  STRB.W          R4, [R0,#0x7C8]
53E6C0:  LDR.W           R0, [R10,#8]
53E6C4:  CBZ             R0, loc_53E6DE
53E6C6:  LDR             R1, [R0]
53E6C8:  LDR             R1, [R1,#0x14]
53E6CA:  BLX             R1
53E6CC:  CMP.W           R0, #0x2C0
53E6D0:  BNE             loc_53E6DE
53E6D2:  LDR.W           R6, [R10,#8]
53E6D6:  CMP             R6, #0
53E6D8:  BNE.W           loc_53E4F6
53E6DC:  B               loc_53E4D0
53E6DE:  MOVS            R0, #dword_34; this
53E6E0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53E6E4:  LDR.W           R1, [R9,#0x590]; CVehicle *
53E6E8:  MOV             R6, R0
53E6EA:  MOVS            R0, #0
53E6EC:  MOVS            R2, #0; int
53E6EE:  STRD.W          R4, R0, [SP,#0x38+var_38]; bool
53E6F2:  MOV             R0, R6; this
53E6F4:  MOVS            R3, #0; int
53E6F6:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
53E6FA:  CMP             R6, #0
53E6FC:  BNE.W           loc_53E4F6
53E700:  B               loc_53E4D0
53E702:  ALIGN 4
53E704:  DCFS 0.000015259
53E708:  LDR.W           R1, [R0,#0x590]
53E70C:  LDRB.W          R2, [R1,#0x48C]
53E710:  CMP             R2, #0
53E712:  BEQ.W           loc_53E4D0
53E716:  ADD.W           R3, R1, #0x468
53E71A:  MOVS            R6, #0
53E71C:  LDR.W           R1, [R3,R6,LSL#2]; CCopPed *
53E720:  CBZ             R1, loc_53E72A
53E722:  LDR.W           R5, [R1,#0x59C]
53E726:  CMP             R5, #6
53E728:  BEQ             loc_53E770
53E72A:  ADDS            R6, #1
53E72C:  CMP             R6, R2
53E72E:  BLT             loc_53E71C
53E730:  B               loc_53E4D0
53E732:  LDR.W           R1, [R10,#0xC]; CPed *
53E736:  ADD             R4, SP, #0x38+var_2C
53E738:  MOV             R0, R4; this
53E73A:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
53E73E:  LDR             R0, =(_ZTV25CEventAcquaintancePedHate_ptr - 0x53E74E)
53E740:  MOVW            R1, #0x451
53E744:  STRH.W          R1, [SP,#0x38+var_22]
53E748:  MOV             R1, R4; CEvent *
53E74A:  ADD             R0, PC; _ZTV25CEventAcquaintancePedHate_ptr
53E74C:  MOVS            R2, #0; bool
53E74E:  MOVS            R6, #0
53E750:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedHate ...
53E752:  ADDS            R0, #8
53E754:  STR             R0, [SP,#0x38+var_2C]
53E756:  LDR.W           R0, [R8]
53E75A:  LDR.W           R0, [R0,#0x7B0]
53E75E:  LDR.W           R0, [R0,#0x440]
53E762:  ADDS            R0, #0x68 ; 'h'; this
53E764:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
53E768:  MOV             R0, R4; this
53E76A:  BLX             j__ZN21CEventAcquaintancePedD2Ev; CEventAcquaintancePed::~CEventAcquaintancePed()
53E76E:  B               loc_53E2B8
53E770:  BLX             j__ZN7CCopPed10SetPartnerEPS_; CCopPed::SetPartner(CCopPed*)
53E774:  LDR.W           R0, [R8]
53E778:  LDR.W           R0, [R0,#0x7B0]
53E77C:  CMP             R0, #0
53E77E:  BNE.W           loc_53E496
53E782:  B               loc_53E4D0
