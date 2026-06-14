; =========================================================
; Game Engine Function: _ZN34CTaskComplexInvestigateDisturbance18CreateFirstSubTaskEP4CPed
; Address            : 0x526684 - 0x526870
; =========================================================

526684:  PUSH            {R4-R7,LR}
526686:  ADD             R7, SP, #0xC
526688:  PUSH.W          {R8,R9,R11}
52668C:  SUB             SP, SP, #0x30
52668E:  MOV             R5, R1
526690:  MOV             R4, R0
526692:  LDR.W           R0, [R5,#0x440]
526696:  ADDS            R0, #0x38 ; '8'; this
526698:  BLX             j__ZNK20CEventHandlerHistory15GetCurrentEventEv; CEventHandlerHistory::GetCurrentEvent(void)
52669C:  MOV             R6, R0
52669E:  CMP             R6, #0
5266A0:  BEQ             loc_526730
5266A2:  LDR             R0, [R6]
5266A4:  LDR             R1, [R0,#8]
5266A6:  MOV             R0, R6
5266A8:  BLX             R1
5266AA:  CMP             R0, #0x3E ; '>'
5266AC:  BNE             loc_5266DE
5266AE:  BLX             rand
5266B2:  VMOV            S0, R0
5266B6:  VLDR            S2, =4.6566e-10
5266BA:  VCVT.F32.S32    S0, S0
5266BE:  VMUL.F32        S0, S0, S2
5266C2:  VLDR            S2, =0.0
5266C6:  VADD.F32        S0, S0, S2
5266CA:  VLDR            S2, =0.2
5266CE:  VCMPE.F32       S0, S2
5266D2:  VMRS            APSR_nzcv, FPSCR
5266D6:  BLT             loc_526714
5266D8:  MOVS            R0, #0
5266DA:  MOVS            R1, #0xCA
5266DC:  B               loc_52671E
5266DE:  LDR             R0, [R6]
5266E0:  LDR             R1, [R0,#8]
5266E2:  MOV             R0, R6
5266E4:  BLX             R1
5266E6:  CMP             R0, #0x3F ; '?'
5266E8:  BNE             loc_526730
5266EA:  BLX             rand
5266EE:  VMOV            S0, R0
5266F2:  VLDR            S2, =4.6566e-10
5266F6:  VCVT.F32.S32    S0, S0
5266FA:  VMUL.F32        S0, S0, S2
5266FE:  VLDR            S2, =0.0
526702:  VADD.F32        S0, S0, S2
526706:  VLDR            S2, =0.2
52670A:  VCMPE.F32       S0, S2
52670E:  VMRS            APSR_nzcv, FPSCR
526712:  BGE             loc_52671A
526714:  MOVS            R0, #0
526716:  MOVS            R1, #0xCC
526718:  B               loc_52671E
52671A:  MOVS            R0, #0
52671C:  MOVS            R1, #0xCB; unsigned __int16
52671E:  STRD.W          R0, R0, [SP,#0x48+var_48]; unsigned __int8
526722:  STR             R0, [SP,#0x48+var_40]; unsigned __int8
526724:  MOV             R0, R5; this
526726:  MOVS            R2, #0; unsigned int
526728:  MOV.W           R3, #0x3F800000; float
52672C:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
526730:  LDR             R0, [R5,#0x14]
526732:  VLDR            S0, [R4,#0xC]
526736:  ADD.W           R1, R0, #0x30 ; '0'
52673A:  CMP             R0, #0
52673C:  VLDR            S2, [R4,#0x10]
526740:  ADD             R0, SP, #0x48+var_24; this
526742:  VLDR            S4, [R4,#0x14]
526746:  IT EQ
526748:  ADDEQ           R1, R5, #4
52674A:  VLDR            S6, [R1]
52674E:  VLDR            S8, [R1,#4]
526752:  VLDR            S10, [R1,#8]
526756:  VSUB.F32        S0, S0, S6
52675A:  VSUB.F32        S2, S2, S8
52675E:  VSUB.F32        S4, S4, S10
526762:  VSTR            S2, [SP,#0x48+var_20]
526766:  VSTR            S0, [SP,#0x48+var_24]
52676A:  VSTR            S4, [SP,#0x48+var_1C]
52676E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
526772:  LDR             R0, [R5,#0x14]
526774:  ADD.W           R9, R4, #0xC
526778:  VLDR            S0, [SP,#0x48+var_24]
52677C:  VLDR            S2, [SP,#0x48+var_20]
526780:  VLDR            S6, [R0,#0x10]
526784:  VLDR            S8, [R0,#0x14]
526788:  VMUL.F32        S0, S0, S6
52678C:  VLDR            S4, [SP,#0x48+var_1C]
526790:  VMUL.F32        S2, S2, S8
526794:  VLDR            S10, [R0,#0x18]
526798:  VMUL.F32        S4, S4, S10
52679C:  VADD.F32        S0, S0, S2
5267A0:  VLDR            S2, =0.707
5267A4:  VADD.F32        S0, S0, S4
5267A8:  VCMPE.F32       S0, S2
5267AC:  VMRS            APSR_nzcv, FPSCR
5267B0:  BGE             loc_5267EE
5267B2:  LDR.W           R12, =(g_ikChainMan_ptr - 0x5267C4)
5267B6:  MOV.W           R2, #0xFFFFFFFF
5267BA:  MOVW            R3, #0x1388
5267BE:  MOVS            R1, #0
5267C0:  ADD             R12, PC; g_ikChainMan_ptr
5267C2:  STRD.W          R3, R2, [SP,#0x48+var_48]; int
5267C6:  MOV.W           LR, #3
5267CA:  MOV.W           R8, #0x1F4
5267CE:  MOV.W           R0, #0x3E800000
5267D2:  ADD             R2, SP, #0x48+var_38
5267D4:  STRD.W          R9, R1, [SP,#0x48+var_40]; int
5267D8:  MOVS            R3, #0; int
5267DA:  STM.W           R2, {R0,R8,LR}
5267DE:  MOV             R2, R5; CPed *
5267E0:  LDR.W           R0, [R12]; g_ikChainMan ; int
5267E4:  STR             R1, [SP,#0x48+var_2C]; int
5267E6:  ADR             R1, aTaskinvdisturb; "TaskInvDisturb"
5267E8:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
5267EC:  B               loc_5267FA
5267EE:  LDR.W           R0, [R5,#0x440]; this
5267F2:  MOVW            R1, #0x1388; unsigned __int16
5267F6:  BLX             j__ZN16CPedIntelligence20SetTaskDuckSecondaryEt; CPedIntelligence::SetTaskDuckSecondary(ushort)
5267FA:  MOVS            R0, #word_28; this
5267FC:  LDR             R6, [R4,#0x18]
5267FE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
526802:  MOV             R5, R0
526804:  CBZ             R6, loc_526830
526806:  MOV             R0, R5; this
526808:  LDR             R4, [R4,#0x18]
52680A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52680E:  LDR             R0, =(_ZTV35CTaskComplexTurnToFaceEntityOrCoord_ptr - 0x52681A)
526810:  MOVS            R1, #1
526812:  STRB            R1, [R5,#0x10]
526814:  MOV             R1, R5
526816:  ADD             R0, PC; _ZTV35CTaskComplexTurnToFaceEntityOrCoord_ptr
526818:  CMP             R4, #0
52681A:  LDR             R0, [R0]; `vtable for'CTaskComplexTurnToFaceEntityOrCoord ...
52681C:  ADD.W           R0, R0, #8
526820:  STR             R0, [R5]
526822:  STR.W           R4, [R1,#0xC]!; CEntity **
526826:  BEQ             loc_526854
526828:  MOV             R0, R4; this
52682A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
52682E:  B               loc_526854
526830:  MOV             R0, R5; this
526832:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
526836:  LDR             R0, =(_ZTV35CTaskComplexTurnToFaceEntityOrCoord_ptr - 0x526840)
526838:  MOVS            R1, #0
52683A:  STR             R1, [R5,#0xC]
52683C:  ADD             R0, PC; _ZTV35CTaskComplexTurnToFaceEntityOrCoord_ptr
52683E:  STRB            R1, [R5,#0x10]
526840:  LDR             R0, [R0]; `vtable for'CTaskComplexTurnToFaceEntityOrCoord ...
526842:  ADDS            R0, #8
526844:  STR             R0, [R5]
526846:  VLDR            D16, [R9]
52684A:  LDR.W           R0, [R9,#8]
52684E:  STR             R0, [R5,#0x1C]
526850:  VSTR            D16, [R5,#0x14]
526854:  MOVW            R0, #0xCCCD
526858:  MOVS            R1, #0
52685A:  MOVT            R0, #0x3E4C
52685E:  MOVT            R1, #0x4040
526862:  STRD.W          R1, R0, [R5,#0x20]
526866:  MOV             R0, R5
526868:  ADD             SP, SP, #0x30 ; '0'
52686A:  POP.W           {R8,R9,R11}
52686E:  POP             {R4-R7,PC}
