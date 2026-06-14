; =========================================================
; Game Engine Function: _ZN26CTaskSimpleThrowProjectileD0Ev
; Address            : 0x4DE9C0 - 0x4DEA00
; =========================================================

4DE9C0:  PUSH            {R4,R5,R7,LR}
4DE9C2:  ADD             R7, SP, #8
4DE9C4:  MOV             R4, R0
4DE9C6:  LDR             R0, =(_ZTV26CTaskSimpleThrowProjectile_ptr - 0x4DE9CC)
4DE9C8:  ADD             R0, PC; _ZTV26CTaskSimpleThrowProjectile_ptr
4DE9CA:  LDR             R1, [R0]; `vtable for'CTaskSimpleThrowProjectile ...
4DE9CC:  LDR             R0, [R4,#0xC]; this
4DE9CE:  ADDS            R1, #8
4DE9D0:  STR             R1, [R4]
4DE9D2:  CBZ             R0, loc_4DE9E4
4DE9D4:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DE9DE)
4DE9D6:  MOVS            R2, #0; void *
4DE9D8:  MOVS            R5, #0
4DE9DA:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DE9DC:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DE9DE:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DE9E2:  STR             R5, [R4,#0xC]
4DE9E4:  MOV             R1, R4
4DE9E6:  LDR.W           R0, [R1,#0x10]!; CEntity **
4DE9EA:  CMP             R0, #0
4DE9EC:  IT NE
4DE9EE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DE9F2:  MOV             R0, R4; this
4DE9F4:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4DE9F8:  POP.W           {R4,R5,R7,LR}
4DE9FC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
