; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarGetInD2Ev
; Address            : 0x501C80 - 0x501CB8
; =========================================================

501C80:  PUSH            {R4,R6,R7,LR}
501C82:  ADD             R7, SP, #8
501C84:  MOV             R4, R0
501C86:  LDR             R0, =(_ZTV19CTaskSimpleCarGetIn_ptr - 0x501C8E)
501C88:  MOV             R1, R4
501C8A:  ADD             R0, PC; _ZTV19CTaskSimpleCarGetIn_ptr
501C8C:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarGetIn ...
501C8E:  LDR.W           R0, [R1,#0x18]!; CEntity **
501C92:  ADDS            R2, #8
501C94:  STR             R2, [R4]
501C96:  CMP             R0, #0
501C98:  IT NE
501C9A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
501C9E:  LDR             R0, [R4,#0xC]; this
501CA0:  CBZ             R0, loc_501CAE
501CA2:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x501CAA)
501CA4:  MOVS            R2, #0; void *
501CA6:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
501CA8:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
501CAA:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
501CAE:  MOV             R0, R4; this
501CB0:  POP.W           {R4,R6,R7,LR}
501CB4:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
