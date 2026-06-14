; =========================================================
; Game Engine Function: _ZN30CTaskSimpleCarSlowBeDraggedOutD2Ev
; Address            : 0x504674 - 0x5046AC
; =========================================================

504674:  PUSH            {R4,R6,R7,LR}
504676:  ADD             R7, SP, #8
504678:  MOV             R4, R0
50467A:  LDR             R0, =(_ZTV30CTaskSimpleCarSlowBeDraggedOut_ptr - 0x504682)
50467C:  MOV             R1, R4
50467E:  ADD             R0, PC; _ZTV30CTaskSimpleCarSlowBeDraggedOut_ptr
504680:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarSlowBeDraggedOut ...
504682:  LDR.W           R0, [R1,#0x10]!; CEntity **
504686:  ADDS            R2, #8
504688:  STR             R2, [R4]
50468A:  CMP             R0, #0
50468C:  IT NE
50468E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
504692:  LDR             R0, [R4,#0xC]; this
504694:  CBZ             R0, loc_5046A2
504696:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x50469E)
504698:  MOVS            R2, #0; void *
50469A:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
50469C:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50469E:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
5046A2:  MOV             R0, R4; this
5046A4:  POP.W           {R4,R6,R7,LR}
5046A8:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
