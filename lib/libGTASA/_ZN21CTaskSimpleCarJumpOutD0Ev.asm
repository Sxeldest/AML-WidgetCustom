; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarJumpOutD0Ev
; Address            : 0x50360C - 0x503648
; =========================================================

50360C:  PUSH            {R4,R6,R7,LR}
50360E:  ADD             R7, SP, #8
503610:  MOV             R4, R0
503612:  LDR             R0, =(_ZTV21CTaskSimpleCarJumpOut_ptr - 0x50361A)
503614:  MOV             R1, R4
503616:  ADD             R0, PC; _ZTV21CTaskSimpleCarJumpOut_ptr
503618:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarJumpOut ...
50361A:  LDR.W           R0, [R1,#0x10]!; CEntity **
50361E:  ADDS            R2, #8
503620:  STR             R2, [R4]
503622:  CMP             R0, #0
503624:  IT NE
503626:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50362A:  LDR             R0, [R4,#0xC]; this
50362C:  CBZ             R0, loc_50363A
50362E:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x503636)
503630:  MOVS            R2, #0; void *
503632:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
503634:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
503636:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50363A:  MOV             R0, R4; this
50363C:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
503640:  POP.W           {R4,R6,R7,LR}
503644:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
