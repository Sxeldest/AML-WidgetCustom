; =========================================================
; Game Engine Function: _ZN18CTaskGangHasslePed14ControlSubTaskEP4CPed
; Address            : 0x51959C - 0x5197C4
; =========================================================

51959C:  PUSH            {R4-R7,LR}
51959E:  ADD             R7, SP, #0xC
5195A0:  PUSH.W          {R8}
5195A4:  VPUSH           {D8}
5195A8:  SUB             SP, SP, #0x10
5195AA:  MOV             R4, R0
5195AC:  MOV             R5, R1
5195AE:  LDR             R0, [R4,#0xC]
5195B0:  CMP             R0, #0
5195B2:  BEQ             loc_519684
5195B4:  LDRB.W          R0, [R4,#0x28]
5195B8:  CBZ             R0, loc_519600
5195BA:  LDRB.W          R0, [R4,#0x29]
5195BE:  CBZ             R0, loc_5195D4
5195C0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5195C8)
5195C2:  MOVS            R1, #0
5195C4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5195C6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5195C8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5195CA:  STRB.W          R1, [R4,#0x29]
5195CE:  STR             R0, [R4,#0x20]
5195D0:  MOV             R1, R0
5195D2:  B               loc_5195DE
5195D4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5195DC)
5195D6:  LDR             R1, [R4,#0x20]
5195D8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5195DA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5195DC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5195DE:  LDR             R2, [R4,#0x24]
5195E0:  ADD             R1, R2
5195E2:  CMP             R1, R0
5195E4:  BHI             loc_519600
5195E6:  LDR             R0, [R4,#0x10]
5195E8:  CMP             R0, #1
5195EA:  BEQ             loc_519600
5195EC:  CMP             R0, #2
5195EE:  BNE             loc_519684
5195F0:  LDR             R0, [R4,#8]
5195F2:  LDR             R1, [R0]
5195F4:  LDR             R1, [R1,#0x14]
5195F6:  BLX             R1
5195F8:  CMP.W           R0, #0x3E8
5195FC:  BNE.W           loc_519746
519600:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x51960C)
519602:  MOV.W           R2, #0x194
519606:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x519610)
519608:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
51960A:  LDRB            R6, [R4,#0x1C]
51960C:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
51960E:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
519610:  LDR             R1, [R1]; CWorld::Players ...
519612:  LDR             R0, [R0]; CWorld::PlayerInFocus
519614:  SMULBB.W        R0, R0, R2
519618:  LDR             R1, [R1,R0]
51961A:  LDR.W           R0, [R1,#0x590]; this
51961E:  CMP             R0, #0
519620:  ITT NE
519622:  LDRNE.W         R1, [R1,#0x484]
519626:  ANDSNE.W        R1, R1, #0x100; char *
51962A:  BEQ             loc_519688
51962C:  VLDR            S0, [R0,#0x48]
519630:  VLDR            S2, [R0,#0x4C]
519634:  VMUL.F32        S0, S0, S0
519638:  VLDR            S4, [R0,#0x50]
51963C:  VMUL.F32        S2, S2, S2
519640:  VMUL.F32        S4, S4, S4
519644:  VADD.F32        S0, S0, S2
519648:  VLDR            S2, =0.04
51964C:  VADD.F32        S0, S0, S4
519650:  VCMPE.F32       S0, S2
519654:  VMRS            APSR_nzcv, FPSCR
519658:  BLE             loc_519688
51965A:  MOVS            R0, #0
51965C:  CBNZ            R6, loc_519694
51965E:  CMP             R0, #1
519660:  BNE             loc_5196B4
519662:  LDR             R0, =(aGangs - 0x519668); "gangs"
519664:  ADD             R0, PC; "gangs"
519666:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51966A:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x519670)
51966C:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
51966E:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
519670:  ADD.W           R1, R1, R0,LSL#5
519674:  LDRB            R1, [R1,#0x10]; int
519676:  CMP             R1, #1
519678:  BNE             loc_5196A8
51967A:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
51967E:  MOVS            R0, #1
519680:  STRB            R0, [R4,#0x1C]
519682:  B               loc_5196BA
519684:  MOVS            R0, #0
519686:  B               loc_5197B8
519688:  BLX             j__ZN10CStreaming10IsVeryBusyEv; CStreaming::IsVeryBusy(void)
51968C:  EOR.W           R0, R0, #1
519690:  CMP             R6, #0
519692:  BEQ             loc_51965E
519694:  CBNZ            R0, loc_5196B4
519696:  LDR             R0, =(aGangs - 0x51969C); "gangs"
519698:  ADD             R0, PC; "gangs"
51969A:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51969E:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
5196A2:  MOVS            R0, #0
5196A4:  STRB            R0, [R4,#0x1C]
5196A6:  B               loc_51978C
5196A8:  MOVW            R1, #0x63E7
5196AC:  ADD             R0, R1; this
5196AE:  MOVS            R1, #8; int
5196B0:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
5196B4:  LDRB            R0, [R4,#0x1C]
5196B6:  CMP             R0, #0
5196B8:  BEQ             loc_51978C
5196BA:  MOV             R0, R5; this
5196BC:  BLX             j__ZN4CPed19IsPlayingHandSignalEv; CPed::IsPlayingHandSignal(void)
5196C0:  CMP             R0, #0
5196C2:  BNE             loc_51978C
5196C4:  LDR.W           R0, [R5,#0x440]
5196C8:  MOVS            R1, #4; int
5196CA:  ADDS            R0, #4; this
5196CC:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5196D0:  CMP             R0, #0
5196D2:  BNE             loc_51978C
5196D4:  BLX             rand
5196D8:  UXTH            R0, R0
5196DA:  VLDR            S16, =0.000015259
5196DE:  VMOV            S0, R0
5196E2:  VLDR            S2, =200.0
5196E6:  VCVT.F32.S32    S0, S0
5196EA:  VMUL.F32        S0, S0, S16
5196EE:  VMUL.F32        S0, S0, S2
5196F2:  VCVT.S32.F32    S0, S0
5196F6:  VMOV            R0, S0
5196FA:  SUB.W           R1, R0, #0x33 ; '3'; unsigned int
5196FE:  CMP             R1, #4
519700:  BHI             loc_519764
519702:  MOVS            R0, #dword_20; this
519704:  LDR.W           R8, [R5,#0x440]
519708:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51970C:  MOV             R6, R0
51970E:  BLX             rand
519712:  UXTH            R0, R0
519714:  VMOV.F32        S2, #8.0
519718:  VMOV            S0, R0
51971C:  MOVS            R0, #0
51971E:  MOVS            R1, #0x34 ; '4'
519720:  MOV.W           R3, #0x40800000
519724:  VCVT.F32.S32    S0, S0
519728:  VMUL.F32        S0, S0, S16
51972C:  VMUL.F32        S0, S0, S2
519730:  VCVT.S32.F32    S0, S0
519734:  STR             R0, [SP,#0x28+var_28]
519736:  VMOV            R0, S0
51973A:  ADDW            R2, R0, #0x117
51973E:  MOV             R0, R6
519740:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
519744:  B               loc_519780
519746:  MOVS            R0, #dword_38; this
519748:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51974C:  LDR             R1, [R4,#0xC]; CPed *
51974E:  MOVS            R3, #0
519750:  MOVS            R2, #1
519752:  STRD.W          R3, R3, [SP,#0x28+var_28]; unsigned int
519756:  STR             R2, [SP,#0x28+var_20]; int
519758:  MOV.W           R2, #0xFFFFFFFF; int
51975C:  MOVS            R3, #0; unsigned int
51975E:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
519762:  B               loc_5197B8
519764:  CMP             R0, #0x64 ; 'd'
519766:  BNE             loc_51978C
519768:  MOVS            R0, #off_18; this
51976A:  LDR.W           R8, [R5,#0x440]
51976E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
519772:  MOV.W           R1, #0xFFFFFFFF
519776:  MOV.W           R2, #0x40800000
51977A:  MOV             R6, R0
51977C:  BLX             j__ZN30CTaskComplexPlayHandSignalAnimC2E11AnimationIdf; CTaskComplexPlayHandSignalAnim::CTaskComplexPlayHandSignalAnim(AnimationId,float)
519780:  ADD.W           R0, R8, #4; this
519784:  MOV             R1, R6; CTask *
519786:  MOVS            R2, #4; int
519788:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
51978C:  LDR             R0, [R4,#0x10]
51978E:  SUBS            R1, R0, #1
519790:  CMP             R1, #2
519792:  BCS             loc_51979E
519794:  LDR             R1, [R4,#0xC]; CPed *
519796:  MOV             R0, R5; this
519798:  BLX             j__ZN22CTaskComplexGangLeader17DoGangAbuseSpeechEP4CPedS1_; CTaskComplexGangLeader::DoGangAbuseSpeech(CPed *,CPed *)
51979C:  B               loc_5197B6
51979E:  CBNZ            R0, loc_5197B6
5197A0:  MOVS            R0, #0
5197A2:  MOVS            R1, #0x56 ; 'V'; unsigned __int16
5197A4:  STRD.W          R0, R0, [SP,#0x28+var_28]; unsigned __int8
5197A8:  MOVS            R2, #0; unsigned int
5197AA:  STR             R0, [SP,#0x28+var_20]; unsigned __int8
5197AC:  MOV             R0, R5; this
5197AE:  MOV.W           R3, #0x3F800000; float
5197B2:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
5197B6:  LDR             R0, [R4,#8]
5197B8:  ADD             SP, SP, #0x10
5197BA:  VPOP            {D8}
5197BE:  POP.W           {R8}
5197C2:  POP             {R4-R7,PC}
