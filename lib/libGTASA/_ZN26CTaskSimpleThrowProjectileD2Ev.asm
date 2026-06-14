; =========================================================
; Game Engine Function: _ZN26CTaskSimpleThrowProjectileD2Ev
; Address            : 0x4DE97C - 0x4DE9B8
; =========================================================

4DE97C:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskSimpleThrowProjectile::~CTaskSimpleThrowProjectile()'
4DE97E:  ADD             R7, SP, #8
4DE980:  MOV             R4, R0
4DE982:  LDR             R0, =(_ZTV26CTaskSimpleThrowProjectile_ptr - 0x4DE988)
4DE984:  ADD             R0, PC; _ZTV26CTaskSimpleThrowProjectile_ptr
4DE986:  LDR             R1, [R0]; `vtable for'CTaskSimpleThrowProjectile ...
4DE988:  LDR             R0, [R4,#0xC]; this
4DE98A:  ADDS            R1, #8
4DE98C:  STR             R1, [R4]
4DE98E:  CBZ             R0, loc_4DE9A0
4DE990:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DE99A)
4DE992:  MOVS            R2, #0; void *
4DE994:  MOVS            R5, #0
4DE996:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DE998:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DE99A:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DE99E:  STR             R5, [R4,#0xC]
4DE9A0:  MOV             R1, R4
4DE9A2:  LDR.W           R0, [R1,#0x10]!; CEntity **
4DE9A6:  CMP             R0, #0
4DE9A8:  IT NE
4DE9AA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DE9AE:  MOV             R0, R4; this
4DE9B0:  POP.W           {R4,R5,R7,LR}
4DE9B4:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
