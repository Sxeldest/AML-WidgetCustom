; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarCloseDoorFromInsideD2Ev
; Address            : 0x50146C - 0x5014A4
; =========================================================

50146C:  PUSH            {R4,R6,R7,LR}
50146E:  ADD             R7, SP, #8
501470:  MOV             R4, R0
501472:  LDR             R0, =(_ZTV33CTaskSimpleCarCloseDoorFromInside_ptr - 0x50147A)
501474:  MOV             R1, R4
501476:  ADD             R0, PC; _ZTV33CTaskSimpleCarCloseDoorFromInside_ptr
501478:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarCloseDoorFromInside ...
50147A:  LDR.W           R0, [R1,#0x10]!; CEntity **
50147E:  ADDS            R2, #8
501480:  STR             R2, [R4]
501482:  CMP             R0, #0
501484:  IT NE
501486:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50148A:  LDR             R0, [R4,#0xC]; this
50148C:  CBZ             R0, loc_50149A
50148E:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x501496)
501490:  MOVS            R2, #0; void *
501492:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
501494:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
501496:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50149A:  MOV             R0, R4; this
50149C:  POP.W           {R4,R6,R7,LR}
5014A0:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
