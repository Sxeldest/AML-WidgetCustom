; =========================================================
; Game Engine Function: _ZN30CTaskSimpleCarSlowBeDraggedOutD0Ev
; Address            : 0x5046B4 - 0x5046F0
; =========================================================

5046B4:  PUSH            {R4,R6,R7,LR}
5046B6:  ADD             R7, SP, #8
5046B8:  MOV             R4, R0
5046BA:  LDR             R0, =(_ZTV30CTaskSimpleCarSlowBeDraggedOut_ptr - 0x5046C2)
5046BC:  MOV             R1, R4
5046BE:  ADD             R0, PC; _ZTV30CTaskSimpleCarSlowBeDraggedOut_ptr
5046C0:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarSlowBeDraggedOut ...
5046C2:  LDR.W           R0, [R1,#0x10]!; CEntity **
5046C6:  ADDS            R2, #8
5046C8:  STR             R2, [R4]
5046CA:  CMP             R0, #0
5046CC:  IT NE
5046CE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5046D2:  LDR             R0, [R4,#0xC]; this
5046D4:  CBZ             R0, loc_5046E2
5046D6:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x5046DE)
5046D8:  MOVS            R2, #0; void *
5046DA:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
5046DC:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
5046DE:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
5046E2:  MOV             R0, R4; this
5046E4:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
5046E8:  POP.W           {R4,R6,R7,LR}
5046EC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
