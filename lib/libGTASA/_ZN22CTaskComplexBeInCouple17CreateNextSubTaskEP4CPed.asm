; =========================================================
; Game Engine Function: _ZN22CTaskComplexBeInCouple17CreateNextSubTaskEP4CPed
; Address            : 0x536730 - 0x536868
; =========================================================

536730:  PUSH            {R4-R7,LR}
536732:  ADD             R7, SP, #0xC
536734:  PUSH.W          {R11}
536738:  SUB             SP, SP, #8; float
53673A:  MOV             R5, R0
53673C:  MOV             R4, R1
53673E:  LDR             R0, [R5,#0x10]
536740:  CMP             R0, #0
536742:  BEQ             loc_5367E8
536744:  LDR             R0, =(g_ikChainMan_ptr - 0x536750)
536746:  MOVS            R1, #0; int
536748:  MOV             R2, R4; CPed *
53674A:  LDRB            R6, [R5,#0x14]
53674C:  ADD             R0, PC; g_ikChainMan_ptr
53674E:  LDR             R0, [R0]; g_ikChainMan ; this
536750:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536754:  CBZ             R0, loc_536766
536756:  LDR             R0, =(g_ikChainMan_ptr - 0x536762)
536758:  MOVS            R1, #0; int
53675A:  MOV             R2, R4; CPed *
53675C:  MOVS            R3, #0xFA; int
53675E:  ADD             R0, PC; g_ikChainMan_ptr
536760:  LDR             R0, [R0]; g_ikChainMan ; this
536762:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
536766:  LDR             R0, =(g_ikChainMan_ptr - 0x536770)
536768:  MOVS            R1, #1; int
53676A:  MOV             R2, R4; CPed *
53676C:  ADD             R0, PC; g_ikChainMan_ptr
53676E:  LDR             R0, [R0]; g_ikChainMan ; this
536770:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536774:  CBZ             R0, loc_536786
536776:  LDR             R0, =(g_ikChainMan_ptr - 0x536782)
536778:  MOVS            R1, #1; int
53677A:  MOV             R2, R4; CPed *
53677C:  MOVS            R3, #0xFA; int
53677E:  ADD             R0, PC; g_ikChainMan_ptr
536780:  LDR             R0, [R0]; g_ikChainMan ; this
536782:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
536786:  CMP             R6, #0
536788:  BEQ             loc_53682C
53678A:  MOVS            R0, #dword_38; this
53678C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
536790:  MOV             R4, R0
536792:  BLX             rand
536796:  UXTH            R0, R0
536798:  VLDR            S2, =0.000015259
53679C:  VMOV            S0, R0
5367A0:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x5367B0)
5367A2:  VMOV.F32        S4, #8.0
5367A6:  MOVS            R1, #4; int
5367A8:  VCVT.F32.S32    S0, S0
5367AC:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
5367AE:  MOVS            R3, #1; bool
5367B0:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
5367B2:  VMUL.F32        S0, S0, S2
5367B6:  VLDR            S2, [R0]
5367BA:  VMUL.F32        S0, S0, S4
5367BE:  VCVT.S32.F32    S0, S0
5367C2:  VSTR            S2, [SP,#0x18+var_18]
5367C6:  VMOV            R0, S0
5367CA:  UXTB            R2, R0; unsigned __int8
5367CC:  MOV             R0, R4; this
5367CE:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
5367D2:  LDR             R0, =(_ZTV26CTaskComplexWanderStandard_ptr - 0x5367DC)
5367D4:  MOVS            R1, #0
5367D6:  STRH            R1, [R4,#0x30]
5367D8:  ADD             R0, PC; _ZTV26CTaskComplexWanderStandard_ptr
5367DA:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderStandard ...
5367DC:  ADDS            R0, #8
5367DE:  STR             R0, [R4]
5367E0:  STR             R1, [R4,#0x34]
5367E2:  STRD.W          R1, R1, [R4,#0x28]
5367E6:  B               loc_53685E
5367E8:  LDR             R0, =(g_ikChainMan_ptr - 0x5367F2)
5367EA:  MOVS            R1, #0; int
5367EC:  MOV             R2, R4; CPed *
5367EE:  ADD             R0, PC; g_ikChainMan_ptr
5367F0:  LDR             R0, [R0]; g_ikChainMan ; this
5367F2:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
5367F6:  CBZ             R0, loc_536808
5367F8:  LDR             R0, =(g_ikChainMan_ptr - 0x536804)
5367FA:  MOVS            R1, #0; int
5367FC:  MOV             R2, R4; CPed *
5367FE:  MOVS            R3, #0xFA; int
536800:  ADD             R0, PC; g_ikChainMan_ptr
536802:  LDR             R0, [R0]; g_ikChainMan ; this
536804:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
536808:  LDR             R0, =(g_ikChainMan_ptr - 0x536812)
53680A:  MOVS            R1, #1; int
53680C:  MOV             R2, R4; CPed *
53680E:  ADD             R0, PC; g_ikChainMan_ptr
536810:  LDR             R0, [R0]; g_ikChainMan ; this
536812:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536816:  CBZ             R0, loc_536828
536818:  LDR             R0, =(g_ikChainMan_ptr - 0x536824)
53681A:  MOVS            R1, #1; int
53681C:  MOV             R2, R4; CPed *
53681E:  MOVS            R3, #0xFA; int
536820:  ADD             R0, PC; g_ikChainMan_ptr
536822:  LDR             R0, [R0]; g_ikChainMan ; this
536824:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
536828:  MOVS            R4, #0
53682A:  B               loc_53685E
53682C:  MOVS            R0, #dword_20; this
53682E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
536832:  LDR             R6, [R5,#0x10]
536834:  MOV             R4, R0
536836:  LDR             R5, [R5,#0x18]
536838:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
53683C:  LDR             R0, =(_ZTV28CTaskComplexWalkAlongsidePed_ptr - 0x536848)
53683E:  MOVS            R1, #0
536840:  STRD.W          R5, R1, [R4,#0x10]
536844:  ADD             R0, PC; _ZTV28CTaskComplexWalkAlongsidePed_ptr
536846:  STRD.W          R1, R1, [R4,#0x18]
53684A:  MOV             R1, R4
53684C:  LDR             R0, [R0]; `vtable for'CTaskComplexWalkAlongsidePed ...
53684E:  ADDS            R0, #8
536850:  STR             R0, [R4]
536852:  STR.W           R6, [R1,#0xC]!; CEntity **
536856:  MOV             R0, R6; this
536858:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53685C:  STR             R5, [R4,#0x10]
53685E:  MOV             R0, R4
536860:  ADD             SP, SP, #8
536862:  POP.W           {R11}
536866:  POP             {R4-R7,PC}
