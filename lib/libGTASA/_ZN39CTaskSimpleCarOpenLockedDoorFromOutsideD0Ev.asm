; =========================================================
; Game Engine Function: _ZN39CTaskSimpleCarOpenLockedDoorFromOutsideD0Ev
; Address            : 0x501028 - 0x501064
; =========================================================

501028:  PUSH            {R4,R6,R7,LR}
50102A:  ADD             R7, SP, #8
50102C:  MOV             R4, R0
50102E:  LDR             R0, =(_ZTV39CTaskSimpleCarOpenLockedDoorFromOutside_ptr - 0x501036)
501030:  MOV             R1, R4
501032:  ADD             R0, PC; _ZTV39CTaskSimpleCarOpenLockedDoorFromOutside_ptr
501034:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarOpenLockedDoorFromOutside ...
501036:  LDR.W           R0, [R1,#0x10]!; CEntity **
50103A:  ADDS            R2, #8
50103C:  STR             R2, [R4]
50103E:  CMP             R0, #0
501040:  IT NE
501042:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
501046:  LDR             R0, [R4,#0xC]; this
501048:  CBZ             R0, loc_501056
50104A:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x501052)
50104C:  MOVS            R2, #0; void *
50104E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
501050:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
501052:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
501056:  MOV             R0, R4; this
501058:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
50105C:  POP.W           {R4,R6,R7,LR}
501060:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
