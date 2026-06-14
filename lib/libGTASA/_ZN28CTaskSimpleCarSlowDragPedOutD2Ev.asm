; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarSlowDragPedOutD2Ev
; Address            : 0x5040B0 - 0x5040E8
; =========================================================

5040B0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleCarSlowDragPedOut::~CTaskSimpleCarSlowDragPedOut()'
5040B2:  ADD             R7, SP, #8
5040B4:  MOV             R4, R0
5040B6:  LDR             R0, =(_ZTV28CTaskSimpleCarSlowDragPedOut_ptr - 0x5040BE)
5040B8:  MOV             R1, R4
5040BA:  ADD             R0, PC; _ZTV28CTaskSimpleCarSlowDragPedOut_ptr
5040BC:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarSlowDragPedOut ...
5040BE:  LDR.W           R0, [R1,#0x10]!; CEntity **
5040C2:  ADDS            R2, #8
5040C4:  STR             R2, [R4]
5040C6:  CMP             R0, #0
5040C8:  IT NE
5040CA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5040CE:  LDR             R0, [R4,#0xC]; this
5040D0:  CBZ             R0, loc_5040DE
5040D2:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x5040DA)
5040D4:  MOVS            R2, #0; void *
5040D6:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
5040D8:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
5040DA:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
5040DE:  MOV             R0, R4; this
5040E0:  POP.W           {R4,R6,R7,LR}
5040E4:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
