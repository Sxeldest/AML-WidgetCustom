; =========================================================
; Game Engine Function: _ZN18CTaskSimpleChoking13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4DF770 - 0x4DF7DE
; =========================================================

4DF770:  PUSH            {R4,R5,R7,LR}
4DF772:  ADD             R7, SP, #8
4DF774:  MOV             R4, R0
4DF776:  SUBS            R0, R2, #1
4DF778:  CMP             R0, #1
4DF77A:  BHI             loc_4DF7B2
4DF77C:  CBZ             R3, loc_4DF78E
4DF77E:  LDR             R0, [R3]
4DF780:  LDR             R1, [R0,#0xC]
4DF782:  MOV             R0, R3
4DF784:  BLX             R1
4DF786:  CMP             R0, #0x39 ; '9'
4DF788:  ITT LT
4DF78A:  MOVLT           R0, #0
4DF78C:  POPLT           {R4,R5,R7,PC}
4DF78E:  LDR             R0, [R4,#0xC]
4DF790:  CBZ             R0, loc_4DF7AC
4DF792:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DF7A0)
4DF794:  MOVS            R2, #0xC0800000
4DF79A:  MOVS            R5, #0
4DF79C:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DF79E:  STR             R2, [R0,#0x1C]
4DF7A0:  LDR             R0, [R4,#0xC]; this
4DF7A2:  MOVS            R2, #0; void *
4DF7A4:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DF7A6:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DF7AA:  STR             R5, [R4,#0xC]
4DF7AC:  MOVS            R0, #1
4DF7AE:  STRB            R0, [R4,#0x19]
4DF7B0:  POP             {R4,R5,R7,PC}
4DF7B2:  LDR             R0, [R4,#0xC]
4DF7B4:  CBZ             R0, loc_4DF7DA
4DF7B6:  LDRH            R1, [R0,#0x2E]
4DF7B8:  MOVS            R5, #0
4DF7BA:  LDR             R2, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DF7C6)
4DF7BC:  ORR.W           R1, R1, #4
4DF7C0:  STRH            R1, [R0,#0x2E]
4DF7C2:  ADD             R2, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DF7C4:  LDR             R0, [R4,#0xC]
4DF7C6:  LDR             R1, [R2]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DF7C8:  MOVS            R2, #0xC0800000
4DF7CE:  STR             R2, [R0,#0x1C]
4DF7D0:  MOVS            R2, #0; void *
4DF7D2:  LDR             R0, [R4,#0xC]; this
4DF7D4:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DF7D8:  STR             R5, [R4,#0xC]
4DF7DA:  MOVS            R0, #1
4DF7DC:  POP             {R4,R5,R7,PC}
