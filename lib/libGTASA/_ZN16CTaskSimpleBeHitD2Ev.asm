; =========================================================
; Game Engine Function: _ZN16CTaskSimpleBeHitD2Ev
; Address            : 0x4DFB58 - 0x4DFB9A
; =========================================================

4DFB58:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleBeHit::~CTaskSimpleBeHit()'
4DFB5A:  ADD             R7, SP, #8
4DFB5C:  MOV             R4, R0
4DFB5E:  LDR             R0, =(_ZTV16CTaskSimpleBeHit_ptr - 0x4DFB64)
4DFB60:  ADD             R0, PC; _ZTV16CTaskSimpleBeHit_ptr
4DFB62:  LDR             R1, [R0]; `vtable for'CTaskSimpleBeHit ...
4DFB64:  LDR             R0, [R4,#0x24]
4DFB66:  ADDS            R1, #8
4DFB68:  STR             R1, [R4]
4DFB6A:  CBZ             R0, loc_4DFB82
4DFB6C:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DFB78)
4DFB6E:  MOVS            R2, #0xC0800000
4DFB74:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DFB76:  STR             R2, [R0,#0x1C]
4DFB78:  LDR             R0, [R4,#0x24]; this
4DFB7A:  MOVS            R2, #0; void *
4DFB7C:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DFB7E:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DFB82:  MOV             R1, R4
4DFB84:  LDR.W           R0, [R1,#8]!; CEntity **
4DFB88:  CMP             R0, #0
4DFB8A:  IT NE
4DFB8C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DFB90:  MOV             R0, R4; this
4DFB92:  POP.W           {R4,R6,R7,LR}
4DFB96:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
