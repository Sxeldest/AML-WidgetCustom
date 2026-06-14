; =========================================================
; Game Engine Function: _ZN18CTaskSimpleChoking10ProcessPedEP4CPed
; Address            : 0x4DF7F4 - 0x4DF9E2
; =========================================================

4DF7F4:  PUSH            {R4-R7,LR}
4DF7F6:  ADD             R7, SP, #0xC
4DF7F8:  PUSH.W          {R11}
4DF7FC:  VPUSH           {D8-D9}
4DF800:  SUB             SP, SP, #0x10
4DF802:  MOV             R5, R0
4DF804:  MOV             R4, R1
4DF806:  LDRB            R0, [R5,#0x19]
4DF808:  CBZ             R0, loc_4DF80E
4DF80A:  MOVS            R5, #1
4DF80C:  B               loc_4DF9D4
4DF80E:  LDR             R0, [R5,#8]
4DF810:  CBZ             R0, loc_4DF822
4DF812:  MOV             R0, R4; this
4DF814:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DF818:  CMP             R0, #0
4DF81A:  ITT EQ
4DF81C:  LDRBEQ          R0, [R5,#0x18]
4DF81E:  CMPEQ           R0, #0
4DF820:  BEQ             loc_4DF912
4DF822:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4DF82C)
4DF824:  VLDR            S0, =50.0
4DF828:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4DF82A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4DF82C:  VLDR            S2, [R0]
4DF830:  LDRD.W          R0, R1, [R5,#0xC]; this
4DF834:  VDIV.F32        S0, S2, S0
4DF838:  VLDR            S2, =1000.0
4DF83C:  VMUL.F32        S0, S0, S2
4DF840:  VCVT.U32.F32    S0, S0
4DF844:  VMOV            R2, S0
4DF848:  SUBS            R1, R1, R2
4DF84A:  IT LS
4DF84C:  MOVLS           R1, #0
4DF84E:  CMP             R0, #0
4DF850:  STR             R1, [R5,#0x10]
4DF852:  BEQ             loc_4DF8CA
4DF854:  CMP             R1, #0
4DF856:  BNE.W           loc_4DF9BC
4DF85A:  LDRH            R1, [R0,#0x2C]
4DF85C:  CMP             R1, #0x15
4DF85E:  BNE.W           loc_4DF984
4DF862:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DF86A)
4DF864:  MOVS            R2, #0; void *
4DF866:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DF868:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DF86A:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DF86E:  LDR             R0, [R4,#0x18]; int
4DF870:  MOVS            R1, #0; int
4DF872:  MOVS            R2, #0xA; unsigned int
4DF874:  MOV.W           R3, #0x40800000
4DF878:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DF87C:  LDR             R1, =(_ZN18CTaskSimpleChoking17DeleteAnimChokeCBEP21CAnimBlendAssociationPv_ptr - 0x4DF886)
4DF87E:  MOV             R2, R5; void *
4DF880:  STR             R0, [R5,#0xC]
4DF882:  ADD             R1, PC; _ZN18CTaskSimpleChoking17DeleteAnimChokeCBEP21CAnimBlendAssociationPv_ptr
4DF884:  LDR             R1, [R1]; CTaskSimpleChoking::DeleteAnimChokeCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DF886:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DF88A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4DF892)
4DF88C:  LDR             R1, [R5,#0x14]
4DF88E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4DF890:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4DF892:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4DF894:  SUBS            R6, R0, R1
4DF896:  STR             R6, [R5,#0x10]
4DF898:  BLX             rand
4DF89C:  UXTH            R0, R0
4DF89E:  VLDR            S16, =0.000015259
4DF8A2:  VMOV            S0, R0
4DF8A6:  VLDR            S18, =4000.0
4DF8AA:  VCVT.F32.S32    S0, S0
4DF8AE:  VMUL.F32        S0, S0, S16
4DF8B2:  VMUL.F32        S0, S0, S18
4DF8B6:  VCVT.S32.F32    S0, S0
4DF8BA:  VMOV            R0, S0
4DF8BE:  ADD.W           R0, R0, #0x1F40
4DF8C2:  CMP             R6, R0
4DF8C4:  BCS             loc_4DF998
4DF8C6:  LDR             R0, [R5,#0x10]
4DF8C8:  B               loc_4DF9BA
4DF8CA:  LDR             R0, [R4,#0x18]; int
4DF8CC:  MOVS            R1, #0; int
4DF8CE:  MOVS            R2, #0x15; unsigned int
4DF8D0:  MOV.W           R3, #0x40800000
4DF8D4:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DF8D8:  LDR             R1, =(_ZN18CTaskSimpleChoking17DeleteAnimChokeCBEP21CAnimBlendAssociationPv_ptr - 0x4DF8E2)
4DF8DA:  MOV             R2, R5; void *
4DF8DC:  STR             R0, [R5,#0xC]
4DF8DE:  ADD             R1, PC; _ZN18CTaskSimpleChoking17DeleteAnimChokeCBEP21CAnimBlendAssociationPv_ptr
4DF8E0:  LDR             R1, [R1]; CTaskSimpleChoking::DeleteAnimChokeCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DF8E2:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DF8E6:  LDR             R5, [R5,#0xC]
4DF8E8:  BLX             rand
4DF8EC:  VMOV            S0, R0
4DF8F0:  VLDR            S2, =4.6566e-10
4DF8F4:  VMOV.F32        S4, #0.25
4DF8F8:  VCVT.F32.S32    S0, S0
4DF8FC:  VMUL.F32        S0, S0, S2
4DF900:  VMOV.F32        S2, #0.75
4DF904:  VMUL.F32        S0, S0, S4
4DF908:  VADD.F32        S0, S0, S2
4DF90C:  VSTR            S0, [R5,#0x24]
4DF910:  B               loc_4DF9BC
4DF912:  LDR.W           R12, [R5,#8]
4DF916:  LDR             R1, [R4,#0x14]
4DF918:  LDR.W           R2, [R12,#0x14]
4DF91C:  ADD.W           R3, R1, #0x30 ; '0'
4DF920:  CMP             R1, #0
4DF922:  IT EQ
4DF924:  ADDEQ           R3, R4, #4
4DF926:  ADD.W           R0, R2, #0x30 ; '0'
4DF92A:  CMP             R2, #0
4DF92C:  VLDR            S0, [R3]
4DF930:  IT EQ
4DF932:  ADDEQ.W         R0, R12, #4
4DF936:  VLDR            D16, [R3,#4]
4DF93A:  VLDR            S2, [R0]
4DF93E:  VLDR            D17, [R0,#4]
4DF942:  VSUB.F32        S0, S2, S0
4DF946:  VLDR            S2, [R1,#0x10]
4DF94A:  VMUL.F32        S4, S0, S2
4DF94E:  VSUB.F32        D1, D17, D16
4DF952:  VLDR            D16, [R1,#0x14]
4DF956:  VMUL.F32        D3, D1, D16
4DF95A:  VADD.F32        S4, S4, S6
4DF95E:  VADD.F32        S4, S4, S7
4DF962:  VCMPE.F32       S4, #0.0
4DF966:  VMRS            APSR_nzcv, FPSCR
4DF96A:  BLE.W           loc_4DF822
4DF96E:  VMOV            R0, S0
4DF972:  VMOV            R1, S2; x
4DF976:  EOR.W           R0, R0, #0x80000000; y
4DF97A:  BLX             atan2f
4DF97E:  STR.W           R0, [R4,#0x560]
4DF982:  B               loc_4DF822
4DF984:  MOVS            R1, #0xC0800000
4DF98A:  STR             R1, [R0,#0x1C]
4DF98C:  LDR             R0, [R5,#0xC]
4DF98E:  LDRH            R1, [R0,#0x2E]
4DF990:  ORR.W           R1, R1, #4
4DF994:  STRH            R1, [R0,#0x2E]
4DF996:  B               loc_4DF9BC
4DF998:  BLX             rand
4DF99C:  UXTH            R0, R0
4DF99E:  VMOV            S0, R0
4DF9A2:  VCVT.F32.S32    S0, S0
4DF9A6:  VMUL.F32        S0, S0, S16
4DF9AA:  VMUL.F32        S0, S0, S18
4DF9AE:  VCVT.S32.F32    S0, S0
4DF9B2:  VMOV            R0, S0
4DF9B6:  ADD.W           R0, R0, #0x1F40
4DF9BA:  STR             R0, [R5,#0x10]
4DF9BC:  MOVS            R5, #0
4DF9BE:  MOV             R0, R4; this
4DF9C0:  MOV.W           R1, #0x154; unsigned __int16
4DF9C4:  MOVS            R2, #0; unsigned int
4DF9C6:  MOV.W           R3, #0x3F800000; float
4DF9CA:  STRD.W          R5, R5, [SP,#0x30+var_30]; unsigned __int8
4DF9CE:  STR             R5, [SP,#0x30+var_28]; unsigned __int8
4DF9D0:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4DF9D4:  MOV             R0, R5
4DF9D6:  ADD             SP, SP, #0x10
4DF9D8:  VPOP            {D8-D9}
4DF9DC:  POP.W           {R11}
4DF9E0:  POP             {R4-R7,PC}
