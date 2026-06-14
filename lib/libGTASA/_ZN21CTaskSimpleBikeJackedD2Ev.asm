; =========================================================
; Game Engine Function: _ZN21CTaskSimpleBikeJackedD2Ev
; Address            : 0x5055B8 - 0x50560A
; =========================================================

5055B8:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleBikeJacked::~CTaskSimpleBikeJacked()'
5055BA:  ADD             R7, SP, #8
5055BC:  MOV             R4, R0
5055BE:  LDR             R0, =(_ZTV21CTaskSimpleBikeJacked_ptr - 0x5055C6)
5055C0:  MOV             R1, R4
5055C2:  ADD             R0, PC; _ZTV21CTaskSimpleBikeJacked_ptr
5055C4:  LDR             R2, [R0]; `vtable for'CTaskSimpleBikeJacked ...
5055C6:  LDR.W           R0, [R1,#0x14]!; CEntity **
5055CA:  ADDS            R2, #8
5055CC:  STR             R2, [R4]
5055CE:  CMP             R0, #0
5055D0:  IT NE
5055D2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5055D6:  MOV             R1, R4
5055D8:  LDR.W           R0, [R1,#0x20]!; CEntity **
5055DC:  CMP             R0, #0
5055DE:  IT NE
5055E0:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5055E4:  LDR             R0, [R4,#0x28]; this
5055E6:  CBZ             R0, loc_5055F0
5055E8:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarD2Ev; CTaskUtilityLineUpPedWithCar::~CTaskUtilityLineUpPedWithCar()
5055EC:  BLX             _ZdlPv; operator delete(void *)
5055F0:  LDR             R0, [R4,#0xC]; this
5055F2:  CBZ             R0, loc_505600
5055F4:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x5055FC)
5055F6:  MOVS            R2, #0; void *
5055F8:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
5055FA:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
5055FC:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
505600:  MOV             R0, R4; this
505602:  POP.W           {R4,R6,R7,LR}
505606:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
