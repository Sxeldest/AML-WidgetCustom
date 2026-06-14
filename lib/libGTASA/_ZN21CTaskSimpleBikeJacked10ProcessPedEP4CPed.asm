; =========================================================
; Game Engine Function: _ZN21CTaskSimpleBikeJacked10ProcessPedEP4CPed
; Address            : 0x505640 - 0x5058D2
; =========================================================

505640:  PUSH            {R4-R7,LR}
505642:  ADD             R7, SP, #0xC
505644:  PUSH.W          {R8-R10}
505648:  SUB             SP, SP, #0x60
50564A:  MOV             R4, R0
50564C:  MOV             R10, R1
50564E:  LDR             R0, [R4,#0x14]
505650:  CMP             R0, #0
505652:  BEQ             loc_5056D6
505654:  LDRB.W          R0, [R10,#0x485]
505658:  LSLS            R0, R0, #0x1F
50565A:  ITT EQ
50565C:  LDREQ           R0, [R4,#0xC]
50565E:  CMPEQ           R0, #0
505660:  BEQ             loc_5056D6
505662:  LDRB            R0, [R4,#8]
505664:  CBZ             R0, loc_5056E2
505666:  LDR             R2, [R4,#0x10]; unsigned int
505668:  MOVS            R6, #1
50566A:  CMP             R2, #0xBF
50566C:  BEQ             loc_5056D8
50566E:  LDR.W           R0, [R10,#0x18]; int
505672:  MOVS            R3, #0x42C80000
505678:  MOVS            R1, #0; int
50567A:  MOVS            R5, #0
50567C:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
505680:  LDR             R1, [R4,#0x14]; this
505682:  MOV.W           R12, #0x37 ; '7'
505686:  LDRD.W          R0, R2, [R4,#0x1C]
50568A:  LDRB.W          R3, [R4,#0x24]
50568E:  STRD.W          R5, R5, [SP,#0x78+var_78]; float
505692:  STRD.W          R12, R5, [SP,#0x78+var_70]; int
505696:  ADD.W           R12, SP, #0x78+var_68
50569A:  STM.W           R12, {R0,R2,R3,R6}
50569E:  ADD             R6, SP, #0x78+var_54
5056A0:  ADD.W           R2, R1, #0x48 ; 'H'; int
5056A4:  ADD.W           R3, R1, #0xE4; int
5056A8:  MOV             R0, R6; int
5056AA:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
5056AE:  LDRB.W          R0, [SP,#0x78+var_1F]
5056B2:  MOV             R1, R6; CEvent *
5056B4:  MOVS            R2, #1; bool
5056B6:  ORR.W           R0, R0, #2
5056BA:  STRB.W          R0, [SP,#0x78+var_1F]
5056BE:  LDR.W           R0, [R10,#0x440]
5056C2:  ADDS            R0, #0x68 ; 'h'; this
5056C4:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5056C8:  MOVS            R0, #0xBF
5056CA:  STR             R0, [R4,#0x10]
5056CC:  MOV             R0, R6; this
5056CE:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
5056D2:  MOVS            R6, #0
5056D4:  B               loc_5056D8
5056D6:  MOVS            R6, #1
5056D8:  MOV             R0, R6
5056DA:  ADD             SP, SP, #0x60 ; '`'
5056DC:  POP.W           {R8-R10}
5056E0:  POP             {R4-R7,PC}
5056E2:  MOV             R0, R10; this
5056E4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5056E8:  CBNZ            R0, loc_5056FC
5056EA:  LDR             R0, [R4,#0x14]; this
5056EC:  MOV             R1, R10; CPed *
5056EE:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
5056F2:  CMP             R0, #1
5056F4:  ITT EQ
5056F6:  MOVEQ           R0, R10; this
5056F8:  BLXEQ           j__ZN4CPed15SetRadioStationEv; CPed::SetRadioStation(void)
5056FC:  MOV             R0, R10; this
5056FE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
505702:  CMP             R0, #1
505704:  BNE             loc_505716
505706:  LDR.W           R0, [R10,#0x590]
50570A:  CMP             R0, #0
50570C:  ITT NE
50570E:  ADDNE.W         R0, R0, #0x13C; this
505712:  BLXNE           j__ZN21CAEVehicleAudioEntity32PlayerAboutToExitVehicleAsDriverEv; CAEVehicleAudioEntity::PlayerAboutToExitVehicleAsDriver(void)
505716:  LDR             R0, [R4,#0xC]
505718:  CMP             R0, #0
50571A:  BNE.W           loc_5058AA
50571E:  LDR             R0, [R4,#0x20]
505720:  CMP             R0, #0
505722:  BEQ.W           loc_505866
505726:  LDR             R0, [R0,#0x18]
505728:  MOVW            R1, #0x16D
50572C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
505730:  CBNZ            R0, loc_50574C
505732:  LDR             R0, [R4,#0x20]
505734:  MOV.W           R1, #0x16C
505738:  LDR             R0, [R0,#0x18]
50573A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
50573E:  CBNZ            R0, loc_50574C
505740:  LDR             R0, [R4,#0x20]
505742:  MOVW            R1, #0x16B
505746:  LDR             R0, [R0,#0x18]
505748:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
50574C:  LDR             R1, [R4,#0x20]
50574E:  CMP             R0, #0
505750:  IT NE
505752:  CMPNE           R1, #0
505754:  BEQ             loc_50576A
505756:  VLDR            S0, =0.3
50575A:  VLDR            S2, [R0,#0x20]
50575E:  VCMPE.F32       S2, S0
505762:  VMRS            APSR_nzcv, FPSCR
505766:  BGT             loc_50576E
505768:  B               loc_5058AA
50576A:  CMP             R1, #0
50576C:  BEQ             loc_505866
50576E:  BLX             rand
505772:  BFC.W           R0, #0xA, #0x16
505776:  MOVW            R9, #0xFFFF
50577A:  CMP.W           R0, #0x200
50577E:  BLS             loc_5057C6
505780:  LDR             R0, [R4,#0x14]
505782:  ADD.W           R0, R0, #0x13C; this
505786:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
50578A:  MOVS            R1, #0
50578C:  CMP             R0, #0
50578E:  STRD.W          R1, R1, [SP,#0x78+var_78]; unsigned __int8
505792:  MOV             R0, R10; this
505794:  STR             R1, [SP,#0x78+var_70]; unsigned __int8
505796:  MOV.W           R1, #0x77 ; 'w'
50579A:  IT EQ
50579C:  MOVEQ           R1, #0x76 ; 'v'; unsigned __int16
50579E:  MOVS            R2, #0; unsigned int
5057A0:  MOV.W           R3, #0x3F800000; float
5057A4:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
5057A8:  UXTH            R0, R0
5057AA:  CMP             R0, R9
5057AC:  BNE             loc_505866
5057AE:  LDR             R0, [R4,#0x14]
5057B0:  LDR.W           R8, [R4,#0x20]
5057B4:  ADD.W           R6, R0, #0x13C
5057B8:  MOV             R0, R6; this
5057BA:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
5057BE:  CMP             R0, #1
5057C0:  BNE             loc_5057EA
5057C2:  MOVS            R1, #0x79 ; 'y'
5057C4:  B               loc_505850
5057C6:  LDR             R0, [R4,#0x14]
5057C8:  LDR.W           R8, [R4,#0x20]
5057CC:  ADD.W           R6, R0, #0x13C
5057D0:  MOV             R0, R6; this
5057D2:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
5057D6:  CMP             R0, #1
5057D8:  BNE             loc_5057DE
5057DA:  MOVS            R1, #0x79 ; 'y'
5057DC:  B               loc_505806
5057DE:  MOV             R0, R6; this
5057E0:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
5057E4:  CBZ             R0, loc_5057F6
5057E6:  MOVS            R1, #0x7C ; '|'
5057E8:  B               loc_505806
5057EA:  MOV             R0, R6; this
5057EC:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
5057F0:  CBZ             R0, loc_505840
5057F2:  MOVS            R1, #0x7C ; '|'
5057F4:  B               loc_505850
5057F6:  ADD.W           R0, R10, #0x298; this
5057FA:  BLX             j__ZN23CAEPedSpeechAudioEntity19IsPedFemaleForAudioEv; CAEPedSpeechAudioEntity::IsPedFemaleForAudio(void)
5057FE:  MOVS            R1, #0x7A ; 'z'
505800:  CMP             R0, #0
505802:  IT EQ
505804:  MOVEQ           R1, #0x7B ; '{'
505806:  MOVS            R6, #0
505808:  UXTH            R1, R1; unsigned __int16
50580A:  MOV             R0, R8; this
50580C:  MOVS            R2, #0; unsigned int
50580E:  MOV.W           R3, #0x3F800000; float
505812:  STRD.W          R6, R6, [SP,#0x78+var_78]; unsigned __int8
505816:  STR             R6, [SP,#0x78+var_70]; unsigned __int8
505818:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
50581C:  UXTH            R0, R0
50581E:  CMP             R0, R9
505820:  BNE             loc_505866
505822:  LDR             R0, [R4,#0x14]
505824:  ADD.W           R0, R0, #0x13C; this
505828:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
50582C:  CMP             R0, #0
50582E:  MOV.W           R1, #0x77 ; 'w'
505832:  STRD.W          R6, R6, [SP,#0x78+var_78]
505836:  MOV             R0, R10
505838:  STR             R6, [SP,#0x78+var_70]
50583A:  IT EQ
50583C:  MOVEQ           R1, #0x76 ; 'v'
50583E:  B               loc_50585C
505840:  ADD.W           R0, R10, #0x298; this
505844:  BLX             j__ZN23CAEPedSpeechAudioEntity19IsPedFemaleForAudioEv; CAEPedSpeechAudioEntity::IsPedFemaleForAudio(void)
505848:  MOVS            R1, #0x7A ; 'z'
50584A:  CMP             R0, #0
50584C:  IT EQ
50584E:  MOVEQ           R1, #0x7B ; '{'
505850:  MOVS            R0, #0
505852:  UXTH            R1, R1; unsigned __int16
505854:  STRD.W          R0, R0, [SP,#0x78+var_78]; unsigned __int8
505858:  STR             R0, [SP,#0x78+var_70]; unsigned __int8
50585A:  MOV             R0, R8; this
50585C:  MOVS            R2, #0; unsigned int
50585E:  MOV.W           R3, #0x3F800000; float
505862:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
505866:  LDR             R0, [R4,#0x14]
505868:  LDR.W           R6, [R10,#0x18]
50586C:  LDR             R1, [R0]
50586E:  LDR.W           R1, [R1,#0xC0]
505872:  BLX             R1
505874:  LDR             R1, [R0]; int
505876:  MOV             R0, R6; int
505878:  MOVS            R2, #0xC9; unsigned int
50587A:  MOV.W           R3, #0x41000000
50587E:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
505882:  LDR             R1, =(_ZN21CTaskSimpleBikeJacked19FinishAnimBikeHitCBEP21CAnimBlendAssociationPv_ptr - 0x50588C)
505884:  MOV             R2, R4; void *
505886:  STR             R0, [R4,#0xC]
505888:  ADD             R1, PC; _ZN21CTaskSimpleBikeJacked19FinishAnimBikeHitCBEP21CAnimBlendAssociationPv_ptr
50588A:  LDR             R1, [R1]; CTaskSimpleBikeJacked::FinishAnimBikeHitCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50588C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
505890:  MOVS            R0, #0
505892:  MOVS            R1, #0x48 ; 'H'; int
505894:  STRD.W          R0, R0, [SP,#0x78+var_78]; CPhysical *
505898:  MOVS            R2, #0; float
50589A:  STRD.W          R0, R0, [SP,#0x78+var_70]; int
50589E:  ADD.W           R0, R10, #0x13C; this
5058A2:  MOV.W           R3, #0x3F800000; float
5058A6:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
5058AA:  LDR             R0, [R4,#0x28]
5058AC:  MOVS            R6, #0
5058AE:  CMP             R0, #0
5058B0:  BNE.W           loc_5056D8
5058B4:  MOVS            R0, #0x1C; unsigned int
5058B6:  BLX             _Znwj; operator new(uint)
5058BA:  STRD.W          R6, R6, [SP,#0x78+var_54]
5058BE:  MOVS            R2, #0; int
5058C0:  STR             R6, [SP,#0x78+var_4C]
5058C2:  MOVS            R3, #0; int
5058C4:  LDR             R1, [R4,#0x18]
5058C6:  STR             R1, [SP,#0x78+var_78]; int
5058C8:  ADD             R1, SP, #0x78+var_54; CVector *
5058CA:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarC2ERK7CVectoriii; CTaskUtilityLineUpPedWithCar::CTaskUtilityLineUpPedWithCar(CVector const&,int,int,int)
5058CE:  STR             R0, [R4,#0x28]
5058D0:  B               loc_5056D8
