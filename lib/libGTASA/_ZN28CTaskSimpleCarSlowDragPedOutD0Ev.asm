; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarSlowDragPedOutD0Ev
; Address            : 0x5040F0 - 0x50412C
; =========================================================

5040F0:  PUSH            {R4,R6,R7,LR}
5040F2:  ADD             R7, SP, #8
5040F4:  MOV             R4, R0
5040F6:  LDR             R0, =(_ZTV28CTaskSimpleCarSlowDragPedOut_ptr - 0x5040FE)
5040F8:  MOV             R1, R4
5040FA:  ADD             R0, PC; _ZTV28CTaskSimpleCarSlowDragPedOut_ptr
5040FC:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarSlowDragPedOut ...
5040FE:  LDR.W           R0, [R1,#0x10]!; CEntity **
504102:  ADDS            R2, #8
504104:  STR             R2, [R4]
504106:  CMP             R0, #0
504108:  IT NE
50410A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50410E:  LDR             R0, [R4,#0xC]; this
504110:  CBZ             R0, loc_50411E
504112:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x50411A)
504114:  MOVS            R2, #0; void *
504116:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
504118:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50411A:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50411E:  MOV             R0, R4; this
504120:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
504124:  POP.W           {R4,R6,R7,LR}
504128:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
