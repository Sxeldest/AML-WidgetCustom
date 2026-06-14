; =========================================================
; Game Engine Function: _ZN24CTaskComplexGangFollower17CreateNextSubTaskEP4CPed
; Address            : 0x516660 - 0x5169A2
; =========================================================

516660:  PUSH            {R4-R7,LR}
516662:  ADD             R7, SP, #0xC
516664:  PUSH.W          {R8,R9,R11}
516668:  VPUSH           {D8}
51666C:  SUB             SP, SP, #0x10
51666E:  MOV             R5, R0
516670:  MOV             R4, R1
516672:  LDR             R0, [R5,#0x10]
516674:  MOV             R8, #0xFFFEFFFF
516678:  MOV.W           R9, #0xFFFFFFFF
51667C:  CMP             R0, #0
51667E:  BEQ             loc_516722
516680:  LDR.W           R0, [R4,#0x440]
516684:  LDRB.W          R1, [R5,#0x3D]
516688:  LDR.W           R6, [R0,#0x278]
51668C:  LSLS            R0, R1, #0x1E
51668E:  BPL             loc_516710
516690:  LDR             R0, [R5,#8]
516692:  LDR             R1, [R0]
516694:  LDR             R1, [R1,#0x14]
516696:  BLX             R1
516698:  MOVW            R1, #0x4BA
51669C:  CMP             R0, R1
51669E:  BNE             loc_516710
5166A0:  LDR             R0, [R5,#0xC]
5166A2:  MOV             R1, R4; CPed *
5166A4:  ADDS            R0, #8; this
5166A6:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEP4CPed; CPedGroupMembership::RemoveMember(CPed *)
5166AA:  MOVS            R0, #dword_38; this
5166AC:  LDR.W           R6, [R4,#0x440]
5166B0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5166B4:  MOV             R5, R0
5166B6:  BLX             rand
5166BA:  UXTH            R0, R0
5166BC:  VLDR            S2, =0.000015259
5166C0:  VMOV            S0, R0
5166C4:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x5166D4)
5166C6:  VMOV.F32        S4, #8.0
5166CA:  MOVS            R1, #4; int
5166CC:  VCVT.F32.S32    S0, S0
5166D0:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
5166D2:  MOVW            R3, #0x7530; int
5166D6:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
5166D8:  VMUL.F32        S0, S0, S2
5166DC:  VLDR            S2, [R0]
5166E0:  MOVS            R0, #1
5166E2:  VSTR            S2, [SP,#0x30+var_2C]
5166E6:  VMUL.F32        S0, S0, S4
5166EA:  VCVT.S32.F32    S0, S0
5166EE:  STR             R0, [SP,#0x30+var_30]; bool
5166F0:  VMOV            R0, S0
5166F4:  UXTB            R2, R0; unsigned __int8
5166F6:  MOV             R0, R5; this
5166F8:  BLX             j__ZN22CTaskComplexWanderGangC2Eihibf; CTaskComplexWanderGang::CTaskComplexWanderGang(int,uchar,int,bool,float)
5166FC:  ADDS            R0, R6, #4; this
5166FE:  MOV             R1, R5; CTask *
516700:  MOVS            R2, #4; int
516702:  MOVS            R3, #0; bool
516704:  MOVS            R6, #0
516706:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
51670A:  LDR.W           R0, [R4,#0x484]
51670E:  B               loc_516728
516710:  LDR             R0, =(_ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr - 0x516716)
516712:  ADD             R0, PC; _ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr
516714:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount ...
516716:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount
516718:  CMP             R6, R0
51671A:  BLE             loc_516756
51671C:  LDR             R0, [R5,#0x10]
51671E:  CBNZ            R0, loc_516772
516720:  B               loc_516794
516722:  LDR.W           R0, [R4,#0x484]
516726:  MOVS            R6, #0
516728:  LDR.W           R1, [R4,#0x488]
51672C:  LDR.W           R2, [R4,#0x48C]
516730:  AND.W           R0, R0, R9
516734:  LDR.W           R3, [R4,#0x490]
516738:  AND.W           R1, R1, R9
51673C:  STR.W           R0, [R4,#0x484]
516740:  AND.W           R2, R2, R9
516744:  STR.W           R1, [R4,#0x488]
516748:  AND.W           R3, R3, R8
51674C:  STR.W           R2, [R4,#0x48C]
516750:  STR.W           R3, [R4,#0x490]
516754:  B               loc_5167B0
516756:  LDR             R0, [R5,#8]
516758:  LDR             R1, [R0]
51675A:  LDR             R1, [R1,#0x14]
51675C:  BLX             R1
51675E:  MOVW            R1, #0x38B
516762:  CMP             R0, R1
516764:  BNE             loc_5167BE
516766:  LDR             R0, [R5,#0x10]; this
516768:  LDR.W           R1, [R0,#0x450]
51676C:  CMP             R1, #4
51676E:  BGE             loc_5167BE
516770:  CBZ             R0, loc_516794
516772:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
516776:  CMP             R0, #1
516778:  BNE             loc_516794
51677A:  MOVW            R3, #0x999A
51677E:  MOVS            R0, #0
516780:  STRD.W          R0, R0, [SP,#0x30+var_30]; unsigned __int8
516784:  MOVT            R3, #0x3E99; float
516788:  STR             R0, [SP,#0x30+var_28]; unsigned __int8
51678A:  MOV             R0, R4; this
51678C:  MOVS            R1, #0x5A ; 'Z'; unsigned __int16
51678E:  MOVS            R2, #0; unsigned int
516790:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
516794:  MOVS            R0, #dword_20; this
516796:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51679A:  MOV             R6, R0
51679C:  MOV.W           R0, #0x41000000
5167A0:  STR             R0, [SP,#0x30+var_30]; float
5167A2:  MOV             R0, R6; this
5167A4:  MOV.W           R1, #0x1F4; int
5167A8:  MOVS            R2, #0; bool
5167AA:  MOVS            R3, #0; bool
5167AC:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5167B0:  MOV             R0, R6
5167B2:  ADD             SP, SP, #0x10
5167B4:  VPOP            {D8}
5167B8:  POP.W           {R8,R9,R11}
5167BC:  POP             {R4-R7,PC}
5167BE:  LDR             R0, [R5,#8]
5167C0:  LDR             R1, [R0]
5167C2:  LDR             R1, [R1,#0x14]
5167C4:  BLX             R1
5167C6:  CMP             R0, #0xCB
5167C8:  BEQ             loc_5167D8
5167CA:  LDR             R0, [R5,#8]
5167CC:  LDR             R1, [R0]
5167CE:  LDR             R1, [R1,#0x14]
5167D0:  BLX             R1
5167D2:  CMP.W           R0, #0x1AA
5167D6:  BNE             loc_5168D2
5167D8:  LDRB.W          R0, [R5,#0x3D]
5167DC:  LSLS            R0, R0, #0x1E
5167DE:  BMI             loc_51687A
5167E0:  BLX             rand
5167E4:  UXTH            R0, R0
5167E6:  VLDR            S16, =0.000015259
5167EA:  VMOV            S0, R0
5167EE:  VMOV.F32        S2, #30.0
5167F2:  VCVT.F32.S32    S0, S0
5167F6:  VMUL.F32        S0, S0, S16
5167FA:  VMUL.F32        S0, S0, S2
5167FE:  VCVT.S32.F32    S0, S0
516802:  VMOV            R0, S0
516806:  CMP             R0, #0x14
516808:  BNE             loc_5168AE
51680A:  LDR             R0, [R5,#0xC]
51680C:  ADDS            R0, #8; this
51680E:  BLX             j__ZNK19CPedGroupMembership12CountMembersEv; CPedGroupMembership::CountMembers(void)
516812:  MOV             R6, R0
516814:  BLX             rand
516818:  UXTH            R0, R0
51681A:  VMOV            S2, R6
51681E:  VMOV            S0, R0
516822:  VCVT.F32.S32    S0, S0
516826:  VCVT.F32.S32    S2, S2
51682A:  LDR             R0, [R5,#0xC]
51682C:  ADDS            R0, #8; this
51682E:  VMUL.F32        S0, S0, S16
516832:  VMUL.F32        S0, S0, S2
516836:  VCVT.S32.F32    S0, S0
51683A:  VMOV            R1, S0; int
51683E:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
516842:  MOV             R8, R0
516844:  CMP             R8, R4
516846:  BNE             loc_516852
516848:  LDR             R0, [R5,#0xC]
51684A:  ADDS            R0, #8; this
51684C:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
516850:  MOV             R8, R0
516852:  CMP.W           R8, #0
516856:  BEQ             loc_5168AE
516858:  MOVS            R0, #word_28; this
51685A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51685E:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x516868)
516860:  MOV             R6, R0
516862:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x51686A)
516864:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
516866:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
516868:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
51686A:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
51686C:  LDR             R3, [R1]; float
51686E:  MOV             R1, R8; CEntity *
516870:  LDR             R2, [R0]; float
516872:  MOV             R0, R6; this
516874:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
516878:  B               loc_5167B0
51687A:  MOVS            R0, #off_18; this
51687C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
516880:  MOV             R6, R0
516882:  LDR             R4, [R5,#0x10]
516884:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
516888:  LDR             R0, =(_ZTV23CTaskComplexSignalAtPed_ptr - 0x516894)
51688A:  MOVS            R1, #0
51688C:  STR             R1, [R6,#0x10]
51688E:  CMP             R4, #0
516890:  ADD             R0, PC; _ZTV23CTaskComplexSignalAtPed_ptr
516892:  STRH            R1, [R6,#0x14]
516894:  MOV             R1, R6
516896:  LDR             R0, [R0]; `vtable for'CTaskComplexSignalAtPed ...
516898:  ADD.W           R0, R0, #8
51689C:  STR             R0, [R6]
51689E:  STR.W           R4, [R1,#0xC]!; CEntity **
5168A2:  BEQ.W           loc_5167B0
5168A6:  MOV             R0, R4; this
5168A8:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5168AC:  B               loc_5167B0
5168AE:  MOVS            R0, #off_18; this
5168B0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5168B4:  MOV             R6, R0
5168B6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5168BA:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x5168C6)
5168BC:  MOVS            R1, #0
5168BE:  MOVS            R2, #0x32 ; '2'
5168C0:  STRH            R1, [R6,#0x10]
5168C2:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
5168C4:  STR             R2, [R6,#0x14]
5168C6:  STRD.W          R1, R1, [R6,#8]
5168CA:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
5168CC:  ADDS            R0, #8
5168CE:  STR             R0, [R6]
5168D0:  B               loc_5167B0
5168D2:  LDR             R0, [R5,#8]
5168D4:  LDR             R1, [R0]
5168D6:  LDR             R1, [R1,#0x14]
5168D8:  BLX             R1
5168DA:  MOVW            R1, #0x2C5; unsigned int
5168DE:  CMP             R0, R1
5168E0:  BNE             loc_5168FA
5168E2:  LDR             R0, [R5]
5168E4:  MOV             R1, R4
5168E6:  LDR             R2, [R0,#0x2C]
5168E8:  MOV             R0, R5
5168EA:  ADD             SP, SP, #0x10
5168EC:  VPOP            {D8}
5168F0:  POP.W           {R8,R9,R11}
5168F4:  POP.W           {R4-R7,LR}
5168F8:  BX              R2
5168FA:  LDRB.W          R0, [R5,#0x3D]
5168FE:  LSLS            R0, R0, #0x1D
516900:  BPL.W           loc_516794
516904:  MOVS            R0, #dword_58; this
516906:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51690A:  MOV             R6, R0
51690C:  LDR.W           R8, [R5,#0x10]
516910:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
516914:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x51692A)
516916:  ADR             R2, dword_5169B0
516918:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x51692C)
51691A:  MOV.W           R3, #0x3E8
51691E:  VLD1.64         {D16-D17}, [R2@128]
516922:  ADD.W           R2, R6, #0x18
516926:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
516928:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
51692A:  VST1.32         {D16-D17}, [R2]
51692E:  MOVW            R2, #0xC350
516932:  MOV             R4, R6
516934:  CMP.W           R8, #0
516938:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset> ...
51693A:  STRD.W          R2, R3, [R6,#0x10]
51693E:  MOV.W           R2, #0
516942:  MOV.W           R3, #6
516946:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorXYOffset ...
516948:  STRH            R2, [R6,#0x30]
51694A:  ADD.W           R1, R1, #8
51694E:  STRH            R2, [R6,#0x3C]
516950:  ADD.W           R0, R0, #8
516954:  STRD.W          R2, R2, [R6,#0x28]
516958:  STRD.W          R2, R2, [R6,#0x34]
51695C:  STRD.W          R2, R2, [R6,#0x48]
516960:  STR             R3, [R6,#0x50]
516962:  LDRB.W          R3, [R6,#0x54]
516966:  STR             R1, [R6]
516968:  MOV             R1, R6
51696A:  STR             R0, [R6,#0x40]
51696C:  BIC.W           R0, R3, #0xF
516970:  STRB.W          R0, [R6,#0x54]
516974:  STR.W           R2, [R4,#0x44]!
516978:  STR.W           R8, [R1,#0xC]!; CEntity **
51697C:  BEQ             loc_516988
51697E:  MOV             R0, R8; this
516980:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
516984:  LDRB.W          R0, [R6,#0x54]
516988:  VLDR            D16, [R5,#0x20]
51698C:  ORR.W           R0, R0, #8
516990:  LDR             R1, [R5,#0x28]
516992:  STR             R1, [R4,#8]
516994:  MOVS            R1, #7
516996:  VSTR            D16, [R4]
51699A:  STR             R1, [R6,#0x50]
51699C:  STRB.W          R0, [R6,#0x54]
5169A0:  B               loc_5167B0
