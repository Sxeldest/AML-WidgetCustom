; =========================================================
; Game Engine Function: _ZN21CTaskSimplePickUpBikeD2Ev
; Address            : 0x5011D0 - 0x501208
; =========================================================

5011D0:  PUSH            {R4,R6,R7,LR}
5011D2:  ADD             R7, SP, #8
5011D4:  MOV             R4, R0
5011D6:  LDR             R0, =(_ZTV21CTaskSimplePickUpBike_ptr - 0x5011DE)
5011D8:  MOV             R1, R4
5011DA:  ADD             R0, PC; _ZTV21CTaskSimplePickUpBike_ptr
5011DC:  LDR             R2, [R0]; `vtable for'CTaskSimplePickUpBike ...
5011DE:  LDR.W           R0, [R1,#0x10]!; CEntity **
5011E2:  ADDS            R2, #8
5011E4:  STR             R2, [R4]
5011E6:  CMP             R0, #0
5011E8:  IT NE
5011EA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5011EE:  LDR             R0, [R4,#0xC]; this
5011F0:  CBZ             R0, loc_5011FE
5011F2:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x5011FA)
5011F4:  MOVS            R2, #0; void *
5011F6:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
5011F8:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
5011FA:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
5011FE:  MOV             R0, R4; this
501200:  POP.W           {R4,R6,R7,LR}
501204:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
