; =========================================================
; Game Engine Function: _ZN15CTaskSimpleFall9StartAnimEP4CPed
; Address            : 0x52B7FC - 0x52B8C4
; =========================================================

52B7FC:  PUSH            {R4,R5,R7,LR}
52B7FE:  ADD             R7, SP, #8
52B800:  MOV             R5, R1
52B802:  MOV             R4, R0
52B804:  LDR.W           R0, [R5,#0x100]
52B808:  CMP             R0, #0
52B80A:  ITT NE
52B80C:  MOVNE           R0, #0
52B80E:  POPNE           {R4,R5,R7,PC}
52B810:  LDR             R1, [R4,#0xC]
52B812:  LDR             R0, [R5,#0x18]
52B814:  CMP             R1, #0xBF
52B816:  BNE             loc_52B838
52B818:  MOVS            R1, #0x69 ; 'i'
52B81A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52B81E:  CMP             R0, #0
52B820:  STR             R0, [R4,#0x14]
52B822:  BNE             loc_52B832
52B824:  LDR             R0, [R5,#0x18]
52B826:  MOVS            R1, #0x6A ; 'j'
52B828:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52B82C:  CMP             R0, #0
52B82E:  STR             R0, [R4,#0x14]
52B830:  BEQ             loc_52B8C0
52B832:  LDR             R1, =(_ZN15CTaskSimpleFall16FinishAnimFallCBEP21CAnimBlendAssociationPv_ptr - 0x52B838)
52B834:  ADD             R1, PC; _ZN15CTaskSimpleFall16FinishAnimFallCBEP21CAnimBlendAssociationPv_ptr
52B836:  B               loc_52B870
52B838:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52B83C:  CMP             R0, #0
52B83E:  STR             R0, [R4,#0x14]
52B840:  BEQ             loc_52B87C
52B842:  MOVS            R1, #0; float
52B844:  MOVS            R5, #0
52B846:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
52B84A:  LDR             R0, [R4,#0x14]
52B84C:  MOV.W           R1, #0x41000000
52B850:  STR             R5, [R0,#0x18]
52B852:  LDR             R0, [R4,#0x14]
52B854:  STR             R1, [R0,#0x1C]
52B856:  LDR             R0, [R4,#0x14]
52B858:  LDRH            R1, [R0,#0x2E]
52B85A:  ORR.W           R1, R1, #5
52B85E:  STRH            R1, [R0,#0x2E]
52B860:  LDR             R0, [R4,#0x14]
52B862:  LDR             R1, =(_ZN15CTaskSimpleFall16FinishAnimFallCBEP21CAnimBlendAssociationPv_ptr - 0x52B86A)
52B864:  LDRH            R2, [R0,#0x2E]
52B866:  ADD             R1, PC; _ZN15CTaskSimpleFall16FinishAnimFallCBEP21CAnimBlendAssociationPv_ptr
52B868:  BIC.W           R2, R2, #8
52B86C:  STRH            R2, [R0,#0x2E]
52B86E:  LDR             R0, [R4,#0x14]; this
52B870:  LDR             R1, [R1]; CTaskSimpleFall::FinishAnimFallCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52B872:  MOV             R2, R4; void *
52B874:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52B878:  MOVS            R0, #1
52B87A:  POP             {R4,R5,R7,PC}
52B87C:  LDRD.W          R2, R1, [R4,#0xC]; unsigned int
52B880:  MOV.W           R3, #0x41000000
52B884:  LDR             R0, [R5,#0x18]; int
52B886:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52B88A:  STR             R0, [R4,#0x14]
52B88C:  LDRH            R1, [R0,#0x2E]
52B88E:  ORR.W           R1, R1, #4
52B892:  STRH            R1, [R0,#0x2E]
52B894:  LDR             R0, [R4,#0x14]
52B896:  LDR             R1, =(_ZN15CTaskSimpleFall16FinishAnimFallCBEP21CAnimBlendAssociationPv_ptr - 0x52B89E)
52B898:  LDRH            R2, [R0,#0x2E]
52B89A:  ADD             R1, PC; _ZN15CTaskSimpleFall16FinishAnimFallCBEP21CAnimBlendAssociationPv_ptr
52B89C:  BIC.W           R2, R2, #8
52B8A0:  STRH            R2, [R0,#0x2E]
52B8A2:  LDR             R0, [R4,#0x14]; this
52B8A4:  MOV             R2, R4; void *
52B8A6:  LDR             R1, [R1]; CTaskSimpleFall::FinishAnimFallCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52B8A8:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52B8AC:  LDR             R0, [R4,#0xC]
52B8AE:  CMP             R0, #0x6A ; 'j'
52B8B0:  BNE             loc_52B8C0
52B8B2:  LDR             R0, [R4,#0x14]; this
52B8B4:  MOV             R1, #0x3ECCCCCD; float
52B8BC:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
52B8C0:  MOVS            R0, #1
52B8C2:  POP             {R4,R5,R7,PC}
