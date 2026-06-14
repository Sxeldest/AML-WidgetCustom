; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight11FightHitPedEP4CPedS1_R7CVectorS3_s
; Address            : 0x4DA3F4 - 0x4DA996
; =========================================================

4DA3F4:  PUSH            {R4-R7,LR}
4DA3F6:  ADD             R7, SP, #0xC
4DA3F8:  PUSH.W          {R8-R11}
4DA3FC:  SUB             SP, SP, #4
4DA3FE:  VPUSH           {D8}
4DA402:  SUB             SP, SP, #0x60
4DA404:  MOV             R4, R2
4DA406:  MOV             R6, R0
4DA408:  MOV             R0, R4; this
4DA40A:  MOV             R8, R3
4DA40C:  MOV             R5, R1
4DA40E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DA412:  CMP             R0, #1
4DA414:  BNE             loc_4DA42E
4DA416:  LDR.W           R0, [R4,#0x440]
4DA41A:  ADDS            R0, #4; this
4DA41C:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
4DA420:  B.W             loc_3F673A
4DA424:  BLX             R1
4DA426:  CMP             R0, #0xCD
4DA428:  BNE             loc_4DA42E
4DA42A:  MOVS            R6, #0
4DA42C:  B               loc_4DA976
4DA42E:  LDR.W           R0, [R4,#0x440]; this
4DA432:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
4DA436:  CMP             R0, #0
4DA438:  BEQ             loc_4DA4E6
4DA43A:  LDR.W           R0, [R4,#0x440]; this
4DA43E:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
4DA442:  MOV             R11, R6
4DA444:  MOV             R2, R5; CPed *
4DA446:  LDRSB.W         R1, [R11,#0x25]!
4DA44A:  MOV             R10, R11
4DA44C:  LDRSB.W         R3, [R10,#-1]!; signed __int8
4DA450:  STR             R1, [SP,#0x88+var_88]; signed __int8
4DA452:  MOV             R1, R4; CPed *
4DA454:  BLX             j__ZN16CTaskSimpleFight18BeHitWhileBlockingEP4CPedS1_aa; CTaskSimpleFight::BeHitWhileBlocking(CPed *,CPed *,signed char,signed char)
4DA458:  CMP             R0, #1
4DA45A:  BNE             loc_4DA4EE
4DA45C:  LDR.W           R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DA46E)
4DA460:  ADD.W           R5, R5, #0x13C
4DA464:  LDRSB.W         R1, [R10]
4DA468:  MOVS            R6, #0
4DA46A:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DA46C:  LDRSB.W         R2, [R11]
4DA470:  SUBS            R1, #4
4DA472:  MOV.W           R3, #0x3F800000; float
4DA476:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
4DA478:  ADD.W           R8, R1, R1,LSL#4
4DA47C:  ADD.W           R0, R0, R8,LSL#3
4DA480:  ADD.W           R0, R0, R2,LSL#2
4DA484:  MOVS            R2, #0xC1100000; float
4DA48A:  LDR             R1, [R0,#0x70]; int
4DA48C:  MOV             R0, R5; this
4DA48E:  STRD.W          R4, R6, [SP,#0x88+var_88]; CPhysical *
4DA492:  STRD.W          R6, R6, [SP,#0x88+var_80]; int
4DA496:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
4DA49A:  LDRB.W          R0, [R10]
4DA49E:  CMP             R0, #5
4DA4A0:  BNE.W           loc_4DA976
4DA4A4:  LDRSB.W         R0, [R11]
4DA4A8:  MOVS            R6, #0
4DA4AA:  CMP             R0, #2
4DA4AC:  BHI.W           loc_4DA976
4DA4B0:  LDR.W           R1, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DA4C0)
4DA4B4:  MOV.W           R3, #0x3F800000; float
4DA4B8:  LDR.W           R2, =(unk_61E5A0 - 0x4DA4C2)
4DA4BC:  ADD             R1, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DA4BE:  ADD             R2, PC; unk_61E5A0
4DA4C0:  LDR             R1, [R1]; CTaskSimpleFight::m_aComboData ...
4DA4C2:  ADD.W           R1, R1, R8,LSL#3
4DA4C6:  ADD.W           R1, R1, R0,LSL#2
4DA4CA:  LDR.W           R0, [R2,R0,LSL#2]
4DA4CE:  MOVS            R2, #0
4DA4D0:  LDR             R1, [R1,#0x70]; int
4DA4D2:  MOVT            R2, #0xC110; float
4DA4D6:  STRD.W          R4, R6, [SP,#0x88+var_88]; CPhysical *
4DA4DA:  STRD.W          R6, R0, [SP,#0x88+var_80]; int
4DA4DE:  MOV             R0, R5; this
4DA4E0:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
4DA4E4:  B               loc_4DA976
4DA4E6:  ADD.W           R11, R6, #0x25 ; '%'
4DA4EA:  ADD.W           R10, R6, #0x24 ; '$'
4DA4EE:  LDRSB.W         R0, [R5,#0x71C]
4DA4F2:  MOVS            R1, #1
4DA4F4:  RSB.W           R0, R0, R0,LSL#3
4DA4F8:  ADD.W           R0, R5, R0,LSL#2
4DA4FC:  LDR.W           R0, [R0,#0x5A4]
4DA500:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4DA504:  LDR.W           R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DA510)
4DA508:  LDRSB.W         R1, [R10]
4DA50C:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DA50E:  LDRSB.W         R2, [R11]
4DA512:  SUBS            R1, #4
4DA514:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
4DA516:  ADD.W           R9, R1, R1,LSL#4
4DA51A:  ADD.W           R0, R0, R9,LSL#3
4DA51E:  ADD             R0, R2
4DA520:  LDRB.W          R0, [R0,#0x55]
4DA524:  VMOV            S0, R0
4DA528:  MOV             R0, R5; this
4DA52A:  VCVT.F32.U32    S16, S0
4DA52E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DA532:  CMP             R0, #1
4DA534:  STR.W           R8, [SP,#0x88+var_74]
4DA538:  BNE             loc_4DA552
4DA53A:  LDR.W           R0, [R5,#0x444]
4DA53E:  LDRB.W          R0, [R0,#0x34]
4DA542:  LSLS            R0, R0, #0x1E
4DA544:  BMI             loc_4DA572
4DA546:  MOVS            R0, #4
4DA548:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
4DA54C:  VMOV            S0, R0
4DA550:  B               loc_4DA580
4DA552:  LDRSB.W         R0, [R5,#0x71C]
4DA556:  RSB.W           R0, R0, R0,LSL#3
4DA55A:  ADD.W           R0, R5, R0,LSL#2
4DA55E:  LDR.W           R0, [R0,#0x5A4]
4DA562:  CBZ             R0, loc_4DA578
4DA564:  CMP             R0, #1
4DA566:  ITT EQ
4DA568:  VMOVEQ.F32      S0, #1.5
4DA56C:  VMULEQ.F32      S16, S16, S0
4DA570:  B               loc_4DA584
4DA572:  VLDR            S16, =50.0
4DA576:  B               loc_4DA584
4DA578:  LDR.W           R0, [R5,#0x5A0]
4DA57C:  VLDR            S0, [R0,#0x28]
4DA580:  VMUL.F32        S16, S0, S16
4DA584:  MOVS            R0, #0xFF
4DA586:  ADD.W           R8, R5, #4
4DA58A:  STRB            R0, [R6,#0x14]
4DA58C:  LDR             R0, [R5,#0x14]
4DA58E:  MOV             R1, R8
4DA590:  CMP             R0, #0
4DA592:  IT NE
4DA594:  ADDNE.W         R1, R0, #0x30 ; '0'; CPed *
4DA598:  MOV             R0, R4; this
4DA59A:  BLX             j__ZN20CPedGeometryAnalyser18ComputePedShotSideERK4CPedRK7CVector; CPedGeometryAnalyser::ComputePedShotSide(CPed const&,CVector const&)
4DA59E:  MOV             R6, R0
4DA5A0:  LDRSB.W         R0, [R5,#0x71C]
4DA5A4:  MOV             R1, R5
4DA5A6:  RSB.W           R0, R0, R0,LSL#3
4DA5AA:  ADD.W           R0, R5, R0,LSL#2
4DA5AE:  LDR.W           R2, [R0,#0x5A4]
4DA5B2:  VCVT.S32.F32    S0, S16
4DA5B6:  LDR             R0, [R7,#arg_4]
4DA5B8:  STRD.W          R0, R6, [SP,#0x88+var_88]
4DA5BC:  MOV             R0, R4
4DA5BE:  VMOV            R3, S0
4DA5C2:  BLX             j__ZN7CWeapon19GenerateDamageEventEP4CPedP7CEntity11eWeaponTypei14ePedPieceTypesi; CWeapon::GenerateDamageEvent(CPed *,CEntity *,eWeaponType,int,ePedPieceTypes,int)
4DA5C6:  STR             R0, [SP,#0x88+var_70]
4DA5C8:  NOP
4DA5CA:  MOVS            R0, #0; int
4DA5CC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4DA5D0:  CMP             R0, R5
4DA5D2:  BNE             loc_4DA614
4DA5D4:  LDR             R0, [SP,#0x88+var_70]
4DA5D6:  CBZ             R0, loc_4DA614
4DA5D8:  NOP
4DA5DA:  MOVS            R0, #0; int
4DA5DC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4DA5E0:  LDRSB.W         R1, [R0,#0x71C]
4DA5E4:  RSB.W           R1, R1, R1,LSL#3
4DA5E8:  ADD.W           R0, R0, R1,LSL#2
4DA5EC:  LDR.W           R0, [R0,#0x5A4]; this
4DA5F0:  CMP             R0, #0xF
4DA5F2:  BHI             loc_4DA614
4DA5F4:  MOVS            R1, #1
4DA5F6:  MOVW            R2, #0xFDFE
4DA5FA:  LSLS            R1, R0
4DA5FC:  TST             R1, R2
4DA5FE:  BEQ.W           loc_4DA986
4DA602:  BLX             j__ZN10TouchSense8instanceEv; TouchSense::instance(void)
4DA606:  MOVS            R1, #0x14
4DA608:  MOVS            R2, #9; int
4DA60A:  STR             R1, [SP,#0x88+var_88]; int
4DA60C:  MOVS            R1, #2; int
4DA60E:  MOVS            R3, #0x73 ; 's'; int
4DA610:  BLX             j__ZN10TouchSense17playBuiltinEffectEiiii; TouchSense::playBuiltinEffect(int,int,int,int)
4DA614:  LDRSB.W         R0, [R5,#0x71C]
4DA618:  RSB.W           R0, R0, R0,LSL#3
4DA61C:  ADD.W           R0, R5, R0,LSL#2
4DA620:  LDR.W           R0, [R0,#0x5A4]
4DA624:  CMP             R0, #9
4DA626:  BNE             loc_4DA632
4DA628:  ADD.W           R0, R5, #0x398; this
4DA62C:  MOVS            R1, #0x9B; int
4DA62E:  BLX             j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
4DA632:  CBZ             R6, loc_4DA694
4DA634:  LDR             R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DA644)
4DA636:  ADD.W           R6, R5, #0x13C
4DA63A:  LDRSB.W         R1, [R11]
4DA63E:  MOVS            R2, #0; float
4DA640:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DA642:  MOV.W           R3, #0x3F800000; float
4DA646:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
4DA648:  ADD.W           R0, R0, R9,LSL#3
4DA64C:  ADD.W           R0, R0, R1,LSL#2
4DA650:  LDR             R1, [R0,#0x70]; int
4DA652:  MOVS            R0, #0
4DA654:  STRD.W          R4, R0, [SP,#0x88+var_88]; CPhysical *
4DA658:  STRD.W          R0, R0, [SP,#0x88+var_80]; int
4DA65C:  MOV             R0, R6; this
4DA65E:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
4DA662:  LDRB.W          R0, [R10]
4DA666:  CMP             R0, #5
4DA668:  BNE.W           loc_4DA792
4DA66C:  LDRSB.W         R0, [R11]
4DA670:  CMP             R0, #2
4DA672:  BHI.W           loc_4DA792
4DA676:  LDR             R1, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DA67E)
4DA678:  LDR             R2, =(unk_61E5A0 - 0x4DA682)
4DA67A:  ADD             R1, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DA67C:  STR             R4, [SP,#0x88+var_88]
4DA67E:  ADD             R2, PC; unk_61E5A0
4DA680:  LDR             R1, [R1]; CTaskSimpleFight::m_aComboData ...
4DA682:  ADD.W           R1, R1, R9,LSL#3
4DA686:  ADD.W           R1, R1, R0,LSL#2
4DA68A:  LDR.W           R0, [R2,R0,LSL#2]
4DA68E:  MOVS            R2, #0
4DA690:  LDR             R1, [R1,#0x70]
4DA692:  B               loc_4DA6E8
4DA694:  LDRB.W          R0, [R10]
4DA698:  CMP             R0, #7
4DA69A:  BEQ             loc_4DA6F6
4DA69C:  CMP             R0, #5
4DA69E:  BNE             loc_4DA6F0
4DA6A0:  LDRSB.W         R0, [R11]
4DA6A4:  CMP             R0, #2
4DA6A6:  BHI             loc_4DA6F0
4DA6A8:  LDR             R1, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DA6B8)
4DA6AA:  ADD.W           R6, R5, #0x13C
4DA6AE:  MOVS            R2, #0; float
4DA6B0:  MOV.W           R3, #0x3F800000; float
4DA6B4:  ADD             R1, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DA6B6:  LDR             R1, [R1]; CTaskSimpleFight::m_aComboData ...
4DA6B8:  ADD.W           R1, R1, R9,LSL#3
4DA6BC:  ADD.W           R9, R1, #0x5C ; '\'
4DA6C0:  LDR.W           R1, [R9,R0,LSL#2]; int
4DA6C4:  MOVS            R0, #0
4DA6C6:  STRD.W          R4, R0, [SP,#0x88+var_88]; CPhysical *
4DA6CA:  STRD.W          R0, R0, [SP,#0x88+var_80]; int
4DA6CE:  MOV             R0, R6; this
4DA6D0:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
4DA6D4:  LDR             R0, =(unk_61E5A0 - 0x4DA6DE)
4DA6D6:  LDRSB.W         R2, [R11]
4DA6DA:  ADD             R0, PC; unk_61E5A0
4DA6DC:  STR             R4, [SP,#0x88+var_88]
4DA6DE:  LDR.W           R1, [R9,R2,LSL#2]
4DA6E2:  LDR.W           R0, [R0,R2,LSL#2]
4DA6E6:  MOVS            R2, #0
4DA6E8:  STRD.W          R2, R2, [SP,#0x88+var_84]
4DA6EC:  STR             R0, [SP,#0x88+var_7C]
4DA6EE:  B               loc_4DA764
4DA6F0:  LDRB.W          R1, [R11]
4DA6F4:  B               loc_4DA768
4DA6F6:  LDRSB.W         R0, [R11]
4DA6FA:  UXTB            R1, R0
4DA6FC:  CMP             R1, #1
4DA6FE:  BNE             loc_4DA768
4DA700:  LDR             R1, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DA710)
4DA702:  ADD.W           R6, R5, #0x13C
4DA706:  LDR             R2, =(unk_61E5A0 - 0x4DA712)
4DA708:  MOV.W           R3, #0x3F800000; float
4DA70C:  ADD             R1, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DA70E:  ADD             R2, PC; unk_61E5A0
4DA710:  LDR             R1, [R1]; CTaskSimpleFight::m_aComboData ...
4DA712:  ADD.W           R1, R1, R9,LSL#3
4DA716:  ADD.W           R9, R1, #0x5C ; '\'
4DA71A:  LDR.W           R1, [R9,R0,LSL#2]; int
4DA71E:  LDR.W           R0, [R2,R0,LSL#2]
4DA722:  MOVS            R2, #0
4DA724:  STRD.W          R4, R2, [SP,#0x88+var_88]; CPhysical *
4DA728:  STRD.W          R2, R0, [SP,#0x88+var_80]; int
4DA72C:  MOV             R0, R6; this
4DA72E:  MOVS            R2, #0; float
4DA730:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
4DA734:  LDR             R1, =(unk_61E5A0 - 0x4DA73E)
4DA736:  LDRSB.W         R0, [R11]
4DA73A:  ADD             R1, PC; unk_61E5A0
4DA73C:  VLDR            S2, =2.8
4DA740:  ADD.W           R1, R1, R0,LSL#2
4DA744:  VLDR            S0, [R1]
4DA748:  VCVT.F32.U32    S0, S0
4DA74C:  LDR.W           R1, [R9,R0,LSL#2]
4DA750:  MOVS            R0, #0
4DA752:  VMUL.F32        S0, S0, S2
4DA756:  VCVT.U32.F32    S0, S0
4DA75A:  STR             R4, [SP,#0x88+var_88]
4DA75C:  STRD.W          R0, R0, [SP,#0x88+var_84]
4DA760:  VSTR            S0, [SP,#0x88+var_7C]
4DA764:  MOV             R0, R6
4DA766:  B               loc_4DA788
4DA768:  LDR             R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DA770)
4DA76A:  SXTB            R1, R1
4DA76C:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DA76E:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
4DA770:  ADD.W           R0, R0, R9,LSL#3
4DA774:  ADD.W           R0, R0, R1,LSL#2
4DA778:  LDR             R1, [R0,#0x5C]; int
4DA77A:  MOVS            R0, #0
4DA77C:  STRD.W          R4, R0, [SP,#0x88+var_88]; CPhysical *
4DA780:  STRD.W          R0, R0, [SP,#0x88+var_80]; int
4DA784:  ADD.W           R0, R5, #0x13C; this
4DA788:  MOVS            R2, #0; float
4DA78A:  MOV.W           R3, #0x3F800000; float
4DA78E:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
4DA792:  MOV             R0, R5; this
4DA794:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DA798:  CMP             R0, #1
4DA79A:  BNE             loc_4DA7B2
4DA79C:  MOVS            R0, #0
4DA79E:  MOVS            R1, #0x59 ; 'Y'; unsigned __int16
4DA7A0:  STRD.W          R0, R0, [SP,#0x88+var_88]; float
4DA7A4:  MOVS            R2, #0; unsigned int
4DA7A6:  STR             R0, [SP,#0x88+var_80]; unsigned __int8
4DA7A8:  MOV             R0, R5; this
4DA7AA:  MOV.W           R3, #0x3F800000; float
4DA7AE:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4DA7B2:  ADD             R0, SP, #0x88+var_50; this
4DA7B4:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4DA7B8:  LDR             R1, =(_ZTV16CEventSoundQuiet_ptr - 0x4DA7C6)
4DA7BA:  MOVS            R2, #0x425C0000
4DA7C0:  STR             R5, [SP,#0x88+var_40]
4DA7C2:  ADD             R1, PC; _ZTV16CEventSoundQuiet_ptr
4DA7C4:  STR             R2, [SP,#0x88+var_3C]
4DA7C6:  MOV.W           R2, #0xFFFFFFFF
4DA7CA:  ADD.W           R9, R0, #0x10
4DA7CE:  LDR             R1, [R1]; `vtable for'CEventSoundQuiet ...
4DA7D0:  MOV             R0, R5; this
4DA7D2:  STR             R2, [SP,#0x88+var_38]
4DA7D4:  MOVS            R2, #0
4DA7D6:  ADDS            R1, #8
4DA7D8:  STRD.W          R2, R2, [SP,#0x88+var_34]
4DA7DC:  STR             R2, [SP,#0x88+var_2C]
4DA7DE:  STR             R1, [SP,#0x88+var_50]
4DA7E0:  MOV             R1, R9; CEntity **
4DA7E2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DA7E6:  LDR             R0, [SP,#0x88+var_38]
4DA7E8:  ADDS            R0, #1
4DA7EA:  BNE             loc_4DA810
4DA7EC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4DA7F4)
4DA7EE:  LDR             R1, [SP,#0x88+var_40]
4DA7F0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4DA7F2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4DA7F4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4DA7F6:  STR             R0, [SP,#0x88+var_38]
4DA7F8:  LDR             R0, [R1,#0x14]
4DA7FA:  ADD.W           R2, R0, #0x30 ; '0'
4DA7FE:  CMP             R0, #0
4DA800:  IT EQ
4DA802:  ADDEQ           R2, R1, #4
4DA804:  VLDR            D16, [R2]
4DA808:  LDR             R0, [R2,#8]
4DA80A:  STR             R0, [SP,#0x88+var_2C]
4DA80C:  VSTR            D16, [SP,#0x88+var_34]
4DA810:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
4DA814:  ADD             R1, SP, #0x88+var_50; CEvent *
4DA816:  MOVS            R2, #0; bool
4DA818:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4DA81C:  LDRB.W          R0, [R10]
4DA820:  SUB.W           R1, R0, #8
4DA824:  CMP             R1, #5
4DA826:  BCS             loc_4DA82C
4DA828:  MOVS            R6, #0x64 ; 'd'
4DA82A:  B               loc_4DA85C
4DA82C:  CMP             R0, #4
4DA82E:  ITT EQ
4DA830:  LDRBEQ.W        R0, [R11]
4DA834:  CMPEQ           R0, #4
4DA836:  BEQ             loc_4DA858
4DA838:  ADDW            R0, R4, #0x544
4DA83C:  VLDR            S0, =100.0
4DA840:  VLDR            S2, [R0]
4DA844:  VSUB.F32        S0, S0, S2
4DA848:  VCVT.S32.F32    S0, S0
4DA84C:  VMOV            R6, S0
4DA850:  B               loc_4DA85C
4DA852:  ALIGN 4
4DA854:  DCFS 50.0
4DA858:  MOV.W           R6, #0xFFFFFFFF
4DA85C:  BLX             rand
4DA860:  UXTH            R0, R0
4DA862:  VLDR            S2, =0.000015259
4DA866:  VMOV            S0, R0
4DA86A:  VCVT.F32.S32    S0, S0
4DA86E:  VMUL.F32        S0, S0, S2
4DA872:  VLDR            S2, =100.0
4DA876:  VMUL.F32        S0, S0, S2
4DA87A:  VCVT.S32.F32    S0, S0
4DA87E:  VMOV            R0, S0
4DA882:  CMP             R6, R0
4DA884:  BLE             loc_4DA950
4DA886:  LDR             R0, [SP,#0x88+var_74]
4DA888:  VLDR            D16, [R0]
4DA88C:  LDR             R0, [R0,#8]
4DA88E:  STR             R0, [SP,#0x88+var_58]
4DA890:  VSTR            D16, [SP,#0x88+var_60]
4DA894:  LDR             R0, [R4,#0x14]
4DA896:  LDR             R1, [R5,#0x14]
4DA898:  ADD.W           R2, R0, #0x30 ; '0'
4DA89C:  CMP             R0, #0
4DA89E:  IT EQ
4DA8A0:  ADDEQ           R2, R4, #4
4DA8A2:  CMP             R1, #0
4DA8A4:  VLDR            S0, [R2]
4DA8A8:  ADD             R0, SP, #0x88+var_6C; this
4DA8AA:  VLDR            S2, [R2,#4]
4DA8AE:  VLDR            S4, [R2,#8]
4DA8B2:  IT NE
4DA8B4:  ADDNE.W         R8, R1, #0x30 ; '0'
4DA8B8:  VLDR            S6, [R8]
4DA8BC:  VLDR            S8, [R8,#4]
4DA8C0:  VLDR            S10, [R8,#8]
4DA8C4:  VSUB.F32        S0, S6, S0
4DA8C8:  VSUB.F32        S2, S8, S2
4DA8CC:  VSUB.F32        S4, S10, S4
4DA8D0:  VSTR            S2, [SP,#0x88+var_68]
4DA8D4:  VSTR            S0, [SP,#0x88+var_6C]
4DA8D8:  VSTR            S4, [SP,#0x88+var_64]
4DA8DC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4DA8E0:  MOV             R0, R4; this
4DA8E2:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4DA8E6:  CMP             R0, #0
4DA8E8:  ITTTT EQ
4DA8EA:  MOVEQ           R0, #0
4DA8EC:  STRDEQ.W        R0, R0, [SP,#0x88+var_6C]
4DA8F0:  MOVEQ.W         R0, #0x40000000
4DA8F4:  STREQ           R0, [SP,#0x88+var_64]
4DA8F6:  LDRB.W          R0, [R10]
4DA8FA:  SUBS            R0, #8
4DA8FC:  UXTB            R0, R0
4DA8FE:  CMP             R0, #4
4DA900:  BHI             loc_4DA938
4DA902:  MOV             R0, R4; this
4DA904:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4DA908:  CMP             R0, #1
4DA90A:  BNE             loc_4DA934
4DA90C:  VMOV.F32        S0, #1.5
4DA910:  VLDR            S2, [SP,#0x88+var_6C]
4DA914:  VLDR            S4, [SP,#0x88+var_68]
4DA918:  VLDR            S6, [SP,#0x88+var_64]
4DA91C:  VMUL.F32        S2, S2, S0
4DA920:  VMUL.F32        S4, S4, S0
4DA924:  VMUL.F32        S0, S6, S0
4DA928:  VSTR            S2, [SP,#0x88+var_6C]
4DA92C:  VSTR            S4, [SP,#0x88+var_68]
4DA930:  VSTR            S0, [SP,#0x88+var_64]
4DA934:  MOVS            R3, #0x10
4DA936:  B               loc_4DA93A
4DA938:  MOVS            R3, #8; int
4DA93A:  LDR             R0, =(g_fx_ptr - 0x4DA948)
4DA93C:  ADD             R1, SP, #0x88+var_60; CVector *
4DA93E:  VLDR            S0, [R4,#0x130]
4DA942:  ADD             R2, SP, #0x88+var_6C; CVector *
4DA944:  ADD             R0, PC; g_fx_ptr
4DA946:  VSTR            S0, [SP,#0x88+var_88]
4DA94A:  LDR             R0, [R0]; g_fx ; this
4DA94C:  BLX             j__ZN4Fx_c8AddBloodER7CVectorS1_if; Fx_c::AddBlood(CVector &,CVector &,int,float)
4DA950:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x4DA956)
4DA952:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
4DA954:  LDR             R1, [R0]; `vtable for'CEventSoundQuiet ...
4DA956:  LDR             R0, [SP,#0x88+var_40]; this
4DA958:  ADDS            R1, #8
4DA95A:  STR             R1, [SP,#0x88+var_50]
4DA95C:  LDR             R1, [SP,#0x88+var_70]
4DA95E:  CMP             R1, #0
4DA960:  IT EQ
4DA962:  MOVEQ           R4, R1
4DA964:  CMP             R0, #0
4DA966:  ITT NE
4DA968:  MOVNE           R1, R9; CEntity **
4DA96A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DA96E:  ADD             R0, SP, #0x88+var_50; this
4DA970:  BLX             j__ZN6CEventD2Ev_0; CEvent::~CEvent()
4DA974:  MOV             R6, R4
4DA976:  MOV             R0, R6
4DA978:  ADD             SP, SP, #0x60 ; '`'
4DA97A:  VPOP            {D8}
4DA97E:  ADD             SP, SP, #4
4DA980:  POP.W           {R8-R11}
4DA984:  POP             {R4-R7,PC}
4DA986:  CMP             R0, #0
4DA988:  BNE.W           loc_4DA614
4DA98C:  BLX             j__ZN10TouchSense8instanceEv; TouchSense::instance(void)
4DA990:  MOVS            R1, #0x14
4DA992:  MOVS            R2, #6
4DA994:  B               loc_4DA60A
