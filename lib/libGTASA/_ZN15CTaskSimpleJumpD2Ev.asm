; =========================================================
; Game Engine Function: _ZN15CTaskSimpleJumpD2Ev
; Address            : 0x52D6C4 - 0x52D6FC
; =========================================================

52D6C4:  PUSH            {R4,R6,R7,LR}
52D6C6:  ADD             R7, SP, #8
52D6C8:  MOV             R4, R0
52D6CA:  LDR             R0, =(_ZTV15CTaskSimpleJump_ptr - 0x52D6D0)
52D6CC:  ADD             R0, PC; _ZTV15CTaskSimpleJump_ptr
52D6CE:  LDR             R1, [R0]; `vtable for'CTaskSimpleJump ...
52D6D0:  LDR             R0, [R4,#0x28]; this
52D6D2:  ADDS            R1, #8
52D6D4:  STR             R1, [R4]
52D6D6:  CBZ             R0, loc_52D6E4
52D6D8:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52D6E0)
52D6DA:  MOVS            R2, #0; void *
52D6DC:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52D6DE:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52D6E0:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52D6E4:  MOV             R1, R4
52D6E6:  LDR.W           R0, [R1,#0x1C]!; CEntity **
52D6EA:  CMP             R0, #0
52D6EC:  IT NE
52D6EE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
52D6F2:  MOV             R0, R4; this
52D6F4:  POP.W           {R4,R6,R7,LR}
52D6F8:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
