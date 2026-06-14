; =========================================================
; Game Engine Function: _ZN15CTaskSimpleJumpD0Ev
; Address            : 0x52D704 - 0x52D740
; =========================================================

52D704:  PUSH            {R4,R6,R7,LR}
52D706:  ADD             R7, SP, #8
52D708:  MOV             R4, R0
52D70A:  LDR             R0, =(_ZTV15CTaskSimpleJump_ptr - 0x52D710)
52D70C:  ADD             R0, PC; _ZTV15CTaskSimpleJump_ptr
52D70E:  LDR             R1, [R0]; `vtable for'CTaskSimpleJump ...
52D710:  LDR             R0, [R4,#0x28]; this
52D712:  ADDS            R1, #8
52D714:  STR             R1, [R4]
52D716:  CBZ             R0, loc_52D724
52D718:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52D720)
52D71A:  MOVS            R2, #0; void *
52D71C:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52D71E:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52D720:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52D724:  MOV             R1, R4
52D726:  LDR.W           R0, [R1,#0x1C]!; CEntity **
52D72A:  CMP             R0, #0
52D72C:  IT NE
52D72E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
52D732:  MOV             R0, R4; this
52D734:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
52D738:  POP.W           {R4,R6,R7,LR}
52D73C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
