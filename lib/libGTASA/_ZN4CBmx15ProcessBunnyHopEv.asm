; =========================================================
; Game Engine Function: _ZN4CBmx15ProcessBunnyHopEv
; Address            : 0x5697F8 - 0x569A68
; =========================================================

5697F8:  PUSH            {R4-R7,LR}
5697FA:  ADD             R7, SP, #0xC
5697FC:  PUSH.W          {R8,R9,R11}
569800:  MOV             R4, R0
569802:  LDR.W           R0, [R4,#0x464]
569806:  CBZ             R0, loc_569814
569808:  LDR             R0, [R0,#0x18]
56980A:  MOVS            R1, #0xCE
56980C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
569810:  MOV             R5, R0
569812:  B               loc_569816
569814:  MOVS            R5, #0
569816:  LDRB.W          R0, [R4,#0x3A]
56981A:  CMP             R0, #7
56981C:  BHI             loc_5698AA
56981E:  LDR.W           R0, [R4,#0x464]; this
569822:  CMP             R0, #0
569824:  BEQ             loc_5698AA
569826:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
56982A:  CMP             R0, #1
56982C:  BNE             loc_5698AA
56982E:  LDR.W           R0, [R4,#0x464]; this
569832:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
569836:  ADDW            R9, R4, #0x828
56983A:  MOV             R8, R0
56983C:  VLDR            S0, [R9]
569840:  VCMP.F32        S0, #0.0
569844:  VMRS            APSR_nzcv, FPSCR
569848:  BNE             loc_56988E
56984A:  MOV             R0, R8; this
56984C:  BLX             j__ZN4CPad15GetBunnyHopDownEv; CPad::GetBunnyHopDown(void)
569850:  CMP             R0, #1
569852:  BNE             loc_56988E
569854:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x569864)
569856:  MOVS            R2, #0xCE; unsigned int
569858:  VLDR            S0, [R9]
56985C:  MOV.W           R3, #0x41000000
569860:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
569862:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
569864:  VLDR            S2, [R0]
569868:  VADD.F32        S0, S2, S0
56986C:  VSTR            S0, [R9]
569870:  LDR.W           R0, [R4,#0x464]
569874:  LDR.W           R1, [R4,#0x654]; int
569878:  LDR             R0, [R0,#0x18]; int
56987A:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
56987E:  MOVS            R1, #0; float
569880:  MOV             R5, R0
569882:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
569886:  LDRH            R0, [R5,#0x2E]
569888:  BIC.W           R0, R0, #1
56988C:  STRH            R0, [R5,#0x2E]
56988E:  MOV             R0, R8; this
569890:  BLX             j__ZN4CPad11GetBunnyHopEv; CPad::GetBunnyHop(void)
569894:  MOV             R6, R0
569896:  CBNZ            R6, loc_5698C4
569898:  VLDR            S0, [R9]
56989C:  VCMPE.F32       S0, #0.0
5698A0:  VMRS            APSR_nzcv, FPSCR
5698A4:  BGT             loc_5698C4
5698A6:  CBNZ            R5, loc_5698DC
5698A8:  B               loc_5698BE
5698AA:  CMP             R5, #0
5698AC:  ITTTT NE
5698AE:  LDRHNE          R0, [R5,#0x2E]
5698B0:  MOVNE.W         R1, #0xC1000000
5698B4:  STRNE           R1, [R5,#0x1C]
5698B6:  ORRNE.W         R0, R0, #5
5698BA:  IT NE
5698BC:  STRHNE          R0, [R5,#0x2E]
5698BE:  POP.W           {R8,R9,R11}
5698C2:  POP             {R4-R7,PC}
5698C4:  MOVS            R0, #dword_20; this
5698C6:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
5698CA:  LDRH.W          R0, [R8,#0x110]
5698CE:  CMP             R0, #0
5698D0:  BEQ             loc_569970
5698D2:  MOVS            R0, #0
5698D4:  STR.W           R0, [R9]
5698D8:  CMP             R5, #0
5698DA:  BEQ             loc_5698BE
5698DC:  LDRH            R0, [R5,#0x2E]
5698DE:  MOV.W           R1, #0xC1000000
5698E2:  STR             R1, [R5,#0x1C]
5698E4:  ORR.W           R0, R0, #5
5698E8:  STRH            R0, [R5,#0x2E]
5698EA:  VMOV.F32        S0, #0.5
5698EE:  VLDR            S2, [R5,#0x18]
5698F2:  VCMPE.F32       S2, S0
5698F6:  VMRS            APSR_nzcv, FPSCR
5698FA:  BLE             loc_5698BE
5698FC:  MOVS            R5, #0
5698FE:  MOV.W           R0, #0xFFFFFFFF; int
569902:  STR.W           R5, [R4,#0x4A0]
569906:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
56990A:  LDR.W           R0, [R0,#0x444]
56990E:  STR             R5, [R0,#0x1C]
569910:  LDRB.W          R0, [R4,#0x42C]
569914:  LSLS            R0, R0, #0x1A
569916:  BMI             loc_5698BE
569918:  VMOV.F32        S0, #1.0
56991C:  ADDW            R0, R4, #0x724
569920:  VLDR            S2, [R0]
569924:  VCMPE.F32       S2, S0
569928:  VMRS            APSR_nzcv, FPSCR
56992C:  BLT             loc_569964
56992E:  ADD.W           R0, R4, #0x728
569932:  VLDR            S2, [R0]
569936:  VCMPE.F32       S2, S0
56993A:  VMRS            APSR_nzcv, FPSCR
56993E:  BLT             loc_569964
569940:  ADDW            R0, R4, #0x72C
569944:  VLDR            S2, [R0]
569948:  VCMPE.F32       S2, S0
56994C:  VMRS            APSR_nzcv, FPSCR
569950:  BLT             loc_569964
569952:  ADD.W           R0, R4, #0x730
569956:  VLDR            S2, [R0]
56995A:  VCMPE.F32       S2, S0
56995E:  VMRS            APSR_nzcv, FPSCR
569962:  BGE             loc_5698BE
569964:  MOVS            R0, #1
569966:  STRB.W          R0, [R4,#0x848]
56996A:  POP.W           {R8,R9,R11}
56996E:  POP             {R4-R7,PC}
569970:  CBZ             R6, loc_5699B4
569972:  LDR.W           R0, [R4,#0x464]
569976:  MOVS            R2, #0xCE; unsigned int
569978:  LDR.W           R1, [R4,#0x654]; int
56997C:  MOV.W           R3, #0x41000000
569980:  LDR             R0, [R0,#0x18]; int
569982:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
569986:  MOVS            R1, #0; float
569988:  MOV             R5, R0
56998A:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
56998E:  LDRH            R0, [R5,#0x2E]
569990:  MOV             R1, #0x3E4CCCCD; float
569998:  BIC.W           R0, R0, #1
56999C:  STRH            R0, [R5,#0x2E]
56999E:  MOVS            R0, #0x41C80000
5699A4:  STR.W           R0, [R9]
5699A8:  MOV             R0, R5; this
5699AA:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
5699AE:  CMP             R5, #0
5699B0:  BNE             loc_5698EA
5699B2:  B               loc_5698BE
5699B4:  CBZ             R5, loc_5699FE
5699B6:  MOV             R0, R8; this
5699B8:  BLX             j__ZN4CPad15GetBunnyHopDownEv; CPad::GetBunnyHopDown(void)
5699BC:  LDRH            R1, [R5,#0x2E]
5699BE:  CMP             R0, #1
5699C0:  IT EQ
5699C2:  ANDSEQ.W        R0, R1, #1
5699C6:  BNE             loc_569A0A
5699C8:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5699D6)
5699CA:  VMOV.F32        S4, #25.0
5699CE:  VLDR            S0, [R9]
5699D2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5699D4:  VLDR            S6, =0.2
5699D8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5699DA:  VLDR            S2, [R0]
5699DE:  MOV             R0, R5; this
5699E0:  VADD.F32        S0, S2, S0
5699E4:  VMIN.F32        D0, D0, D2
5699E8:  VMUL.F32        S2, S0, S6
5699EC:  VSTR            S0, [R9]
5699F0:  VDIV.F32        S2, S2, S4
5699F4:  VMOV            R1, S2; float
5699F8:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
5699FC:  B               loc_5698EA
5699FE:  MOVS            R0, #0
569A00:  STR.W           R0, [R9]
569A04:  POP.W           {R8,R9,R11}
569A08:  POP             {R4-R7,PC}
569A0A:  LSLS            R0, R1, #0x1F
569A0C:  BNE.W           loc_5698EA
569A10:  VLDR            S0, =0.2
569A14:  VLDR            S2, [R5,#0x20]
569A18:  VCMPE.F32       S2, S0
569A1C:  VMRS            APSR_nzcv, FPSCR
569A20:  BGE             loc_569A4C
569A22:  VSUB.F32        S2, S0, S2
569A26:  LDR             R0, [R5,#0x14]
569A28:  VLDR            S4, =-0.2
569A2C:  VLDR            S6, [R0,#0x10]
569A30:  MOV             R0, R5; this
569A32:  VADD.F32        S4, S6, S4
569A36:  VDIV.F32        S2, S2, S0
569A3A:  VMUL.F32        S2, S2, S4
569A3E:  VADD.F32        S0, S2, S0
569A42:  VMOV            R1, S0; float
569A46:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
569A4A:  LDRH            R1, [R5,#0x2E]
569A4C:  LDR             R0, =(_ZN4CBmx16LaunchBunnyHopCBEP21CAnimBlendAssociationPv_ptr - 0x569A5C)
569A4E:  ORR.W           R1, R1, #1
569A52:  STRH            R1, [R5,#0x2E]
569A54:  MOV.W           R1, #0x3FC00000
569A58:  ADD             R0, PC; _ZN4CBmx16LaunchBunnyHopCBEP21CAnimBlendAssociationPv_ptr
569A5A:  STR             R1, [R5,#0x24]
569A5C:  MOV             R2, R4; void *
569A5E:  LDR             R1, [R0]; CBmx::LaunchBunnyHopCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
569A60:  MOV             R0, R5; this
569A62:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
569A66:  B               loc_5698EA
