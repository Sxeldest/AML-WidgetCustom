; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimbD0Ev
; Address            : 0x52E410 - 0x52E450
; =========================================================

52E410:  PUSH            {R4,R5,R7,LR}
52E412:  ADD             R7, SP, #8
52E414:  MOV             R4, R0
52E416:  LDR             R0, =(_ZTV16CTaskSimpleClimb_ptr - 0x52E41E)
52E418:  MOV             R1, R4
52E41A:  ADD             R0, PC; _ZTV16CTaskSimpleClimb_ptr
52E41C:  LDR             R2, [R0]; `vtable for'CTaskSimpleClimb ...
52E41E:  LDR.W           R0, [R1,#0x24]!; CEntity **
52E422:  ADDS            R2, #8
52E424:  STR             R2, [R4]
52E426:  CMP             R0, #0
52E428:  IT NE
52E42A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
52E42E:  LDR             R0, [R4,#0x2C]; this
52E430:  CBZ             R0, loc_52E442
52E432:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52E43C)
52E434:  MOVS            R2, #0; void *
52E436:  MOVS            R5, #0
52E438:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52E43A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52E43C:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52E440:  STR             R5, [R4,#0x2C]
52E442:  MOV             R0, R4; this
52E444:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
52E448:  POP.W           {R4,R5,R7,LR}
52E44C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
