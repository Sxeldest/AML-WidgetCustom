; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGunD2Ev
; Address            : 0x4DBD18 - 0x4DBD50
; =========================================================

4DBD18:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleUseGun::~CTaskSimpleUseGun()'
4DBD1A:  ADD             R7, SP, #8
4DBD1C:  MOV             R4, R0
4DBD1E:  LDR             R0, =(_ZTV17CTaskSimpleUseGun_ptr - 0x4DBD26)
4DBD20:  MOV             R1, R4
4DBD22:  ADD             R0, PC; _ZTV17CTaskSimpleUseGun_ptr
4DBD24:  LDR             R2, [R0]; `vtable for'CTaskSimpleUseGun ...
4DBD26:  LDR.W           R0, [R1,#0x1C]!; CEntity **
4DBD2A:  ADDS            R2, #8
4DBD2C:  STR             R2, [R4]
4DBD2E:  CMP             R0, #0
4DBD30:  IT NE
4DBD32:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DBD36:  LDR             R0, [R4,#0x2C]; this
4DBD38:  CBZ             R0, loc_4DBD46
4DBD3A:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DBD42)
4DBD3C:  MOVS            R2, #0; void *
4DBD3E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DBD40:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DBD42:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DBD46:  MOV             R0, R4; this
4DBD48:  POP.W           {R4,R6,R7,LR}
4DBD4C:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
