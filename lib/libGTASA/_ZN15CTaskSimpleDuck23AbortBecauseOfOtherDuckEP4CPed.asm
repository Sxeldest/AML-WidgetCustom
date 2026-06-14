; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck23AbortBecauseOfOtherDuckEP4CPed
; Address            : 0x5430A8 - 0x5430E8
; =========================================================

5430A8:  PUSH            {R4,R5,R7,LR}
5430AA:  ADD             R7, SP, #8
5430AC:  MOV             R4, R0
5430AE:  LDR             R0, [R4,#0x10]; this
5430B0:  CBZ             R0, loc_5430C2
5430B2:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x5430BC)
5430B4:  MOVS            R2, #0; void *
5430B6:  MOVS            R5, #0
5430B8:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
5430BA:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
5430BC:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
5430C0:  STR             R5, [R4,#0x10]
5430C2:  LDR             R0, [R4,#0x14]
5430C4:  CBZ             R0, loc_5430DE
5430C6:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x5430D4)
5430C8:  MOV.W           R2, #0xC1000000
5430CC:  STR             R2, [R0,#0x1C]
5430CE:  MOVS            R2, #0; void *
5430D0:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
5430D2:  LDR             R0, [R4,#0x14]; this
5430D4:  MOVS            R5, #0
5430D6:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
5430D8:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
5430DC:  STR             R5, [R4,#0x14]
5430DE:  MOVS            R0, #1
5430E0:  STRB            R0, [R4,#0x18]
5430E2:  STRB            R0, [R4,#0x1A]
5430E4:  MOVS            R0, #1
5430E6:  POP             {R4,R5,R7,PC}
